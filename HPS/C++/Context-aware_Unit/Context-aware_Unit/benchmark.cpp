#include "benchmark.h"
//cooment
benchmark::benchmark(FPGA_mgr* _mgr, std::vector<std::string>* _rbf_list)
	:mgr(_mgr), rbf_list(_rbf_list){
	Init();
}

double benchmark::FPGA_config_time() {
	printm('i', "Measuring average FPGA reconfiguration time...");
	do {
		for (std::vector<std::string>::iterator it = std::begin(*rbf_list); it != std::end(*rbf_list); ++it) {
			t1 = std::chrono::high_resolution_clock::now();
			mgr -> Reconfig_minimal(*it);
			t2 = std::chrono::high_resolution_clock::now();
			count++;
			std::chrono::duration<double> time_span = std::chrono::duration_cast<std::chrono::duration<double>>(t2 - t1);
			time_measures_vect.push_back(time_span.count());
		}
		stde = stat.Standard_error(time_measures_vect);
		mean = stat.Mean(time_measures_vect);
	} while (stde >= accuracy * mean);
	printm('i', "Average reconfiguration time for FPGA after total number of " + std::to_string(count) + " experiments is:\t" + std::to_string(mean) + "(s).");
	printm('r', "Standard error:\t" + std::to_string(stde) + "(s).");
	Init();
	return mean;
}

void benchmark::Init() {
	accuracy = 1.0e-2;
	time_measures_vect.clear();
	count = 0; 
	mean = stde = 0.0;
}