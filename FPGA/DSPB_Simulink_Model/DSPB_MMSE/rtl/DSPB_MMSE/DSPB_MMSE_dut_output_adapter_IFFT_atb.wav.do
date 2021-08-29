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
add wave -noupdate -format Logic /DSPB_MMSE_dut_output_adapter_IFFT_atb/dut/clk
add wave -noupdate -format Logic /DSPB_MMSE_dut_output_adapter_IFFT_atb/dut/areset
add wave -noupdate -format Logical /DSPB_MMSE_dut_output_adapter_IFFT_atb/sim/in_1_Valid1_stm
add_fixpt_wave /DSPB_MMSE_dut_output_adapter_IFFT_atb/sim/in_2_real_Input1_stm 21 19 signed
add_fixpt_wave /DSPB_MMSE_dut_output_adapter_IFFT_atb/sim/in_2_imag_Input1_stm 21 19 signed
add wave -noupdate -divider {Output Ports}
add wave -noupdate -format Logical /DSPB_MMSE_dut_output_adapter_IFFT_atb/dut/out_1_Valid1_x
add wave -noupdate -format Logical /DSPB_MMSE_dut_output_adapter_IFFT_atb/sim/out_1_Valid1_x_stm
add_fixpt_wave /DSPB_MMSE_dut_output_adapter_IFFT_atb/dut/out_2_Output1 16 11 signed
add_fixpt_wave /DSPB_MMSE_dut_output_adapter_IFFT_atb/sim/out_2_Output1_stm 16 11 signed
TreeUpdate [SetDefaultTree]
