#pragma once
#include <vector>
#include <string>
#include "FPGA_mgr.h"
#include "IO_mgr.h"
#include "paths.h"
#include "decision_unit.h"
#include "Timer.h"
#include "Find_vect.h"

class context_aware_unit
{
public:
	context_aware_unit(FPGA_mgr*, IO_mgr*, decision_unit*, std::vector<std::string>&);
	void Manual_enhance(std::vector<std::string>, std::vector<std::string>);
	void Auto_enhance(std::vector<std::string>);
private:
	FPGA_mgr* fpga;
	IO_mgr* IO;
	decision_unit* DU;
	std::vector<std::string>& rbf_list;
	Timer adapt_timer;
	Timer RT_timer0;
	Timer RT_timer1;
	int selected_algorithm;

	void Adapt();
};