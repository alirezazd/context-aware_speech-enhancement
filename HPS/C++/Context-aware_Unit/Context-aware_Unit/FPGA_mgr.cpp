#include "FPGA_mgr.h"

volatile void* __hps_virtualAdreess_FPGAMGR;
volatile void* __hps_virtualAdreess_FPGAMFRDATA;
volatile int __fd;

FPGA_mgr::FPGA_mgr(){

	printm('i', "Mapping FPGA-MANAGER adress space...");
	__VIRTUALMEM_SPACE_INIT();
}

void FPGA_mgr::Init_FPGA()
{
	printm('i', "Initializing FPGA-MANAGER...");
	alt_fpga_init();
	alt_fpga_control_enable();
}


bool FPGA_mgr::Reconfig_routine(std::string path, std::string rbf_name){
	if (!Check_config(Configure_FPGA(path.c_str(), rbf_name))) return false;
	return true;
}

bool FPGA_mgr::Check_MSEL(){
	ALT_FPGA_CFG_MODE_t st = alt_fpga_cfg_mode_get();	// read the MSEL-switch postion	
	if ((st != ALT_FPGA_CFG_MODE_PP16_SLOW_NOAES_NODC) && (st != ALT_FPGA_CFG_MODE_PP16_SLOW_AES_NODC))	//check MSEL
	{
		printm('e', "Failed to write the FPGA configuration.\n\tWrong MSEL switch posision detected.\n\tFollowing MSEL selections are acceptable : \n\tMSEL = 00100:\tPP16 with no AES and no Data compression.\n\tMSEL = 00101:\tPP16 with AES and no Data compression.");
		alt_fpga_control_disable();
		return false;
	}
	printm('i', "MSEL switch check passed!");
	return true;
}

ALT_STATUS_CODE FPGA_mgr::Configure_FPGA(std::string path, std::string rbf_name)
{
	printm('i', "Configuring FPGA with\t" + rbf_name);
	FILE* f = fopen(path.c_str(), "rb");
	fseek(f, 0, SEEK_END);
	long fsize = ftell(f);
	fseek(f, 0, SEEK_SET);

	char* buf = new char[fsize + 1];
	fread(buf, 1, fsize, f);
	fclose(f);

	// Start to write the FPGA Configuration
	ALT_STATUS_CODE status = alt_fpga_configure(buf, fsize);
	curr_rbf = rbf_name;
	return status;
}

bool FPGA_mgr::Check_config(ALT_STATUS_CODE status) {
	if (status != ALT_E_SUCCESS)
	{
		alt_fpga_control_disable();
		printm('e', "FPGA configuration failed!");
		return false;
	}

	else
	{
		alt_fpga_control_disable();
		printm('i', "FPGA configured successfully.");
		return true;
	}
}

FPGA_mgr::~FPGA_mgr()
{
	__VIRTUALMEM_SPACE_DEINIT();
}