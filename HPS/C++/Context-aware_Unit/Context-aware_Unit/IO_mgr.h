#pragma once
#include <cstdio>
#include <cmath>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <string>
#include <vector>
#include "printm.h"
#include "adresses.h"
#include "wst.h"
#include "fixdt.h"
#include "config.h"
#include "paths.h"
//cooment
class IO_mgr
{
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
	
public:
	IO_mgr();
	~IO_mgr();
	void Map_FPGA_IO();
	void Umap_FPGA_IO();
	void Load_wst_file(std::string wst_name);
	void Write_wst_file(std::string wst_name);
	void Write_vect_frame(std::vector<float> &frame_buffer);
	std::vector<int16_t> Read_vect_frame();
	void Process_next_wst_frame();
	void Process_whole_wst_file();
	float Get_SNR_dB();
	void Reset_frame_counter();
	size_t Get_current_frame_index();
	size_t Get_total_frames();
};
