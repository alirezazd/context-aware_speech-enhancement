#pragma once
#include <string>
#include <vector>
#include "paths.h"
#include "dir.h"
#include "printm.h"
#include "print_vect.h"
#include "FPGA_mgr.h"
#include "IO_mgr.h"

class initializer
{
public:
	initializer();
	~initializer();
	void Initialize();
	bool Is_initialized();
	std::string* Get_classifer_model_name();
	std::vector<std::string>* Get_rbf_list();
	FPGA_mgr* Get_FPGA_mgr();
	IO_mgr* Get_IO_mgr();
private:
	void Check_rbf_storage();
	void Check_classifier_model();
	void Verify_rbfs();
	void Check_rbf_compatibility();
	
	std::string classifer_model_name;
	std::vector<std::string> rbf_list;
	bool is_initialized;
	std::string rbf_storage_path;
	std::string classifier_model_path;
	FPGA_mgr *mgr;
	IO_mgr* IO;
};

