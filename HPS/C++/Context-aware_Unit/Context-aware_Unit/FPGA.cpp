#include "FPGA.h"

volatile void* __hps_virtualAdreess_FPGAMGR;
volatile void* __hps_virtualAdreess_FPGAMFRDATA;
volatile int __fd;

FPGA::FPGA(){
	__VIRTUALMEM_SPACE_INIT();
	alt_fpga_init();
	alt_fpga_control_enable();
}

bool FPGA::writeFPGAconfig(const char* configFileAdress, bool withOutput){
	/////////ceck vailed FPGA status  /////////
	// read the MSEL-switch postion	
	ALT_FPGA_CFG_MODE_t st = alt_fpga_cfg_mode_get();
	if ((st != ALT_FPGA_CFG_MODE_PP16_SLOW_NOAES_NODC) && (st != ALT_FPGA_CFG_MODE_PP16_SLOW_AES_NODC))
	{
		if (withOutput)
		{
			std::cout << "	EROR: The MSEL Switch is in the wrong postion!" << std::endl;
			std::cout << "	It is not posible to write the FPGA configuration" << std::endl;
			std::cout << "	Following MSEL selections are requiered" << std::endl;
			std::cout << "		MSEL=00100: PP16 with no AES and no Data compression" << std::endl;
			std::cout << "		MSEL=00101: PP16 with AES and no Data compression" << std::endl;
		}
		return false;
	}
	/// check if the input file exist  
	if (!is_file_exist(configFileAdress))
	{
		if (withOutput)
			std::cout << "	ERROR: The selected config file does not exsist!" << std::endl;
		return false;
	}
	/// Load the FPGA configuration file
	if (withOutput)
		std::cout << "	Start writing the new FPGA configuration" << std::endl;
	// Open rbf config and load them to an binary buffer into the Memory
	FILE* f = fopen(configFileAdress, "rb");
	fseek(f, 0, SEEK_END);
	long fsize = ftell(f);
	fseek(f, 0, SEEK_SET);

	char* buf = new char[fsize + 1];
	fread(buf, 1, fsize, f);
	fclose(f);

	// Start to write the FPGA Configuration
	ALT_STATUS_CODE status = alt_fpga_configure(buf, fsize);

	if (status != ALT_E_SUCCESS)
	{
		if (withOutput)
			std::cout << "	ERROR: Writing the FPGA configuration failed" << std::endl;
		return false;
	}
	else
	{
		if (withOutput)
			std::cout << "	Succses: The FPGA runs now with the new configuration" << std::endl;
		return true;
	}
	std::cout << "pass!";
	return false;
}
FPGA::~FPGA()
{
	alt_fpga_control_disable();
	__VIRTUALMEM_SPACE_DEINIT();
}