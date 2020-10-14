#include "initializer.h"

initializer::initializer() {
	rbf_storage_path = RBF_STORAGE_PATH;
	classifier_model_path = TFLITE_MODEL_PATH;
	is_initialized = false;
}

bool initializer::Initialize() {
	printm('c'); printm('i', "Initialization started...");
	mgr = new FPGA_mgr;
	bool init_scucsess = Check_rbf_storage() &&
		Check_classifier_model() &&
		Check_MSEL_configuration() &&
		Verify_rbfs();
	if (init_scucsess) {
		printm('i', "Initialization phase passed.");
		is_initialized = true;
		return true;
	}
	printm('e', "Initialization phase failed.");
	return false;
}

bool initializer::Check_rbf_storage(){
	printm('i', "Checking rbf storage:\t");
	printm('r', rbf_storage_path);
	rbf_list = dir(rbf_storage_path.c_str(), ".rbf");
	if (rbf_list.size() == 0) {
		printm('e', "No bitsreams available in the bitsream storage.");
		return false;
	}
	print_vect(rbf_list, printm('i', "List of available bitsreams:", 0, false));
	return true;
}

bool initializer::Check_classifier_model() {
	printm('i', "Checking classifier model directory:\t");
	printm('r', classifier_model_path);
	classifer_model_list = dir(classifier_model_path.c_str(), ".tflite");
	if (classifer_model_list.size() == 0) {
		printm('e', "No classifier model available in the model directory.");
		return false;
	}
	if (classifer_model_list.size() > 1) {
		printm('w', "Multiple Classifier models available in the model directory!");
		print_vect(classifer_model_list, printm('i', "List of available Tensorflow lite models:", 0, false));
	}
	printm('i', "Using following classifier model:\t" + classifer_model_list[0]);
	classifer_model_name = classifer_model_list[0];
	return true;
}

bool initializer::Check_MSEL_configuration() {
	if (mgr -> Check_MSEL()) return true;
	return false;
}

bool initializer::Verify_rbfs() {
	printm('i', "Verifying rbf storage...");
	for (std::vector<std::string>::iterator it = std::begin(rbf_list); it !=  std::end(rbf_list); ++it) {
		if (!(mgr -> Reconfig(*it))) {
			printm('e', "Cannot configure FPGA with\t"+*it);
			return false;
		}
	}
	printm('i', "All rbfs are usable, verification passed.");
	return true;
}

FPGA_mgr initializer::get_mgr() {
	if (!is_initialized) {
		printm('w', "get_mgr() called before initialization, initialization routine automatically called to create the FPGA_mgr object.");
		Initialize();
	}
	return *mgr;
 }

initializer::~initializer() {
	delete mgr;
}