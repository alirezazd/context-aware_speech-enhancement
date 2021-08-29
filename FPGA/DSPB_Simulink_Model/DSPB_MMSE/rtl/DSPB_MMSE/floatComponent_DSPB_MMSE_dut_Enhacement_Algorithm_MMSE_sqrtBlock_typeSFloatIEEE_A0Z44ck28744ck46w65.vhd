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

-- VHDL created from floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A0Z122644ck28744ck46w65
-- VHDL created on Mon Aug 16 17:44:00 2021


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
entity floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A0Z122644ck28744ck46w65 is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A0Z122644ck28744ck46w65;

architecture normal of floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A0Z122644ck28744ck46w65 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid6_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid9_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid12_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sBias_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expEvenSig_uid24_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expEvenSig_uid24_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expEvenSig_uid24_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expEvenSig_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expREven_uid25_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal sBiasM1_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expOddSig_uid27_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expOddSig_uid27_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expOddSig_uid27_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expOddSig_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expROdd_uid28_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expX0PS_uid29_block_rsrvd_fix_in : STD_LOGIC_VECTOR (0 downto 0);
    signal expX0PS_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal expOddSelect_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expRMux_uid31_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRMux_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal addrFull_uid33_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal yAddr_uid35_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yForPe_uid36_block_rsrvd_fix_in : STD_LOGIC_VECTOR (15 downto 0);
    signal yForPe_uid36_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal expIncPEOnly_uid38_block_rsrvd_fix_in : STD_LOGIC_VECTOR (30 downto 0);
    signal expIncPEOnly_uid38_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreCR_uid39_block_rsrvd_fix_in : STD_LOGIC_VECTOR (28 downto 0);
    signal fracRPreCR_uid39_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracPaddingOne_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal oFracX_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal normalizedXForComp_uid54_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal normalizedXForComp_uid54_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal paddingY_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal updatedY_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (49 downto 0);
    signal squaredResultGTEIn_uid55_block_rsrvd_fix_a : STD_LOGIC_VECTOR (51 downto 0);
    signal squaredResultGTEIn_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal squaredResultGTEIn_uid55_block_rsrvd_fix_o : STD_LOGIC_VECTOR (51 downto 0);
    signal squaredResultGTEIn_uid55_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal pLTOne_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_a : STD_LOGIC_VECTOR (24 downto 0);
    signal fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_o : STD_LOGIC_VECTOR (24 downto 0);
    signal fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal fracPENotOne_uid62_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPENotOneAndCRRoundsExp_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expInc_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expR_uid66_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expR_uid66_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expR_uid66_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expR_uid66_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal invSignX_uid67_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal inInfAndNotNeg_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal minReg_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal minInf_uid70_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid71_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excConc_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal fracSelIn_uid73_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal fracSel_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal expRR_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRR_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPostExc_uid79_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal fracNaN_uid80_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid84_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid84_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal negZero_uid85_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal RSqrt_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal yT1_uid100_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal lowRangeB_uid102_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid102_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid103_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal s1sumAHighB_uid104_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid104_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid104_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid104_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid105_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid108_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid108_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid109_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid110_invPolyEval_a : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid110_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid110_invPolyEval_o : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid110_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal s2_uid111_invPolyEval_q : STD_LOGIC_VECTOR (31 downto 0);
    signal osig_uid114_pT1_uid101_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal osig_uid117_pT2_uid107_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC0_uid88_sqrtTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid88_sqrtTables_lutmem_ia : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC0_uid88_sqrtTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid88_sqrtTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid88_sqrtTables_lutmem_ir : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC0_uid88_sqrtTables_lutmem_r : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid91_sqrtTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid91_sqrtTables_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC1_uid91_sqrtTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid91_sqrtTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid91_sqrtTables_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC1_uid91_sqrtTables_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid94_sqrtTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid94_sqrtTables_lutmem_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC2_uid94_sqrtTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid94_sqrtTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid94_sqrtTables_lutmem_ir : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC2_uid94_sqrtTables_lutmem_r : STD_LOGIC_VECTOR (11 downto 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_reset : std_logic;
    type squaredResult_uid42_block_rsrvd_fix_cma_a0type is array(NATURAL range <>) of UNSIGNED(24 downto 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_a0 : squaredResult_uid42_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of squaredResult_uid42_block_rsrvd_fix_cma_a0 : signal is true;
    signal squaredResult_uid42_block_rsrvd_fix_cma_c0 : squaredResult_uid42_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve of squaredResult_uid42_block_rsrvd_fix_cma_c0 : signal is true;
    type squaredResult_uid42_block_rsrvd_fix_cma_ptype is array(NATURAL range <>) of UNSIGNED(49 downto 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_p : squaredResult_uid42_block_rsrvd_fix_cma_ptype(0 to 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_u : squaredResult_uid42_block_rsrvd_fix_cma_ptype(0 to 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_w : squaredResult_uid42_block_rsrvd_fix_cma_ptype(0 to 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_x : squaredResult_uid42_block_rsrvd_fix_cma_ptype(0 to 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_y : squaredResult_uid42_block_rsrvd_fix_cma_ptype(0 to 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_s : squaredResult_uid42_block_rsrvd_fix_cma_ptype(0 to 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_qq : STD_LOGIC_VECTOR (49 downto 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_q : STD_LOGIC_VECTOR (49 downto 0);
    signal squaredResult_uid42_block_rsrvd_fix_cma_ena0 : std_logic;
    signal squaredResult_uid42_block_rsrvd_fix_cma_ena1 : std_logic;
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_reset : std_logic;
    type prodXY_uid113_pT1_uid101_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(11 downto 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_a0 : prodXY_uid113_pT1_uid101_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid113_pT1_uid101_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid113_pT1_uid101_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(11 downto 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_c0 : prodXY_uid113_pT1_uid101_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid113_pT1_uid101_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid113_pT1_uid101_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(12 downto 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_l : prodXY_uid113_pT1_uid101_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid113_pT1_uid101_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(24 downto 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_p : prodXY_uid113_pT1_uid101_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_u : prodXY_uid113_pT1_uid101_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_w : prodXY_uid113_pT1_uid101_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_x : prodXY_uid113_pT1_uid101_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_y : prodXY_uid113_pT1_uid101_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_s : prodXY_uid113_pT1_uid101_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_qq : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid113_pT1_uid101_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_reset : std_logic;
    type prodXY_uid116_pT2_uid107_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(15 downto 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_a0 : prodXY_uid116_pT2_uid107_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid116_pT2_uid107_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid116_pT2_uid107_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_c0 : prodXY_uid116_pT2_uid107_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid116_pT2_uid107_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid116_pT2_uid107_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(16 downto 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_l : prodXY_uid116_pT2_uid107_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid116_pT2_uid107_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(39 downto 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_p : prodXY_uid116_pT2_uid107_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_u : prodXY_uid116_pT2_uid107_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_w : prodXY_uid116_pT2_uid107_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_x : prodXY_uid116_pT2_uid107_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_y : prodXY_uid116_pT2_uid107_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_s : prodXY_uid116_pT2_uid107_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_qq : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_q : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid116_pT2_uid107_invPolyEval_cma_ena1 : std_logic;
    signal expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (22 downto 0);
    signal redist0_fracRPreCR_uid39_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist1_expIncPEOnly_uid38_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_yForPe_uid36_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist3_yAddr_uid35_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist4_yAddr_uid35_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist5_expOddSelect_uid30_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_frac_x_uid12_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist8_signX_uid7_block_rsrvd_fix_b_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_reset0 : std_logic;
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i : signal is true;
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_eq : std_logic;
    attribute preserve of redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_eq : signal is true;
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist7_frac_x_uid12_block_rsrvd_fix_b_8_sticky_ena_q : signal is true;
    signal redist7_frac_x_uid12_block_rsrvd_fix_b_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_mem_reset0 : std_logic;
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i : signal is true;
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq : std_logic;
    attribute preserve of redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq : signal is true;
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist9_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q : signal is true;
    signal redist9_expX_uid6_block_rsrvd_fix_b_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- signX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    signX_uid7_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- redist8_signX_uid7_block_rsrvd_fix_b_8(DELAY,133)
    redist8_signX_uid7_block_rsrvd_fix_b_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid7_block_rsrvd_fix_b, xout => redist8_signX_uid7_block_rsrvd_fix_b_8_q, clk => clk, aclr => areset );

    -- cstAllZWE_uid10_block_rsrvd_fix(CONSTANT,9)
    cstAllZWE_uid10_block_rsrvd_fix_q <= "00000000";

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_notEnable(LOGICAL,151)
    redist9_expX_uid6_block_rsrvd_fix_b_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_nor(LOGICAL,152)
    redist9_expX_uid6_block_rsrvd_fix_b_8_nor_q <= not (redist9_expX_uid6_block_rsrvd_fix_b_8_notEnable_q or redist9_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q);

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_mem_last(CONSTANT,148)
    redist9_expX_uid6_block_rsrvd_fix_b_8_mem_last_q <= "0101";

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_cmp(LOGICAL,149)
    redist9_expX_uid6_block_rsrvd_fix_b_8_cmp_b <= STD_LOGIC_VECTOR("0" & redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q);
    redist9_expX_uid6_block_rsrvd_fix_b_8_cmp_q <= "1" WHEN redist9_expX_uid6_block_rsrvd_fix_b_8_mem_last_q = redist9_expX_uid6_block_rsrvd_fix_b_8_cmp_b ELSE "0";

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_cmpReg(REG,150)
    redist9_expX_uid6_block_rsrvd_fix_b_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_expX_uid6_block_rsrvd_fix_b_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist9_expX_uid6_block_rsrvd_fix_b_8_cmpReg_q <= STD_LOGIC_VECTOR(redist9_expX_uid6_block_rsrvd_fix_b_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_sticky_ena(REG,153)
    redist9_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist9_expX_uid6_block_rsrvd_fix_b_8_nor_q = "1") THEN
                redist9_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist9_expX_uid6_block_rsrvd_fix_b_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_enaAnd(LOGICAL,154)
    redist9_expX_uid6_block_rsrvd_fix_b_8_enaAnd_q <= redist9_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q and VCC_q;

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt(COUNTER,146)
    -- low=0, high=6, step=1, init=0
    redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq <= '1';
            ELSE
                redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
            END IF;
            IF (redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq = '1') THEN
                redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i <= redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i + 2;
            ELSE
                redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i <= redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i, 3)));

    -- expX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    expX_uid6_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_wraddr(REG,147)
    redist9_expX_uid6_block_rsrvd_fix_b_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_expX_uid6_block_rsrvd_fix_b_8_wraddr_q <= "110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist9_expX_uid6_block_rsrvd_fix_b_8_wraddr_q <= STD_LOGIC_VECTOR(redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist9_expX_uid6_block_rsrvd_fix_b_8_mem(DUALMEM,145)
    redist9_expX_uid6_block_rsrvd_fix_b_8_mem_ia <= STD_LOGIC_VECTOR(expX_uid6_block_rsrvd_fix_b);
    redist9_expX_uid6_block_rsrvd_fix_b_8_mem_aa <= redist9_expX_uid6_block_rsrvd_fix_b_8_wraddr_q;
    redist9_expX_uid6_block_rsrvd_fix_b_8_mem_ab <= redist9_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q;
    redist9_expX_uid6_block_rsrvd_fix_b_8_mem_reset0 <= areset;
    redist9_expX_uid6_block_rsrvd_fix_b_8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 8,
        widthad_b => 3,
        numwords_b => 7,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist9_expX_uid6_block_rsrvd_fix_b_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist9_expX_uid6_block_rsrvd_fix_b_8_mem_reset0,
        clock1 => clk,
        address_a => redist9_expX_uid6_block_rsrvd_fix_b_8_mem_aa,
        data_a => redist9_expX_uid6_block_rsrvd_fix_b_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist9_expX_uid6_block_rsrvd_fix_b_8_mem_ab,
        q_b => redist9_expX_uid6_block_rsrvd_fix_b_8_mem_iq
    );
    redist9_expX_uid6_block_rsrvd_fix_b_8_mem_q <= redist9_expX_uid6_block_rsrvd_fix_b_8_mem_iq(7 downto 0);

    -- excZ_x_uid13_block_rsrvd_fix(LOGICAL,12)@8
    excZ_x_uid13_block_rsrvd_fix_q <= "1" WHEN redist9_expX_uid6_block_rsrvd_fix_b_8_mem_q = cstAllZWE_uid10_block_rsrvd_fix_q ELSE "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- negZero_uid85_block_rsrvd_fix(LOGICAL,84)@8
    negZero_uid85_block_rsrvd_fix_q <= excZ_x_uid13_block_rsrvd_fix_q and redist8_signX_uid7_block_rsrvd_fix_b_8_q;

    -- cstAllOWE_uid8_block_rsrvd_fix(CONSTANT,7)
    cstAllOWE_uid8_block_rsrvd_fix_q <= "11111111";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_notEnable(LOGICAL,141)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_nor(LOGICAL,142)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_nor_q <= not (redist7_frac_x_uid12_block_rsrvd_fix_b_8_notEnable_q or redist7_frac_x_uid12_block_rsrvd_fix_b_8_sticky_ena_q);

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_last(CONSTANT,138)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_last_q <= "011";

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmp(LOGICAL,139)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmp_q <= "1" WHEN redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_last_q = redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_q ELSE "0";

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmpReg(REG,140)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmpReg_q <= STD_LOGIC_VECTOR(redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_sticky_ena(REG,143)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_frac_x_uid12_block_rsrvd_fix_b_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist7_frac_x_uid12_block_rsrvd_fix_b_8_nor_q = "1") THEN
                redist7_frac_x_uid12_block_rsrvd_fix_b_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist7_frac_x_uid12_block_rsrvd_fix_b_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_enaAnd(LOGICAL,144)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_enaAnd_q <= redist7_frac_x_uid12_block_rsrvd_fix_b_8_sticky_ena_q and VCC_q;

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt(COUNTER,136)
    -- low=0, high=4, step=1, init=0
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_eq <= '1';
            ELSE
                redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
            END IF;
            IF (redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_eq = '1') THEN
                redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i <= redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i + 4;
            ELSE
                redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i <= redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_i, 3)));

    -- frac_x_uid12_block_rsrvd_fix(BITSELECT,11)@0
    frac_x_uid12_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- redist6_frac_x_uid12_block_rsrvd_fix_b_2(DELAY,131)
    redist6_frac_x_uid12_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_x_uid12_block_rsrvd_fix_b, xout => redist6_frac_x_uid12_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_wraddr(REG,137)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_frac_x_uid12_block_rsrvd_fix_b_8_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist7_frac_x_uid12_block_rsrvd_fix_b_8_wraddr_q <= STD_LOGIC_VECTOR(redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem(DUALMEM,135)
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_ia <= STD_LOGIC_VECTOR(redist6_frac_x_uid12_block_rsrvd_fix_b_2_q);
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_aa <= redist7_frac_x_uid12_block_rsrvd_fix_b_8_wraddr_q;
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_ab <= redist7_frac_x_uid12_block_rsrvd_fix_b_8_rdcnt_q;
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_reset0 <= areset;
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 23,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 23,
        widthad_b => 3,
        numwords_b => 5,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist7_frac_x_uid12_block_rsrvd_fix_b_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_reset0,
        clock1 => clk,
        address_a => redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_aa,
        data_a => redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_ab,
        q_b => redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_iq
    );
    redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_q <= redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_iq(22 downto 0);

    -- oFracX_uid44_block_rsrvd_fix(BITJOIN,43)@8
    oFracX_uid44_block_rsrvd_fix_q <= VCC_q & redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_q;

    -- oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix(BITJOIN,46)@8
    oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix_q <= oFracX_uid44_block_rsrvd_fix_q & GND_q;

    -- oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix(BITJOIN,51)@8
    oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix_q <= GND_q & oFracX_uid44_block_rsrvd_fix_q;

    -- expX0PS_uid29_block_rsrvd_fix(BITSELECT,28)@0
    expX0PS_uid29_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(expX_uid6_block_rsrvd_fix_b(0 downto 0));
    expX0PS_uid29_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expX0PS_uid29_block_rsrvd_fix_in(0 downto 0));

    -- expOddSelect_uid30_block_rsrvd_fix(LOGICAL,29)@0
    expOddSelect_uid30_block_rsrvd_fix_q <= not (expX0PS_uid29_block_rsrvd_fix_b);

    -- redist5_expOddSelect_uid30_block_rsrvd_fix_q_8(DELAY,130)
    redist5_expOddSelect_uid30_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => expOddSelect_uid30_block_rsrvd_fix_q, xout => redist5_expOddSelect_uid30_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- normalizedXForComp_uid54_block_rsrvd_fix(MUX,53)@8
    normalizedXForComp_uid54_block_rsrvd_fix_s <= redist5_expOddSelect_uid30_block_rsrvd_fix_q_8_q;
    normalizedXForComp_uid54_block_rsrvd_fix_combproc: PROCESS (normalizedXForComp_uid54_block_rsrvd_fix_s, oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix_q, oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix_q)
    BEGIN
        CASE (normalizedXForComp_uid54_block_rsrvd_fix_s) IS
            WHEN "0" => normalizedXForComp_uid54_block_rsrvd_fix_q <= oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix_q;
            WHEN "1" => normalizedXForComp_uid54_block_rsrvd_fix_q <= oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix_q;
            WHEN OTHERS => normalizedXForComp_uid54_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- paddingY_uid55_block_rsrvd_fix(CONSTANT,54)
    paddingY_uid55_block_rsrvd_fix_q <= "0000000000000000000000000";

    -- updatedY_uid56_block_rsrvd_fix(BITJOIN,55)@8
    updatedY_uid56_block_rsrvd_fix_q <= normalizedXForComp_uid54_block_rsrvd_fix_q & paddingY_uid55_block_rsrvd_fix_q;

    -- addrFull_uid33_block_rsrvd_fix(BITJOIN,32)@0
    addrFull_uid33_block_rsrvd_fix_q <= expOddSelect_uid30_block_rsrvd_fix_q & frac_x_uid12_block_rsrvd_fix_b;

    -- yAddr_uid35_block_rsrvd_fix(BITSELECT,34)@0
    yAddr_uid35_block_rsrvd_fix_b <= addrFull_uid33_block_rsrvd_fix_q(23 downto 16);

    -- memoryC2_uid94_sqrtTables_lutmem(DUALMEM,120)@0 + 2
    -- in j@20000000
    memoryC2_uid94_sqrtTables_lutmem_aa <= yAddr_uid35_block_rsrvd_fix_b;
    memoryC2_uid94_sqrtTables_lutmem_reset0 <= areset;
    memoryC2_uid94_sqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 12,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A2ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid94_sqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid94_sqrtTables_lutmem_aa,
        q_a => memoryC2_uid94_sqrtTables_lutmem_ir
    );
    memoryC2_uid94_sqrtTables_lutmem_r <= memoryC2_uid94_sqrtTables_lutmem_ir(11 downto 0);

    -- yForPe_uid36_block_rsrvd_fix(BITSELECT,35)@2
    yForPe_uid36_block_rsrvd_fix_in <= redist6_frac_x_uid12_block_rsrvd_fix_b_2_q(15 downto 0);
    yForPe_uid36_block_rsrvd_fix_b <= yForPe_uid36_block_rsrvd_fix_in(15 downto 0);

    -- yT1_uid100_invPolyEval(BITSELECT,99)@2
    yT1_uid100_invPolyEval_b <= yForPe_uid36_block_rsrvd_fix_b(15 downto 4);

    -- prodXY_uid113_pT1_uid101_invPolyEval_cma(CHAINMULTADD,122)@2 + 2
    prodXY_uid113_pT1_uid101_invPolyEval_cma_reset <= areset;
    prodXY_uid113_pT1_uid101_invPolyEval_cma_ena0 <= '1';
    prodXY_uid113_pT1_uid101_invPolyEval_cma_ena1 <= prodXY_uid113_pT1_uid101_invPolyEval_cma_ena0;
    prodXY_uid113_pT1_uid101_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid113_pT1_uid101_invPolyEval_cma_a0(0),13));
    prodXY_uid113_pT1_uid101_invPolyEval_cma_p(0) <= prodXY_uid113_pT1_uid101_invPolyEval_cma_l(0) * prodXY_uid113_pT1_uid101_invPolyEval_cma_c0(0);
    prodXY_uid113_pT1_uid101_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid113_pT1_uid101_invPolyEval_cma_p(0),25);
    prodXY_uid113_pT1_uid101_invPolyEval_cma_w(0) <= prodXY_uid113_pT1_uid101_invPolyEval_cma_u(0);
    prodXY_uid113_pT1_uid101_invPolyEval_cma_x(0) <= prodXY_uid113_pT1_uid101_invPolyEval_cma_w(0);
    prodXY_uid113_pT1_uid101_invPolyEval_cma_y(0) <= prodXY_uid113_pT1_uid101_invPolyEval_cma_x(0);
    prodXY_uid113_pT1_uid101_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid113_pT1_uid101_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid113_pT1_uid101_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid113_pT1_uid101_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid113_pT1_uid101_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid100_invPolyEval_b),12);
                prodXY_uid113_pT1_uid101_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid94_sqrtTables_lutmem_r),12);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid113_pT1_uid101_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid113_pT1_uid101_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid113_pT1_uid101_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid113_pT1_uid101_invPolyEval_cma_s(0) <= prodXY_uid113_pT1_uid101_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid113_pT1_uid101_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 24, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid113_pT1_uid101_invPolyEval_cma_s(0)(23 downto 0)), xout => prodXY_uid113_pT1_uid101_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid113_pT1_uid101_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid113_pT1_uid101_invPolyEval_cma_qq(23 downto 0));

    -- osig_uid114_pT1_uid101_invPolyEval(BITSELECT,113)@4
    osig_uid114_pT1_uid101_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid113_pT1_uid101_invPolyEval_cma_q(23 downto 11));

    -- highBBits_uid103_invPolyEval(BITSELECT,102)@4
    highBBits_uid103_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid114_pT1_uid101_invPolyEval_b(12 downto 1));

    -- redist3_yAddr_uid35_block_rsrvd_fix_b_2(DELAY,128)
    redist3_yAddr_uid35_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid35_block_rsrvd_fix_b, xout => redist3_yAddr_uid35_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid91_sqrtTables_lutmem(DUALMEM,119)@2 + 2
    -- in j@20000000
    memoryC1_uid91_sqrtTables_lutmem_aa <= redist3_yAddr_uid35_block_rsrvd_fix_b_2_q;
    memoryC1_uid91_sqrtTables_lutmem_reset0 <= areset;
    memoryC1_uid91_sqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 21,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A1ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid91_sqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid91_sqrtTables_lutmem_aa,
        q_a => memoryC1_uid91_sqrtTables_lutmem_ir
    );
    memoryC1_uid91_sqrtTables_lutmem_r <= memoryC1_uid91_sqrtTables_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid104_invPolyEval(ADD,103)@4
    s1sumAHighB_uid104_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC1_uid91_sqrtTables_lutmem_r(20)) & memoryC1_uid91_sqrtTables_lutmem_r));
    s1sumAHighB_uid104_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 12 => highBBits_uid103_invPolyEval_b(11)) & highBBits_uid103_invPolyEval_b));
    s1sumAHighB_uid104_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid104_invPolyEval_a) + SIGNED(s1sumAHighB_uid104_invPolyEval_b));
    s1sumAHighB_uid104_invPolyEval_q <= s1sumAHighB_uid104_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid102_invPolyEval(BITSELECT,101)@4
    lowRangeB_uid102_invPolyEval_in <= osig_uid114_pT1_uid101_invPolyEval_b(0 downto 0);
    lowRangeB_uid102_invPolyEval_b <= lowRangeB_uid102_invPolyEval_in(0 downto 0);

    -- s1_uid105_invPolyEval(BITJOIN,104)@4
    s1_uid105_invPolyEval_q <= s1sumAHighB_uid104_invPolyEval_q & lowRangeB_uid102_invPolyEval_b;

    -- redist2_yForPe_uid36_block_rsrvd_fix_b_2(DELAY,127)
    redist2_yForPe_uid36_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yForPe_uid36_block_rsrvd_fix_b, xout => redist2_yForPe_uid36_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- prodXY_uid116_pT2_uid107_invPolyEval_cma(CHAINMULTADD,123)@4 + 2
    prodXY_uid116_pT2_uid107_invPolyEval_cma_reset <= areset;
    prodXY_uid116_pT2_uid107_invPolyEval_cma_ena0 <= '1';
    prodXY_uid116_pT2_uid107_invPolyEval_cma_ena1 <= prodXY_uid116_pT2_uid107_invPolyEval_cma_ena0;
    prodXY_uid116_pT2_uid107_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid116_pT2_uid107_invPolyEval_cma_a0(0),17));
    prodXY_uid116_pT2_uid107_invPolyEval_cma_p(0) <= prodXY_uid116_pT2_uid107_invPolyEval_cma_l(0) * prodXY_uid116_pT2_uid107_invPolyEval_cma_c0(0);
    prodXY_uid116_pT2_uid107_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid116_pT2_uid107_invPolyEval_cma_p(0),40);
    prodXY_uid116_pT2_uid107_invPolyEval_cma_w(0) <= prodXY_uid116_pT2_uid107_invPolyEval_cma_u(0);
    prodXY_uid116_pT2_uid107_invPolyEval_cma_x(0) <= prodXY_uid116_pT2_uid107_invPolyEval_cma_w(0);
    prodXY_uid116_pT2_uid107_invPolyEval_cma_y(0) <= prodXY_uid116_pT2_uid107_invPolyEval_cma_x(0);
    prodXY_uid116_pT2_uid107_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid116_pT2_uid107_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid116_pT2_uid107_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid116_pT2_uid107_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid116_pT2_uid107_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist2_yForPe_uid36_block_rsrvd_fix_b_2_q),16);
                prodXY_uid116_pT2_uid107_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid105_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid116_pT2_uid107_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid116_pT2_uid107_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid116_pT2_uid107_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid116_pT2_uid107_invPolyEval_cma_s(0) <= prodXY_uid116_pT2_uid107_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid116_pT2_uid107_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 39, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid116_pT2_uid107_invPolyEval_cma_s(0)(38 downto 0)), xout => prodXY_uid116_pT2_uid107_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid116_pT2_uid107_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid116_pT2_uid107_invPolyEval_cma_qq(38 downto 0));

    -- osig_uid117_pT2_uid107_invPolyEval(BITSELECT,116)@6
    osig_uid117_pT2_uid107_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid116_pT2_uid107_invPolyEval_cma_q(38 downto 15));

    -- highBBits_uid109_invPolyEval(BITSELECT,108)@6
    highBBits_uid109_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid117_pT2_uid107_invPolyEval_b(23 downto 2));

    -- redist4_yAddr_uid35_block_rsrvd_fix_b_4(DELAY,129)
    redist4_yAddr_uid35_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist3_yAddr_uid35_block_rsrvd_fix_b_2_q, xout => redist4_yAddr_uid35_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid88_sqrtTables_lutmem(DUALMEM,118)@4 + 2
    -- in j@20000000
    memoryC0_uid88_sqrtTables_lutmem_aa <= redist4_yAddr_uid35_block_rsrvd_fix_b_4_q;
    memoryC0_uid88_sqrtTables_lutmem_reset0 <= areset;
    memoryC0_uid88_sqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 29,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A0ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid88_sqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid88_sqrtTables_lutmem_aa,
        q_a => memoryC0_uid88_sqrtTables_lutmem_ir
    );
    memoryC0_uid88_sqrtTables_lutmem_r <= memoryC0_uid88_sqrtTables_lutmem_ir(28 downto 0);

    -- s2sumAHighB_uid110_invPolyEval(ADD,109)@6
    s2sumAHighB_uid110_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => memoryC0_uid88_sqrtTables_lutmem_r(28)) & memoryC0_uid88_sqrtTables_lutmem_r));
    s2sumAHighB_uid110_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => highBBits_uid109_invPolyEval_b(21)) & highBBits_uid109_invPolyEval_b));
    s2sumAHighB_uid110_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid110_invPolyEval_a) + SIGNED(s2sumAHighB_uid110_invPolyEval_b));
    s2sumAHighB_uid110_invPolyEval_q <= s2sumAHighB_uid110_invPolyEval_o(29 downto 0);

    -- lowRangeB_uid108_invPolyEval(BITSELECT,107)@6
    lowRangeB_uid108_invPolyEval_in <= osig_uid117_pT2_uid107_invPolyEval_b(1 downto 0);
    lowRangeB_uid108_invPolyEval_b <= lowRangeB_uid108_invPolyEval_in(1 downto 0);

    -- s2_uid111_invPolyEval(BITJOIN,110)@6
    s2_uid111_invPolyEval_q <= s2sumAHighB_uid110_invPolyEval_q & lowRangeB_uid108_invPolyEval_b;

    -- fracRPreCR_uid39_block_rsrvd_fix(BITSELECT,38)@6
    fracRPreCR_uid39_block_rsrvd_fix_in <= s2_uid111_invPolyEval_q(28 downto 0);
    fracRPreCR_uid39_block_rsrvd_fix_b <= fracRPreCR_uid39_block_rsrvd_fix_in(28 downto 5);

    -- fracPaddingOne_uid41_block_rsrvd_fix(BITJOIN,40)@6
    fracPaddingOne_uid41_block_rsrvd_fix_q <= VCC_q & fracRPreCR_uid39_block_rsrvd_fix_b;

    -- squaredResult_uid42_block_rsrvd_fix_cma(CHAINMULTADD,121)@6 + 2
    squaredResult_uid42_block_rsrvd_fix_cma_reset <= areset;
    squaredResult_uid42_block_rsrvd_fix_cma_ena0 <= '1';
    squaredResult_uid42_block_rsrvd_fix_cma_ena1 <= squaredResult_uid42_block_rsrvd_fix_cma_ena0;
    squaredResult_uid42_block_rsrvd_fix_cma_p(0) <= squaredResult_uid42_block_rsrvd_fix_cma_a0(0) * squaredResult_uid42_block_rsrvd_fix_cma_c0(0);
    squaredResult_uid42_block_rsrvd_fix_cma_u(0) <= RESIZE(squaredResult_uid42_block_rsrvd_fix_cma_p(0),50);
    squaredResult_uid42_block_rsrvd_fix_cma_w(0) <= squaredResult_uid42_block_rsrvd_fix_cma_u(0);
    squaredResult_uid42_block_rsrvd_fix_cma_x(0) <= squaredResult_uid42_block_rsrvd_fix_cma_w(0);
    squaredResult_uid42_block_rsrvd_fix_cma_y(0) <= squaredResult_uid42_block_rsrvd_fix_cma_x(0);
    squaredResult_uid42_block_rsrvd_fix_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            squaredResult_uid42_block_rsrvd_fix_cma_a0 <= (others => (others => '0'));
            squaredResult_uid42_block_rsrvd_fix_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (squaredResult_uid42_block_rsrvd_fix_cma_ena0 = '1') THEN
                squaredResult_uid42_block_rsrvd_fix_cma_a0(0) <= RESIZE(UNSIGNED(fracPaddingOne_uid41_block_rsrvd_fix_q),25);
                squaredResult_uid42_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(fracPaddingOne_uid41_block_rsrvd_fix_q),25);
            END IF;
        END IF;
    END PROCESS;
    squaredResult_uid42_block_rsrvd_fix_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            squaredResult_uid42_block_rsrvd_fix_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (squaredResult_uid42_block_rsrvd_fix_cma_ena1 = '1') THEN
                squaredResult_uid42_block_rsrvd_fix_cma_s(0) <= squaredResult_uid42_block_rsrvd_fix_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    squaredResult_uid42_block_rsrvd_fix_cma_delay : dspba_delay
    GENERIC MAP ( width => 50, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(squaredResult_uid42_block_rsrvd_fix_cma_s(0)(49 downto 0)), xout => squaredResult_uid42_block_rsrvd_fix_cma_qq, clk => clk, aclr => areset );
    squaredResult_uid42_block_rsrvd_fix_cma_q <= STD_LOGIC_VECTOR(squaredResult_uid42_block_rsrvd_fix_cma_qq(49 downto 0));

    -- squaredResultGTEIn_uid55_block_rsrvd_fix(COMPARE,56)@8
    squaredResultGTEIn_uid55_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & squaredResult_uid42_block_rsrvd_fix_cma_q);
    squaredResultGTEIn_uid55_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & updatedY_uid56_block_rsrvd_fix_q);
    squaredResultGTEIn_uid55_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(squaredResultGTEIn_uid55_block_rsrvd_fix_a) - UNSIGNED(squaredResultGTEIn_uid55_block_rsrvd_fix_b));
    squaredResultGTEIn_uid55_block_rsrvd_fix_n(0) <= not (squaredResultGTEIn_uid55_block_rsrvd_fix_o(51));

    -- pLTOne_uid58_block_rsrvd_fix(LOGICAL,57)@8
    pLTOne_uid58_block_rsrvd_fix_q <= not (squaredResultGTEIn_uid55_block_rsrvd_fix_n);

    -- redist0_fracRPreCR_uid39_block_rsrvd_fix_b_2(DELAY,125)
    redist0_fracRPreCR_uid39_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRPreCR_uid39_block_rsrvd_fix_b, xout => redist0_fracRPreCR_uid39_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix(ADD,59)@8
    fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist0_fracRPreCR_uid39_block_rsrvd_fix_b_2_q);
    fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("000000000000000000000000" & pLTOne_uid58_block_rsrvd_fix_q);
    fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_a) + UNSIGNED(fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_b));
    fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_q <= fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_o(24 downto 0);

    -- expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select(BITSELECT,124)@8
    expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b <= fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_q(24 downto 24);
    expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c <= fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_q(23 downto 1);

    -- fracPENotOne_uid62_block_rsrvd_fix(LOGICAL,61)@8
    fracPENotOne_uid62_block_rsrvd_fix_q <= not (redist1_expIncPEOnly_uid38_block_rsrvd_fix_b_2_q);

    -- fracPENotOneAndCRRoundsExp_uid63_block_rsrvd_fix(LOGICAL,62)@8
    fracPENotOneAndCRRoundsExp_uid63_block_rsrvd_fix_q <= fracPENotOne_uid62_block_rsrvd_fix_q and expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b;

    -- expIncPEOnly_uid38_block_rsrvd_fix(BITSELECT,37)@6
    expIncPEOnly_uid38_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(s2_uid111_invPolyEval_q(30 downto 0));
    expIncPEOnly_uid38_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expIncPEOnly_uid38_block_rsrvd_fix_in(30 downto 30));

    -- redist1_expIncPEOnly_uid38_block_rsrvd_fix_b_2(DELAY,126)
    redist1_expIncPEOnly_uid38_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expIncPEOnly_uid38_block_rsrvd_fix_b, xout => redist1_expIncPEOnly_uid38_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- expInc_uid64_block_rsrvd_fix(LOGICAL,63)@8
    expInc_uid64_block_rsrvd_fix_q <= redist1_expIncPEOnly_uid38_block_rsrvd_fix_b_2_q or fracPENotOneAndCRRoundsExp_uid63_block_rsrvd_fix_q;

    -- sBiasM1_uid26_block_rsrvd_fix(CONSTANT,25)
    sBiasM1_uid26_block_rsrvd_fix_q <= "01111110";

    -- expOddSig_uid27_block_rsrvd_fix(ADD,26)@8
    expOddSig_uid27_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist9_expX_uid6_block_rsrvd_fix_b_8_mem_q);
    expOddSig_uid27_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & sBiasM1_uid26_block_rsrvd_fix_q);
    expOddSig_uid27_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expOddSig_uid27_block_rsrvd_fix_a) + UNSIGNED(expOddSig_uid27_block_rsrvd_fix_b));
    expOddSig_uid27_block_rsrvd_fix_q <= expOddSig_uid27_block_rsrvd_fix_o(8 downto 0);

    -- expROdd_uid28_block_rsrvd_fix(BITSELECT,27)@8
    expROdd_uid28_block_rsrvd_fix_b <= expOddSig_uid27_block_rsrvd_fix_q(8 downto 1);

    -- sBias_uid22_block_rsrvd_fix(CONSTANT,21)
    sBias_uid22_block_rsrvd_fix_q <= "01111111";

    -- expEvenSig_uid24_block_rsrvd_fix(ADD,23)@8
    expEvenSig_uid24_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist9_expX_uid6_block_rsrvd_fix_b_8_mem_q);
    expEvenSig_uid24_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & sBias_uid22_block_rsrvd_fix_q);
    expEvenSig_uid24_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expEvenSig_uid24_block_rsrvd_fix_a) + UNSIGNED(expEvenSig_uid24_block_rsrvd_fix_b));
    expEvenSig_uid24_block_rsrvd_fix_q <= expEvenSig_uid24_block_rsrvd_fix_o(8 downto 0);

    -- expREven_uid25_block_rsrvd_fix(BITSELECT,24)@8
    expREven_uid25_block_rsrvd_fix_b <= expEvenSig_uid24_block_rsrvd_fix_q(8 downto 1);

    -- expRMux_uid31_block_rsrvd_fix(MUX,30)@8
    expRMux_uid31_block_rsrvd_fix_s <= redist5_expOddSelect_uid30_block_rsrvd_fix_q_8_q;
    expRMux_uid31_block_rsrvd_fix_combproc: PROCESS (expRMux_uid31_block_rsrvd_fix_s, expREven_uid25_block_rsrvd_fix_b, expROdd_uid28_block_rsrvd_fix_b)
    BEGIN
        CASE (expRMux_uid31_block_rsrvd_fix_s) IS
            WHEN "0" => expRMux_uid31_block_rsrvd_fix_q <= expREven_uid25_block_rsrvd_fix_b;
            WHEN "1" => expRMux_uid31_block_rsrvd_fix_q <= expROdd_uid28_block_rsrvd_fix_b;
            WHEN OTHERS => expRMux_uid31_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expR_uid66_block_rsrvd_fix(ADD,65)@8
    expR_uid66_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expRMux_uid31_block_rsrvd_fix_q);
    expR_uid66_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000" & expInc_uid64_block_rsrvd_fix_q);
    expR_uid66_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expR_uid66_block_rsrvd_fix_a) + UNSIGNED(expR_uid66_block_rsrvd_fix_b));
    expR_uid66_block_rsrvd_fix_q <= expR_uid66_block_rsrvd_fix_o(8 downto 0);

    -- expRR_uid77_block_rsrvd_fix(BITSELECT,76)@8
    expRR_uid77_block_rsrvd_fix_in <= expR_uid66_block_rsrvd_fix_q(7 downto 0);
    expRR_uid77_block_rsrvd_fix_b <= expRR_uid77_block_rsrvd_fix_in(7 downto 0);

    -- expXIsMax_uid14_block_rsrvd_fix(LOGICAL,13)@8
    expXIsMax_uid14_block_rsrvd_fix_q <= "1" WHEN redist9_expX_uid6_block_rsrvd_fix_b_8_mem_q = cstAllOWE_uid8_block_rsrvd_fix_q ELSE "0";

    -- invExpXIsMax_uid19_block_rsrvd_fix(LOGICAL,18)@8
    invExpXIsMax_uid19_block_rsrvd_fix_q <= not (expXIsMax_uid14_block_rsrvd_fix_q);

    -- InvExpXIsZero_uid20_block_rsrvd_fix(LOGICAL,19)@8
    InvExpXIsZero_uid20_block_rsrvd_fix_q <= not (excZ_x_uid13_block_rsrvd_fix_q);

    -- excR_x_uid21_block_rsrvd_fix(LOGICAL,20)@8
    excR_x_uid21_block_rsrvd_fix_q <= InvExpXIsZero_uid20_block_rsrvd_fix_q and invExpXIsMax_uid19_block_rsrvd_fix_q;

    -- minReg_uid69_block_rsrvd_fix(LOGICAL,68)@8
    minReg_uid69_block_rsrvd_fix_q <= excR_x_uid21_block_rsrvd_fix_q and redist8_signX_uid7_block_rsrvd_fix_b_8_q;

    -- cstZeroWF_uid9_block_rsrvd_fix(CONSTANT,8)
    cstZeroWF_uid9_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid15_block_rsrvd_fix(LOGICAL,14)@8
    fracXIsZero_uid15_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid9_block_rsrvd_fix_q = redist7_frac_x_uid12_block_rsrvd_fix_b_8_mem_q ELSE "0";

    -- excI_x_uid17_block_rsrvd_fix(LOGICAL,16)@8
    excI_x_uid17_block_rsrvd_fix_q <= expXIsMax_uid14_block_rsrvd_fix_q and fracXIsZero_uid15_block_rsrvd_fix_q;

    -- minInf_uid70_block_rsrvd_fix(LOGICAL,69)@8
    minInf_uid70_block_rsrvd_fix_q <= excI_x_uid17_block_rsrvd_fix_q and redist8_signX_uid7_block_rsrvd_fix_b_8_q;

    -- fracXIsNotZero_uid16_block_rsrvd_fix(LOGICAL,15)@8
    fracXIsNotZero_uid16_block_rsrvd_fix_q <= not (fracXIsZero_uid15_block_rsrvd_fix_q);

    -- excN_x_uid18_block_rsrvd_fix(LOGICAL,17)@8
    excN_x_uid18_block_rsrvd_fix_q <= expXIsMax_uid14_block_rsrvd_fix_q and fracXIsNotZero_uid16_block_rsrvd_fix_q;

    -- excRNaN_uid71_block_rsrvd_fix(LOGICAL,70)@8
    excRNaN_uid71_block_rsrvd_fix_q <= excN_x_uid18_block_rsrvd_fix_q or minInf_uid70_block_rsrvd_fix_q or minReg_uid69_block_rsrvd_fix_q;

    -- invSignX_uid67_block_rsrvd_fix(LOGICAL,66)@8
    invSignX_uid67_block_rsrvd_fix_q <= not (redist8_signX_uid7_block_rsrvd_fix_b_8_q);

    -- inInfAndNotNeg_uid68_block_rsrvd_fix(LOGICAL,67)@8
    inInfAndNotNeg_uid68_block_rsrvd_fix_q <= excI_x_uid17_block_rsrvd_fix_q and invSignX_uid67_block_rsrvd_fix_q;

    -- excConc_uid72_block_rsrvd_fix(BITJOIN,71)@8
    excConc_uid72_block_rsrvd_fix_q <= excRNaN_uid71_block_rsrvd_fix_q & inInfAndNotNeg_uid68_block_rsrvd_fix_q & excZ_x_uid13_block_rsrvd_fix_q;

    -- fracSelIn_uid73_block_rsrvd_fix(BITJOIN,72)@8
    fracSelIn_uid73_block_rsrvd_fix_q <= redist8_signX_uid7_block_rsrvd_fix_b_8_q & excConc_uid72_block_rsrvd_fix_q;

    -- fracSel_uid74_block_rsrvd_fix(LOOKUP,73)@8
    fracSel_uid74_block_rsrvd_fix_combproc: PROCESS (fracSelIn_uid73_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (fracSelIn_uid73_block_rsrvd_fix_q) IS
            WHEN "0000" => fracSel_uid74_block_rsrvd_fix_q <= "01";
            WHEN "0001" => fracSel_uid74_block_rsrvd_fix_q <= "00";
            WHEN "0010" => fracSel_uid74_block_rsrvd_fix_q <= "10";
            WHEN "0011" => fracSel_uid74_block_rsrvd_fix_q <= "00";
            WHEN "0100" => fracSel_uid74_block_rsrvd_fix_q <= "11";
            WHEN "0101" => fracSel_uid74_block_rsrvd_fix_q <= "00";
            WHEN "0110" => fracSel_uid74_block_rsrvd_fix_q <= "10";
            WHEN "0111" => fracSel_uid74_block_rsrvd_fix_q <= "00";
            WHEN "1000" => fracSel_uid74_block_rsrvd_fix_q <= "11";
            WHEN "1001" => fracSel_uid74_block_rsrvd_fix_q <= "00";
            WHEN "1010" => fracSel_uid74_block_rsrvd_fix_q <= "11";
            WHEN "1011" => fracSel_uid74_block_rsrvd_fix_q <= "11";
            WHEN "1100" => fracSel_uid74_block_rsrvd_fix_q <= "11";
            WHEN "1101" => fracSel_uid74_block_rsrvd_fix_q <= "11";
            WHEN "1110" => fracSel_uid74_block_rsrvd_fix_q <= "11";
            WHEN "1111" => fracSel_uid74_block_rsrvd_fix_q <= "11";
            WHEN OTHERS => -- unreachable
                           fracSel_uid74_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid79_block_rsrvd_fix(MUX,78)@8
    expRPostExc_uid79_block_rsrvd_fix_s <= fracSel_uid74_block_rsrvd_fix_q;
    expRPostExc_uid79_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid79_block_rsrvd_fix_s, cstAllZWE_uid10_block_rsrvd_fix_q, expRR_uid77_block_rsrvd_fix_b, cstAllOWE_uid8_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid79_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid79_block_rsrvd_fix_q <= cstAllZWE_uid10_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid79_block_rsrvd_fix_q <= expRR_uid77_block_rsrvd_fix_b;
            WHEN "10" => expRPostExc_uid79_block_rsrvd_fix_q <= cstAllOWE_uid8_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid79_block_rsrvd_fix_q <= cstAllOWE_uid8_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid79_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracNaN_uid80_block_rsrvd_fix(CONSTANT,79)
    fracNaN_uid80_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRPostExc_uid84_block_rsrvd_fix(MUX,83)@8
    fracRPostExc_uid84_block_rsrvd_fix_s <= fracSel_uid74_block_rsrvd_fix_q;
    fracRPostExc_uid84_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid84_block_rsrvd_fix_s, cstZeroWF_uid9_block_rsrvd_fix_q, expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c, fracNaN_uid80_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid84_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid84_block_rsrvd_fix_q <= cstZeroWF_uid9_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid84_block_rsrvd_fix_q <= expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c;
            WHEN "10" => fracRPostExc_uid84_block_rsrvd_fix_q <= cstZeroWF_uid9_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid84_block_rsrvd_fix_q <= fracNaN_uid80_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid84_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- RSqrt_uid86_block_rsrvd_fix(BITJOIN,85)@8
    RSqrt_uid86_block_rsrvd_fix_q <= negZero_uid85_block_rsrvd_fix_q & expRPostExc_uid79_block_rsrvd_fix_q & fracRPostExc_uid84_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@8
    out_primWireOut <= RSqrt_uid86_block_rsrvd_fix_q;

END normal;
