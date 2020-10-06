#include"is_file_exist.h"
bool is_file_exist(const char* fileName)
{
	std::ifstream infile(fileName);
	return infile.good();
}