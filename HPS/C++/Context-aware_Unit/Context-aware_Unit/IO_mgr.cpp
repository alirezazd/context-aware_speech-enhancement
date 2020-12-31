#include "IO_mgr.h"

IO_mgr::IO_mgr()
	:frame_length(DEFAULT_FRAME_LENGTH), frame_size((unsigned int)(frame_length* SF)), current_frame_index(0), is_IO_mapped(false) {
	printm('i', "Default frame length is : " + std::to_string(DEFAULT_FRAME_LENGTH * 1000) + "s.");
	fd = open("/dev/mem", O_RDWR | O_SYNC);
	if (fd < 0) {
		printm('e', "Failed to set IO_mgr file descriptor at:\t/dev/mem.");
		exit(1);
	}
	printm('i', "IO managr file descriptor at\t/dev/mem opened successfully.");
	overlap_frame.resize(frame_size / 2);
}

void IO_mgr::Map_FPGA_IO() {
	if (is_IO_mapped) {
		printm('w', "Recieved FPGA IO map request while is already mapped.");
	}
	else {
		virtual_base = mmap(NULL, DATA_WIDTH_BYTES * FPGA_SPAN_WIDTH,
			(PROT_READ | PROT_WRITE), MAP_SHARED, fd, (HPS2FPGA_OFST + FPGA_OFST) & ~MAP_MASK);
		if (virtual_base == MAP_FAILED)
		{
			printm('e', "Failed to mmap FPGA I/O span.");
			exit(1);
		}
		printm('i', "FPGA I/O span memory-mapped successfully.");
		is_IO_mapped = true;
		Translate_addresses();
	}
}

void IO_mgr::Umap_FPGA_IO() {
	if (!is_IO_mapped) {
		printm('w', "Recieved FPGA IO unmap request while is already unmapped.");
	}
	if (munmap(virtual_base, DATA_WIDTH_BYTES * FPGA_SPAN_WIDTH) == -1) {
		printm('e', "Failed to unmap FPGA I/O span.");
		exit(1);
	}
	printm('i', "FPGA I/O span unmapped successfully.");
	is_IO_mapped = false;
	Clear_addresses();
}

void IO_mgr::Translate_addresses() {
	printm('i', "Settting FPGA IO IFs address space...");
	FPGA_input_IF_FIFO_CTRL_ofst = virtual_base + ((HPS2FPGA_OFST + FPGA_INPUT_IF_FIFO_CTRL_OFST) & MAP_MASK);
	FPGA_input_IF_FIFO_DATA_ofst = virtual_base + ((HPS2FPGA_OFST + FPGA_INPUT_IF_FIFO_DATA_OFST) & MAP_MASK);
	FPGA_output_IF_FIFO_CTRL_ofst = virtual_base + ((HPS2FPGA_OFST + FPGA_OUTPUT_IF_FIFO_CTRL_OFST) & MAP_MASK);
	FPGA_output_IF_FIFO_DATA_ofst = virtual_base + ((HPS2FPGA_OFST + FPGA_OUTPUT_IF_FIFO_DATA_OFST) & MAP_MASK);
	FPGA_output_IF_feature_SNR_ofst = virtual_base + ((HPS2FPGA_OFST + FPGA_OUTPUT_IF_FEATURE_SNR_OFST) & MAP_MASK);
}

void IO_mgr::Clear_addresses() {
	printm('i', "Unsettting FPGA IO IFs address space...");
	virtual_base = nullptr;
	FPGA_input_IF_FIFO_CTRL_ofst = nullptr;
	FPGA_input_IF_FIFO_DATA_ofst = nullptr;
	FPGA_output_IF_FIFO_CTRL_ofst = nullptr;
	FPGA_output_IF_FIFO_DATA_ofst = nullptr;
	FPGA_output_IF_feature_SNR_ofst = nullptr;
}

void IO_mgr::Load_wst_file(std::string wst_name) {
	wst_file.Read(WST_FILE_INPUT_PATH, wst_name);
	total_frames = (size_t)ceil(wst_file.processed_samples_vect.size() / frame_size);
	Reset_frame_counter();
}


void IO_mgr::Write_wst_file(std::string wst_name) {
	wst_file.Write(WST_FILE_OUTPUT_PATH, wst_name);
}

void IO_mgr::Process_next_wst_frame() {
	Write_next_wst_frame();
	Wait_for_frame();
	Read_wst_frame();
	current_frame_index++;
}

void IO_mgr::Process_whole_wst_file() {
	while (current_frame_index < (2 * total_frames))
	{
		Process_next_wst_frame();
	}
}
void IO_mgr::Write_next_wst_frame() {
	if (!is_IO_mapped) {
		printm('e', "IO write request while FPGA IO IFs are not mapped.");
		exit(1);
	}
	for (size_t i = current_frame_index * (frame_size / 2); i < ((current_frame_index + 2) * (frame_size / 2)); i++) {
		*((int16_t*)(FPGA_input_IF_FIFO_DATA_ofst + (DATA_WIDTH_BYTES * (i - (current_frame_index * (frame_size / 2)))))) = wst_file.input_samples_vect[i];
	}
	*((int16_t*)(FPGA_input_IF_FIFO_CTRL_ofst)) = to_fixed(1.0f, FPGA_INPUT_IF_FRACTIONAL_BITS);
}

void IO_mgr::Read_wst_frame() {
	if (!is_IO_mapped) {
		printm('e', "IO read request while FPGA IO IFs are not mapped.");
		exit(1);
	}
	for (size_t i = current_frame_index * frame_size; i < (current_frame_index + 1) * frame_size; i++) {
		if (i < ((current_frame_index * frame_size) + (frame_size / 2))) {
			wst_file.processed_samples_vect[i - (current_frame_index * (frame_size / 2))] = to_fixed(to_float(*((int16_t*)(FPGA_output_IF_FIFO_DATA_ofst + (DATA_WIDTH_BYTES * (i - (current_frame_index * frame_size))))), 10) + to_float(overlap_frame[i - (current_frame_index * frame_size)], 10), 10);
		}
		else {
			overlap_frame[i - ((current_frame_index * frame_size) + (frame_size / 2))] = *((int16_t*)(FPGA_output_IF_FIFO_DATA_ofst + (DATA_WIDTH_BYTES * (i - (current_frame_index * frame_size)))));
		}
	}
	*((int16_t*)FPGA_output_IF_FIFO_CTRL_ofst) = 0;
}


void IO_mgr::Write_vect_frame(std::vector<float>& frame_buffer) {
	if (!is_IO_mapped) {
		printm('e', "IO write request while FPGA IO IFs are not mapped.");
		exit(1);
	}
	if (frame_buffer.size() > frame_size) printm('w', "Frame_buffer size is greater than FPGA IO span. writing only first " + std::to_string(frame_size) + " samples.");
	for (size_t i = 0; i < frame_size; i++) {
		*((int16_t*)(FPGA_input_IF_FIFO_DATA_ofst + (DATA_WIDTH_BYTES * i))) = to_fixed(frame_buffer[i], FPGA_INPUT_IF_FRACTIONAL_BITS);
	}
	*((int16_t*)(FPGA_input_IF_FIFO_CTRL_ofst)) = to_fixed(1, FPGA_INPUT_IF_FRACTIONAL_BITS);
}

std::vector<int16_t> IO_mgr::Read_vect_frame() {
	std::vector<int16_t> frame_buffer(frame_size, 0);
	if (!is_IO_mapped) {
		printm('e', "IO read request while FPGA IO IFs are not mapped.");
		exit(1);
	}
	for (size_t i = 0; i < frame_size; i++) {
		frame_buffer[i] = *((int16_t*)(FPGA_output_IF_FIFO_DATA_ofst + (DATA_WIDTH_BYTES * i)));
	}
	*((int16_t*)FPGA_output_IF_FIFO_CTRL_ofst) = 0;
	return frame_buffer;
}

void IO_mgr::Wait_for_frame() {
	while (*((int16_t*)FPGA_output_IF_FIFO_CTRL_ofst) == 0) {
		usleep(1);
	}
}

float IO_mgr::Get_SNR_dB() {
	if (!is_IO_mapped) {
		printm('e', "IO read request while FPGA IO IFs are not mapped.");
		exit(1);
	}
	return to_float(*((int16_t*)(FPGA_output_IF_feature_SNR_ofst)), 7);
}

size_t IO_mgr::Get_current_frame_index() {
	return current_frame_index;
}

size_t IO_mgr::Get_total_frames() {
	return total_frames;
}

void IO_mgr::Reset_frame_counter() {
	current_frame_index = 0;
}

void IO_mgr::Debug(size_t dbg_fs) {
	while (current_frame_index < (2 * total_frames))
	{
		Write_next_wst_frame();
		Wait_for_frame();
		if (!is_IO_mapped) {
			printm('e', "IO read request while FPGA IO IFs are not mapped.");
			exit(1);
		}
		for (size_t i = current_frame_index * dbg_fs; i < (current_frame_index + 1) * dbg_fs; i++) {
			wst_file.processed_samples_vect[i] = *((uint16_t*)(FPGA_output_IF_FIFO_DATA_ofst + (DATA_WIDTH_BYTES * (i - (current_frame_index * dbg_fs)))));
		}
		*((int16_t*)FPGA_output_IF_FIFO_CTRL_ofst) = 0;
		current_frame_index++;
	}
}

IO_mgr::~IO_mgr() {
	close(fd);
	if (is_IO_mapped) {
		Umap_FPGA_IO();
	}
}