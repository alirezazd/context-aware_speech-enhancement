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
	bool Is_initialized();
	std::string* Get_classifer_model_name();
	std::vector<std::string>* Get_rbf_list();
	FPGA_mgr* Get_FPGA_mgr();
private:
	bool Check_rbf_storage();
	bool Check_classifier_model();
	bool Verify_rbfs();
	bool Check_MSEL_configuration();
	
	std::string classifer_model_name;
	std::vector<std::string> rbf_list;
	bool is_initialized;
	std::string rbf_storage_path;
	std::string classifier_model_path;
	FPGA_mgr *mgr;
};

