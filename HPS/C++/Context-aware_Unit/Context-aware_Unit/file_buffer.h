#pragma once
#include <fstream>
#include <string>
#include "printm.h"

class file_buffer
{
public:
	file_buffer(std::string);
	~file_buffer();

	char* data;
	long size;
};