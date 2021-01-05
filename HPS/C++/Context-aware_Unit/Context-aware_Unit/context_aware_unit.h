#pragma once
#include <vector>
#include <string>
#include "FPGA_mgr.h"
#include "IO_mgr.h"
#include "Classifier.h"
#include "paths.h"
class context_aware_unit
{
private:
	FPGA_mgr* fpga;
	IO_mgr* IO;
	Classifier* classifier;
public:
	context_aware_unit(FPGA_mgr*, IO_mgr*, Classifier*);
	void Manual_enhance(std::vector<std::string>, std::vector<std::string>);
	void debug(int , float);
};