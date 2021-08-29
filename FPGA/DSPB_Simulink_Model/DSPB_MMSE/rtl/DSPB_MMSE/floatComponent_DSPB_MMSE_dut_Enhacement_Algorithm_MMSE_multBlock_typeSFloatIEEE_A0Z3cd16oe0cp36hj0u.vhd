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

-- VHDL created from floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
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
entity floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u;

architecture normal of floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expY_uid8_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid15_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid16_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid17_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid18_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid23_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal frac_y_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_y_uid30_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid31_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid32_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid33_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid34_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid35_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid36_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid37_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ofracX_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal ofracY_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expSum_uid45_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid45_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid45_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expSum_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal biasInc_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal expSumMBias_uid47_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid47_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid47_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expSumMBias_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal signR_uid49_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normalizeBit_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNormHigh_uid52_block_rsrvd_fix_in : STD_LOGIC_VECTOR (46 downto 0);
    signal fracRPostNormHigh_uid52_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNormLow_uid53_block_rsrvd_fix_in : STD_LOGIC_VECTOR (45 downto 0);
    signal fracRPostNormLow_uid53_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPostNorm_uid54_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm_uid54_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal stickyRange_uid55_block_rsrvd_fix_in : STD_LOGIC_VECTOR (21 downto 0);
    signal stickyRange_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (21 downto 0);
    signal extraStickyBitOfProd_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal extraStickyBitOfProd_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal extraStickyBit_uid57_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal extraStickyBit_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stickyExtendedRange_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal stickyRangeComparator_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sticky_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostNorm1dto0_uid62_block_rsrvd_fix_in : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostNorm1dto0_uid62_block_rsrvd_fix_b : STD_LOGIC_VECTOR (1 downto 0);
    signal lrs_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal roundBitDetectionConstant_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal roundBitDetectionPattern_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBit_uid66_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracPreRound_uid67_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal expFracRPostRounding_uid70_block_rsrvd_fix_a : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid70_block_rsrvd_fix_b : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid70_block_rsrvd_fix_o : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracRPostRounding_uid70_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal fracRPreExc_uid71_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid71_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExcExt_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expRPreExc_uid73_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPreExc_uid73_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expUdf_uid74_block_rsrvd_fix_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid74_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid74_block_rsrvd_fix_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expUdf_uid74_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid76_block_rsrvd_fix_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid76_block_rsrvd_fix_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expOvf_uid76_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYZ_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYR_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXR_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZC3_uid80_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIAndExcYI_uid82_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRAndExcYI_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYRAndExcXI_uid84_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ExcROvfAndInReg_uid85_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excYZAndExcXI_uid87_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZAndExcYI_uid88_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal ZeroTimesInf_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid90_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid91_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid93_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid96_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid96_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid101_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid101_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal R_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_reset : std_logic;
    type prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0type is array(NATURAL range <>) of UNSIGNED(23 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0 : prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0 : signal is true;
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0 : prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0 : signal is true;
    type prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ptype is array(NATURAL range <>) of UNSIGNED(47 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_p : prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_u : prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_w : prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_x : prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_y : prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_s : prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_qq : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q : STD_LOGIC_VECTOR (47 downto 0);
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena0 : std_logic;
    signal prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena1 : std_logic;
    signal redist0_signR_uid49_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_expSum_uid45_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist2_fracXIsZero_uid32_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_expXIsMax_uid31_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_excZ_y_uid30_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_fracXIsZero_uid18_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_expXIsMax_uid17_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_excZ_x_uid16_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- frac_x_uid15_block_rsrvd_fix(BITSELECT,14)@0
    frac_x_uid15_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- cstZeroWF_uid12_block_rsrvd_fix(CONSTANT,11)
    cstZeroWF_uid12_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid18_block_rsrvd_fix(LOGICAL,17)@0 + 1
    fracXIsZero_uid18_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid12_block_rsrvd_fix_q = frac_x_uid15_block_rsrvd_fix_b ELSE "0";
    fracXIsZero_uid18_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid18_block_rsrvd_fix_qi, xout => fracXIsZero_uid18_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist5_fracXIsZero_uid18_block_rsrvd_fix_q_2(DELAY,114)
    redist5_fracXIsZero_uid18_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid18_block_rsrvd_fix_q, xout => redist5_fracXIsZero_uid18_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- cstAllOWE_uid11_block_rsrvd_fix(CONSTANT,10)
    cstAllOWE_uid11_block_rsrvd_fix_q <= "11111111";

    -- expX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    expX_uid7_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- expXIsMax_uid17_block_rsrvd_fix(LOGICAL,16)@0 + 1
    expXIsMax_uid17_block_rsrvd_fix_qi <= "1" WHEN expX_uid7_block_rsrvd_fix_b = cstAllOWE_uid11_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid17_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid17_block_rsrvd_fix_qi, xout => expXIsMax_uid17_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist6_expXIsMax_uid17_block_rsrvd_fix_q_2(DELAY,115)
    redist6_expXIsMax_uid17_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid17_block_rsrvd_fix_q, xout => redist6_expXIsMax_uid17_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excI_x_uid20_block_rsrvd_fix(LOGICAL,19)@2
    excI_x_uid20_block_rsrvd_fix_q <= redist6_expXIsMax_uid17_block_rsrvd_fix_q_2_q and redist5_fracXIsZero_uid18_block_rsrvd_fix_q_2_q;

    -- cstAllZWE_uid13_block_rsrvd_fix(CONSTANT,12)
    cstAllZWE_uid13_block_rsrvd_fix_q <= "00000000";

    -- expY_uid8_block_rsrvd_fix(BITSELECT,7)@0
    expY_uid8_block_rsrvd_fix_b <= in_1(30 downto 23);

    -- excZ_y_uid30_block_rsrvd_fix(LOGICAL,29)@0 + 1
    excZ_y_uid30_block_rsrvd_fix_qi <= "1" WHEN expY_uid8_block_rsrvd_fix_b = cstAllZWE_uid13_block_rsrvd_fix_q ELSE "0";
    excZ_y_uid30_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid30_block_rsrvd_fix_qi, xout => excZ_y_uid30_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist4_excZ_y_uid30_block_rsrvd_fix_q_2(DELAY,113)
    redist4_excZ_y_uid30_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid30_block_rsrvd_fix_q, xout => redist4_excZ_y_uid30_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excYZAndExcXI_uid87_block_rsrvd_fix(LOGICAL,86)@2
    excYZAndExcXI_uid87_block_rsrvd_fix_q <= redist4_excZ_y_uid30_block_rsrvd_fix_q_2_q and excI_x_uid20_block_rsrvd_fix_q;

    -- frac_y_uid29_block_rsrvd_fix(BITSELECT,28)@0
    frac_y_uid29_block_rsrvd_fix_b <= in_1(22 downto 0);

    -- fracXIsZero_uid32_block_rsrvd_fix(LOGICAL,31)@0 + 1
    fracXIsZero_uid32_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid12_block_rsrvd_fix_q = frac_y_uid29_block_rsrvd_fix_b ELSE "0";
    fracXIsZero_uid32_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid32_block_rsrvd_fix_qi, xout => fracXIsZero_uid32_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist2_fracXIsZero_uid32_block_rsrvd_fix_q_2(DELAY,111)
    redist2_fracXIsZero_uid32_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid32_block_rsrvd_fix_q, xout => redist2_fracXIsZero_uid32_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- expXIsMax_uid31_block_rsrvd_fix(LOGICAL,30)@0 + 1
    expXIsMax_uid31_block_rsrvd_fix_qi <= "1" WHEN expY_uid8_block_rsrvd_fix_b = cstAllOWE_uid11_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid31_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid31_block_rsrvd_fix_qi, xout => expXIsMax_uid31_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist3_expXIsMax_uid31_block_rsrvd_fix_q_2(DELAY,112)
    redist3_expXIsMax_uid31_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid31_block_rsrvd_fix_q, xout => redist3_expXIsMax_uid31_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excI_y_uid34_block_rsrvd_fix(LOGICAL,33)@2
    excI_y_uid34_block_rsrvd_fix_q <= redist3_expXIsMax_uid31_block_rsrvd_fix_q_2_q and redist2_fracXIsZero_uid32_block_rsrvd_fix_q_2_q;

    -- excZ_x_uid16_block_rsrvd_fix(LOGICAL,15)@0 + 1
    excZ_x_uid16_block_rsrvd_fix_qi <= "1" WHEN expX_uid7_block_rsrvd_fix_b = cstAllZWE_uid13_block_rsrvd_fix_q ELSE "0";
    excZ_x_uid16_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid16_block_rsrvd_fix_qi, xout => excZ_x_uid16_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist7_excZ_x_uid16_block_rsrvd_fix_q_2(DELAY,116)
    redist7_excZ_x_uid16_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid16_block_rsrvd_fix_q, xout => redist7_excZ_x_uid16_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excXZAndExcYI_uid88_block_rsrvd_fix(LOGICAL,87)@2
    excXZAndExcYI_uid88_block_rsrvd_fix_q <= redist7_excZ_x_uid16_block_rsrvd_fix_q_2_q and excI_y_uid34_block_rsrvd_fix_q;

    -- ZeroTimesInf_uid89_block_rsrvd_fix(LOGICAL,88)@2
    ZeroTimesInf_uid89_block_rsrvd_fix_q <= excXZAndExcYI_uid88_block_rsrvd_fix_q or excYZAndExcXI_uid87_block_rsrvd_fix_q;

    -- fracXIsNotZero_uid33_block_rsrvd_fix(LOGICAL,32)@2
    fracXIsNotZero_uid33_block_rsrvd_fix_q <= not (redist2_fracXIsZero_uid32_block_rsrvd_fix_q_2_q);

    -- excN_y_uid35_block_rsrvd_fix(LOGICAL,34)@2
    excN_y_uid35_block_rsrvd_fix_q <= redist3_expXIsMax_uid31_block_rsrvd_fix_q_2_q and fracXIsNotZero_uid33_block_rsrvd_fix_q;

    -- fracXIsNotZero_uid19_block_rsrvd_fix(LOGICAL,18)@2
    fracXIsNotZero_uid19_block_rsrvd_fix_q <= not (redist5_fracXIsZero_uid18_block_rsrvd_fix_q_2_q);

    -- excN_x_uid21_block_rsrvd_fix(LOGICAL,20)@2
    excN_x_uid21_block_rsrvd_fix_q <= redist6_expXIsMax_uid17_block_rsrvd_fix_q_2_q and fracXIsNotZero_uid19_block_rsrvd_fix_q;

    -- excRNaN_uid90_block_rsrvd_fix(LOGICAL,89)@2
    excRNaN_uid90_block_rsrvd_fix_q <= excN_x_uid21_block_rsrvd_fix_q or excN_y_uid35_block_rsrvd_fix_q or ZeroTimesInf_uid89_block_rsrvd_fix_q;

    -- invExcRNaN_uid102_block_rsrvd_fix(LOGICAL,101)@2
    invExcRNaN_uid102_block_rsrvd_fix_q <= not (excRNaN_uid90_block_rsrvd_fix_q);

    -- signY_uid10_block_rsrvd_fix(BITSELECT,9)@0
    signY_uid10_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(31 downto 31));

    -- signX_uid9_block_rsrvd_fix(BITSELECT,8)@0
    signX_uid9_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- signR_uid49_block_rsrvd_fix(LOGICAL,48)@0 + 1
    signR_uid49_block_rsrvd_fix_qi <= signX_uid9_block_rsrvd_fix_b xor signY_uid10_block_rsrvd_fix_b;
    signR_uid49_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid49_block_rsrvd_fix_qi, xout => signR_uid49_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist0_signR_uid49_block_rsrvd_fix_q_2(DELAY,109)
    redist0_signR_uid49_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid49_block_rsrvd_fix_q, xout => redist0_signR_uid49_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signRPostExc_uid103_block_rsrvd_fix(LOGICAL,102)@2
    signRPostExc_uid103_block_rsrvd_fix_q <= redist0_signR_uid49_block_rsrvd_fix_q_2_q and invExcRNaN_uid102_block_rsrvd_fix_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- ofracY_uid44_block_rsrvd_fix(BITJOIN,43)@0
    ofracY_uid44_block_rsrvd_fix_q <= VCC_q & frac_y_uid29_block_rsrvd_fix_b;

    -- ofracX_uid41_block_rsrvd_fix(BITJOIN,40)@0
    ofracX_uid41_block_rsrvd_fix_q <= VCC_q & frac_x_uid15_block_rsrvd_fix_b;

    -- prodXY_uid106_prod_uid48_block_rsrvd_fix_cma(CHAINMULTADD,108)@0 + 2
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_reset <= areset;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena0 <= '1';
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena1 <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena0;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_p(0) <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0(0) * prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0(0);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_u(0) <= RESIZE(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_p(0),48);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_w(0) <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_u(0);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_x(0) <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_w(0);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_y(0) <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_x(0);
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0 <= (others => (others => '0'));
            prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena0 = '1') THEN
                prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0(0) <= RESIZE(UNSIGNED(ofracX_uid41_block_rsrvd_fix_q),24);
                prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(ofracY_uid44_block_rsrvd_fix_q),24);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena1 = '1') THEN
                prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_s(0) <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_delay : dspba_delay
    GENERIC MAP ( width => 48, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_s(0)(47 downto 0)), xout => prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_qq, clk => clk, aclr => areset );
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q <= STD_LOGIC_VECTOR(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_qq(47 downto 0));

    -- normalizeBit_uid50_block_rsrvd_fix(BITSELECT,49)@2
    normalizeBit_uid50_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q(47 downto 47));

    -- roundBitDetectionConstant_uid64_block_rsrvd_fix(CONSTANT,63)
    roundBitDetectionConstant_uid64_block_rsrvd_fix_q <= "010";

    -- fracRPostNormHigh_uid52_block_rsrvd_fix(BITSELECT,51)@2
    fracRPostNormHigh_uid52_block_rsrvd_fix_in <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q(46 downto 0);
    fracRPostNormHigh_uid52_block_rsrvd_fix_b <= fracRPostNormHigh_uid52_block_rsrvd_fix_in(46 downto 23);

    -- fracRPostNormLow_uid53_block_rsrvd_fix(BITSELECT,52)@2
    fracRPostNormLow_uid53_block_rsrvd_fix_in <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q(45 downto 0);
    fracRPostNormLow_uid53_block_rsrvd_fix_b <= fracRPostNormLow_uid53_block_rsrvd_fix_in(45 downto 22);

    -- fracRPostNorm_uid54_block_rsrvd_fix(MUX,53)@2
    fracRPostNorm_uid54_block_rsrvd_fix_s <= normalizeBit_uid50_block_rsrvd_fix_b;
    fracRPostNorm_uid54_block_rsrvd_fix_combproc: PROCESS (fracRPostNorm_uid54_block_rsrvd_fix_s, fracRPostNormLow_uid53_block_rsrvd_fix_b, fracRPostNormHigh_uid52_block_rsrvd_fix_b)
    BEGIN
        CASE (fracRPostNorm_uid54_block_rsrvd_fix_s) IS
            WHEN "0" => fracRPostNorm_uid54_block_rsrvd_fix_q <= fracRPostNormLow_uid53_block_rsrvd_fix_b;
            WHEN "1" => fracRPostNorm_uid54_block_rsrvd_fix_q <= fracRPostNormHigh_uid52_block_rsrvd_fix_b;
            WHEN OTHERS => fracRPostNorm_uid54_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPostNorm1dto0_uid62_block_rsrvd_fix(BITSELECT,61)@2
    fracRPostNorm1dto0_uid62_block_rsrvd_fix_in <= fracRPostNorm_uid54_block_rsrvd_fix_q(1 downto 0);
    fracRPostNorm1dto0_uid62_block_rsrvd_fix_b <= fracRPostNorm1dto0_uid62_block_rsrvd_fix_in(1 downto 0);

    -- extraStickyBitOfProd_uid56_block_rsrvd_fix(BITSELECT,55)@2
    extraStickyBitOfProd_uid56_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q(22 downto 0));
    extraStickyBitOfProd_uid56_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(extraStickyBitOfProd_uid56_block_rsrvd_fix_in(22 downto 22));

    -- extraStickyBit_uid57_block_rsrvd_fix(MUX,56)@2
    extraStickyBit_uid57_block_rsrvd_fix_s <= normalizeBit_uid50_block_rsrvd_fix_b;
    extraStickyBit_uid57_block_rsrvd_fix_combproc: PROCESS (extraStickyBit_uid57_block_rsrvd_fix_s, GND_q, extraStickyBitOfProd_uid56_block_rsrvd_fix_b)
    BEGIN
        CASE (extraStickyBit_uid57_block_rsrvd_fix_s) IS
            WHEN "0" => extraStickyBit_uid57_block_rsrvd_fix_q <= GND_q;
            WHEN "1" => extraStickyBit_uid57_block_rsrvd_fix_q <= extraStickyBitOfProd_uid56_block_rsrvd_fix_b;
            WHEN OTHERS => extraStickyBit_uid57_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- stickyRange_uid55_block_rsrvd_fix(BITSELECT,54)@2
    stickyRange_uid55_block_rsrvd_fix_in <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q(21 downto 0);
    stickyRange_uid55_block_rsrvd_fix_b <= stickyRange_uid55_block_rsrvd_fix_in(21 downto 0);

    -- stickyExtendedRange_uid58_block_rsrvd_fix(BITJOIN,57)@2
    stickyExtendedRange_uid58_block_rsrvd_fix_q <= extraStickyBit_uid57_block_rsrvd_fix_q & stickyRange_uid55_block_rsrvd_fix_b;

    -- stickyRangeComparator_uid60_block_rsrvd_fix(LOGICAL,59)@2
    stickyRangeComparator_uid60_block_rsrvd_fix_q <= "1" WHEN stickyExtendedRange_uid58_block_rsrvd_fix_q = cstZeroWF_uid12_block_rsrvd_fix_q ELSE "0";

    -- sticky_uid61_block_rsrvd_fix(LOGICAL,60)@2
    sticky_uid61_block_rsrvd_fix_q <= not (stickyRangeComparator_uid60_block_rsrvd_fix_q);

    -- lrs_uid63_block_rsrvd_fix(BITJOIN,62)@2
    lrs_uid63_block_rsrvd_fix_q <= fracRPostNorm1dto0_uid62_block_rsrvd_fix_b & sticky_uid61_block_rsrvd_fix_q;

    -- roundBitDetectionPattern_uid65_block_rsrvd_fix(LOGICAL,64)@2
    roundBitDetectionPattern_uid65_block_rsrvd_fix_q <= "1" WHEN lrs_uid63_block_rsrvd_fix_q = roundBitDetectionConstant_uid64_block_rsrvd_fix_q ELSE "0";

    -- roundBit_uid66_block_rsrvd_fix(LOGICAL,65)@2
    roundBit_uid66_block_rsrvd_fix_q <= not (roundBitDetectionPattern_uid65_block_rsrvd_fix_q);

    -- roundBitAndNormalizationOp_uid69_block_rsrvd_fix(BITJOIN,68)@2
    roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q <= GND_q & normalizeBit_uid50_block_rsrvd_fix_b & cstZeroWF_uid12_block_rsrvd_fix_q & roundBit_uid66_block_rsrvd_fix_q;

    -- biasInc_uid46_block_rsrvd_fix(CONSTANT,45)
    biasInc_uid46_block_rsrvd_fix_q <= "0001111111";

    -- expSum_uid45_block_rsrvd_fix(ADD,44)@0 + 1
    expSum_uid45_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expX_uid7_block_rsrvd_fix_b);
    expSum_uid45_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & expY_uid8_block_rsrvd_fix_b);
    expSum_uid45_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expSum_uid45_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            expSum_uid45_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expSum_uid45_block_rsrvd_fix_a) + UNSIGNED(expSum_uid45_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expSum_uid45_block_rsrvd_fix_q <= expSum_uid45_block_rsrvd_fix_o(8 downto 0);

    -- redist1_expSum_uid45_block_rsrvd_fix_q_2(DELAY,110)
    redist1_expSum_uid45_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expSum_uid45_block_rsrvd_fix_q, xout => redist1_expSum_uid45_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- expSumMBias_uid47_block_rsrvd_fix(SUB,46)@2
    expSumMBias_uid47_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist1_expSum_uid45_block_rsrvd_fix_q_2_q));
    expSumMBias_uid47_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => biasInc_uid46_block_rsrvd_fix_q(9)) & biasInc_uid46_block_rsrvd_fix_q));
    expSumMBias_uid47_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expSumMBias_uid47_block_rsrvd_fix_a) - SIGNED(expSumMBias_uid47_block_rsrvd_fix_b));
    expSumMBias_uid47_block_rsrvd_fix_q <= expSumMBias_uid47_block_rsrvd_fix_o(10 downto 0);

    -- expFracPreRound_uid67_block_rsrvd_fix(BITJOIN,66)@2
    expFracPreRound_uid67_block_rsrvd_fix_q <= expSumMBias_uid47_block_rsrvd_fix_q & fracRPostNorm_uid54_block_rsrvd_fix_q;

    -- expFracRPostRounding_uid70_block_rsrvd_fix(ADD,69)@2
    expFracRPostRounding_uid70_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 35 => expFracPreRound_uid67_block_rsrvd_fix_q(34)) & expFracPreRound_uid67_block_rsrvd_fix_q));
    expFracRPostRounding_uid70_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q));
    expFracRPostRounding_uid70_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expFracRPostRounding_uid70_block_rsrvd_fix_a) + SIGNED(expFracRPostRounding_uid70_block_rsrvd_fix_b));
    expFracRPostRounding_uid70_block_rsrvd_fix_q <= expFracRPostRounding_uid70_block_rsrvd_fix_o(35 downto 0);

    -- expRPreExcExt_uid72_block_rsrvd_fix(BITSELECT,71)@2
    expRPreExcExt_uid72_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracRPostRounding_uid70_block_rsrvd_fix_q(35 downto 24));

    -- expRPreExc_uid73_block_rsrvd_fix(BITSELECT,72)@2
    expRPreExc_uid73_block_rsrvd_fix_in <= expRPreExcExt_uid72_block_rsrvd_fix_b(7 downto 0);
    expRPreExc_uid73_block_rsrvd_fix_b <= expRPreExc_uid73_block_rsrvd_fix_in(7 downto 0);

    -- expOvf_uid76_block_rsrvd_fix(COMPARE,75)@2
    expOvf_uid76_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => expRPreExcExt_uid72_block_rsrvd_fix_b(11)) & expRPreExcExt_uid72_block_rsrvd_fix_b));
    expOvf_uid76_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000" & cstAllOWE_uid11_block_rsrvd_fix_q));
    expOvf_uid76_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid76_block_rsrvd_fix_a) - SIGNED(expOvf_uid76_block_rsrvd_fix_b));
    expOvf_uid76_block_rsrvd_fix_n(0) <= not (expOvf_uid76_block_rsrvd_fix_o(13));

    -- invExpXIsMax_uid36_block_rsrvd_fix(LOGICAL,35)@2
    invExpXIsMax_uid36_block_rsrvd_fix_q <= not (redist3_expXIsMax_uid31_block_rsrvd_fix_q_2_q);

    -- InvExpXIsZero_uid37_block_rsrvd_fix(LOGICAL,36)@2
    InvExpXIsZero_uid37_block_rsrvd_fix_q <= not (redist4_excZ_y_uid30_block_rsrvd_fix_q_2_q);

    -- excR_y_uid38_block_rsrvd_fix(LOGICAL,37)@2
    excR_y_uid38_block_rsrvd_fix_q <= InvExpXIsZero_uid37_block_rsrvd_fix_q and invExpXIsMax_uid36_block_rsrvd_fix_q;

    -- invExpXIsMax_uid22_block_rsrvd_fix(LOGICAL,21)@2
    invExpXIsMax_uid22_block_rsrvd_fix_q <= not (redist6_expXIsMax_uid17_block_rsrvd_fix_q_2_q);

    -- InvExpXIsZero_uid23_block_rsrvd_fix(LOGICAL,22)@2
    InvExpXIsZero_uid23_block_rsrvd_fix_q <= not (redist7_excZ_x_uid16_block_rsrvd_fix_q_2_q);

    -- excR_x_uid24_block_rsrvd_fix(LOGICAL,23)@2
    excR_x_uid24_block_rsrvd_fix_q <= InvExpXIsZero_uid23_block_rsrvd_fix_q and invExpXIsMax_uid22_block_rsrvd_fix_q;

    -- ExcROvfAndInReg_uid85_block_rsrvd_fix(LOGICAL,84)@2
    ExcROvfAndInReg_uid85_block_rsrvd_fix_q <= excR_x_uid24_block_rsrvd_fix_q and excR_y_uid38_block_rsrvd_fix_q and expOvf_uid76_block_rsrvd_fix_n;

    -- excYRAndExcXI_uid84_block_rsrvd_fix(LOGICAL,83)@2
    excYRAndExcXI_uid84_block_rsrvd_fix_q <= excR_y_uid38_block_rsrvd_fix_q and excI_x_uid20_block_rsrvd_fix_q;

    -- excXRAndExcYI_uid83_block_rsrvd_fix(LOGICAL,82)@2
    excXRAndExcYI_uid83_block_rsrvd_fix_q <= excR_x_uid24_block_rsrvd_fix_q and excI_y_uid34_block_rsrvd_fix_q;

    -- excXIAndExcYI_uid82_block_rsrvd_fix(LOGICAL,81)@2
    excXIAndExcYI_uid82_block_rsrvd_fix_q <= excI_x_uid20_block_rsrvd_fix_q and excI_y_uid34_block_rsrvd_fix_q;

    -- excRInf_uid86_block_rsrvd_fix(LOGICAL,85)@2
    excRInf_uid86_block_rsrvd_fix_q <= excXIAndExcYI_uid82_block_rsrvd_fix_q or excXRAndExcYI_uid83_block_rsrvd_fix_q or excYRAndExcXI_uid84_block_rsrvd_fix_q or ExcROvfAndInReg_uid85_block_rsrvd_fix_q;

    -- expUdf_uid74_block_rsrvd_fix(COMPARE,73)@2
    expUdf_uid74_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000" & GND_q));
    expUdf_uid74_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => expRPreExcExt_uid72_block_rsrvd_fix_b(11)) & expRPreExcExt_uid72_block_rsrvd_fix_b));
    expUdf_uid74_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid74_block_rsrvd_fix_a) - SIGNED(expUdf_uid74_block_rsrvd_fix_b));
    expUdf_uid74_block_rsrvd_fix_n(0) <= not (expUdf_uid74_block_rsrvd_fix_o(13));

    -- excZC3_uid80_block_rsrvd_fix(LOGICAL,79)@2
    excZC3_uid80_block_rsrvd_fix_q <= excR_x_uid24_block_rsrvd_fix_q and excR_y_uid38_block_rsrvd_fix_q and expUdf_uid74_block_rsrvd_fix_n;

    -- excYZAndExcXR_uid79_block_rsrvd_fix(LOGICAL,78)@2
    excYZAndExcXR_uid79_block_rsrvd_fix_q <= redist4_excZ_y_uid30_block_rsrvd_fix_q_2_q and excR_x_uid24_block_rsrvd_fix_q;

    -- excXZAndExcYR_uid78_block_rsrvd_fix(LOGICAL,77)@2
    excXZAndExcYR_uid78_block_rsrvd_fix_q <= redist7_excZ_x_uid16_block_rsrvd_fix_q_2_q and excR_y_uid38_block_rsrvd_fix_q;

    -- excXZAndExcYZ_uid77_block_rsrvd_fix(LOGICAL,76)@2
    excXZAndExcYZ_uid77_block_rsrvd_fix_q <= redist7_excZ_x_uid16_block_rsrvd_fix_q_2_q and redist4_excZ_y_uid30_block_rsrvd_fix_q_2_q;

    -- excRZero_uid81_block_rsrvd_fix(LOGICAL,80)@2
    excRZero_uid81_block_rsrvd_fix_q <= excXZAndExcYZ_uid77_block_rsrvd_fix_q or excXZAndExcYR_uid78_block_rsrvd_fix_q or excYZAndExcXR_uid79_block_rsrvd_fix_q or excZC3_uid80_block_rsrvd_fix_q;

    -- concExc_uid91_block_rsrvd_fix(BITJOIN,90)@2
    concExc_uid91_block_rsrvd_fix_q <= excRNaN_uid90_block_rsrvd_fix_q & excRInf_uid86_block_rsrvd_fix_q & excRZero_uid81_block_rsrvd_fix_q;

    -- excREnc_uid92_block_rsrvd_fix(LOOKUP,91)@2
    excREnc_uid92_block_rsrvd_fix_combproc: PROCESS (concExc_uid91_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid91_block_rsrvd_fix_q) IS
            WHEN "000" => excREnc_uid92_block_rsrvd_fix_q <= "01";
            WHEN "001" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN "010" => excREnc_uid92_block_rsrvd_fix_q <= "10";
            WHEN "011" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN "100" => excREnc_uid92_block_rsrvd_fix_q <= "11";
            WHEN "101" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN "110" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN "111" => excREnc_uid92_block_rsrvd_fix_q <= "00";
            WHEN OTHERS => -- unreachable
                           excREnc_uid92_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid101_block_rsrvd_fix(MUX,100)@2
    expRPostExc_uid101_block_rsrvd_fix_s <= excREnc_uid92_block_rsrvd_fix_q;
    expRPostExc_uid101_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid101_block_rsrvd_fix_s, cstAllZWE_uid13_block_rsrvd_fix_q, expRPreExc_uid73_block_rsrvd_fix_b, cstAllOWE_uid11_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid101_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid101_block_rsrvd_fix_q <= cstAllZWE_uid13_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid101_block_rsrvd_fix_q <= expRPreExc_uid73_block_rsrvd_fix_b;
            WHEN "10" => expRPostExc_uid101_block_rsrvd_fix_q <= cstAllOWE_uid11_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid101_block_rsrvd_fix_q <= cstAllOWE_uid11_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid101_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid93_block_rsrvd_fix(CONSTANT,92)
    oneFracRPostExc2_uid93_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRPreExc_uid71_block_rsrvd_fix(BITSELECT,70)@2
    fracRPreExc_uid71_block_rsrvd_fix_in <= expFracRPostRounding_uid70_block_rsrvd_fix_q(23 downto 0);
    fracRPreExc_uid71_block_rsrvd_fix_b <= fracRPreExc_uid71_block_rsrvd_fix_in(23 downto 1);

    -- fracRPostExc_uid96_block_rsrvd_fix(MUX,95)@2
    fracRPostExc_uid96_block_rsrvd_fix_s <= excREnc_uid92_block_rsrvd_fix_q;
    fracRPostExc_uid96_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid96_block_rsrvd_fix_s, cstZeroWF_uid12_block_rsrvd_fix_q, fracRPreExc_uid71_block_rsrvd_fix_b, oneFracRPostExc2_uid93_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid96_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid96_block_rsrvd_fix_q <= cstZeroWF_uid12_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid96_block_rsrvd_fix_q <= fracRPreExc_uid71_block_rsrvd_fix_b;
            WHEN "10" => fracRPostExc_uid96_block_rsrvd_fix_q <= cstZeroWF_uid12_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid96_block_rsrvd_fix_q <= oneFracRPostExc2_uid93_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid96_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid104_block_rsrvd_fix(BITJOIN,103)@2
    R_uid104_block_rsrvd_fix_q <= signRPostExc_uid103_block_rsrvd_fix_q & expRPostExc_uid101_block_rsrvd_fix_q & fracRPostExc_uid96_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@2
    out_primWireOut <= R_uid104_block_rsrvd_fix_q;

END normal;
