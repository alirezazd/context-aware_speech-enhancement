#include "context_aware_unit.h"

context_aware_unit::context_aware_unit(FPGA_mgr* fpga_, IO_mgr* IO_, Classifier* classifer_)
	:fpga(fpga_), IO(IO_), classifier(classifer_) {}


void context_aware_unit::Manual_enhance(std::vector<std::string> wst_input_list, std::vector<std::string> rbf_list) {
	for (std::vector<std::string>::iterator wst_it = wst_input_list.begin(); wst_it != wst_input_list.end(); wst_it++) {
		for (std::vector<std::string>::iterator rbf_it = rbf_list.begin(); rbf_it != rbf_list.end(); rbf_it++) {
			fpga->Reconfig(*rbf_it);
			IO->Load_wst_file(*wst_it);
			IO->Map_FPGA_IO();
			IO->Process_whole_wst_file();
			IO->Write_wst_file((*rbf_it).substr(0, (*rbf_it).length() - (*rbf_it).find(".")) + "_" + *wst_it);
			IO->Umap_FPGA_IO();
		}
	}
}