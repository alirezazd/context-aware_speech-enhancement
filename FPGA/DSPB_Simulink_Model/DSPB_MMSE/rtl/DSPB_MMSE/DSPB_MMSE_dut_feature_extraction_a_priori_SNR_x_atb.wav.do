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
add wave -noupdate -format Logic /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/dut/clk
add wave -noupdate -format Logic /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/dut/areset
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_1_enhanced_mag_spectrum_valid_stm
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_2_enhanced_mag_spectrum_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group in_2_enhanced_mag_spectrum_stm -label {sign} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_2_enhanced_mag_spectrum_stm(31 downto 31)} -label {exp} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_2_enhanced_mag_spectrum_stm(30 downto 23)} -label {frac} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_2_enhanced_mag_spectrum_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/checkGPIn1/in_2_enhanced_mag_spectrum_stm_real
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_3_a_posteriori_SNR_valid_stm
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_5_noise_power_spectrum_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group in_5_noise_power_spectrum_stm -label {sign} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_5_noise_power_spectrum_stm(31 downto 31)} -label {exp} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_5_noise_power_spectrum_stm(30 downto 23)} -label {frac} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_5_noise_power_spectrum_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/checkGPIn2/in_5_noise_power_spectrum_stm_real
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_4_a_posteriori_SNR_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group in_4_a_posteriori_SNR_stm -label {sign} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_4_a_posteriori_SNR_stm(31 downto 31)} -label {exp} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_4_a_posteriori_SNR_stm(30 downto 23)} -label {frac} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/in_4_a_posteriori_SNR_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/checkGPIn2/in_4_a_posteriori_SNR_stm_real
add wave -noupdate -divider {Output Ports}
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/dut/out_1_a_priori_SNR_valid
add wave -noupdate -format Logical /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/out_1_a_priori_SNR_valid_stm
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/dut/out_2_a_priori_SNR 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_2_a_priori_SNR -label {sign} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/dut/out_2_a_priori_SNR(31 downto 31)} -label {exp} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/dut/out_2_a_priori_SNR(30 downto 23)} -label {frac} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/dut/out_2_a_priori_SNR(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/checkGPOut1/out_2_a_priori_SNR_real
add_fixpt_wave /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/out_2_a_priori_SNR_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_2_a_priori_SNR_stm -label {sign} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/out_2_a_priori_SNR_stm(31 downto 31)} -label {exp} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/out_2_a_priori_SNR_stm(30 downto 23)} -label {frac} {/DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/sim/out_2_a_priori_SNR_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x_atb/checkGPOut1/out_2_a_priori_SNR_stm_real
TreeUpdate [SetDefaultTree]
