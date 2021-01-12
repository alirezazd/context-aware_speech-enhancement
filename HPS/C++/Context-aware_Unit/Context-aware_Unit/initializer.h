#pragma once
#include <string>
#include <vector>
#include "paths.h"
#include "dir.h"
#include "Printm.h"
#include "Print_vect.h"
#include "FPGA_mgr.h"
#include "IO_mgr.h"
#include "Classifier.h"
#include "decision_unit.h"


class initializer
{
public:
	initializer();
	~initializer();
	void Initialize();
	bool Is_initialized();
	std::vector<std::string>& Get_rbf_list();
	FPGA_mgr* Get_FPGA_mgr();
	IO_mgr* Get_IO_mgr();
	Classifier* Get_Classifier();
	decision_unit* Get_decision_unit();
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
	FPGA_mgr* mgr;
	IO_mgr* IO;
	Classifier* classifier;
	decision_unit* DU;
};