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

-- VHDL created from floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_roundBlock_typeSFloatIEEEA0Z122644ck28744ck46w65
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
entity floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_roundBlock_typeSFloatIEEEA0Z122644ck28744ck46w65 is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_roundBlock_typeSFloatIEEEA0Z122644ck28744ck46w65;

architecture normal of floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_roundBlock_typeSFloatIEEEA0Z122644ck28744ck46w65 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid6_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal fracX_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal signX_uid8_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid9_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllZWF_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstNaNWF_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasM2_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasPwF_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasPwFM1_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal excZ_x_uid23_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oFracX_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal xIsInt_uid33_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal xIsInt_uid33_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal xIsInt_uid33_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal xIsInt_uid33_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal xIsSmallFrac_uid34_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal xIsSmallFrac_uid34_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal xIsSmallFrac_uid34_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal xIsSmallFrac_uid34_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal tableAddrExt_uid35_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal tableAddrExt_uid35_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal tableAddrExt_uid35_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal tableAddrExt_uid35_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal tabAddr_uid36_block_rsrvd_fix_in : STD_LOGIC_VECTOR (4 downto 0);
    signal tabAddr_uid36_block_rsrvd_fix_b : STD_LOGIC_VECTOR (4 downto 0);
    signal maskTab_uid37_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal fracPostMask_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal maskIncTab_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal fracPostRnd0_uid40_block_rsrvd_fix_a : STD_LOGIC_VECTOR (24 downto 0);
    signal fracPostRnd0_uid40_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal fracPostRnd0_uid40_block_rsrvd_fix_o : STD_LOGIC_VECTOR (24 downto 0);
    signal fracPostRnd0_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal maskTableZ_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal fracPostRnd_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal normBit_uid43_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRHigh_uid44_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRHigh_uid44_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRLow_uid45_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRLow_uid45_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracR_uid46_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracR_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRExt_uid47_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExt_uid47_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExt_uid47_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExt_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expR_uid48_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid48_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal selBitsEpilogue_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal fracSelBits_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal expSelBits_uid51_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid54_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid54_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid55_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- fracX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    fracX_uid7_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- cstAllZWF_uid10_block_rsrvd_fix(CONSTANT,9)
    cstAllZWF_uid10_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid25_block_rsrvd_fix(LOGICAL,24)@0
    fracXIsZero_uid25_block_rsrvd_fix_q <= "1" WHEN cstAllZWF_uid10_block_rsrvd_fix_q = fracX_uid7_block_rsrvd_fix_b ELSE "0";

    -- fracXIsNotZero_uid26_block_rsrvd_fix(LOGICAL,25)@0
    fracXIsNotZero_uid26_block_rsrvd_fix_q <= not (fracXIsZero_uid25_block_rsrvd_fix_q);

    -- cstAllOWE_uid9_block_rsrvd_fix(CONSTANT,8)
    cstAllOWE_uid9_block_rsrvd_fix_q <= "11111111";

    -- expX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    expX_uid6_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- expXIsMax_uid24_block_rsrvd_fix(LOGICAL,23)@0
    expXIsMax_uid24_block_rsrvd_fix_q <= "1" WHEN expX_uid6_block_rsrvd_fix_b = cstAllOWE_uid9_block_rsrvd_fix_q ELSE "0";

    -- excN_x_uid28_block_rsrvd_fix(LOGICAL,27)@0
    excN_x_uid28_block_rsrvd_fix_q <= expXIsMax_uid24_block_rsrvd_fix_q and fracXIsNotZero_uid26_block_rsrvd_fix_q;

    -- invExcRNaN_uid56_block_rsrvd_fix(LOGICAL,55)@0
    invExcRNaN_uid56_block_rsrvd_fix_q <= not (excN_x_uid28_block_rsrvd_fix_q);

    -- signX_uid8_block_rsrvd_fix(BITSELECT,7)@0
    signX_uid8_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signR_uid57_block_rsrvd_fix(LOGICAL,56)@0
    signR_uid57_block_rsrvd_fix_q <= signX_uid8_block_rsrvd_fix_b and invExcRNaN_uid56_block_rsrvd_fix_q;

    -- cstBiasPwFM1_uid15_block_rsrvd_fix(CONSTANT,14)
    cstBiasPwFM1_uid15_block_rsrvd_fix_q <= "10010101";

    -- tableAddrExt_uid35_block_rsrvd_fix(SUB,34)@0
    tableAddrExt_uid35_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & cstBiasPwFM1_uid15_block_rsrvd_fix_q);
    tableAddrExt_uid35_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & expX_uid6_block_rsrvd_fix_b);
    tableAddrExt_uid35_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(tableAddrExt_uid35_block_rsrvd_fix_a) - UNSIGNED(tableAddrExt_uid35_block_rsrvd_fix_b));
    tableAddrExt_uid35_block_rsrvd_fix_q <= tableAddrExt_uid35_block_rsrvd_fix_o(8 downto 0);

    -- tabAddr_uid36_block_rsrvd_fix(BITSELECT,35)@0
    tabAddr_uid36_block_rsrvd_fix_in <= tableAddrExt_uid35_block_rsrvd_fix_q(4 downto 0);
    tabAddr_uid36_block_rsrvd_fix_b <= tabAddr_uid36_block_rsrvd_fix_in(4 downto 0);

    -- maskTab_uid37_block_rsrvd_fix(LOOKUP,36)@0
    maskTab_uid37_block_rsrvd_fix_combproc: PROCESS (tabAddr_uid36_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (tabAddr_uid36_block_rsrvd_fix_b) IS
            WHEN "00000" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111111111111";
            WHEN "00001" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111111111110";
            WHEN "00010" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111111111100";
            WHEN "00011" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111111111000";
            WHEN "00100" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111111110000";
            WHEN "00101" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111111100000";
            WHEN "00110" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111111000000";
            WHEN "00111" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111110000000";
            WHEN "01000" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111100000000";
            WHEN "01001" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111111000000000";
            WHEN "01010" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111110000000000";
            WHEN "01011" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111100000000000";
            WHEN "01100" => maskTab_uid37_block_rsrvd_fix_q <= "111111111111000000000000";
            WHEN "01101" => maskTab_uid37_block_rsrvd_fix_q <= "111111111110000000000000";
            WHEN "01110" => maskTab_uid37_block_rsrvd_fix_q <= "111111111100000000000000";
            WHEN "01111" => maskTab_uid37_block_rsrvd_fix_q <= "111111111000000000000000";
            WHEN "10000" => maskTab_uid37_block_rsrvd_fix_q <= "111111110000000000000000";
            WHEN "10001" => maskTab_uid37_block_rsrvd_fix_q <= "111111100000000000000000";
            WHEN "10010" => maskTab_uid37_block_rsrvd_fix_q <= "111111000000000000000000";
            WHEN "10011" => maskTab_uid37_block_rsrvd_fix_q <= "111110000000000000000000";
            WHEN "10100" => maskTab_uid37_block_rsrvd_fix_q <= "111100000000000000000000";
            WHEN "10101" => maskTab_uid37_block_rsrvd_fix_q <= "111000000000000000000000";
            WHEN "10110" => maskTab_uid37_block_rsrvd_fix_q <= "110000000000000000000000";
            WHEN "10111" => maskTab_uid37_block_rsrvd_fix_q <= "100000000000000000000000";
            WHEN OTHERS => maskTab_uid37_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- maskTableZ_uid41_block_rsrvd_fix(BITJOIN,40)@0
    maskTableZ_uid41_block_rsrvd_fix_q <= maskTab_uid37_block_rsrvd_fix_q & GND_q;

    -- maskIncTab_uid39_block_rsrvd_fix(LOOKUP,38)@0
    maskIncTab_uid39_block_rsrvd_fix_combproc: PROCESS (tabAddr_uid36_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (tabAddr_uid36_block_rsrvd_fix_b) IS
            WHEN "00000" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000000000001";
            WHEN "00001" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000000000010";
            WHEN "00010" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000000000100";
            WHEN "00011" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000000001000";
            WHEN "00100" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000000010000";
            WHEN "00101" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000000100000";
            WHEN "00110" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000001000000";
            WHEN "00111" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000010000000";
            WHEN "01000" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000000100000000";
            WHEN "01001" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000001000000000";
            WHEN "01010" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000010000000000";
            WHEN "01011" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000000100000000000";
            WHEN "01100" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000001000000000000";
            WHEN "01101" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000010000000000000";
            WHEN "01110" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000000100000000000000";
            WHEN "01111" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000001000000000000000";
            WHEN "10000" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000010000000000000000";
            WHEN "10001" => maskIncTab_uid39_block_rsrvd_fix_q <= "000000100000000000000000";
            WHEN "10010" => maskIncTab_uid39_block_rsrvd_fix_q <= "000001000000000000000000";
            WHEN "10011" => maskIncTab_uid39_block_rsrvd_fix_q <= "000010000000000000000000";
            WHEN "10100" => maskIncTab_uid39_block_rsrvd_fix_q <= "000100000000000000000000";
            WHEN "10101" => maskIncTab_uid39_block_rsrvd_fix_q <= "001000000000000000000000";
            WHEN "10110" => maskIncTab_uid39_block_rsrvd_fix_q <= "010000000000000000000000";
            WHEN "10111" => maskIncTab_uid39_block_rsrvd_fix_q <= "100000000000000000000000";
            WHEN OTHERS => maskIncTab_uid39_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- oFracX_uid32_block_rsrvd_fix(BITJOIN,31)@0
    oFracX_uid32_block_rsrvd_fix_q <= VCC_q & fracX_uid7_block_rsrvd_fix_b;

    -- fracPostMask_uid38_block_rsrvd_fix(LOGICAL,37)@0
    fracPostMask_uid38_block_rsrvd_fix_q <= oFracX_uid32_block_rsrvd_fix_q and maskTab_uid37_block_rsrvd_fix_q;

    -- fracPostRnd0_uid40_block_rsrvd_fix(ADD,39)@0
    fracPostRnd0_uid40_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & fracPostMask_uid38_block_rsrvd_fix_q);
    fracPostRnd0_uid40_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & maskIncTab_uid39_block_rsrvd_fix_q);
    fracPostRnd0_uid40_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fracPostRnd0_uid40_block_rsrvd_fix_a) + UNSIGNED(fracPostRnd0_uid40_block_rsrvd_fix_b));
    fracPostRnd0_uid40_block_rsrvd_fix_q <= fracPostRnd0_uid40_block_rsrvd_fix_o(24 downto 0);

    -- fracPostRnd_uid42_block_rsrvd_fix(LOGICAL,41)@0
    fracPostRnd_uid42_block_rsrvd_fix_q <= fracPostRnd0_uid40_block_rsrvd_fix_q and maskTableZ_uid41_block_rsrvd_fix_q;

    -- normBit_uid43_block_rsrvd_fix(BITSELECT,42)@0
    normBit_uid43_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(fracPostRnd_uid42_block_rsrvd_fix_q(24 downto 24));

    -- expRExt_uid47_block_rsrvd_fix(ADD,46)@0
    expRExt_uid47_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expX_uid6_block_rsrvd_fix_b);
    expRExt_uid47_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000" & normBit_uid43_block_rsrvd_fix_b);
    expRExt_uid47_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expRExt_uid47_block_rsrvd_fix_a) + UNSIGNED(expRExt_uid47_block_rsrvd_fix_b));
    expRExt_uid47_block_rsrvd_fix_q <= expRExt_uid47_block_rsrvd_fix_o(8 downto 0);

    -- expR_uid48_block_rsrvd_fix(BITSELECT,47)@0
    expR_uid48_block_rsrvd_fix_in <= expRExt_uid47_block_rsrvd_fix_q(7 downto 0);
    expR_uid48_block_rsrvd_fix_b <= expR_uid48_block_rsrvd_fix_in(7 downto 0);

    -- cstAllZWE_uid12_block_rsrvd_fix(CONSTANT,11)
    cstAllZWE_uid12_block_rsrvd_fix_q <= "00000000";

    -- cstBiasPwF_uid14_block_rsrvd_fix(CONSTANT,13)
    cstBiasPwF_uid14_block_rsrvd_fix_q <= "10010110";

    -- xIsInt_uid33_block_rsrvd_fix(COMPARE,32)@0
    xIsInt_uid33_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expX_uid6_block_rsrvd_fix_b);
    xIsInt_uid33_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & cstBiasPwF_uid14_block_rsrvd_fix_q);
    xIsInt_uid33_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(xIsInt_uid33_block_rsrvd_fix_a) - UNSIGNED(xIsInt_uid33_block_rsrvd_fix_b));
    xIsInt_uid33_block_rsrvd_fix_n(0) <= not (xIsInt_uid33_block_rsrvd_fix_o(9));

    -- cstBiasM2_uid13_block_rsrvd_fix(CONSTANT,12)
    cstBiasM2_uid13_block_rsrvd_fix_q <= "01111101";

    -- xIsSmallFrac_uid34_block_rsrvd_fix(COMPARE,33)@0
    xIsSmallFrac_uid34_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & cstBiasM2_uid13_block_rsrvd_fix_q);
    xIsSmallFrac_uid34_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expX_uid6_block_rsrvd_fix_b);
    xIsSmallFrac_uid34_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(xIsSmallFrac_uid34_block_rsrvd_fix_a) - UNSIGNED(xIsSmallFrac_uid34_block_rsrvd_fix_b));
    xIsSmallFrac_uid34_block_rsrvd_fix_n(0) <= not (xIsSmallFrac_uid34_block_rsrvd_fix_o(9));

    -- excI_x_uid27_block_rsrvd_fix(LOGICAL,26)@0
    excI_x_uid27_block_rsrvd_fix_q <= expXIsMax_uid24_block_rsrvd_fix_q and fracXIsZero_uid25_block_rsrvd_fix_q;

    -- excZ_x_uid23_block_rsrvd_fix(LOGICAL,22)@0
    excZ_x_uid23_block_rsrvd_fix_q <= "1" WHEN expX_uid6_block_rsrvd_fix_b = cstAllZWE_uid12_block_rsrvd_fix_q ELSE "0";

    -- selBitsEpilogue_uid49_block_rsrvd_fix(BITJOIN,48)@0
    selBitsEpilogue_uid49_block_rsrvd_fix_q <= xIsInt_uid33_block_rsrvd_fix_n & xIsSmallFrac_uid34_block_rsrvd_fix_n & excN_x_uid28_block_rsrvd_fix_q & excI_x_uid27_block_rsrvd_fix_q & excZ_x_uid23_block_rsrvd_fix_q;

    -- expSelBits_uid51_block_rsrvd_fix(LOOKUP,50)@0
    expSelBits_uid51_block_rsrvd_fix_combproc: PROCESS (selBitsEpilogue_uid49_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (selBitsEpilogue_uid49_block_rsrvd_fix_q) IS
            WHEN "00000" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "00001" => expSelBits_uid51_block_rsrvd_fix_q <= "00";
            WHEN "00010" => expSelBits_uid51_block_rsrvd_fix_q <= "01";
            WHEN "00011" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "00100" => expSelBits_uid51_block_rsrvd_fix_q <= "01";
            WHEN "00101" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "00110" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "00111" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "01000" => expSelBits_uid51_block_rsrvd_fix_q <= "00";
            WHEN "01001" => expSelBits_uid51_block_rsrvd_fix_q <= "00";
            WHEN "01010" => expSelBits_uid51_block_rsrvd_fix_q <= "01";
            WHEN "01011" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "01100" => expSelBits_uid51_block_rsrvd_fix_q <= "01";
            WHEN "01101" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "01110" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "01111" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "10000" => expSelBits_uid51_block_rsrvd_fix_q <= "10";
            WHEN "10001" => expSelBits_uid51_block_rsrvd_fix_q <= "00";
            WHEN "10010" => expSelBits_uid51_block_rsrvd_fix_q <= "01";
            WHEN "10011" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "10100" => expSelBits_uid51_block_rsrvd_fix_q <= "01";
            WHEN "10101" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "10110" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "10111" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "11000" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "11001" => expSelBits_uid51_block_rsrvd_fix_q <= "00";
            WHEN "11010" => expSelBits_uid51_block_rsrvd_fix_q <= "01";
            WHEN "11011" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "11100" => expSelBits_uid51_block_rsrvd_fix_q <= "01";
            WHEN "11101" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "11110" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN "11111" => expSelBits_uid51_block_rsrvd_fix_q <= "11";
            WHEN OTHERS => -- unreachable
                           expSelBits_uid51_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid55_block_rsrvd_fix(MUX,54)@0
    expRPostExc_uid55_block_rsrvd_fix_s <= expSelBits_uid51_block_rsrvd_fix_q;
    expRPostExc_uid55_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid55_block_rsrvd_fix_s, cstAllZWE_uid12_block_rsrvd_fix_q, cstAllOWE_uid9_block_rsrvd_fix_q, expX_uid6_block_rsrvd_fix_b, expR_uid48_block_rsrvd_fix_b)
    BEGIN
        CASE (expRPostExc_uid55_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid55_block_rsrvd_fix_q <= cstAllZWE_uid12_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid55_block_rsrvd_fix_q <= cstAllOWE_uid9_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid55_block_rsrvd_fix_q <= expX_uid6_block_rsrvd_fix_b;
            WHEN "11" => expRPostExc_uid55_block_rsrvd_fix_q <= expR_uid48_block_rsrvd_fix_b;
            WHEN OTHERS => expRPostExc_uid55_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRHigh_uid44_block_rsrvd_fix(BITSELECT,43)@0
    fracRHigh_uid44_block_rsrvd_fix_in <= fracPostRnd_uid42_block_rsrvd_fix_q(23 downto 0);
    fracRHigh_uid44_block_rsrvd_fix_b <= fracRHigh_uid44_block_rsrvd_fix_in(23 downto 1);

    -- fracRLow_uid45_block_rsrvd_fix(BITSELECT,44)@0
    fracRLow_uid45_block_rsrvd_fix_in <= fracPostRnd_uid42_block_rsrvd_fix_q(22 downto 0);
    fracRLow_uid45_block_rsrvd_fix_b <= fracRLow_uid45_block_rsrvd_fix_in(22 downto 0);

    -- fracR_uid46_block_rsrvd_fix(MUX,45)@0
    fracR_uid46_block_rsrvd_fix_s <= normBit_uid43_block_rsrvd_fix_b;
    fracR_uid46_block_rsrvd_fix_combproc: PROCESS (fracR_uid46_block_rsrvd_fix_s, fracRLow_uid45_block_rsrvd_fix_b, fracRHigh_uid44_block_rsrvd_fix_b)
    BEGIN
        CASE (fracR_uid46_block_rsrvd_fix_s) IS
            WHEN "0" => fracR_uid46_block_rsrvd_fix_q <= fracRLow_uid45_block_rsrvd_fix_b;
            WHEN "1" => fracR_uid46_block_rsrvd_fix_q <= fracRHigh_uid44_block_rsrvd_fix_b;
            WHEN OTHERS => fracR_uid46_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstNaNWF_uid11_block_rsrvd_fix(CONSTANT,10)
    cstNaNWF_uid11_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracSelBits_uid50_block_rsrvd_fix(LOOKUP,49)@0
    fracSelBits_uid50_block_rsrvd_fix_combproc: PROCESS (selBitsEpilogue_uid49_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (selBitsEpilogue_uid49_block_rsrvd_fix_q) IS
            WHEN "00000" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "00001" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "00010" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "00011" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "00100" => fracSelBits_uid50_block_rsrvd_fix_q <= "01";
            WHEN "00101" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "00110" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "00111" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "01000" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "01001" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "01010" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "01011" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "01100" => fracSelBits_uid50_block_rsrvd_fix_q <= "01";
            WHEN "01101" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "01110" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "01111" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "10000" => fracSelBits_uid50_block_rsrvd_fix_q <= "10";
            WHEN "10001" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "10010" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "10011" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "10100" => fracSelBits_uid50_block_rsrvd_fix_q <= "01";
            WHEN "10101" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "10110" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "10111" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "11000" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "11001" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "11010" => fracSelBits_uid50_block_rsrvd_fix_q <= "00";
            WHEN "11011" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "11100" => fracSelBits_uid50_block_rsrvd_fix_q <= "01";
            WHEN "11101" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "11110" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN "11111" => fracSelBits_uid50_block_rsrvd_fix_q <= "11";
            WHEN OTHERS => -- unreachable
                           fracSelBits_uid50_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- fracRPostExc_uid54_block_rsrvd_fix(MUX,53)@0
    fracRPostExc_uid54_block_rsrvd_fix_s <= fracSelBits_uid50_block_rsrvd_fix_q;
    fracRPostExc_uid54_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid54_block_rsrvd_fix_s, cstAllZWF_uid10_block_rsrvd_fix_q, cstNaNWF_uid11_block_rsrvd_fix_q, fracX_uid7_block_rsrvd_fix_b, fracR_uid46_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid54_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid54_block_rsrvd_fix_q <= cstAllZWF_uid10_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid54_block_rsrvd_fix_q <= cstNaNWF_uid11_block_rsrvd_fix_q;
            WHEN "10" => fracRPostExc_uid54_block_rsrvd_fix_q <= fracX_uid7_block_rsrvd_fix_b;
            WHEN "11" => fracRPostExc_uid54_block_rsrvd_fix_q <= fracR_uid46_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid54_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- r_uid58_block_rsrvd_fix(BITJOIN,57)@0
    r_uid58_block_rsrvd_fix_q <= signR_uid57_block_rsrvd_fix_q & expRPostExc_uid55_block_rsrvd_fix_q & fracRPostExc_uid54_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@0
    out_primWireOut <= r_uid58_block_rsrvd_fix_q;

END normal;
