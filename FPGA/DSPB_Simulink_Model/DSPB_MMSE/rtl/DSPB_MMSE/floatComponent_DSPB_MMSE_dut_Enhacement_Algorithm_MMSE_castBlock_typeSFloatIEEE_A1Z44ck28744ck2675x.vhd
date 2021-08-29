-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A1Z122644ck28744ck2675x
-- VHDL created on Mon Aug 16 17:43:59 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

USE work.DSPB_MMSE_dut_safe_path.all;
entity floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A1Z122644ck28744ck2675x is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(7 downto 0);  -- ufix8
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A1Z122644ck28744ck2675x;

architecture normal of floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A1Z122644ck28744ck2675x is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_x_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcXZ_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oFracX_uid23_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal signX_uid25_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfExpVal_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal ovf_uid27_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid27_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid27_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid27_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal negOrOvf_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal udfExpVal_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal udf_uid30_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid30_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid30_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid30_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfExpVal_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValE_uid32_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftValE_uid32_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftValE_uid32_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftValE_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal shiftValRaw_uid33_block_rsrvd_fix_in : STD_LOGIC_VECTOR (3 downto 0);
    signal shiftValRaw_uid33_block_rsrvd_fix_b : STD_LOGIC_VECTOR (3 downto 0);
    signal maxShiftCst_uid34_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal shiftOutOfRange_uid35_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal shiftOutOfRange_uid35_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal shiftOutOfRange_uid35_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal shiftOutOfRange_uid35_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftVal_uid36_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftVal_uid36_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal shifterIn_uid37_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal zRightShiferNoStickyOut_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal sPostRndFull_uid43_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal sPostRndFull_uid43_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal sPostRndFull_uid43_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal sPostRndFull_uid43_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal sPostRnd_uid44_block_rsrvd_fix_in : STD_LOGIC_VECTOR (8 downto 0);
    signal sPostRnd_uid44_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal sPostRndFullMSBU_uid45_block_rsrvd_fix_in : STD_LOGIC_VECTOR (9 downto 0);
    signal sPostRndFullMSBU_uid45_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfPostRnd_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal muxSelConc_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal muxSel_uid48_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal finalOut_uid50_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal finalOut_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1Rng4_uid54_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b : STD_LOGIC_VECTOR (4 downto 0);
    signal rightShiftStage0Idx1Pad4_uid55_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1_uid56_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage0Idx2Rng8_uid57_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx2_uid59_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage0Idx3_uid60_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage1Idx1Rng1_uid63_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1_uid65_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage1Idx2Rng2_uid66_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b : STD_LOGIC_VECTOR (6 downto 0);
    signal rightShiftStage1Idx2Pad2_uid67_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1Idx2_uid68_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage1Idx3Rng3_uid69_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage1Idx3Pad3_uid70_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage1Idx3_uid71_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStageSel3Dto2_uid61_rightShiferNoStickyOut_uid38_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel3Dto2_uid61_rightShiferNoStickyOut_uid38_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);

begin


    -- cstAllZWE_uid8_block_rsrvd_fix(CONSTANT,7)
    cstAllZWE_uid8_block_rsrvd_fix_q <= "00000000";

    -- cstAllOWE_uid6_block_rsrvd_fix(CONSTANT,5)
    cstAllOWE_uid6_block_rsrvd_fix_q <= "11111111";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- rightShiftStage1Idx3Pad3_uid70_rightShiferNoStickyOut_uid38_block_rsrvd_fix(CONSTANT,69)
    rightShiftStage1Idx3Pad3_uid70_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= "000";

    -- rightShiftStage1Idx3Rng3_uid69_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITSELECT,68)@0
    rightShiftStage1Idx3Rng3_uid69_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b <= rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q(8 downto 3);

    -- rightShiftStage1Idx3_uid71_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITJOIN,70)@0
    rightShiftStage1Idx3_uid71_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage1Idx3Pad3_uid70_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q & rightShiftStage1Idx3Rng3_uid69_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b;

    -- rightShiftStage1Idx2Pad2_uid67_rightShiferNoStickyOut_uid38_block_rsrvd_fix(CONSTANT,66)
    rightShiftStage1Idx2Pad2_uid67_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= "00";

    -- rightShiftStage1Idx2Rng2_uid66_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITSELECT,65)@0
    rightShiftStage1Idx2Rng2_uid66_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b <= rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q(8 downto 2);

    -- rightShiftStage1Idx2_uid68_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITJOIN,67)@0
    rightShiftStage1Idx2_uid68_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage1Idx2Pad2_uid67_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q & rightShiftStage1Idx2Rng2_uid66_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b;

    -- rightShiftStage1Idx1Rng1_uid63_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITSELECT,62)@0
    rightShiftStage1Idx1Rng1_uid63_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b <= rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q(8 downto 1);

    -- rightShiftStage1Idx1_uid65_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITJOIN,64)@0
    rightShiftStage1Idx1_uid65_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= GND_q & rightShiftStage1Idx1Rng1_uid63_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b;

    -- rightShiftStage0Idx3_uid60_rightShiferNoStickyOut_uid38_block_rsrvd_fix(CONSTANT,59)
    rightShiftStage0Idx3_uid60_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= "000000000";

    -- rightShiftStage0Idx2Rng8_uid57_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITSELECT,56)@0
    rightShiftStage0Idx2Rng8_uid57_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b <= shifterIn_uid37_block_rsrvd_fix_b(8 downto 8);

    -- rightShiftStage0Idx2_uid59_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITJOIN,58)@0
    rightShiftStage0Idx2_uid59_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= cstAllZWE_uid8_block_rsrvd_fix_q & rightShiftStage0Idx2Rng8_uid57_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b;

    -- rightShiftStage0Idx1Pad4_uid55_rightShiferNoStickyOut_uid38_block_rsrvd_fix(CONSTANT,54)
    rightShiftStage0Idx1Pad4_uid55_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= "0000";

    -- rightShiftStage0Idx1Rng4_uid54_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITSELECT,53)@0
    rightShiftStage0Idx1Rng4_uid54_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b <= shifterIn_uid37_block_rsrvd_fix_b(8 downto 4);

    -- rightShiftStage0Idx1_uid56_rightShiferNoStickyOut_uid38_block_rsrvd_fix(BITJOIN,55)@0
    rightShiftStage0Idx1_uid56_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage0Idx1Pad4_uid55_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q & rightShiftStage0Idx1Rng4_uid54_rightShiferNoStickyOut_uid38_block_rsrvd_fix_b;

    -- exp_x_uid9_block_rsrvd_fix(BITSELECT,8)@0
    exp_x_uid9_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- excZ_x_uid11_block_rsrvd_fix(LOGICAL,10)@0
    excZ_x_uid11_block_rsrvd_fix_q <= "1" WHEN exp_x_uid9_block_rsrvd_fix_b = cstAllZWE_uid8_block_rsrvd_fix_q ELSE "0";

    -- invExcXZ_uid22_block_rsrvd_fix(LOGICAL,21)@0
    invExcXZ_uid22_block_rsrvd_fix_q <= not (excZ_x_uid11_block_rsrvd_fix_q);

    -- frac_x_uid10_block_rsrvd_fix(BITSELECT,9)@0
    frac_x_uid10_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- oFracX_uid23_block_rsrvd_fix(BITJOIN,22)@0
    oFracX_uid23_block_rsrvd_fix_q <= invExcXZ_uid22_block_rsrvd_fix_q & frac_x_uid10_block_rsrvd_fix_b;

    -- shifterIn_uid37_block_rsrvd_fix(BITSELECT,36)@0
    shifterIn_uid37_block_rsrvd_fix_b <= oFracX_uid23_block_rsrvd_fix_q(23 downto 15);

    -- rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix(MUX,61)@0
    rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_s <= rightShiftStageSel3Dto2_uid61_rightShiferNoStickyOut_uid38_block_rsrvd_fix_merged_bit_select_b;
    rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_combproc: PROCESS (rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_s, shifterIn_uid37_block_rsrvd_fix_b, rightShiftStage0Idx1_uid56_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q, rightShiftStage0Idx2_uid59_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q, rightShiftStage0Idx3_uid60_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= shifterIn_uid37_block_rsrvd_fix_b;
            WHEN "01" => rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid56_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid59_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage0Idx3_uid60_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- maxShiftCst_uid34_block_rsrvd_fix(CONSTANT,33)
    maxShiftCst_uid34_block_rsrvd_fix_q <= "1001";

    -- ovfExpVal_uid31_block_rsrvd_fix(CONSTANT,30)
    ovfExpVal_uid31_block_rsrvd_fix_q <= "010000110";

    -- shiftValE_uid32_block_rsrvd_fix(SUB,31)@0
    shiftValE_uid32_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => ovfExpVal_uid31_block_rsrvd_fix_q(8)) & ovfExpVal_uid31_block_rsrvd_fix_q));
    shiftValE_uid32_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & exp_x_uid9_block_rsrvd_fix_b));
    shiftValE_uid32_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(shiftValE_uid32_block_rsrvd_fix_a) - SIGNED(shiftValE_uid32_block_rsrvd_fix_b));
    shiftValE_uid32_block_rsrvd_fix_q <= shiftValE_uid32_block_rsrvd_fix_o(9 downto 0);

    -- shiftValRaw_uid33_block_rsrvd_fix(BITSELECT,32)@0
    shiftValRaw_uid33_block_rsrvd_fix_in <= shiftValE_uid32_block_rsrvd_fix_q(3 downto 0);
    shiftValRaw_uid33_block_rsrvd_fix_b <= shiftValRaw_uid33_block_rsrvd_fix_in(3 downto 0);

    -- shiftOutOfRange_uid35_block_rsrvd_fix(COMPARE,34)@0
    shiftOutOfRange_uid35_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => shiftValE_uid32_block_rsrvd_fix_q(9)) & shiftValE_uid32_block_rsrvd_fix_q));
    shiftOutOfRange_uid35_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000" & maxShiftCst_uid34_block_rsrvd_fix_q));
    shiftOutOfRange_uid35_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(shiftOutOfRange_uid35_block_rsrvd_fix_a) - SIGNED(shiftOutOfRange_uid35_block_rsrvd_fix_b));
    shiftOutOfRange_uid35_block_rsrvd_fix_n(0) <= not (shiftOutOfRange_uid35_block_rsrvd_fix_o(11));

    -- shiftVal_uid36_block_rsrvd_fix(MUX,35)@0
    shiftVal_uid36_block_rsrvd_fix_s <= shiftOutOfRange_uid35_block_rsrvd_fix_n;
    shiftVal_uid36_block_rsrvd_fix_combproc: PROCESS (shiftVal_uid36_block_rsrvd_fix_s, shiftValRaw_uid33_block_rsrvd_fix_b, maxShiftCst_uid34_block_rsrvd_fix_q)
    BEGIN
        CASE (shiftVal_uid36_block_rsrvd_fix_s) IS
            WHEN "0" => shiftVal_uid36_block_rsrvd_fix_q <= shiftValRaw_uid33_block_rsrvd_fix_b;
            WHEN "1" => shiftVal_uid36_block_rsrvd_fix_q <= maxShiftCst_uid34_block_rsrvd_fix_q;
            WHEN OTHERS => shiftVal_uid36_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel3Dto2_uid61_rightShiferNoStickyOut_uid38_block_rsrvd_fix_merged_bit_select(BITSELECT,74)@0
    rightShiftStageSel3Dto2_uid61_rightShiferNoStickyOut_uid38_block_rsrvd_fix_merged_bit_select_b <= shiftVal_uid36_block_rsrvd_fix_q(3 downto 2);
    rightShiftStageSel3Dto2_uid61_rightShiferNoStickyOut_uid38_block_rsrvd_fix_merged_bit_select_c <= shiftVal_uid36_block_rsrvd_fix_q(1 downto 0);

    -- rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix(MUX,72)@0
    rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_s <= rightShiftStageSel3Dto2_uid61_rightShiferNoStickyOut_uid38_block_rsrvd_fix_merged_bit_select_c;
    rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_s, rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q, rightShiftStage1Idx1_uid65_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q, rightShiftStage1Idx2_uid68_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q, rightShiftStage1Idx3_uid71_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage0_uid62_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid65_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid68_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid71_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- zRightShiferNoStickyOut_uid42_block_rsrvd_fix(BITJOIN,41)@0
    zRightShiferNoStickyOut_uid42_block_rsrvd_fix_q <= GND_q & rightShiftStage1_uid73_rightShiferNoStickyOut_uid38_block_rsrvd_fix_q;

    -- sPostRndFull_uid43_block_rsrvd_fix(ADD,42)@0
    sPostRndFull_uid43_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & zRightShiferNoStickyOut_uid42_block_rsrvd_fix_q);
    sPostRndFull_uid43_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000" & VCC_q);
    sPostRndFull_uid43_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(sPostRndFull_uid43_block_rsrvd_fix_a) + UNSIGNED(sPostRndFull_uid43_block_rsrvd_fix_b));
    sPostRndFull_uid43_block_rsrvd_fix_q <= sPostRndFull_uid43_block_rsrvd_fix_o(10 downto 0);

    -- sPostRnd_uid44_block_rsrvd_fix(BITSELECT,43)@0
    sPostRnd_uid44_block_rsrvd_fix_in <= sPostRndFull_uid43_block_rsrvd_fix_q(8 downto 0);
    sPostRnd_uid44_block_rsrvd_fix_b <= sPostRnd_uid44_block_rsrvd_fix_in(8 downto 1);

    -- signX_uid25_block_rsrvd_fix(BITSELECT,24)@0
    signX_uid25_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- udfExpVal_uid29_block_rsrvd_fix(CONSTANT,28)
    udfExpVal_uid29_block_rsrvd_fix_q <= "01111101";

    -- udf_uid30_block_rsrvd_fix(COMPARE,29)@0
    udf_uid30_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 8 => udfExpVal_uid29_block_rsrvd_fix_q(7)) & udfExpVal_uid29_block_rsrvd_fix_q));
    udf_uid30_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & exp_x_uid9_block_rsrvd_fix_b));
    udf_uid30_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid30_block_rsrvd_fix_a) - SIGNED(udf_uid30_block_rsrvd_fix_b));
    udf_uid30_block_rsrvd_fix_n(0) <= not (udf_uid30_block_rsrvd_fix_o(10));

    -- sPostRndFullMSBU_uid45_block_rsrvd_fix(BITSELECT,44)@0
    sPostRndFullMSBU_uid45_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(sPostRndFull_uid43_block_rsrvd_fix_q(9 downto 0));
    sPostRndFullMSBU_uid45_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(sPostRndFullMSBU_uid45_block_rsrvd_fix_in(9 downto 9));

    -- ovfExpVal_uid26_block_rsrvd_fix(CONSTANT,25)
    ovfExpVal_uid26_block_rsrvd_fix_q <= "010000111";

    -- ovf_uid27_block_rsrvd_fix(COMPARE,26)@0
    ovf_uid27_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & exp_x_uid9_block_rsrvd_fix_b));
    ovf_uid27_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => ovfExpVal_uid26_block_rsrvd_fix_q(8)) & ovfExpVal_uid26_block_rsrvd_fix_q));
    ovf_uid27_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid27_block_rsrvd_fix_a) - SIGNED(ovf_uid27_block_rsrvd_fix_b));
    ovf_uid27_block_rsrvd_fix_n(0) <= not (ovf_uid27_block_rsrvd_fix_o(10));

    -- negOrOvf_uid28_block_rsrvd_fix(LOGICAL,27)@0
    negOrOvf_uid28_block_rsrvd_fix_q <= signX_uid25_block_rsrvd_fix_b or ovf_uid27_block_rsrvd_fix_n;

    -- cstZeroWF_uid7_block_rsrvd_fix(CONSTANT,6)
    cstZeroWF_uid7_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid13_block_rsrvd_fix(LOGICAL,12)@0
    fracXIsZero_uid13_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid7_block_rsrvd_fix_q = frac_x_uid10_block_rsrvd_fix_b ELSE "0";

    -- expXIsMax_uid12_block_rsrvd_fix(LOGICAL,11)@0
    expXIsMax_uid12_block_rsrvd_fix_q <= "1" WHEN exp_x_uid9_block_rsrvd_fix_b = cstAllOWE_uid6_block_rsrvd_fix_q ELSE "0";

    -- excI_x_uid15_block_rsrvd_fix(LOGICAL,14)@0
    excI_x_uid15_block_rsrvd_fix_q <= expXIsMax_uid12_block_rsrvd_fix_q and fracXIsZero_uid13_block_rsrvd_fix_q;

    -- fracXIsNotZero_uid14_block_rsrvd_fix(LOGICAL,13)@0
    fracXIsNotZero_uid14_block_rsrvd_fix_q <= not (fracXIsZero_uid13_block_rsrvd_fix_q);

    -- excN_x_uid16_block_rsrvd_fix(LOGICAL,15)@0
    excN_x_uid16_block_rsrvd_fix_q <= expXIsMax_uid12_block_rsrvd_fix_q and fracXIsNotZero_uid14_block_rsrvd_fix_q;

    -- ovfPostRnd_uid46_block_rsrvd_fix(LOGICAL,45)@0
    ovfPostRnd_uid46_block_rsrvd_fix_q <= excN_x_uid16_block_rsrvd_fix_q or excI_x_uid15_block_rsrvd_fix_q or negOrOvf_uid28_block_rsrvd_fix_q or sPostRndFullMSBU_uid45_block_rsrvd_fix_b;

    -- muxSelConc_uid47_block_rsrvd_fix(BITJOIN,46)@0
    muxSelConc_uid47_block_rsrvd_fix_q <= signX_uid25_block_rsrvd_fix_b & udf_uid30_block_rsrvd_fix_n & ovfPostRnd_uid46_block_rsrvd_fix_q;

    -- muxSel_uid48_block_rsrvd_fix(LOOKUP,47)@0
    muxSel_uid48_block_rsrvd_fix_combproc: PROCESS (muxSelConc_uid47_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (muxSelConc_uid47_block_rsrvd_fix_q) IS
            WHEN "000" => muxSel_uid48_block_rsrvd_fix_q <= "00";
            WHEN "001" => muxSel_uid48_block_rsrvd_fix_q <= "01";
            WHEN "010" => muxSel_uid48_block_rsrvd_fix_q <= "11";
            WHEN "011" => muxSel_uid48_block_rsrvd_fix_q <= "00";
            WHEN "100" => muxSel_uid48_block_rsrvd_fix_q <= "10";
            WHEN "101" => muxSel_uid48_block_rsrvd_fix_q <= "10";
            WHEN "110" => muxSel_uid48_block_rsrvd_fix_q <= "10";
            WHEN "111" => muxSel_uid48_block_rsrvd_fix_q <= "10";
            WHEN OTHERS => -- unreachable
                           muxSel_uid48_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- finalOut_uid50_block_rsrvd_fix(MUX,49)@0
    finalOut_uid50_block_rsrvd_fix_s <= muxSel_uid48_block_rsrvd_fix_q;
    finalOut_uid50_block_rsrvd_fix_combproc: PROCESS (finalOut_uid50_block_rsrvd_fix_s, sPostRnd_uid44_block_rsrvd_fix_b, cstAllOWE_uid6_block_rsrvd_fix_q, cstAllZWE_uid8_block_rsrvd_fix_q)
    BEGIN
        CASE (finalOut_uid50_block_rsrvd_fix_s) IS
            WHEN "00" => finalOut_uid50_block_rsrvd_fix_q <= sPostRnd_uid44_block_rsrvd_fix_b;
            WHEN "01" => finalOut_uid50_block_rsrvd_fix_q <= cstAllOWE_uid6_block_rsrvd_fix_q;
            WHEN "10" => finalOut_uid50_block_rsrvd_fix_q <= cstAllZWE_uid8_block_rsrvd_fix_q;
            WHEN "11" => finalOut_uid50_block_rsrvd_fix_q <= cstAllZWE_uid8_block_rsrvd_fix_q;
            WHEN OTHERS => finalOut_uid50_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_primWireOut(GPOUT,4)@0
    out_primWireOut <= finalOut_uid50_block_rsrvd_fix_q;

END normal;
