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
add wave -noupdate -format Logic /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/dut/clk
add wave -noupdate -format Logic /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/dut/areset
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/in_1_scaled_signal_amplitude_valid_stm
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/in_2_scaled_noise_amplitude_valid_stm
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/in_3_scaled_amplitude_stm 16 15 unsigned
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/in_4_noise_count_stm 16 0 unsigned
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/in_5_signal_count_stm 16 0 unsigned
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/in_6_reset_stm
add wave -noupdate -divider {Output Ports}
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/dut/out_1_signal_STD_valid
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/out_1_signal_STD_valid_stm
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/dut/out_2_signal_STD 16 16 unsigned
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/out_2_signal_STD_stm 16 16 unsigned
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/dut/out_3_noise_STD_valid
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/out_3_noise_STD_valid_stm
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/dut/out_4_noise_STD 16 16 unsigned
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_atb/sim/out_4_noise_STD_stm 16 16 unsigned
TreeUpdate [SetDefaultTree]
