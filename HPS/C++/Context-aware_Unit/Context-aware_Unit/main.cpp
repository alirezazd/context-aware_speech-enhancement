#include "FPGA_mgr.h"
#include "initializer.h"
#include "benchmark.h"
#include "IO_mgr.h"
#include "context_aware_unit.h"

//cooment
int main(int argc, const char* argv[]) {
	initializer init;
	context_Aware_Unit CAU(init.Get_FPGA_mgr(), init.Get_IO_mgr());
	CAU.manual_enhance("m3rmenue.wst", "MBSS");
	exit(0);
}