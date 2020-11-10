#include "FPGA_mgr.h"

volatile void* __hps_virtualAdreess_FPGAMGR;
volatile void* __hps_virtualAdreess_FPGAMFRDATA;
volatile int __fd;

FPGA_mgr::FPGA_mgr()
	:rbf_storage_path(RBF_STORAGE_PATH){
	printm('i', "Mapping FPGA-MANAGER address space...");
	__VIRTUALMEM_SPACE_INIT();
}

void FPGA_mgr::Call_mgr(){
	alt_fpga_init();
	alt_fpga_control_enable();
}

void FPGA_mgr::Reconfig(std::string rbf_name){
	file_buffer buf((rbf_storage_path + rbf_name).c_str());
	printm('i', "Configuring FPGA with:\t" + rbf_name);
	Call_mgr();
	ALT_STATUS_CODE status = alt_fpga_configure(buf.data, buf.size);
	alt_fpga_control_disable();
	Check_status_code(status);
	current_rbf = rbf_name;
}

void FPGA_mgr::Check_status_code(ALT_STATUS_CODE status){
	if (status != ALT_E_SUCCESS){
		printm('e', "FPGA configuration failed.");
		exit(1);
	}
	else{
		printm('i', "FPGA configured successfully.");
	}
}

void FPGA_mgr::Check_MSEL() {
	printm('i', "Checking MSEL switch configuration...");
	Call_mgr();
	ALT_FPGA_CFG_MODE_t st = alt_fpga_cfg_mode_get();	// read the MSEL-switch postion	
	if ((st != ALT_FPGA_CFG_MODE_PP16_SLOW_NOAES_NODC) && (st != ALT_FPGA_CFG_MODE_PP16_SLOW_AES_NODC))
	{
		printm('e', "Wrong MSEL switch configuration detected.\n\tFollowing MSEL selections are acceptable : \n\tMSEL = 00100:\tPP16 with no AES and no Data compression.\n\tMSEL = 00101:\tPP16 with AES and no Data compression.");
		exit(1);
	}
	printm('i', "MSEL switch check passed.");
}

void FPGA_mgr::Reconfig_minimal(std::string rbf_name) {
	file_buffer buf((rbf_storage_path + rbf_name).c_str());
	alt_fpga_init();
	alt_fpga_control_enable();
	alt_fpga_configure(buf.data, buf.size);
	alt_fpga_control_disable();
	current_rbf = rbf_name;
}

std::string FPGA_mgr::Get_current_rbf() {
	return current_rbf;
}

FPGA_mgr::~FPGA_mgr() {
	printm('i', "Umapping FPGA-MANAGER address space...");
	__VIRTUALMEM_SPACE_DEINIT();
}