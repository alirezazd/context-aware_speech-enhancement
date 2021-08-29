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
add wave -noupdate -format Logic /floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/dut/clk
add wave -noupdate -format Logic /floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/dut/areset
add_fixpt_wave /floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/sim/in_0_stm 18 11 unsigned
add wave -noupdate -divider {Output Ports}
add_fixpt_wave /floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/dut/out_primWireOut 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_primWireOut -label {sign} {/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/dut/out_primWireOut(31 downto 31)} -label {exp} {/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/dut/out_primWireOut(30 downto 23)} -label {frac} {/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/dut/out_primWireOut(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/checkout_primWireOut/out_primWireOut_real
add_fixpt_wave /floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/sim/out_primWireOut_stm 32 0 signed
add wave -noupdate -format Literal -radix binary -group out_primWireOut_stm -label {sign} {/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/sim/out_primWireOut_stm(31 downto 31)} -label {exp} {/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/sim/out_primWireOut_stm(30 downto 23)} -label {frac} {/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/sim/out_primWireOut_stm(22 downto 0)} 
add wave -noupdate -format Literal -radix decimal /floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb/checkout_primWireOut/out_primWireOut_stm_real
TreeUpdate [SetDefaultTree]
