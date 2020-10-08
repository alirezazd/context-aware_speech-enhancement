#include "main.h"

int main(int argc, const char* argv[])
{
	std::vector<std::string> rbf_list;
	std::vector<std::string> tflite_model_list;
	printm('c'); printm('i', "Initialization started...");
	FPGA_mgr FPGA;
	if (!Initialize(rbf_storage_path, tflite_model_path, FPGA, rbf_list, tflite_model_list)) {
		printm('e', "Detected errors. Initialization phase failed. Exiting....");
		return 0;
	}
	return 0;
}