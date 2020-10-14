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
	bool Check_status_code(ALT_STATUS_CODE status);
	void Call_mgr();

	std::string rbf_storage_path;
public:
	FPGA_mgr();
	~FPGA_mgr();
	bool Check_MSEL();
	bool Reconfig(std::string rbf_name);

	std::string current_rbf;
};