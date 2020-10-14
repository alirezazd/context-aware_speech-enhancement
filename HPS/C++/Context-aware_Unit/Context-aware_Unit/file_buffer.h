#pragma once
#include <fstream>
#include "printm.h"
class file_buffer
{
public:
	file_buffer(const char* path);
	~file_buffer();
	char* data;
	long size;
};

