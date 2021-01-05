#include "wst.h"

void wst::Read(std::string wst_path, std::string wst_name) {
	wst_full_path = wst_path + wst_name;
	printm('i', "Reading wave stream file : ");
	printm('r', wst_full_path);
	Open_file();
	Read_properties();
	Allocate_vectors();
	Load_samples();
}

void wst::Open_file() {

	input_wst_file.open(wst_full_path.c_str(), std::ios::binary | std::ios::ate);
	if (!input_wst_file.is_open()) {
		printm('e', "Failed to open " + wst_full_path);
	}
}

void wst::Read_properties() {
	file_size_bytes = (size_t)input_wst_file.tellg();
	printm('i', "file size = " + std::to_string(file_size_bytes / 1024) + "KB.");
	samples_count = (file_size_bytes / DATA_WIDTH_BYTES);
	printm('i', "Total Samples count = " + std::to_string(samples_count) + ".");
	input_wst_file.seekg(0, std::ios::beg);
}

void wst::Allocate_vectors() {
	input_samples_vect.resize(samples_count);
	processed_samples_vect.resize(samples_count);
}

void wst::Load_samples() {
	std::vector<char> buffer(file_size_bytes);
	input_wst_file.read(&buffer[0], file_size_bytes);
	input_wst_file.close();
	memcpy(&input_samples_vect[0], &buffer[0] , file_size_bytes);
}

void wst::Write(std::string wst_path, std::string wst_name) {
	wst_full_path = wst_path + wst_name;
	printm('i', "Writing wave stream file : ");
	printm('r', wst_full_path);
	Write_file();
}

void wst::Write_file() {
	char* buffer = new char[file_size_bytes];
	memcpy(&buffer[0], &processed_samples_vect[0], file_size_bytes);
	output_wst_file.open(wst_full_path.c_str(), std::ios::binary);
	if (!output_wst_file.is_open()) {
		printm('e', "Failed to create " + wst_full_path);
	}
	output_wst_file.write(buffer, file_size_bytes);
	delete buffer;
	output_wst_file.close();
}