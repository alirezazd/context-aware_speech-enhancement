#include "Initialize.h"

bool Initialize(std::string rbf_path, std::string model_path, FPGA_mgr &FPGA,
	std::vector<std::string> &rbf_list, std::vector<std::string> &tflite_model_list) {

	printm('i', "Checking rbf storage:\t");
	printm('r', rbf_path);
	rbf_list = dir(rbf_path.c_str(), ".rbf");
	if (rbf_list.size() == 0) {
		printm('e', "No bitsreams available in the bitsream storage.");
		return false;
	}

	print_vect(rbf_list, printm('i', "List of available bitsreams:", 0, false));
	printm('i', "Checking Tensorflow lite model directory:\t");
	printm('r', model_path);
	tflite_model_list = dir(model_path.c_str(), ".tflite");
	if (tflite_model_list.size() == 0) {
		printm('e', "No Tensorflow lite model available in the model directory.");
		return false;
	}

	if (tflite_model_list.size() > 1) {
		printm('w', "Multiple Tensorflow lite models available in the model directory!");
		print_vect(tflite_model_list, printm('i', "List of available Tensorflow lite models:", 0, false));
		printm('i', "Following model will be used:\t");
		printm('r', tflite_model_list[0]);
	}
	else {
		printm('i', "Using following Tensorflow lite model:");
		printm('r', "\t" + tflite_model_list[0]);
	}

	if (!FPGA.Check_MSEL()) return false;
	FPGA.Init_FPGA();
	printm('i', "Initialization phase passed.");
	return true;
}