#include "context_aware_unit.h"

context_aware_unit::context_aware_unit(FPGA_mgr* fpga_, IO_mgr* IO_, decision_unit* DU_, std::vector<std::string>& rbf_list_)
	:fpga(fpga_), IO(IO_), DU(DU_), rbf_list(rbf_list_) {
	IO->Map_FPGA_IO();
}


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

void context_aware_unit::Auto_enhance(std::vector<std::string> wst_input_list) {
	for (std::vector<std::string>::iterator wst_it = wst_input_list.begin(); wst_it != wst_input_list.end(); wst_it++) {
		IO->Load_wst_file(*wst_it);
		while (IO->Get_current_frame_index() < (2 * IO->Get_total_frames())) {
			RT_timer0.Set_time_point();
			Adapt();
			IO->Process_next_wst_frame(2);
			RT_timer1.Set_time_point();
			while (RT_timer1.Get_value() <= DEFAULT_FRAME_LENGTH - RT_timer1.Get_value(RT_timer0.Get_time_point()))
			{
				(void)0;
			}
		}
		IO->Write_wst_file("AUTO_" + *wst_it);
	}
}

void context_aware_unit::Adapt() {
	if (adapt_timer.Get_value() >= ADAPT_TIME_SPAN) {
		adapt_timer.Set_time_point();
		selected_algorithm = DU->Make_decision(IO->Read_location(), IO->Read_SNR_dB2(), fpga->Get_reconfig_time_span(), Find_vect(fpga->Get_current_rbf(), rbf_list));
		if (selected_algorithm >= 0) {
			std::cout << "Reconfig isuued at smaple:" << (IO->Get_current_frame_index())*200 + 1 << std::endl;
			if (IO->Get_mmap_state()) IO->Umap_FPGA_IO();
			fpga->Reconfig(rbf_list[selected_algorithm]);
			IO->Map_FPGA_IO();
		}
	}
}