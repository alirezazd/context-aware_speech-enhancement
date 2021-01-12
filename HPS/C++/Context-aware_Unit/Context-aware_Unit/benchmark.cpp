#include "benchmark.h"

benchmark::benchmark(FPGA_mgr* fpga_, IO_mgr* IO_, Classifier* clsfr_, std::vector<std::string> _rbf_list)
	:fpga(fpga_), IO(IO_), clsfr(clsfr_) {
	rbf_list = _rbf_list;
	Init();
}

float benchmark::FPGA_config_time() {
	Printm('i', "Measuring average FPGA reconfiguration time...");
	do {
		for (std::vector<std::string>::iterator it = std::begin(rbf_list); it != std::end(rbf_list); ++it) {
			t1 = std::chrono::high_resolution_clock::now();
			fpga->Reconfig_minimal(*it);
			t2 = std::chrono::high_resolution_clock::now();
			count++;
			std::chrono::duration<float> time_span = std::chrono::duration_cast<std::chrono::duration<float>>(t2 - t1);
			time_measures_vect.push_back(time_span.count());
		}
		stde = Standard_error(time_measures_vect);
		mean = Mean(time_measures_vect);
	} while (stde >= accuracy * mean);
	Printm('i', "Average reconfiguration time for FPGA after total number of " + std::to_string(count) + " experiments is:\t" + std::to_string(mean) + "(s).");
	Printm('r', "Standard error:\t" + std::to_string(stde) + "(s).");
	Init();
	return mean;
}

float benchmark::frame_process_time() {
	Printm('i', "Measuring average FPGA frame process time...");
	IO->Load_wst_file("test.wst");
	IO->Map_FPGA_IO();
	do {
		IO->Write_next_wst_frame();
		t1 = std::chrono::high_resolution_clock::now();
		IO->Wait_for_frame();
		t2 = std::chrono::high_resolution_clock::now();
		count++;
		std::chrono::duration<float> time_span = std::chrono::duration_cast<std::chrono::duration<float>>(t2 - t1);
		time_measures_vect.push_back(time_span.count());
		IO->Read_wst_frame();
		IO->current_frame_index++;
		stde = Standard_error(time_measures_vect);
		mean = Mean(time_measures_vect);
	} while (stde >= accuracy * mean);
	Printm('i', "Average FPGA frame process time after total number of " + std::to_string(count) + " experiments is:\t" + std::to_string(mean) + "(s).");
	Printm('r', "Standard error:\t" + std::to_string(stde) + "(s).");
	Init();
	IO->Umap_FPGA_IO();
	return mean;
}

float benchmark::frame_Write_time() {
	Printm('i', "Measuring average FPGA frame write time...");
	IO->Load_wst_file("test.wst");
	IO->Map_FPGA_IO();
	do {
		t1 = std::chrono::high_resolution_clock::now();
		IO->Write_next_wst_frame();
		t2 = std::chrono::high_resolution_clock::now();
		std::chrono::duration<float> time_span = std::chrono::duration_cast<std::chrono::duration<float>>(t2 - t1);
		time_measures_vect.push_back(time_span.count());
		stde = Standard_error(time_measures_vect);
		mean = Mean(time_measures_vect);
		IO->Wait_for_frame();
		count++;
		IO->Read_wst_frame();
		IO->current_frame_index++;
	} while (stde >= accuracy * mean);
	Printm('i', "Average FPGA frame write time after total number of " + std::to_string(count) + " experiments is:\t" + std::to_string(mean) + "(s).");
	Printm('r', "Standard error:\t" + std::to_string(stde) + "(s).");
	Init();
	IO->Umap_FPGA_IO();
	return mean;
}

float benchmark::frame_Read_time() {
	Printm('i', "Measuring average FPGA frame read time...");
	IO->Load_wst_file("test.wst");
	IO->Map_FPGA_IO();
	do {
		IO->Write_next_wst_frame();
		IO->Wait_for_frame();
		count++;
		t1 = std::chrono::high_resolution_clock::now();
		IO->Read_wst_frame();
		t2 = std::chrono::high_resolution_clock::now();
		IO->current_frame_index++;
		std::chrono::duration<float> time_span = std::chrono::duration_cast<std::chrono::duration<float>>(t2 - t1);
		time_measures_vect.push_back(time_span.count());
		stde = Standard_error(time_measures_vect);
		mean = Mean(time_measures_vect);
	} while (stde >= accuracy * mean);
	Printm('i', "Average FPGA frame read time after total number of " + std::to_string(count) + " experiments is:\t" + std::to_string(mean) + "(s).");
	Printm('r', "Standard error:\t" + std::to_string(stde) + "(s).");
	Init();
	IO->Umap_FPGA_IO();
	return mean;
}

float benchmark::overall_throughput() {
	Printm('i', "Measuring average FPS...");
	IO->Load_wst_file("test.wst");
	IO->Map_FPGA_IO();
	do {
		t1 = std::chrono::high_resolution_clock::now();
		IO->Write_next_wst_frame();
		IO->Wait_for_frame();
		count++;
		IO->Read_wst_frame();
		IO->current_frame_index++;
		t2 = std::chrono::high_resolution_clock::now();
		std::chrono::duration<float> time_span = std::chrono::duration_cast<std::chrono::duration<float>>(t2 - t1);
		time_measures_vect.push_back(time_span.count());
		stde = Standard_error(time_measures_vect);
		mean = Mean(time_measures_vect);
	} while (stde >= accuracy * mean);
	Printm('i', "Average total frame process time after total number of " + std::to_string(count) + " experiments is:\t" + std::to_string(mean) + "(S).");
	Printm('r', "Standard error:\t" + std::to_string(stde) + "(s).");
	Printm('i', "Average system FPS total number of " + std::to_string(count) + " experiments is:\t" + std::to_string(1 / mean) + "FPS.");
	Init();
	IO->Umap_FPGA_IO();
	return mean;
}

float benchmark::classifier_prediction_time() {
	Printm('i', "Measuring average classifier prediction time...");
	do {
		t1 = std::chrono::high_resolution_clock::now();
		clsfr->Predict(0, 0.0f);
		t2 = std::chrono::high_resolution_clock::now();
		std::chrono::duration<float> time_span = std::chrono::duration_cast<std::chrono::duration<float>>(t2 - t1);
		time_measures_vect.push_back(time_span.count());
		stde = Standard_error(time_measures_vect);
		mean = Mean(time_measures_vect);
} while (stde >= accuracy * mean);
Printm('i', "Average prediction time for classifier after total number of " + std::to_string(count) + " experiments is:\t" + std::to_string(mean) + "(s).");
Printm('r', "Standard error:\t" + std::to_string(stde) + "(s).");
Init();
return mean;
}

void benchmark::Init() {
	accuracy = 1.0e-2f;
	time_measures_vect.clear();
	count = 0;
	mean = stde = 0.0f;
}