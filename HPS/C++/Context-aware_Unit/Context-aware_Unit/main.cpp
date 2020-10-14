#include "FPGA_mgr.h"
#include "initializer.h"

int main(int argc, const char* argv[]){
	initializer init;
	if (!init.Initialize()) return -1;
	return 0;
}