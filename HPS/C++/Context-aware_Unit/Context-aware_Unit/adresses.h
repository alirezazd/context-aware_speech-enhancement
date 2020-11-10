#pragma once
#define MAP_MASK 4095UL
#define HPS2FPGA_OFST	0xC0000000
#define HPS2FPGA_END	0xFBFFFFFF
#define DATA_WIDTH_BYTES 0x00000002
#define FPGA_SPAN_WIDTH 0x00000400
#define FPGA_OFST 0X00000000
#define FPGA_INPUT_IF_FIFO_CTRL_OFST	0x00000000
#define FPGA_INPUT_IF_FIFO_DATA_OFST	0x00000002
#define FPGA_OUTPUT_IF_FIFO_CTRL_OFST	0x00000322
#define FPGA_OUTPUT_IF_FIFO_DATA_OFST	0x00000324
#define	FPGA_OUTPUT_IF_FEATURE_SNR_OFST	0X00000644