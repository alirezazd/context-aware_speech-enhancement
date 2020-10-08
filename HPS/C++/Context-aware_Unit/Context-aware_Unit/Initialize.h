#pragma once
#include <vector>
#include <string>
#include "FPGA_mgr.h"
#include "paths.h"
#include "dir.h"
#include "printm.h"
#include "print_vect.h"

bool Initialize(std::string rbf_path, std::string model_path,FPGA_mgr &FPGA,
	std::vector<std::string> &rbf_list, std::vector<std::string> &tflite_model_list);