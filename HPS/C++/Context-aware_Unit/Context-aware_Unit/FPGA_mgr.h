#pragma once
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string>
#include "hps.h"
#include "file_buffer.h"
#include "alt_fpga_manager.h"
#include "printm.h"
#include "paths.h"

class FPGA_mgr{
public:
	FPGA_mgr();
	~FPGA_mgr();
	void Check_MSEL();
	void Reconfig(std::string);
	void Reconfig_minimal(std::string);
	std::string Get_current_rbf();
private:
	std::string current_rbf;
	std::string rbf_storage_path;

	void Check_status_code(ALT_STATUS_CODE);
	void Call_mgr();
};