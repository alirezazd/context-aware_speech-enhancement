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
add wave -noupdate -format Logic /standaloneTopLevel_DSPB_MMSE_dut_input_IF_atb/dut/clk
add wave -noupdate -format Logic /standaloneTopLevel_DSPB_MMSE_dut_input_IF_atb/dut/areset
add wave -noupdate -format Logic /standaloneTopLevel_DSPB_MMSE_dut_input_IF_atb/dut/h_areset
add wave -noupdate -divider {Output Ports}
add wave -noupdate -format Logical /standaloneTopLevel_DSPB_MMSE_dut_input_IF_atb/dut/Noisy_Signal_Valid
add wave -noupdate -format Logical /standaloneTopLevel_DSPB_MMSE_dut_input_IF_atb/sim/Noisy_Signal_Valid_stm
add_fixpt_wave /standaloneTopLevel_DSPB_MMSE_dut_input_IF_atb/dut/Noisy_Signal 16 14 signed
add_fixpt_wave /standaloneTopLevel_DSPB_MMSE_dut_input_IF_atb/sim/Noisy_Signal_stm 16 14 signed
TreeUpdate [SetDefaultTree]
