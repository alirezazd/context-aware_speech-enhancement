#pragma once
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string>
#include <chrono>
#include "hps.h"
#include "file_buffer.h"
#include "alt_fpga_manager.h"
#include "Printm.h"
#include "paths.h"
#include "config.h"

class FPGA_mgr {
public:
	unsigned long int total_reconfig_count;
	float reconfig_time_span;

	FPGA_mgr();
	~FPGA_mgr();
	void Check_MSEL();
	void Reconfig(std::string);
	void Reconfig_minimal(std::string);
	std::chrono::high_resolution_clock::time_point Get_last_reconfig_time();
	std::string Get_current_rbf();
	unsigned long int Get_total_reconfig_count();
	void Reset_reconfig_count();
	float Get_reconfig_time_span();

private:
	std::string current_rbf;
	std::string rbf_storage_path;
	std::chrono::high_resolution_clock::time_point last_reconfig_time;

	void Check_status_code(ALT_STATUS_CODE);
	void Call_mgr();
	void Set_reconfig_time();
};