#include "FPGA_mgr.h"
#include "initializer.h"
#include "benchmark.h"
#include "IO_mgr.h"
#include "context_aware_unit.h"
#include "dir.h"
#include "paths.h"

int main(int argc, const char* argv[]) {
	initializer init;
	context_aware_unit CAU(init.Get_FPGA_mgr(), init.Get_IO_mgr(), init.Get_decision_unit(), init.Get_rbf_list());
	CAU.Auto_enhance(dir(WST_INPUT_PATH, "wst"));
	exit(0);
}