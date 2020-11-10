#pragma once
#include <cmath>
#include <string>
#include <vector>
#include <fstream>
#include <iterator>
#include <cstring>
#include <cstdio>
#include "printm.h"
#include "adresses.h"

class wst
{
private:
	bool read_flag;
	std::string path;
	std::ifstream input_wst_file;
	std::ofstream output_wst_file;
	size_t samples_count;
	size_t file_size_bytes;
	int16_t sample_buf;

	void Open_file();
	void Read_properties();
	void Write_file();
	void Allocate_vectors();
	void Load_samples();
public:
	std::vector<int16_t> processed_samples_vect;
	std::vector<int16_t> input_samples_vect;

	void Read(std::string wst_path);
	void Write(std::string wst_path);
};