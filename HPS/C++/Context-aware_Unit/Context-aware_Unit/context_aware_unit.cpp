#include "context_aware_unit.h"

context_aware_unit::context_aware_unit(FPGA_mgr* fpga_, IO_mgr* IO_)
	:fpga(fpga_), IO(IO_) {}

void context_aware_unit::Enhance_manual_single(std::string wave_file_name, std::string algorithm_name) {
	selected_algorithm = algorithm_name;
	fpga->Reconfig(selected_algorithm + ".rbf");
	IO->Load_wst_file(wave_file_name);
	IO->Map_FPGA_IO();
	IO->Process_whole_wst_file();
	IO->Write_wst_file(selected_algorithm + "-" + wave_file_name);
}