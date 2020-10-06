#pragma once
#include <cstdio>
#include <cstring>
#include <iostream>

#include "hps.h"
#include "alt_fpga_manager.h"
#include "is_file_exist.h"

class FPGA
{
private:

public:
	FPGA();
	bool writeFPGAconfig(const char* configFileAdress, bool withOutput);
	~FPGA();
};

