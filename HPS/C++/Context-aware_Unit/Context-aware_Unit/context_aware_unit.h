#pragma once
#include "FPGA_mgr.h"
#include "IO_mgr.h"
#include "paths.h"

class context_aware_unit
{
private:
	FPGA_mgr* fpga;
	IO_mgr* IO;
	std::string selected_algorithm;
public:
	context_aware_unit(FPGA_mgr*, IO_mgr*);
	//void Enhance_manual_batch();
	//void Enhance_manual_batch(std::string);
	void Enhance_manual_single(std::string, std::string);
	//void Enhance_manual_single(std::string);
};