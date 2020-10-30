#include "cxxopts.hpp"
#include "FPGA_mgr.h"
#include "initializer.h"
#include "benchmark.h"
int main(int argc, const char* argv[]) {
	cxxopts::Options cli_opts(argv[0], "Context-Aware Unit HPS side program.\t Authour: Alireza Azadi");
	cli_opts
		.positional_help("[OPTIONAL ARGS]")
		.show_positional_help();
	cli_opts
		.add_options()
		("i, initialize", "Run initialization.")
		("b, benchmark", "Run benchmark.");
	auto cli_res = cli_opts.parse(argc, argv);
	if (cli_res.count("initialize")) {
		initializer init;
		init.Initialize();
		exit(0);
	}
	return 0;
}