/* Compile with SOC-EDS shell
arm-linux-gnueabihf-g++ hps.cpp -g -std=c++11 -Wall -Werror -Wno-pointer-arith -pthread -lpthread -I$SOCEDS_DEST_ROOT/ip/altera/hps/altera_hps/hwlib -I$SOCEDS_DEST_ROOT/ip/altera/hps/altera_hps/h -I$SOCEDS_DEST_ROOT/ip/altera/hps/altera_hps/hwlib/include/soc_cv_av -Dsoc_cv_av -o HPS
*/
#include <iostream>
#include <fstream>
#include <vector>
#include <cmath>
#include <cstring>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <queue>
#include <numeric>
#include <algorithm>

// The Altera SoC Abstraction Layer (SoCAL) API Reference Manual
#include "socal/socal.h"
#include "socal/hps.h"

// Useful macros
#define INSERT_BITS(original, mask, value, num) (original & (~mask)) | (value << num)

// FPGA MANAGER MAIN REGISTER ADDRESSES
#define FPGA_MANAGER_ADD (0xff706000)
#define STAT_OFFSET      (0x000)
#define CTRL_OFFSET      (0x004)
#define GPIO_INTSTATUS   (0x840)

// FPGA MANAGER DATA REGISTER ADDRESS
#define FPGA_MANAGER_DATA_ADD (0xffb90000) 
// DSP RELATED ADDRESSES
#define FPGA_input_base 0xff208000UL
#define FPGA_output_base 0xff208804UL
#define FPGA_signal_power_base 0xff209008
#define FPGA_noise_power_base 0xff20980c
#define MAP_MASK 4095UL

//Context-awareness variables
float noise_th = 0.35; //noise threshold
const float N = 3.85;	//Noise STD multiplier

using namespace std;

///////////Debug//////////////
/////////////////////////////
ofstream dbg("HPS.dbg");  //
///////////////////////////

uint32_t extract_SF(const char * wav_path)
{
	uint32_t SF;
	vector<char> header(44);
	ifstream wav_file;
	wav_file.open(wav_path, ios::binary|ios::ate);
	wav_file.seekg(0, ios::beg);
	wav_file.read(&header[0], 44);
	wav_file.close();
	memcpy(&SF, &header[24], 4);
	return SF;
}

vector<float> extract_sample(const char * wav_path)
{
	ifstream wav_file;
	wav_file.open(wav_path, ios::binary|ios::ate);
	size_t wav_size = wav_file.tellg();
	size_t sample_count = (wav_size - 44)/2;	//16bit samples
	vector<char> buffer(wav_size);
	vector<int16_t> wav_sample(sample_count);
	vector<float> sample_vect(sample_count);
	wav_file.seekg(0, ios::beg);
	wav_file.read(&buffer[0], wav_size);
	wav_file.close();
	memcpy(&wav_sample[0], &buffer[0] + 44, wav_size - 44);
	for(size_t i = 0; i < sample_count; i++)
	{
		sample_vect[i] = float(wav_sample[i])/float(32767);
	}
	return sample_vect;
}

vector<float> hamming(vector<float> sample_vect, size_t length,int SF)
{
	sample_vect.resize(length * ceil(float(sample_vect.size())/float(length)),0);	//Round to complete last sample with zeros
	for(size_t i = 0; i < sample_vect.size(); i += length)
	{
		for(size_t j = 0; j < length;j++)
		{
			sample_vect[i + j] = sample_vect[i + j]*(0.54 - 0.46*cos((6.28318548202 * j)/(length-1)));
		}
	}
	return sample_vect;
}

vector<float> normalize_vect(vector<float> &sample_vect)
{
	float max_val = 0;
	for(size_t i = 0; i < sample_vect.size(); i++)
	{
		if(abs(sample_vect[i]) > max_val) max_val = abs(sample_vect[i]);
	}
	for(size_t i = 0; i < sample_vect.size(); i++)
	{
		sample_vect[i] *= 1/max_val;
	}
	return sample_vect;
}

float calculate_SNR(queue<float> &signal_fifo)
{
	vector<float> noise_vect;
	vector<float> speech_vect;
	float SNR;
	float noise_std;
	float speech_std;
	auto fast_std = [](vector<float> input) //https://stackoverflow.com/questions/7616511/calculate-mean-and-standard-deviation-from-a-vector-of-samples-in-c-using-boos/12405793#12405793
	{
		float mean, acc;
		mean = accumulate(begin(input), end(input), 0.0)/input.size();
		acc = 0.0;
		for_each(begin(input), end(input), [&](const float d)
		{
			acc += (d - mean)*(d - mean);
		});
		return sqrt(acc/(input.size()-1));
	};
	
	while(!signal_fifo.empty())	//Seprate speech and noise samples(fifo has the ABS of input signal)
	{
		if(signal_fifo.front() < noise_th)
		{
			noise_vect.push_back(signal_fifo.front());
			signal_fifo.pop();
		}
		else
		{
			speech_vect.push_back(signal_fifo.front());
			signal_fifo.pop();
		}
	}
	
	noise_std = fast_std(noise_vect);
	speech_std = fast_std(speech_vect);
	SNR = 20*log10(speech_std/noise_std);
	noise_th = N*noise_std;		//Update threshold value
	cout<<"\n"<<SNR;
	return SNR;
}

/* vector<float> overlap_add(vector<float> windowed_sample, size_t length)
{
	bool valid = true;
	int IO_fd = 0;
	size_t mid = length/2;
	IO_fd = open("/dev/mem", O_RDWR | O_SYNC);
	vector<float> overlap(mid, 0.0);
	vector<float> output;
	if(IO_fd < 0)
	{
		perror("devmem open.");
		exit(EXIT_FAILURE);
	}
	for(size_t i = mid; i < windowed_sample.size(); i += mid)
	{
		for(size_t j = i - mid; j < i + mid; j++)
		{
			mmap_write(IO_fd, FPGA_input_data, windowed_sample[j]);
			mmap_write(IO_fd, FPGA_input_valid, float(valid));
			valid = !valid;
		}
		for(size_t k = length; k < pow(2,ceil(log2(length))); k++)	//Pad with zeros
		{
			mmap_write(IO_fd, FPGA_input_data, float(0));
			mmap_write(IO_fd, FPGA_input_valid, float(valid));
			valid = !valid;
		}
		while(bool(mmap_read(IO_fd, FPGA_output_ready, sizeof(windowed_sample[0]))) == false) cout<<"\n waiting for FPGA output...";
		for(size_t m  = 0; m < length; m++)
		{
			uint32_t read_data = mmap_read(IO_fd, FPGA_mem_start_addr + (sizeof(windowed_sample[0]) * m), sizeof(windowed_sample[0]));
			float * tmp = reinterpret_cast<float*>(&read_data);
			if(m < mid)
			{
				output.push_back(*tmp + overlap[m]);
				dbg<<fixed<<*tmp + overlap[m]<<"\n";
			}
			else
			{
				overlap[m - mid] = *tmp;
			}
		}
		mmap_write(IO_fd, FPGA_output_ready, float(0));
		
	}
	cout<<"\nOverlap-add done!\n";
	dbg.close();
	close(IO_fd);
	return output;
} */
vector<float> none_overlap_add(vector<float> sample_vect, size_t length)
{
	int IO_fd;
	vector<float> output;
	queue<float> signal_fifo;
	void * input_virtual_base, * input_control_addr;
	void * output_virtual_base, * output_control_addr;
	IO_fd = open("/dev/mem", O_RDWR | O_SYNC);
	if(IO_fd < 0)
	{
		perror("devmem open.");
		exit(EXIT_FAILURE);
	}
	input_virtual_base = mmap(NULL, sizeof(float)*(pow(2,ceil(log2(length))) + 1),
	(PROT_READ | PROT_WRITE), MAP_SHARED, IO_fd, FPGA_input_base & ~MAP_MASK);
	output_virtual_base = mmap(NULL, sizeof(float)*(pow(2,ceil(log2(length))) + 1),
	(PROT_READ | PROT_WRITE), MAP_SHARED, IO_fd, FPGA_output_base & ~MAP_MASK);
	if((input_virtual_base == MAP_FAILED) or (output_virtual_base == MAP_FAILED))
	{
		perror("mmap failure.");
		exit(EXIT_FAILURE);
	}
	input_control_addr = input_virtual_base + (FPGA_input_base & MAP_MASK);
	output_control_addr = output_virtual_base + (FPGA_output_base & MAP_MASK);
	for(size_t i = 0; i < sample_vect.size(); i += length)
	{
		for(size_t j = 0; j < length; j++)
		{	
			float * tmp = (&sample_vect[j+i]);
			signal_fifo.push(sample_vect[j+i]);	//add to fifo for context-awareness
			*((uint32_t *) (input_control_addr + (sizeof(float) * (j + 1))))= *reinterpret_cast<uint32_t*>(tmp);
		}
		if(signal_fifo.size() == 320000) calculate_SNR(signal_fifo);	//estimate SNR every 20 seconds
		for(size_t k = length; k < pow(2,ceil(log2(length))); k++)	//Pad with zeros
		{
			float tmp = 0;
			*((uint32_t *) (input_control_addr + (sizeof(float) * (k + 1))))= *reinterpret_cast<uint32_t*>(&tmp);
		}
		float tmp = 1;
		*((uint32_t *) input_control_addr) = *reinterpret_cast<uint32_t*>(&tmp);
		while( *((float *) output_control_addr) == 0)
		{
			(void)0;	//nop
		}
		for(size_t m  = 0; m < length; m++)
		{
			float read_data = *((float *) (output_control_addr + (sizeof(float) * (m + 1))));
			output.push_back(read_data);
			dbg<<fixed<<read_data<<"\n";
		}
		tmp = 0;
		*((uint32_t *) output_control_addr) = *reinterpret_cast<uint32_t*>(&tmp);
	}
	cout<<"\nNone_Overlap-Add Done!\n";
	dbg.close();
	if((munmap(output_virtual_base, sizeof(float)*(pow(2,ceil(log2(length))) + 1)) == -1) or (munmap(input_virtual_base, sizeof(float)*(pow(2,ceil(log2(length))) + 1)) == -1))
	{
		perror("munmap failure.");
		exit(EXIT_FAILURE);
	}
	close(IO_fd);
	return output;
}

void config_FPGA(const char* rbf_path)
{
	const size_t largobytes = 1;
	int FPGA_MGR_fd = open("/dev/mem", (O_RDWR|O_SYNC));
	void * FPGA_mgr_virtual_base = mmap(NULL, largobytes,
   (PROT_READ|PROT_WRITE), MAP_SHARED, FPGA_MGR_fd, FPGA_MANAGER_ADD);
	cout<<"\nConfiguring FPGA with "<<rbf_path<<"...";
	// Activate control by HPS.
	uint16_t control_reg  = alt_read_hword(FPGA_mgr_virtual_base + CTRL_OFFSET);
	uint16_t ctrl_en_mask = 1 << 0;
	uint8_t  ctrl_en = uint8_t(1) & 1;
	control_reg = INSERT_BITS(control_reg, ctrl_en_mask, ctrl_en, 0);
	alt_write_hword(FPGA_mgr_virtual_base + CTRL_OFFSET, control_reg);
	// Trun off FPGA.
	control_reg  = alt_read_hword(FPGA_mgr_virtual_base + CTRL_OFFSET);
	uint16_t nconfigpull_mask = 1 << 2;
	uint8_t  nconfigpull = uint8_t(1) & 1;
	control_reg = INSERT_BITS(control_reg, nconfigpull_mask, nconfigpull, 2);
	alt_write_hword(FPGA_mgr_virtual_base + CTRL_OFFSET, control_reg);
	while(1)
	{
		uint8_t status = alt_read_byte(FPGA_mgr_virtual_base + STAT_OFFSET);
		uint8_t mode_mask = 0b111;
		uint8_t mode = status & mode_mask;
		if(mode == 0x1) break;
	}
	// Set corresponding cdratio (check fpga manager docs).
	control_reg  = alt_read_hword(FPGA_mgr_virtual_base + CTRL_OFFSET);
	uint16_t cdratio_mask = (0b11 << 6);
	uint8_t  cdratio      = 0x3;
	control_reg = INSERT_BITS(control_reg, cdratio_mask, cdratio, 6);
	alt_write_hword(FPGA_mgr_virtual_base + CTRL_OFFSET, control_reg);
	
	// Trun on FPGA.
	control_reg  = alt_read_hword(FPGA_mgr_virtual_base + CTRL_OFFSET);
	nconfigpull_mask = 1 << 2;
	nconfigpull = uint8_t(0) & 1;
	control_reg = INSERT_BITS(control_reg, nconfigpull_mask, nconfigpull, 2);
	alt_write_hword(FPGA_mgr_virtual_base + CTRL_OFFSET, control_reg);
	while(1)
	{
		uint8_t status = alt_read_byte(FPGA_mgr_virtual_base + STAT_OFFSET);
		uint8_t mode_mask = 0b111;
		uint8_t mode = status & mode_mask;
		if(mode == 0x2) break;
	}		
	// Activate AXI configuration data transfers.
	control_reg  = alt_read_hword(FPGA_mgr_virtual_base + CTRL_OFFSET);
	uint16_t axicfgen_mask = 1 << 8;
	uint8_t axicfgen = uint8_t(1) & 1;
	control_reg = INSERT_BITS(control_reg, axicfgen_mask, axicfgen, 8);
	alt_write_hword(FPGA_mgr_virtual_base + CTRL_OFFSET, control_reg);
	// Load rbf config file to fpga manager data register.
	void * data_mmap = mmap(NULL, 4,
	(PROT_READ|PROT_WRITE), MAP_SHARED, FPGA_MGR_fd, FPGA_MANAGER_DATA_ADD);
	int rbf = open(rbf_path, (O_RDONLY|O_SYNC));
    if (rbf < 0) 
	{
	    cout<<"/nError reading"<<rbf_path<<".rbf";
		exit(EXIT_FAILURE);
	}
    uint8_t * data_buffer = (uint8_t*)malloc(sizeof(uint8_t) * 4);
    memset(data_buffer, 0, 4);
    bool run_while = true;
	while(run_while)
	{
		ssize_t read_result = read(rbf, data_buffer, 4);
		if (read_result < 4) run_while = false;
		uint32_t format_data = *(data_buffer)          << 0;
		format_data = format_data | *(data_buffer + 1) << 8;
		format_data = format_data | *(data_buffer + 2) << 16;
		format_data = format_data | *(data_buffer + 3) << 24;
		alt_write_word(data_mmap, format_data);
		memset(data_buffer, 0, 4);
	}
	close(rbf);
	while(1)
	{
		uint8_t status = alt_read_byte(FPGA_mgr_virtual_base + STAT_OFFSET);
		uint8_t mode_mask = 0b111;
		uint8_t mode = status & mode_mask;
		if(mode == 0x4) break;
	}
	// Turn off AXI configuration data transfers.
	control_reg  = alt_read_hword(FPGA_mgr_virtual_base + CTRL_OFFSET);
	axicfgen_mask = 1 << 8;
	axicfgen = uint8_t(0) & 1;
	control_reg = INSERT_BITS(control_reg, axicfgen_mask, axicfgen, 8);
	alt_write_hword(FPGA_mgr_virtual_base + CTRL_OFFSET, control_reg);
	// Disable control by HPS (so JTAG can load new fpga configs).
	control_reg  = alt_read_hword(FPGA_mgr_virtual_base + CTRL_OFFSET);
	ctrl_en_mask = 1 << 0;
	ctrl_en = uint8_t(0) & 1;
	control_reg = INSERT_BITS(control_reg, ctrl_en_mask, ctrl_en, 0);
	alt_write_hword(FPGA_mgr_virtual_base + CTRL_OFFSET, control_reg);
	if((munmap(FPGA_mgr_virtual_base, largobytes) == -1) or (munmap(data_mmap, 4) == -1))
	{
		perror("munmap failure.");
		exit(EXIT_FAILURE);
	}
	cout<<"\nFPGA configuration done.";
}

int main(int argc, const char * argv[])
{
	size_t length = 25;		//window size in ms
	const char *wav_path = "input.wav";
	const char *rbf_path = "MB_SS.rbf";
	uint32_t SF = extract_SF(wav_path);
	cout<<"\nInput sampling rate:	"<<SF<<"\n";
	length = (SF/1000)*length;
	vector<float> sample_vect = extract_sample(wav_path);
	//vector<float> windowed_sample = hamming(sample_vec, length, SF);
	//overlap_add(windowed_sample,length);
	config_FPGA(rbf_path);
	none_overlap_add(sample_vect, length);
	return 0;
}