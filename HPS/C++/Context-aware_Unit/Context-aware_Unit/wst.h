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
public:
	std::vector<int16_t> processed_samples_vect;
	std::vector<int16_t> input_samples_vect;

	void Read(std::string, std::string);
	void Write(std::string, std::string);
	size_t Get_samples_count();
private:
	bool read_flag;
	std::string wst_full_path;
	std::ifstream input_wst_file;
	std::ofstream output_wst_file;
	size_t samples_count;
	size_t file_size_bytes;

	void Open_file();
	void Read_properties();
	void Write_file();
	void Allocate_vectors();
	void Load_samples();
};