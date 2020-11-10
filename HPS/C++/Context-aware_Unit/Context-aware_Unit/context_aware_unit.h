#pragma once
#include "FPGA_mgr.h"
#include "IO_mgr.h"
#include "paths.h"

class context_Aware_Unit
{
private:
	FPGA_mgr* fpga;
	IO_mgr* IO;
	bool operation_mode;
	std::string selected_algorithm;
public:
	context_Aware_Unit(FPGA_mgr* fpga_, IO_mgr* IO_, bool mode = 0);
	void set_operation_mode(bool mode);
	void manual_enhance(std::string wave_file_name, std::string algorithm_name);
};

