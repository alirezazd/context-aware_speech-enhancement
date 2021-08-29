# pass in -Gquit_at_end=true to make vsim call exit at the end. Useful for running standalone.
quietly set quit_at_end 0
if {[lsearch $argv -Gquit_at_end=true] != -1} {
    quietly set quit_at_end 1
}

# set up quartus_dir variable for subsequent commands
if [info exists ::env(QUARTUS_ROOTDIR_OVERRIDE)] {
    quietly set quartus_dir $::env(QUARTUS_ROOTDIR_OVERRIDE)
} else {
    quietly set quartus_dir "T:/IntelFPGA/quartus"
}

if {$argc > 0} {
    quietly set base_dir $1
} else {
    quietly set base_dir "././rtl"
    echo The current directory is: [pwd]
}
quietly set base_dir [file normalize $base_dir]
echo Creating the project under $base_dir

onerror {resume}

if { [string compare [project env] ""] != 0 } {
    quit -sim
    project close
}

if {! [file exists $base_dir/DSPB_MMSE_dut_Enhacement_Algorithm_MMSE]} {
    file delete -force $base_dir/DSPB_MMSE_dut_Enhacement_Algorithm_MMSE
}

project new $base_dir DSPB_MMSE_dut_Enhacement_Algorithm_MMSE
if {! [file exists $base_dir/work/_info]} {
    file delete -force $base_dir/work
    vlib work
}
quietly vmap work $base_dir/work


proc checkDepends {dst src} {
    if {! [file exists $dst]} { return 1 }
    if {[file mtime $dst] < [file mtime $src]} { return 1 }
    return 0
}

quietly set compile(altera) 0
if {[checkDepends $base_dir/altera/_info "$quartus_dir/eda/sim_lib/altera_primitives_components.vhd"]} {
    file delete -force $base_dir/altera
    vlib altera
    quietly set compile(altera) 1
}
quietly vmap altera $base_dir/altera
quietly set compile(altera_mf) 0
if {[checkDepends $base_dir/altera_mf/_info "$quartus_dir/eda/sim_lib/altera_mf_components.vhd"] || [checkDepends $base_dir/altera_mf/_info "$quartus_dir/eda/sim_lib/altera_mf.vhd"]} {
    file delete -force $base_dir/altera_mf
    vlib altera_mf
    quietly set compile(altera_mf) 1
}
quietly vmap altera_mf $base_dir/altera_mf
quietly set compile(lpm) 0
if {[checkDepends $base_dir/lpm/_info "$quartus_dir/eda/sim_lib/220pack.vhd"] || [checkDepends $base_dir/lpm/_info "$quartus_dir/eda/sim_lib/220model.vhd"]} {
    file delete -force $base_dir/lpm
    vlib lpm
    quietly set compile(lpm) 1
}
quietly vmap lpm $base_dir/lpm
quietly set compile(altera_lnsim) 0
if {[checkDepends $base_dir/altera_lnsim/_info "$quartus_dir/eda/sim_lib/altera_lnsim_components.vhd"] || [checkDepends $base_dir/altera_lnsim/_info "$quartus_dir/eda/sim_lib/altera_lnsim.sv"]} {
    file delete -force $base_dir/altera_lnsim
    vlib altera_lnsim
    quietly set compile(altera_lnsim) 1
}
quietly vmap altera_lnsim $base_dir/altera_lnsim
if {[info exists quartus_dir] && [file isdirectory $quartus_dir]} {
    if {$compile(altera)} {
        vcom -93 -quiet -work $base_dir/altera "$quartus_dir/eda/sim_lib/altera_primitives_components.vhd"
    }
    if {$compile(altera_mf)} {
        vcom -93 -quiet -work $base_dir/altera_mf "$quartus_dir/eda/sim_lib/altera_mf_components.vhd"
        vcom -93 -quiet -work $base_dir/altera_mf "$quartus_dir/eda/sim_lib/altera_mf.vhd"
    }
    if {$compile(lpm)} {
        vcom -93 -quiet -work $base_dir/lpm "$quartus_dir/eda/sim_lib/220pack.vhd"
        vcom -93 -quiet -work $base_dir/lpm "$quartus_dir/eda/sim_lib/220model.vhd"
    }
    if {$compile(altera_lnsim)} {
        vcom -93 -quiet -work $base_dir/altera_lnsim "$quartus_dir/eda/sim_lib/altera_lnsim_components.vhd"
        vlog -sv -quiet -work $base_dir/altera_lnsim "$quartus_dir/eda/sim_lib/altera_lnsim.sv"
    }
    do "$base_dir/DSPB_MMSE/DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_fpc.do"
} else {
    echo QUARTUS not found. Not compiling libraries.
}


quietly set vcomfailed 0
onerror {
    quietly set vcomfailed 1
    resume
}

vcom -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_safe_path_msim.vhd
vcom -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_Enhacement_Algorithm_MMSE.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z6oe0cp36c00oq3cz.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A0Z44ck28744ck2675x.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A1Z44ck28744ck2675x.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Z3cd16oe0cp36hj0u.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A1Z3cd16oe0cp36hj0u.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_roundBlock_typeSFloatIEEEA0Z44ck28744ck46w65.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA0Zoq3cdd6oq3cp5d0u.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_divideBlock_typeSFloatIEEA0Z3cd16oe0cp36hj0u.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A1Z6oe0cp36c00oq3cz.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z44ck28744ck2675x.vhd
vcom -quiet $base_dir/DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A0Z44ck28744ck46w65.vhd
vcom -quiet -O0 $base_dir/DSPB_MMSE/DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_atb.vhd
vcom -quiet $base_dir/DSPB_MMSE/DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_stm.vhd

onerror {resume}

proc report_mismatch {signal cycle} {
    puts "Mismatch in ${signal} at system clock cycle ${cycle}"
    set modelsimvalue [examine ${signal}_dut];
    set stmvalue [examine ${signal}_stm];
    puts "\t${signal} (ModelSim):\t${modelsimvalue}"
    puts "\t${signal} (Simulink):\t${stmvalue}"
}

if {$vcomfailed == 0} {
    onbreak {
        quietly set my_tb [string trim [tb]];
        quietly set regOK [regexp {(.*) ([0-9]+) ([\[address]*) ([.]*)} $my_tb \ match atbfile linenum ignore_this];
        if {$regOK == 1} {
            quietly set simtime [expr $now - 200];
            quietly set cyclenum [expr int($simtime / 20000.000000)];
            if { [catch {exa mismatch_out_1_enhanced_magnitude_spectrum_valid} mismatch] == 0 && $mismatch } {
                report_mismatch out_1_enhanced_magnitude_spectrum_valid $cyclenum
            }
            if { [catch {exa mismatch_out_2_enhanced_magnitude_spectrum} mismatch] == 0 && $mismatch } {
                report_mismatch out_2_enhanced_magnitude_spectrum $cyclenum
            }
        } else {
            puts "Signal mismatch detected at $my_tb";
        }
        if {$quit_at_end == 1} {
            quit -code 1;
        }
    }
    vsim -quiet -error 3473 -msgmode both -voptargs="+acc" -t ps DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_atb 
    do $base_dir/DSPB_MMSE/DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_atb.wav.do
# Disable some warnings that occur at the very start of simulation
    quietly set StdArithNoWarnings 1
    run 0ns
    quietly set StdArithNoWarnings 0
    run -all
} else {
    echo At least one module failed to compile, not starting simulation
}

if {$quit_at_end == 1} {
    exit
}
