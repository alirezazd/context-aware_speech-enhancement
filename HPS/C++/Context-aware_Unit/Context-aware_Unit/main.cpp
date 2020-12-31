#include "FPGA_mgr.h"
#include "initializer.h"
#include "benchmark.h"
#include "IO_mgr.h"
#include "context_aware_unit.h"


int main(int argc, const char* argv[]) {
	initializer init;
	context_aware_unit CAU(init.Get_FPGA_mgr(), init.Get_IO_mgr());
	CAU.Enhance_manual_single("m1ltenae_white_0dB.wst", "MMSE");
	exit(0);
}