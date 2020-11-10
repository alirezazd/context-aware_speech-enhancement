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
private:
	void Check_status_code(ALT_STATUS_CODE status);
	void Call_mgr();

	std::string current_rbf;
	std::string rbf_storage_path;
public:
	FPGA_mgr();
	~FPGA_mgr();
	void Check_MSEL();
	void Reconfig(std::string rbf_name);
	void Reconfig_minimal(std::string rbf_name);
	std::string Get_current_rbf();
};//cooment