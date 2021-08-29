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
add wave -noupdate -format Logic /DSPB_MMSE_dut_input_adapter_atb/dut/clk
add wave -noupdate -format Logic /DSPB_MMSE_dut_input_adapter_atb/dut/areset
add wave -noupdate -format Logical /DSPB_MMSE_dut_input_adapter_atb/sim/in_1_Input_Signal_Valid_stm
add_fixpt_wave /DSPB_MMSE_dut_input_adapter_atb/sim/in_2_Input_Signal_stm 16 14 signed
add wave -noupdate -divider {Output Ports}
add wave -noupdate -format Logical /DSPB_MMSE_dut_input_adapter_atb/dut/out_1_Spectrum_Valid
add wave -noupdate -format Logical /DSPB_MMSE_dut_input_adapter_atb/sim/out_1_Spectrum_Valid_stm
add_fixpt_wave /DSPB_MMSE_dut_input_adapter_atb/dut/out_2_Magnitude_Spectrum 18 11 unsigned
add_fixpt_wave /DSPB_MMSE_dut_input_adapter_atb/sim/out_2_Magnitude_Spectrum_stm 18 11 unsigned
add_fixpt_wave /DSPB_MMSE_dut_input_adapter_atb/dut/out_3_Power_Spectrum 36 22 unsigned
add_fixpt_wave /DSPB_MMSE_dut_input_adapter_atb/sim/out_3_Power_Spectrum_stm 36 22 unsigned
add wave -noupdate -format Logical /DSPB_MMSE_dut_input_adapter_atb/dut/out_4_Phase_Valid
add wave -noupdate -format Logical /DSPB_MMSE_dut_input_adapter_atb/sim/out_4_Phase_Valid_stm
add_fixpt_wave /DSPB_MMSE_dut_input_adapter_atb/dut/out_5_Phase 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_5_Phase -label {sign} {/DSPB_MMSE_dut_input_adapter_atb/dut/out_5_Phase(31 downto 31)} -label {exp} {/DSPB_MMSE_dut_input_adapter_atb/dut/out_5_Phase(30 downto 23)} -label {frac} {/DSPB_MMSE_dut_input_adapter_atb/dut/out_5_Phase(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /DSPB_MMSE_dut_input_adapter_atb/checkout_5_Phase/out_5_Phase_real
add_fixpt_wave /DSPB_MMSE_dut_input_adapter_atb/sim/out_5_Phase_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_5_Phase_stm -label {sign} {/DSPB_MMSE_dut_input_adapter_atb/sim/out_5_Phase_stm(31 downto 31)} -label {exp} {/DSPB_MMSE_dut_input_adapter_atb/sim/out_5_Phase_stm(30 downto 23)} -label {frac} {/DSPB_MMSE_dut_input_adapter_atb/sim/out_5_Phase_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /DSPB_MMSE_dut_input_adapter_atb/checkout_5_Phase/out_5_Phase_stm_real
TreeUpdate [SetDefaultTree]
