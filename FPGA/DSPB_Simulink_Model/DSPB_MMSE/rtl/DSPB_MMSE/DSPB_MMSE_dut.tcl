# This is the top level tcl file for 'DSPB_MMSE_dut'

package require ::quartus::project

set overwrite_opt 0
set compile_opt 1

foreach arg $argv {
    switch $arg {
        overwrite { set overwrite_opt 1 }
        no_compile { set compile_opt 0 }
        default { puts "got unknown command: $arg" }
    }
}

if {!$overwrite_opt && [project_exists DSPB_MMSE_dut]} {
    puts "The DSPB_MMSE_dut quartus project already exists."
    puts "Use 'overwrite option' to force project to be over-written/"
} elseif {![file exists "./rtl/DSPB_MMSE/DSPB_MMSE_dut.tcl"]}    {
    puts "You must run DSPB_MMSE_dut.tcl "
    puts "from the ../quartus directory or else "
    puts "some of the dependant scripts won't be found."
    puts "The current directory is:" 
    puts [pwd]
    error "Exiting..."
} 

set quartus_dir $::env(QUARTUS_ROOTDIR)
puts "Creating DSPB_MMSE_dut Quartus project..."

if $overwrite_opt {
    project_new -overwrite DSPB_MMSE_dut
} else {
    project_new DSPB_MMSE_dut
}

set_global_assignment -name FAMILY "Cyclone V"
set_global_assignment -name TOP_LEVEL_ENTITY DSPB_MMSE_dut
set_global_assignment -name DEVICE 5CSEBA6U23I7
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name SDC_FILE ./rtl/DSPB_MMSE/DSPB_MMSE_dut.sdc
source ./rtl/DSPB_MMSE/DSPB_MMSE_dut.add.tcl

set_instance_assignment -name VIRTUAL_PIN ON -to busIn_writedata
set_instance_assignment -name VIRTUAL_PIN ON -to busIn_address
set_instance_assignment -name VIRTUAL_PIN ON -to busIn_write
set_instance_assignment -name VIRTUAL_PIN ON -to busIn_read
set_instance_assignment -name VIRTUAL_PIN ON -to busOut_readdatavalid
set_instance_assignment -name VIRTUAL_PIN ON -to busOut_readdata
set_instance_assignment -name VIRTUAL_PIN ON -to busOut_waitrequest

source "./rtl/DSPB_MMSE/DSPB_MMSE_dut_fpc.add.tcl"


if $compile_opt {
    package require ::quartus::flow
    puts "Running Compile flow..."
    execute_flow -compile

    package require ::quartus::report 

    # The output you get out of this script
    # is two lines of CSV formatted data (header line 1, real data line 2)
    # followed by the critical path

    load_report

    proc print_csv {expr} {
        regsub -all , $expr {} out
        regsub -all { .*} $out {} final
        if [string match $final ""] {
            # If quartus failed to find any value here, report -1
            set final -1
        }
        puts -nonewline $final
        puts -nonewline ","
    }

    create_timing_netlist -model slow
    read_sdc
    update_timing_netlist
    set clk_fmaxinfo [get_clock_fmax_info]

    puts "Extracting key data from report..."
    puts "Logic,ALM_Logic_Regs,ALM_Logic,ALM_Regs,ALM_Mem,Comb_Aluts,Comb_ALUT_Logic,Comb_ALUT_Route,Mem_ALUT,Regs,Regs_1,Regs_2,ALM,DSP,Mem_Bits,MLAB_Bits,M10K,IO,FMax,Slack,Required"
    print_csv [get_fitter_resource_usage -resource "*Logic utilization*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*LUT logic*register*"]
    print_csv [get_fitter_resource_usage -resource "*b*ALMs*LUT logic*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*for register*"]
    print_csv [get_fitter_resource_usage -resource "*ALMs*memory*"]
    print_csv [get_fitter_resource_usage -resource "*Combinational ALUTs*logic*"]
    print_csv [get_fitter_resource_usage -resource "*Combinational ALUT usage*logic*"]
    print_csv [get_fitter_resource_usage -resource "*Combinational ALUT usage*route*"]
    print_csv [get_fitter_resource_usage -resource "*Memory ALUT usage*"]
    print_csv [get_fitter_resource_usage -resource "*Dedicated logic registers*"]
    print_csv [get_fitter_resource_usage -resource "*Primary logic registers*"]
    print_csv [get_fitter_resource_usage -resource "*Secondary logic registers*"]
    print_csv [get_fitter_resource_usage -alm]
    print_csv [get_fitter_resource_usage -resource "*DSP Block*"]
    print_csv [get_fitter_resource_usage -resource "*Total block memory bits*"]
    print_csv [get_fitter_resource_usage -resource "*Total MLAB memory bits*"]
    print_csv [get_fitter_resource_usage -resource "*M10K*"]
    print_csv [get_fitter_resource_usage -used -io_pin]

    set family [get_report_panel_data -name {Flow Summary} -col 1 -row_name Family]
    set device Unknown
    set fmax -1
    set restricted_fmax -1
    set clk {clk}

    foreach clkinfo $clk_fmaxinfo {
        if ([string equal $clk [lindex $clkinfo 0] ]) {
            set fmax [lindex $clkinfo 1]
            set restricted_fmax [lindex $clkinfo 2]
        }
    }

    set slack None
    set required_fmax Unavailable
    if {[string is double $restricted_fmax] && [expr {$restricted_fmax >= 0.0}]} {
        set required_period [get_clock_info -period $clk]
        set slack [expr {$required_period - 1000.0 / $fmax}]
        set required_fmax [expr {1000.0 / $required_period}]
    } else {
        set required_period Unavailable
    }

    print_csv $restricted_fmax
    print_csv $slack
    print_csv $required_fmax
    print_csv $fmax

    puts ""

    puts "FAMILY $family"
    puts "DEVICE $device"
    puts "TIMING PATH"
    set cpi 0
    foreach_in_collection path [get_timing_paths -npaths 1 -setup -pairs_only] {
        set from [get_node_info -name [get_path_info $path -from]]
        set to [get_node_info -name [get_path_info $path -to]]
        file delete cpath$cpi.fit
        report_timing -from_clock $clk -to_clock $clk -from $from -to $to -setup -npaths 1 -show_routing -detail full_path -file cpath$cpi.fit
        set ignore [catch {
          set f [open cpath$cpi.fit]
          puts [read $f]}]
        incr cpi
    }
}

project_close

