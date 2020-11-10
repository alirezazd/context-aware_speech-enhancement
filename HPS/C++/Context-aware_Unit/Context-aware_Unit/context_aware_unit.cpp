#include "context_aware_unit.h"
context_Aware_Unit::context_Aware_Unit(FPGA_mgr* fpga_, IO_mgr* IO_, bool mode)
	:fpga(fpga_), IO(IO_), operation_mode(mode){}

void context_Aware_Unit::manual_enhance(std::string wave_file_name, std::string algorithm_name) {
	if (!operation_mode) {
		selected_algorithm = algorithm_name;
		fpga->Reconfig(selected_algorithm + ".rbf");
		IO->Load_wst_file(wave_file_name);
		IO->Map_FPGA_IO();
		IO->Process_whole_wst_file();
		IO->Write_wst_file(algorithm_name + "-" + wave_file_name);
	}
	
}
void context_Aware_Unit::set_operation_mode(bool mode) {
	operation_mode = mode;
}