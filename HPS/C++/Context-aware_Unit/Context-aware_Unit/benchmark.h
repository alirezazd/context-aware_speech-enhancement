#pragma once
#include <ctime>
#include <ratio>
#include <chrono>
#include "statistics.h"
#include "initializer.h"
#include "FPGA_mgr.h"
#include "IO_mgr.h"
#include "Classifier.h"
#include "Printm.h"

class benchmark
{
private:
	FPGA_mgr* fpga;
	IO_mgr* IO;
	Classifier* clsfr;
	std::vector<std::string> rbf_list;
	std::vector<float> time_measures_vect;
	int count;
	std::chrono::high_resolution_clock::time_point t1;
	std::chrono::high_resolution_clock::time_point t2;
	void Init();
public:
	benchmark(FPGA_mgr*, IO_mgr*, Classifier*, std::vector<std::string>);
	float accuracy, mean, stde;
	float FPGA_config_time();
	float frame_process_time();
	float frame_Write_time();
	float frame_Read_time();
	float overall_throughput();
	float classifier_prediction_time();
};

