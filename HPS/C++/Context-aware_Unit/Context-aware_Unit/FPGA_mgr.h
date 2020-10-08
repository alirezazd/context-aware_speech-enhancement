#pragma once
#include <cstdio>
#include <cstring>
#include <fstream>
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string>

#include "hps.h"
#include "alt_fpga_manager.h"
#include "printm.h"


class FPGA_mgr
{
private:

	ALT_STATUS_CODE Configure_FPGA(std::string path, std::string name);
	bool Check_config(ALT_STATUS_CODE status);

public:

	std::string curr_rbf;
	void Init_FPGA();
	bool Check_MSEL();
	FPGA_mgr();
	bool Reconfig_routine(std::string path, std::string rbf_name);
	~FPGA_mgr();
};