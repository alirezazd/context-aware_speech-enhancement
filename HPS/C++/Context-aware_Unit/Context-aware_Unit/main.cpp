#include "main.h"
#include "paths.h"
int main(int argc, const char* argv[])
{
	FPGA FPGA;
	// change to a new selected FPGA configuration
	if ((argc > 2) && (std::string(argv[1]) == "-f"))
	{
		bool withOutput = !((argc > 3) && (std::string(argv[3]) == "-b"));
		bool res = FPGA.writeFPGAconfig(argv[2], withOutput);
		if (!withOutput) std::cout << res;
	}
	// restore the the boot up configuration 
	else if ((argc > 1) && (std::string(argv[1]) == "-r"))
	{
		bool withOutput = !((argc > 2) && (std::string(argv[2]) == "-b"));
		bool res = FPGA.writeFPGAconfig("/usr/rsyocto/running_bootloader_fpgaconfig.rbf", withOutput);
		if (!withOutput) std::cout << res;
	}
	else
	{
		std::cout << "	Command to change the FPGA fabric configuration" << std::endl;
		std::cout << "	for Cyclone V use following RBF (.rbf) config file settings" << std::endl;
		std::cout << "	MSEL=00100: PP16 with no AES and no Data compression" << std::endl;
		std::cout << "	MSEL=00101: PP16 with AES and no Data compression" << std::endl;
		std::cout << "	FPGA-writeConfig -f [config rbf file path] {-b [optional]}" << std::endl;
		std::cout << "		change the FPGA config with a selected .rbf file" << std::endl;
		std::cout << "	FPGA-writeConfig -r {-b [optional]}" << std::endl;
		std::cout << "		restore to the boot up FPGA configuration" << std::endl;
		std::cout << "		this conf File is located: /usr/rsyocto/running_bootloader_fpgaconfig.rbf" << std::endl;
		std::cout << "		suffix: -b -> only decimal result output" << std::endl;
		std::cout << "						Error:  0" << std::endl;
		std::cout << "						Succses:1" << std::endl;
	}
	return 0;
}