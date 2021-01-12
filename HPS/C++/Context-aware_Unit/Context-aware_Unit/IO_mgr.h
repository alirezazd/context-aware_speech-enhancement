#pragma once
#include <cstdio>
#include <cmath>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <string>
#include <vector>
#include "Printm.h"
#include "adresses.h"
#include "wst.h"
#include "fixdt.h"
#include "config.h"
#include "paths.h"

class IO_mgr
{
	friend class benchmark;
public:
	IO_mgr();
	~IO_mgr();
	void Map_FPGA_IO();
	void Umap_FPGA_IO();
	void Load_wst_file(std::string);
	void Write_wst_file(std::string);
	void Write_vect_frame(std::vector<float>&);
	std::vector<int16_t> Read_vect_frame();
	void Process_next_wst_frame(unsigned int = 1);
	void Process_whole_wst_file();
	float Read_SNR_dB();
	float Read_SNR_dB2();
	int Read_location();
	void Reset_frame_counter();
	size_t Get_current_frame_index();
	size_t Get_total_frames();
	bool Get_mmap_state();
	void Debug(size_t);
private:
	void* virtual_base;
	void* FPGA_input_IF_FIFO_CTRL_ofst;
	void* FPGA_input_IF_FIFO_DATA_ofst;
	void* FPGA_output_IF_FIFO_CTRL_ofst;
	void* FPGA_output_IF_FIFO_DATA_ofst;
	void* FPGA_output_IF_feature_SNR_ofst;
	int fd;
	float frame_length;	//Frame length in seconds
	size_t frame_size;
	size_t total_frames;
	size_t current_frame_index;
	bool is_IO_mapped;
	wst wst_file;
	std::vector<int16_t> overlap_frame;

	void Translate_addresses();
	void Clear_addresses();
	void Write_next_wst_frame();
	void Read_wst_frame();
	void Wait_for_frame();
};
