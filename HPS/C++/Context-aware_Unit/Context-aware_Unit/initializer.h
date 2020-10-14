#pragma once
#include <string>
#include <vector>
#include "paths.h"
#include "dir.h"
#include "printm.h"
#include "print_vect.h"
#include "FPGA_mgr.h"

class initializer
{
	
public:
	initializer();
	~initializer();
	bool Initialize();
	FPGA_mgr get_mgr();
private:
	bool Check_rbf_storage();
	bool Check_classifier_model();
	bool Verify_rbfs();
	bool Check_MSEL_configuration();
	bool is_initialized;

	std::string classifier_model_path;
	std::string rbf_storage_path;
	std::vector<std::string> rbf_list;
	std::vector<std::string> classifer_model_list;
	std::string classifer_model_name;
	FPGA_mgr* mgr;
};

