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
add wave -noupdate -format Logic /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/clk
add wave -noupdate -format Logic /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/areset
add wave -noupdate -format Logic /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/h_areset
add wave -noupdate -divider {Output Ports}
add_fixpt_wave /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x -label {sign} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x(31 downto 31)} -label {exp} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x(30 downto 23)} -label {frac} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/checkout_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_real
add_fixpt_wave /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_stm -label {sign} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_stm(31 downto 31)} -label {exp} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_stm(30 downto 23)} -label {frac} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/checkout_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_stm_real
add_fixpt_wave /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x -label {sign} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x(31 downto 31)} -label {exp} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x(30 downto 23)} -label {frac} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/checkout_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_real
add_fixpt_wave /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_stm -label {sign} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_stm(31 downto 31)} -label {exp} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_stm(30 downto 23)} -label {frac} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/checkout_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_stm_real
add_fixpt_wave /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x -label {sign} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x(31 downto 31)} -label {exp} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x(30 downto 23)} -label {frac} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/dut/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/checkout_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_real
add_fixpt_wave /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_stm -label {sign} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_stm(31 downto 31)} -label {exp} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_stm(30 downto 23)} -label {frac} {/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/sim/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_atb/checkout_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x/out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_stm_real
TreeUpdate [SetDefaultTree]
