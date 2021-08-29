onerror {resume}

# obtain Modelsim version and extract the NN.Nc part after vsim
quietly set vsim_ver [regexp -inline {vsim (\d+\.\d+)(\w?)} [vsim -version]]
quietly set has_fixpt_radix 0
if {[lindex $vsim_ver 1] == 10.2} {
    if {[lindex $vsim_ver 2] >= "d"} {
        quietly set has_fixpt_radix 1
    }
} elseif {[lindex $vsim_ver 1] > 10.2} {
    quietly set has_fixpt_radix 1
}

proc add_fixpt_wave {name width frac_width signed} {
    global has_fixpt_radix
    if {$frac_width > 0 && $has_fixpt_radix} {
        set type "[string index $signed 0]fix${width}_En${frac_width}"
        if {[lsearch [radix names] $type] < 0} {
            if {$signed == "signed"} {
                radix define $type -fixed -signed -fraction $frac_width
            } else {
                radix define $type -fixed -fraction $frac_width
            }
        }
        add wave -noupdate -format Literal -radix $type $name
    } else {
        add wave -noupdate -format Literal -radix $signed $name
    }
}

add wave -noupdate -divider {Input Ports}
add wave -noupdate -format Logic /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/dut/clk
add wave -noupdate -format Logic /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/dut/areset
add wave -noupdate -format Logic /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/dut/h_areset
add_fixpt_wave /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x_stm 16 8 signed
add wave -noupdate -format Logical /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x_stm
add_fixpt_wave /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm 9 0 unsigned
add_fixpt_wave /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x_stm 9 0 unsigned
add_fixpt_wave /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm 16 11 signed
add_fixpt_wave /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm 16 14 signed
add wave -noupdate -format Logical /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm
add wave -noupdate -format Logical /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x_stm
add wave -noupdate -divider {Output Ports}
add_fixpt_wave /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/dut/out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x 16 14 signed
add_fixpt_wave /busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb/sim/out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm 16 14 signed
TreeUpdate [SetDefaultTree]
