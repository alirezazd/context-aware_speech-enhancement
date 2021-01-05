#pragma once
#include <ctime>
#include <ratio>
#include <chrono>
#include "statistics.h"
#include "initializer.h"
#include "FPGA_mgr.h"
#include "printm.h"

class benchmark{
public:
	float accuracy, mean, stde;

	benchmark(FPGA_mgr*, std::vector<std::string>*);
	float FPGA_config_time();
private:
	std::vector<float> time_measures_vect;
	int count;
	std::chrono::high_resolution_clock::time_point t1;
	std::chrono::high_resolution_clock::time_point t2;
	FPGA_mgr* mgr;
	std::vector<std::string>* rbf_list;

	void Init();
};

