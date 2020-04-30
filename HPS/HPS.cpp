/* Compile with SOC-EDS shell
arm-linux-gnueabihf-g++ hps.cpp -g -std=c++11 -Wall -Werror -Wno-pointer-arith -I$SOCEDS_DEST_ROOT/ip/altera/hps/altera_hps/hwlib -I$SOCEDS_DEST_ROOT/ip/altera/hps/altera_hps/h -o HPS
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

#define FPGA_input_base 0xff206000UL
#define FPGA_output_base 0xff206804UL
#define MAP_MASK 4095UL

using namespace std;
///////////Debug//////////////
/////////////////////////////
ofstream dbg("HPS.dbg");	  //
///////////////////////////


uint32_t extract_SF(const char * path)
{
	uint32_t SF;
	vector<char> header(44);
	ifstream wav_file;
	wav_file.open(path, ios::binary|ios::ate);
	wav_file.seekg(0, ios::beg);
	wav_file.read(&header[0], 44);
	wav_file.close();
	memcpy(&SF, &header[24], 4);
	return SF;
}

vector<float> extract_sample(const char * path)
{
	ifstream wav_file;
	wav_file.open(path, ios::binary|ios::ate);
	size_t wav_size = wav_file.tellg();
	size_t sample_count = (wav_size - 44)/2;	//16bit samples
	vector<char> buffer(wav_size);
	vector<int16_t> wav_sample(sample_count);
	vector<float> sample_vec(sample_count);
	wav_file.seekg(0, ios::beg);
	wav_file.read(&buffer[0], wav_size);
	wav_file.close();
	memcpy(&wav_sample[0], &buffer[0] + 44, wav_size - 44);
	for(size_t i = 0; i < sample_count; i++)
	{
		sample_vec[i] = float(wav_sample[i])/float(32767);
	}
	return sample_vec;
}

vector<float> hamming(vector<float> sample_vec, size_t length,int SF)
{
	sample_vec.resize(length * ceil(float(sample_vec.size())/float(length)),0);	//Round to complete last sample with zeros
	for(size_t i = 0; i < sample_vec.size(); i += length)
	{
		for(size_t j = 0; j < length;j++)
		{
			sample_vec[i + j] = sample_vec[i + j]*(0.54 - 0.46*cos((6.28318548202 * j)/(length-1)));
		}
	}
	return sample_vec;
}

/* vector<float> overlap_add(vector<float> windowed_sample, size_t length)
{
	bool valid = true;
	int devmem_fd = 0;
	size_t mid = length/2;
	devmem_fd = open("/dev/mem", O_RDWR | O_SYNC);
	vector<float> overlap(mid, 0.0);
	vector<float> output;
	if(devmem_fd < 0)
	{
		perror("devmem open.");
		exit(EXIT_FAILURE);
	}
	for(size_t i = mid; i < windowed_sample.size(); i += mid)
	{
		for(size_t j = i - mid; j < i + mid; j++)
		{
			mmap_write(devmem_fd, FPGA_input_data, windowed_sample[j]);
			mmap_write(devmem_fd, FPGA_input_valid, float(valid));
			valid = !valid;
		}
		for(size_t k = length; k < pow(2,ceil(log2(length))); k++)	//Pad with zeros
		{
			mmap_write(devmem_fd, FPGA_input_data, float(0));
			mmap_write(devmem_fd, FPGA_input_valid, float(valid));
			valid = !valid;
		}
		while(bool(mmap_read(devmem_fd, FPGA_output_ready, sizeof(windowed_sample[0]))) == false) cout<<"\n waiting for FPGA output...";
		for(size_t m  = 0; m < length; m++)
		{
			uint32_t read_data = mmap_read(devmem_fd, FPGA_mem_start_addr + (sizeof(windowed_sample[0]) * m), sizeof(windowed_sample[0]));
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
		mmap_write(devmem_fd, FPGA_output_ready, float(0));
		
	}
	cout<<"\nOverlap-add done!\n";
	dbg.close();
	close(devmem_fd);
	return output;
} */
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
vector<float> none_overlap_add(vector<float> sample_vec, size_t length)
{
	int devmem_fd = 0;
	vector<float> output;
	void * input_virtual_base, * input_control_addr;
	void * output_virtual_base, * output_control_addr;
	devmem_fd = open("/dev/mem", O_RDWR | O_SYNC);
	if(devmem_fd < 0)
	{
		perror("devmem open.");
		exit(EXIT_FAILURE);
	}
	input_virtual_base = mmap(NULL, sizeof(float)*(pow(2,ceil(log2(length))) + 1),
	(PROT_READ | PROT_WRITE), MAP_SHARED, devmem_fd, FPGA_input_base & ~MAP_MASK);
	output_virtual_base = mmap(NULL, sizeof(float)*(pow(2,ceil(log2(length))) + 1),
	(PROT_READ | PROT_WRITE), MAP_SHARED, devmem_fd, FPGA_output_base & ~MAP_MASK);
	if((input_virtual_base == MAP_FAILED) or (output_virtual_base == MAP_FAILED))
	{
		perror("mmap failure.");
		exit(EXIT_FAILURE);
	}
	
	for(size_t i = 0; i < sample_vec.size(); i += length)
	{
		input_control_addr = input_virtual_base + (FPGA_input_base & MAP_MASK);
		output_control_addr = output_virtual_base + (FPGA_output_base & MAP_MASK);
		for(size_t j = 0; j < length; j++)
		{	
			float * tmp = (&sample_vec[j+i]);
			*((uint32_t *) (input_control_addr + (sizeof(float) * (j + 1))))= *reinterpret_cast<uint32_t*>(tmp);
		}
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
	cout<<"\nNone overlap-add Done!\n";
	dbg.close();
	if((munmap(output_virtual_base, sizeof(float)*(pow(2,ceil(log2(length))) + 1)) == -1) or (munmap(input_virtual_base, sizeof(float)*(pow(2,ceil(log2(length))) + 1)) == -1))
	{
		perror("munmap failure.");
		exit(EXIT_FAILURE);
	}
	close(devmem_fd);
	return output;
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int main()
{
	size_t length;
	char * path = (char*)malloc(16*sizeof(char));
	cout<<"Enter .wav file path:	";
	cin>>path;
	//Add extract header
	uint32_t SF = extract_SF(path);
	cout<<"\nInput sampling rate:	"<<SF<<"\n";
	cout<<"\nEnter window length in ms:	";
	cin>>length;
	length = (SF/1000)*length;
	vector<float> sample_vec = extract_sample(path);
	//vector<float> windowed_sample = hamming(sample_vec, length, SF);
	//overlap_add(windowed_sample,length);
	none_overlap_add(sample_vec, length);
	return 0;
}