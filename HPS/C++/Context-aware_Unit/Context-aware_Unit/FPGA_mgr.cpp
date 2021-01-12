#include "FPGA_mgr.h"

volatile void* __hps_virtualAdreess_FPGAMGR;
volatile void* __hps_virtualAdreess_FPGAMFRDATA;
volatile int __fd;

FPGA_mgr::FPGA_mgr()
	:total_reconfig_count(0), rbf_storage_path(RBF_STORAGE_PATH){
	Printm('i', "Mapping FPGA-MANAGER address space...");
	__VIRTUALMEM_SPACE_INIT();
}

void FPGA_mgr::Call_mgr() {
	alt_fpga_init();
	alt_fpga_control_enable();
}

void FPGA_mgr::Reconfig(std::string rbf_name) {
	file_buffer buf((rbf_storage_path + rbf_name).c_str());
	Printm('i', "Configuring FPGA with:\t" + rbf_name);
	Call_mgr();
	ALT_STATUS_CODE status = alt_fpga_configure(buf.data, buf.size);
	alt_fpga_control_disable();
	Check_status_code(status);
	Set_reconfig_time();
	total_reconfig_count++;
	current_rbf = rbf_name;
}

void FPGA_mgr::Check_status_code(ALT_STATUS_CODE status) {
	if (status != ALT_E_SUCCESS) {
		Printm('e', "FPGA configuration failed.");
		
	}
	else {
		Printm('i', "FPGA configured successfully.");
	}
}

void FPGA_mgr::Check_MSEL() {
	Printm('i', "Checking MSEL switch configuration...");
	Call_mgr();
	ALT_FPGA_CFG_MODE_t st = alt_fpga_cfg_mode_get();	// read the MSEL-switch postion	
	if ((st != ALT_FPGA_CFG_MODE_PP16_SLOW_NOAES_NODC) && (st != ALT_FPGA_CFG_MODE_PP16_SLOW_AES_NODC))
	{
		Printm('e', "Wrong MSEL switch configuration detected.\n\tFollowing MSEL selections are acceptable : \n\tMSEL = 00100:\tPP16 with no AES and no Data compression.\n\tMSEL = 00101:\tPP16 with AES and no Data compression.");
	}
	Printm('i', "MSEL switch check passed.");
}

void FPGA_mgr::Reconfig_minimal(std::string rbf_name) {
	file_buffer buf((rbf_storage_path + rbf_name).c_str());
	alt_fpga_init();
	alt_fpga_control_enable();
	alt_fpga_configure(buf.data, buf.size);
	alt_fpga_control_disable();
	Set_reconfig_time();
	current_rbf = rbf_name;
}

void FPGA_mgr::Set_reconfig_time() {
	last_reconfig_time = std::chrono::high_resolution_clock::now();
}

std::chrono::high_resolution_clock::time_point FPGA_mgr::Get_last_reconfig_time() {
	return last_reconfig_time;
}

std::string FPGA_mgr::Get_current_rbf() {
	return current_rbf;
}

unsigned long int FPGA_mgr::Get_total_reconfig_count() {
	return total_reconfig_count;
}

void FPGA_mgr::Reset_reconfig_count() {
	total_reconfig_count = 0;
}

float FPGA_mgr::Get_reconfig_time_span()
{
	if (total_reconfig_count > 0) reconfig_time_span = std::chrono::duration_cast<std::chrono::duration<float>>(std::chrono::high_resolution_clock::now() - last_reconfig_time).count();
	else reconfig_time_span = MIN_RECONFIG_TIME_SPAN;
	return reconfig_time_span;
}


FPGA_mgr::~FPGA_mgr() {
	Printm('i', "Umapping FPGA-MANAGER address space...");
	__VIRTUALMEM_SPACE_DEINIT();
}