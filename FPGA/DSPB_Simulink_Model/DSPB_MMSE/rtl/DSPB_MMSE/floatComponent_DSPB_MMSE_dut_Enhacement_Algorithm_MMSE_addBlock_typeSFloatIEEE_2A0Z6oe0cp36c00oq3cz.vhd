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

-- VHDL created from floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz
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
entity floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz;

architecture normal of floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracX_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid8_block_rsrvd_fix_b : STD_LOGIC_VECTOR (30 downto 0);
    signal xGTEy_uid9_block_rsrvd_fix_a : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid9_block_rsrvd_fix_o : STD_LOGIC_VECTOR (32 downto 0);
    signal xGTEy_uid9_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal sigY_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracY_uid11_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expY_uid12_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal ypn_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal aSig_uid17_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal aSig_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bSig_uid18_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal bSig_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cstAllOWE_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_aSig_uid22_block_rsrvd_fix_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_aSig_uid22_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_aSig_uid23_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_aSig_uid23_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_aSig_uid17_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid26_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_aSig_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_aSig_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_aSig_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_bSig_uid36_block_rsrvd_fix_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_bSig_uid36_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_bSig_uid37_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal frac_bSig_uid37_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_bSig_uid18_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_bSig_uid42_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_bSig_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid43_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_bSig_uid43_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_bSig_uid46_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_bSig_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigA_uid51_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal sigB_uid52_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal effSub_uid53_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid57_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal oFracB_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal oFracA_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oFracAE_uid66_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBR_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREX_uid69_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREX_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREXC2_uid70_block_rsrvd_fix_a : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid70_block_rsrvd_fix_b : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid70_block_rsrvd_fix_o : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid70_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal oFracBREXC2_uid71_block_rsrvd_fix_in : STD_LOGIC_VECTOR (26 downto 0);
    signal oFracBREXC2_uid71_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResult_uid73_block_rsrvd_fix_a : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid73_block_rsrvd_fix_b : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid73_block_rsrvd_fix_o : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid73_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResultNoSignExt_uid74_block_rsrvd_fix_in : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResultNoSignExt_uid74_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal cAmA_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aMinusA_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expInc_uid79_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid79_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid79_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expPostNorm_uid80_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid80_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid80_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid80_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal fracPostNormRndRange_uid81_block_rsrvd_fix_in : STD_LOGIC_VECTOR (25 downto 0);
    signal fracPostNormRndRange_uid81_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracR_uid82_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal wEP2AllOwE_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rndExp_uid84_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal rOvf_uid85_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdf_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreExc_uid87_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid87_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExc_uid88_block_rsrvd_fix_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expRPreExc_uid88_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal regInputs_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZeroVInC_uid90_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal excRZero_uid91_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rInfOvf_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInfVInC_uid93_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal excRInf_uid94_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN2_uid95_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAIBISub_uid96_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid97_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid98_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid99_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invAMinusA_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRReg_uid101_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigBBInf_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigAAInf_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInf_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAZBZSigASigB_uid105_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excBZARSigA_uid106_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRZero_uid107_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid109_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid110_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneFracRPostExc2_uid111_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid114_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid118_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal R_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid121_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid122_lzCountVal_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid123_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid124_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (10 downto 0);
    signal vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal cStage_uid126_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid131_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid135_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid137_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid141_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid143_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid148_lzCountVal_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid149_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid150_lzCountVal_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to8_uid156_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid156_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1Rng8_uid157_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (18 downto 0);
    signal rightShiftStage0Idx1_uid158_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to16_uid159_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid159_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx2Rng16_uid160_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal rightShiftStage0Idx2_uid161_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to24_uid162_in : STD_LOGIC_VECTOR (23 downto 0);
    signal seMsb_to24_uid162_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx3Rng24_uid163_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx3_uid164_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to2_uid167_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid167_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1Idx1Rng2_uid168_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage1Idx1_uid169_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to4_uid170_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid170_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage1Idx2Rng4_uid171_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStage1Idx2_uid172_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal seMsb_to6_uid173_in : STD_LOGIC_VECTOR (5 downto 0);
    signal seMsb_to6_uid173_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage1Idx3Rng6_uid174_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (20 downto 0);
    signal rightShiftStage1Idx3_uid175_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage2Idx1Rng1_uid178_alignmentShifter_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal rightShiftStage2Idx1_uid179_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal shiftOutConstant_to27_uid182_in : STD_LOGIC_VECTOR (26 downto 0);
    signal shiftOutConstant_to27_uid182_b : STD_LOGIC_VECTOR (26 downto 0);
    signal r_uid184_alignmentShifter_uid72_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid184_alignmentShifter_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx1Rng8_uid189_fracPostNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx1Rng8_uid189_fracPostNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (18 downto 0);
    signal leftShiftStage0Idx1_uid190_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx2_uid193_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0Idx3Pad24_uid194_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx3Rng24_uid195_fracPostNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx3Rng24_uid195_fracPostNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx3_uid196_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx1Rng2_uid200_fracPostNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage1Idx1Rng2_uid200_fracPostNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage1Idx1_uid201_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx2Rng4_uid203_fracPostNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStage1Idx2Rng4_uid203_fracPostNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStage1Idx2_uid204_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1Idx3Pad6_uid205_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx3Rng6_uid206_fracPostNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (20 downto 0);
    signal leftShiftStage1Idx3Rng6_uid206_fracPostNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (20 downto 0);
    signal leftShiftStage1Idx3_uid207_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2Idx1Rng1_uid211_fracPostNorm_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage2Idx1Rng1_uid211_fracPostNorm_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage2Idx1_uid212_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (4 downto 0);
    signal rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist2_vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist3_fracAddResultNoSignExt_uid74_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist4_effSub_uid53_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sigB_uid52_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sigA_uid51_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_excR_bSig_uid46_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_excN_bSig_uid43_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_frac_aSig_uid23_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist12_exp_aSig_uid22_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (7 downto 0);

begin


    -- cAmA_uid77_block_rsrvd_fix(CONSTANT,76)
    cAmA_uid77_block_rsrvd_fix_q <= "11011";

    -- zs_uid121_lzCountVal_uid75_block_rsrvd_fix(CONSTANT,120)
    zs_uid121_lzCountVal_uid75_block_rsrvd_fix_q <= "0000000000000000";

    -- sigY_uid10_block_rsrvd_fix(BITSELECT,9)@0
    sigY_uid10_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(31 downto 31));

    -- expY_uid12_block_rsrvd_fix(BITSELECT,11)@0
    expY_uid12_block_rsrvd_fix_b <= in_1(30 downto 23);

    -- fracY_uid11_block_rsrvd_fix(BITSELECT,10)@0
    fracY_uid11_block_rsrvd_fix_b <= in_1(22 downto 0);

    -- ypn_uid13_block_rsrvd_fix(BITJOIN,12)@0
    ypn_uid13_block_rsrvd_fix_q <= sigY_uid10_block_rsrvd_fix_b & expY_uid12_block_rsrvd_fix_b & fracY_uid11_block_rsrvd_fix_b;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- expFracY_uid8_block_rsrvd_fix(BITSELECT,7)@0
    expFracY_uid8_block_rsrvd_fix_b <= in_1(30 downto 0);

    -- expFracX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    expFracX_uid7_block_rsrvd_fix_b <= in_0(30 downto 0);

    -- xGTEy_uid9_block_rsrvd_fix(COMPARE,8)@0
    xGTEy_uid9_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expFracX_uid7_block_rsrvd_fix_b);
    xGTEy_uid9_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expFracY_uid8_block_rsrvd_fix_b);
    xGTEy_uid9_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(xGTEy_uid9_block_rsrvd_fix_a) - UNSIGNED(xGTEy_uid9_block_rsrvd_fix_b));
    xGTEy_uid9_block_rsrvd_fix_n(0) <= not (xGTEy_uid9_block_rsrvd_fix_o(32));

    -- bSig_uid18_block_rsrvd_fix(MUX,17)@0
    bSig_uid18_block_rsrvd_fix_s <= xGTEy_uid9_block_rsrvd_fix_n;
    bSig_uid18_block_rsrvd_fix_combproc: PROCESS (bSig_uid18_block_rsrvd_fix_s, in_0, ypn_uid13_block_rsrvd_fix_q)
    BEGIN
        CASE (bSig_uid18_block_rsrvd_fix_s) IS
            WHEN "0" => bSig_uid18_block_rsrvd_fix_q <= in_0;
            WHEN "1" => bSig_uid18_block_rsrvd_fix_q <= ypn_uid13_block_rsrvd_fix_q;
            WHEN OTHERS => bSig_uid18_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sigB_uid52_block_rsrvd_fix(BITSELECT,51)@0
    sigB_uid52_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(bSig_uid18_block_rsrvd_fix_q(31 downto 31));

    -- aSig_uid17_block_rsrvd_fix(MUX,16)@0
    aSig_uid17_block_rsrvd_fix_s <= xGTEy_uid9_block_rsrvd_fix_n;
    aSig_uid17_block_rsrvd_fix_combproc: PROCESS (aSig_uid17_block_rsrvd_fix_s, ypn_uid13_block_rsrvd_fix_q, in_0)
    BEGIN
        CASE (aSig_uid17_block_rsrvd_fix_s) IS
            WHEN "0" => aSig_uid17_block_rsrvd_fix_q <= ypn_uid13_block_rsrvd_fix_q;
            WHEN "1" => aSig_uid17_block_rsrvd_fix_q <= in_0;
            WHEN OTHERS => aSig_uid17_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sigA_uid51_block_rsrvd_fix(BITSELECT,50)@0
    sigA_uid51_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(aSig_uid17_block_rsrvd_fix_q(31 downto 31));

    -- effSub_uid53_block_rsrvd_fix(LOGICAL,52)@0
    effSub_uid53_block_rsrvd_fix_q <= sigA_uid51_block_rsrvd_fix_b xor sigB_uid52_block_rsrvd_fix_b;

    -- cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    cstAllZWE_uid21_block_rsrvd_fix_q <= "00000000";

    -- exp_bSig_uid36_block_rsrvd_fix(BITSELECT,35)@0
    exp_bSig_uid36_block_rsrvd_fix_in <= bSig_uid18_block_rsrvd_fix_q(30 downto 0);
    exp_bSig_uid36_block_rsrvd_fix_b <= exp_bSig_uid36_block_rsrvd_fix_in(30 downto 23);

    -- excZ_bSig_uid18_uid38_block_rsrvd_fix(LOGICAL,37)@0
    excZ_bSig_uid18_uid38_block_rsrvd_fix_q <= "1" WHEN exp_bSig_uid36_block_rsrvd_fix_b = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- InvExpXIsZero_uid45_block_rsrvd_fix(LOGICAL,44)@0
    InvExpXIsZero_uid45_block_rsrvd_fix_q <= not (excZ_bSig_uid18_uid38_block_rsrvd_fix_q);

    -- cstZeroWF_uid20_block_rsrvd_fix(CONSTANT,19)
    cstZeroWF_uid20_block_rsrvd_fix_q <= "00000000000000000000000";

    -- frac_bSig_uid37_block_rsrvd_fix(BITSELECT,36)@0
    frac_bSig_uid37_block_rsrvd_fix_in <= bSig_uid18_block_rsrvd_fix_q(22 downto 0);
    frac_bSig_uid37_block_rsrvd_fix_b <= frac_bSig_uid37_block_rsrvd_fix_in(22 downto 0);

    -- fracBz_uid57_block_rsrvd_fix(MUX,56)@0
    fracBz_uid57_block_rsrvd_fix_s <= excZ_bSig_uid18_uid38_block_rsrvd_fix_q;
    fracBz_uid57_block_rsrvd_fix_combproc: PROCESS (fracBz_uid57_block_rsrvd_fix_s, frac_bSig_uid37_block_rsrvd_fix_b, cstZeroWF_uid20_block_rsrvd_fix_q)
    BEGIN
        CASE (fracBz_uid57_block_rsrvd_fix_s) IS
            WHEN "0" => fracBz_uid57_block_rsrvd_fix_q <= frac_bSig_uid37_block_rsrvd_fix_b;
            WHEN "1" => fracBz_uid57_block_rsrvd_fix_q <= cstZeroWF_uid20_block_rsrvd_fix_q;
            WHEN OTHERS => fracBz_uid57_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oFracB_uid60_block_rsrvd_fix(BITJOIN,59)@0
    oFracB_uid60_block_rsrvd_fix_q <= InvExpXIsZero_uid45_block_rsrvd_fix_q & fracBz_uid57_block_rsrvd_fix_q;

    -- oFracBR_uid68_block_rsrvd_fix(BITJOIN,67)@0
    oFracBR_uid68_block_rsrvd_fix_q <= GND_q & oFracB_uid60_block_rsrvd_fix_q & GND_q & GND_q;

    -- oFracBREX_uid69_block_rsrvd_fix(LOGICAL,68)@0
    oFracBREX_uid69_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => effSub_uid53_block_rsrvd_fix_q(0)) & effSub_uid53_block_rsrvd_fix_q));
    oFracBREX_uid69_block_rsrvd_fix_q <= oFracBR_uid68_block_rsrvd_fix_q xor oFracBREX_uid69_block_rsrvd_fix_b;

    -- oFracBREXC2_uid70_block_rsrvd_fix(ADD,69)@0
    oFracBREXC2_uid70_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & oFracBREX_uid69_block_rsrvd_fix_q);
    oFracBREXC2_uid70_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("000000000000000000000000000" & effSub_uid53_block_rsrvd_fix_q);
    oFracBREXC2_uid70_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(oFracBREXC2_uid70_block_rsrvd_fix_a) + UNSIGNED(oFracBREXC2_uid70_block_rsrvd_fix_b));
    oFracBREXC2_uid70_block_rsrvd_fix_q <= oFracBREXC2_uid70_block_rsrvd_fix_o(27 downto 0);

    -- oFracBREXC2_uid71_block_rsrvd_fix(BITSELECT,70)@0
    oFracBREXC2_uid71_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(oFracBREXC2_uid70_block_rsrvd_fix_q(26 downto 0));
    oFracBREXC2_uid71_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(oFracBREXC2_uid71_block_rsrvd_fix_in(26 downto 0));

    -- xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix(BITSELECT,151)@0
    xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(oFracBREXC2_uid71_block_rsrvd_fix_b(26 downto 26));

    -- redist0_xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b_1(DELAY,220)
    redist0_xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b, xout => redist0_xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- shiftOutConstant_to27_uid182(BITSELECT,181)@1
    shiftOutConstant_to27_uid182_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => redist0_xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b_1_q(0)) & redist0_xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b_1_q));
    shiftOutConstant_to27_uid182_b <= STD_LOGIC_VECTOR(shiftOutConstant_to27_uid182_in(26 downto 0));

    -- rightShiftStage2Idx1Rng1_uid178_alignmentShifter_uid72_block_rsrvd_fix(BITSELECT,177)@0
    rightShiftStage2Idx1Rng1_uid178_alignmentShifter_uid72_block_rsrvd_fix_b <= rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_q(26 downto 1);

    -- rightShiftStage2Idx1_uid179_alignmentShifter_uid72_block_rsrvd_fix(BITJOIN,178)@0
    rightShiftStage2Idx1_uid179_alignmentShifter_uid72_block_rsrvd_fix_q <= xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b & rightShiftStage2Idx1Rng1_uid178_alignmentShifter_uid72_block_rsrvd_fix_b;

    -- seMsb_to6_uid173(BITSELECT,172)@0
    seMsb_to6_uid173_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((5 downto 1 => xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b(0)) & xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b));
    seMsb_to6_uid173_b <= STD_LOGIC_VECTOR(seMsb_to6_uid173_in(5 downto 0));

    -- rightShiftStage1Idx3Rng6_uid174_alignmentShifter_uid72_block_rsrvd_fix(BITSELECT,173)@0
    rightShiftStage1Idx3Rng6_uid174_alignmentShifter_uid72_block_rsrvd_fix_b <= rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q(26 downto 6);

    -- rightShiftStage1Idx3_uid175_alignmentShifter_uid72_block_rsrvd_fix(BITJOIN,174)@0
    rightShiftStage1Idx3_uid175_alignmentShifter_uid72_block_rsrvd_fix_q <= seMsb_to6_uid173_b & rightShiftStage1Idx3Rng6_uid174_alignmentShifter_uid72_block_rsrvd_fix_b;

    -- seMsb_to4_uid170(BITSELECT,169)@0
    seMsb_to4_uid170_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b(0)) & xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b));
    seMsb_to4_uid170_b <= STD_LOGIC_VECTOR(seMsb_to4_uid170_in(3 downto 0));

    -- rightShiftStage1Idx2Rng4_uid171_alignmentShifter_uid72_block_rsrvd_fix(BITSELECT,170)@0
    rightShiftStage1Idx2Rng4_uid171_alignmentShifter_uid72_block_rsrvd_fix_b <= rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q(26 downto 4);

    -- rightShiftStage1Idx2_uid172_alignmentShifter_uid72_block_rsrvd_fix(BITJOIN,171)@0
    rightShiftStage1Idx2_uid172_alignmentShifter_uid72_block_rsrvd_fix_q <= seMsb_to4_uid170_b & rightShiftStage1Idx2Rng4_uid171_alignmentShifter_uid72_block_rsrvd_fix_b;

    -- seMsb_to2_uid167(BITSELECT,166)@0
    seMsb_to2_uid167_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b(0)) & xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b));
    seMsb_to2_uid167_b <= STD_LOGIC_VECTOR(seMsb_to2_uid167_in(1 downto 0));

    -- rightShiftStage1Idx1Rng2_uid168_alignmentShifter_uid72_block_rsrvd_fix(BITSELECT,167)@0
    rightShiftStage1Idx1Rng2_uid168_alignmentShifter_uid72_block_rsrvd_fix_b <= rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q(26 downto 2);

    -- rightShiftStage1Idx1_uid169_alignmentShifter_uid72_block_rsrvd_fix(BITJOIN,168)@0
    rightShiftStage1Idx1_uid169_alignmentShifter_uid72_block_rsrvd_fix_q <= seMsb_to2_uid167_b & rightShiftStage1Idx1Rng2_uid168_alignmentShifter_uid72_block_rsrvd_fix_b;

    -- seMsb_to24_uid162(BITSELECT,161)@0
    seMsb_to24_uid162_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 1 => xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b(0)) & xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b));
    seMsb_to24_uid162_b <= STD_LOGIC_VECTOR(seMsb_to24_uid162_in(23 downto 0));

    -- rightShiftStage0Idx3Rng24_uid163_alignmentShifter_uid72_block_rsrvd_fix(BITSELECT,162)@0
    rightShiftStage0Idx3Rng24_uid163_alignmentShifter_uid72_block_rsrvd_fix_b <= oFracBREXC2_uid71_block_rsrvd_fix_b(26 downto 24);

    -- rightShiftStage0Idx3_uid164_alignmentShifter_uid72_block_rsrvd_fix(BITJOIN,163)@0
    rightShiftStage0Idx3_uid164_alignmentShifter_uid72_block_rsrvd_fix_q <= seMsb_to24_uid162_b & rightShiftStage0Idx3Rng24_uid163_alignmentShifter_uid72_block_rsrvd_fix_b;

    -- seMsb_to16_uid159(BITSELECT,158)@0
    seMsb_to16_uid159_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b(0)) & xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b));
    seMsb_to16_uid159_b <= STD_LOGIC_VECTOR(seMsb_to16_uid159_in(15 downto 0));

    -- rightShiftStage0Idx2Rng16_uid160_alignmentShifter_uid72_block_rsrvd_fix(BITSELECT,159)@0
    rightShiftStage0Idx2Rng16_uid160_alignmentShifter_uid72_block_rsrvd_fix_b <= oFracBREXC2_uid71_block_rsrvd_fix_b(26 downto 16);

    -- rightShiftStage0Idx2_uid161_alignmentShifter_uid72_block_rsrvd_fix(BITJOIN,160)@0
    rightShiftStage0Idx2_uid161_alignmentShifter_uid72_block_rsrvd_fix_q <= seMsb_to16_uid159_b & rightShiftStage0Idx2Rng16_uid160_alignmentShifter_uid72_block_rsrvd_fix_b;

    -- seMsb_to8_uid156(BITSELECT,155)@0
    seMsb_to8_uid156_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b(0)) & xMSB_uid152_alignmentShifter_uid72_block_rsrvd_fix_b));
    seMsb_to8_uid156_b <= STD_LOGIC_VECTOR(seMsb_to8_uid156_in(7 downto 0));

    -- rightShiftStage0Idx1Rng8_uid157_alignmentShifter_uid72_block_rsrvd_fix(BITSELECT,156)@0
    rightShiftStage0Idx1Rng8_uid157_alignmentShifter_uid72_block_rsrvd_fix_b <= oFracBREXC2_uid71_block_rsrvd_fix_b(26 downto 8);

    -- rightShiftStage0Idx1_uid158_alignmentShifter_uid72_block_rsrvd_fix(BITJOIN,157)@0
    rightShiftStage0Idx1_uid158_alignmentShifter_uid72_block_rsrvd_fix_q <= seMsb_to8_uid156_b & rightShiftStage0Idx1Rng8_uid157_alignmentShifter_uid72_block_rsrvd_fix_b;

    -- rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix(MUX,165)@0
    rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_b;
    rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_combproc: PROCESS (rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_s, oFracBREXC2_uid71_block_rsrvd_fix_b, rightShiftStage0Idx1_uid158_alignmentShifter_uid72_block_rsrvd_fix_q, rightShiftStage0Idx2_uid161_alignmentShifter_uid72_block_rsrvd_fix_q, rightShiftStage0Idx3_uid164_alignmentShifter_uid72_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q <= oFracBREXC2_uid71_block_rsrvd_fix_b;
            WHEN "01" => rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid158_alignmentShifter_uid72_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid161_alignmentShifter_uid72_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage0Idx3_uid164_alignmentShifter_uid72_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix(MUX,176)@0
    rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_c;
    rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_s, rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q, rightShiftStage1Idx1_uid169_alignmentShifter_uid72_block_rsrvd_fix_q, rightShiftStage1Idx2_uid172_alignmentShifter_uid72_block_rsrvd_fix_q, rightShiftStage1Idx3_uid175_alignmentShifter_uid72_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage0_uid166_alignmentShifter_uid72_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid169_alignmentShifter_uid72_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid172_alignmentShifter_uid72_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid175_alignmentShifter_uid72_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- exp_aSig_uid22_block_rsrvd_fix(BITSELECT,21)@0
    exp_aSig_uid22_block_rsrvd_fix_in <= aSig_uid17_block_rsrvd_fix_q(30 downto 0);
    exp_aSig_uid22_block_rsrvd_fix_b <= exp_aSig_uid22_block_rsrvd_fix_in(30 downto 23);

    -- expAmExpB_uid61_block_rsrvd_fix(SUB,60)@0
    expAmExpB_uid61_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & exp_aSig_uid22_block_rsrvd_fix_b);
    expAmExpB_uid61_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & exp_bSig_uid36_block_rsrvd_fix_b);
    expAmExpB_uid61_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expAmExpB_uid61_block_rsrvd_fix_a) - UNSIGNED(expAmExpB_uid61_block_rsrvd_fix_b));
    expAmExpB_uid61_block_rsrvd_fix_q <= expAmExpB_uid61_block_rsrvd_fix_o(8 downto 0);

    -- rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select(BITSELECT,215)@0
    rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_in <= expAmExpB_uid61_block_rsrvd_fix_q(4 downto 0);
    rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_b <= rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_in(4 downto 3);
    rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_c <= rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_in(2 downto 1);
    rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_d <= rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_in(0 downto 0);

    -- rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix(MUX,180)@0 + 1
    rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid165_alignmentShifter_uid72_block_rsrvd_fix_merged_bit_select_d;
    rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_s) IS
                WHEN "0" => rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage1_uid177_alignmentShifter_uid72_block_rsrvd_fix_q;
                WHEN "1" => rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid179_alignmentShifter_uid72_block_rsrvd_fix_q;
                WHEN OTHERS => rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix(COMPARE,154)@0 + 1
    shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expAmExpB_uid61_block_rsrvd_fix_q);
    shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("000000" & cAmA_uid77_block_rsrvd_fix_q);
    shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_a) - UNSIGNED(shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_n(0) <= not (shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_o(10));

    -- r_uid184_alignmentShifter_uid72_block_rsrvd_fix(MUX,183)@1
    r_uid184_alignmentShifter_uid72_block_rsrvd_fix_s <= shiftedOut_uid155_alignmentShifter_uid72_block_rsrvd_fix_n;
    r_uid184_alignmentShifter_uid72_block_rsrvd_fix_combproc: PROCESS (r_uid184_alignmentShifter_uid72_block_rsrvd_fix_s, rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_q, shiftOutConstant_to27_uid182_b)
    BEGIN
        CASE (r_uid184_alignmentShifter_uid72_block_rsrvd_fix_s) IS
            WHEN "0" => r_uid184_alignmentShifter_uid72_block_rsrvd_fix_q <= rightShiftStage2_uid181_alignmentShifter_uid72_block_rsrvd_fix_q;
            WHEN "1" => r_uid184_alignmentShifter_uid72_block_rsrvd_fix_q <= shiftOutConstant_to27_uid182_b;
            WHEN OTHERS => r_uid184_alignmentShifter_uid72_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- frac_aSig_uid23_block_rsrvd_fix(BITSELECT,22)@0
    frac_aSig_uid23_block_rsrvd_fix_in <= aSig_uid17_block_rsrvd_fix_q(22 downto 0);
    frac_aSig_uid23_block_rsrvd_fix_b <= frac_aSig_uid23_block_rsrvd_fix_in(22 downto 0);

    -- redist11_frac_aSig_uid23_block_rsrvd_fix_b_1(DELAY,231)
    redist11_frac_aSig_uid23_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_aSig_uid23_block_rsrvd_fix_b, xout => redist11_frac_aSig_uid23_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- oFracA_uid65_block_rsrvd_fix(BITJOIN,64)@1
    oFracA_uid65_block_rsrvd_fix_q <= VCC_q & redist11_frac_aSig_uid23_block_rsrvd_fix_b_1_q;

    -- oFracAE_uid66_block_rsrvd_fix(BITJOIN,65)@1
    oFracAE_uid66_block_rsrvd_fix_q <= GND_q & oFracA_uid65_block_rsrvd_fix_q & GND_q & GND_q;

    -- fracAddResult_uid73_block_rsrvd_fix(ADD,72)@1
    fracAddResult_uid73_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => oFracAE_uid66_block_rsrvd_fix_q(26)) & oFracAE_uid66_block_rsrvd_fix_q));
    fracAddResult_uid73_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => r_uid184_alignmentShifter_uid72_block_rsrvd_fix_q(26)) & r_uid184_alignmentShifter_uid72_block_rsrvd_fix_q));
    fracAddResult_uid73_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(fracAddResult_uid73_block_rsrvd_fix_a) + SIGNED(fracAddResult_uid73_block_rsrvd_fix_b));
    fracAddResult_uid73_block_rsrvd_fix_q <= fracAddResult_uid73_block_rsrvd_fix_o(27 downto 0);

    -- fracAddResultNoSignExt_uid74_block_rsrvd_fix(BITSELECT,73)@1
    fracAddResultNoSignExt_uid74_block_rsrvd_fix_in <= fracAddResult_uid73_block_rsrvd_fix_q(26 downto 0);
    fracAddResultNoSignExt_uid74_block_rsrvd_fix_b <= fracAddResultNoSignExt_uid74_block_rsrvd_fix_in(26 downto 0);

    -- rVStage_uid122_lzCountVal_uid75_block_rsrvd_fix(BITSELECT,121)@1
    rVStage_uid122_lzCountVal_uid75_block_rsrvd_fix_b <= fracAddResultNoSignExt_uid74_block_rsrvd_fix_b(26 downto 11);

    -- vCount_uid123_lzCountVal_uid75_block_rsrvd_fix(LOGICAL,122)@1
    vCount_uid123_lzCountVal_uid75_block_rsrvd_fix_q <= "1" WHEN rVStage_uid122_lzCountVal_uid75_block_rsrvd_fix_b = zs_uid121_lzCountVal_uid75_block_rsrvd_fix_q ELSE "0";

    -- vStage_uid125_lzCountVal_uid75_block_rsrvd_fix(BITSELECT,124)@1
    vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_in <= fracAddResultNoSignExt_uid74_block_rsrvd_fix_b(10 downto 0);
    vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b <= vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_in(10 downto 0);

    -- mO_uid124_lzCountVal_uid75_block_rsrvd_fix(CONSTANT,123)
    mO_uid124_lzCountVal_uid75_block_rsrvd_fix_q <= "11111";

    -- cStage_uid126_lzCountVal_uid75_block_rsrvd_fix(BITJOIN,125)@1
    cStage_uid126_lzCountVal_uid75_block_rsrvd_fix_q <= vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b & mO_uid124_lzCountVal_uid75_block_rsrvd_fix_q;

    -- vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix(MUX,127)@1
    vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_s <= vCount_uid123_lzCountVal_uid75_block_rsrvd_fix_q;
    vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_combproc: PROCESS (vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_s, rVStage_uid122_lzCountVal_uid75_block_rsrvd_fix_b, cStage_uid126_lzCountVal_uid75_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_q <= rVStage_uid122_lzCountVal_uid75_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_q <= cStage_uid126_lzCountVal_uid75_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select(BITSELECT,216)@1
    rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid128_lzCountVal_uid75_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid131_lzCountVal_uid75_block_rsrvd_fix(LOGICAL,130)@1
    vCount_uid131_lzCountVal_uid75_block_rsrvd_fix_q <= "1" WHEN rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- zs_uid135_lzCountVal_uid75_block_rsrvd_fix(CONSTANT,134)
    zs_uid135_lzCountVal_uid75_block_rsrvd_fix_q <= "0000";

    -- vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix(MUX,133)@1
    vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_s <= vCount_uid131_lzCountVal_uid75_block_rsrvd_fix_q;
    vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_combproc: PROCESS (vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_s, rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b, rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_q <= rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_q <= rVStage_uid130_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select(BITSELECT,217)@1
    rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid134_lzCountVal_uid75_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid137_lzCountVal_uid75_block_rsrvd_fix(LOGICAL,136)@1
    vCount_uid137_lzCountVal_uid75_block_rsrvd_fix_q <= "1" WHEN rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b = zs_uid135_lzCountVal_uid75_block_rsrvd_fix_q ELSE "0";

    -- zs_uid141_lzCountVal_uid75_block_rsrvd_fix(CONSTANT,140)
    zs_uid141_lzCountVal_uid75_block_rsrvd_fix_q <= "00";

    -- vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix(MUX,139)@1
    vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_s <= vCount_uid137_lzCountVal_uid75_block_rsrvd_fix_q;
    vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_combproc: PROCESS (vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_s, rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b, rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_q <= rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_q <= rVStage_uid136_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select(BITSELECT,218)@1
    rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid140_lzCountVal_uid75_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid143_lzCountVal_uid75_block_rsrvd_fix(LOGICAL,142)@1
    vCount_uid143_lzCountVal_uid75_block_rsrvd_fix_q <= "1" WHEN rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b = zs_uid141_lzCountVal_uid75_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix(MUX,145)@1
    vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_s <= vCount_uid143_lzCountVal_uid75_block_rsrvd_fix_q;
    vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_combproc: PROCESS (vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_s, rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b, rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_q <= rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_q <= rVStage_uid142_lzCountVal_uid75_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid148_lzCountVal_uid75_block_rsrvd_fix(BITSELECT,147)@1
    rVStage_uid148_lzCountVal_uid75_block_rsrvd_fix_b <= vStagei_uid146_lzCountVal_uid75_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid149_lzCountVal_uid75_block_rsrvd_fix(LOGICAL,148)@1
    vCount_uid149_lzCountVal_uid75_block_rsrvd_fix_q <= "1" WHEN rVStage_uid148_lzCountVal_uid75_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid150_lzCountVal_uid75_block_rsrvd_fix(BITJOIN,149)@1
    r_uid150_lzCountVal_uid75_block_rsrvd_fix_q <= vCount_uid123_lzCountVal_uid75_block_rsrvd_fix_q & vCount_uid131_lzCountVal_uid75_block_rsrvd_fix_q & vCount_uid137_lzCountVal_uid75_block_rsrvd_fix_q & vCount_uid143_lzCountVal_uid75_block_rsrvd_fix_q & vCount_uid149_lzCountVal_uid75_block_rsrvd_fix_q;

    -- redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1(DELAY,221)
    redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => r_uid150_lzCountVal_uid75_block_rsrvd_fix_q, xout => redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- aMinusA_uid78_block_rsrvd_fix(LOGICAL,77)@2
    aMinusA_uid78_block_rsrvd_fix_q <= "1" WHEN redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1_q = cAmA_uid77_block_rsrvd_fix_q ELSE "0";

    -- invAMinusA_uid100_block_rsrvd_fix(LOGICAL,99)@2
    invAMinusA_uid100_block_rsrvd_fix_q <= not (aMinusA_uid78_block_rsrvd_fix_q);

    -- redist6_sigA_uid51_block_rsrvd_fix_b_2(DELAY,226)
    redist6_sigA_uid51_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigA_uid51_block_rsrvd_fix_b, xout => redist6_sigA_uid51_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    cstAllOWE_uid19_block_rsrvd_fix_q <= "11111111";

    -- expXIsMax_uid39_block_rsrvd_fix(LOGICAL,38)@0
    expXIsMax_uid39_block_rsrvd_fix_q <= "1" WHEN exp_bSig_uid36_block_rsrvd_fix_b = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";

    -- invExpXIsMax_uid44_block_rsrvd_fix(LOGICAL,43)@0
    invExpXIsMax_uid44_block_rsrvd_fix_q <= not (expXIsMax_uid39_block_rsrvd_fix_q);

    -- excR_bSig_uid46_block_rsrvd_fix(LOGICAL,45)@0 + 1
    excR_bSig_uid46_block_rsrvd_fix_qi <= InvExpXIsZero_uid45_block_rsrvd_fix_q and invExpXIsMax_uid44_block_rsrvd_fix_q;
    excR_bSig_uid46_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excR_bSig_uid46_block_rsrvd_fix_qi, xout => excR_bSig_uid46_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist7_excR_bSig_uid46_block_rsrvd_fix_q_2(DELAY,227)
    redist7_excR_bSig_uid46_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excR_bSig_uid46_block_rsrvd_fix_q, xout => redist7_excR_bSig_uid46_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- redist12_exp_aSig_uid22_block_rsrvd_fix_b_2(DELAY,232)
    redist12_exp_aSig_uid22_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_aSig_uid22_block_rsrvd_fix_b, xout => redist12_exp_aSig_uid22_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@2
    expXIsMax_uid25_block_rsrvd_fix_q <= "1" WHEN redist12_exp_aSig_uid22_block_rsrvd_fix_b_2_q = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";

    -- invExpXIsMax_uid30_block_rsrvd_fix(LOGICAL,29)@2
    invExpXIsMax_uid30_block_rsrvd_fix_q <= not (expXIsMax_uid25_block_rsrvd_fix_q);

    -- excZ_aSig_uid17_uid24_block_rsrvd_fix(LOGICAL,23)@2
    excZ_aSig_uid17_uid24_block_rsrvd_fix_q <= "1" WHEN redist12_exp_aSig_uid22_block_rsrvd_fix_b_2_q = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- InvExpXIsZero_uid31_block_rsrvd_fix(LOGICAL,30)@2
    InvExpXIsZero_uid31_block_rsrvd_fix_q <= not (excZ_aSig_uid17_uid24_block_rsrvd_fix_q);

    -- excR_aSig_uid32_block_rsrvd_fix(LOGICAL,31)@2
    excR_aSig_uid32_block_rsrvd_fix_q <= InvExpXIsZero_uid31_block_rsrvd_fix_q and invExpXIsMax_uid30_block_rsrvd_fix_q;

    -- signRReg_uid101_block_rsrvd_fix(LOGICAL,100)@2
    signRReg_uid101_block_rsrvd_fix_q <= excR_aSig_uid32_block_rsrvd_fix_q and redist7_excR_bSig_uid46_block_rsrvd_fix_q_2_q and redist6_sigA_uid51_block_rsrvd_fix_b_2_q and invAMinusA_uid100_block_rsrvd_fix_q;

    -- redist5_sigB_uid52_block_rsrvd_fix_b_2(DELAY,225)
    redist5_sigB_uid52_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigB_uid52_block_rsrvd_fix_b, xout => redist5_sigB_uid52_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2(DELAY,230)
    redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_bSig_uid18_uid38_block_rsrvd_fix_q, xout => redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excAZBZSigASigB_uid105_block_rsrvd_fix(LOGICAL,104)@2
    excAZBZSigASigB_uid105_block_rsrvd_fix_q <= excZ_aSig_uid17_uid24_block_rsrvd_fix_q and redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q and redist6_sigA_uid51_block_rsrvd_fix_b_2_q and redist5_sigB_uid52_block_rsrvd_fix_b_2_q;

    -- excBZARSigA_uid106_block_rsrvd_fix(LOGICAL,105)@2
    excBZARSigA_uid106_block_rsrvd_fix_q <= redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q and excR_aSig_uid32_block_rsrvd_fix_q and redist6_sigA_uid51_block_rsrvd_fix_b_2_q;

    -- signRZero_uid107_block_rsrvd_fix(LOGICAL,106)@2
    signRZero_uid107_block_rsrvd_fix_q <= excBZARSigA_uid106_block_rsrvd_fix_q or excAZBZSigASigB_uid105_block_rsrvd_fix_q;

    -- fracXIsZero_uid40_block_rsrvd_fix(LOGICAL,39)@0
    fracXIsZero_uid40_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid20_block_rsrvd_fix_q = frac_bSig_uid37_block_rsrvd_fix_b ELSE "0";

    -- excI_bSig_uid42_block_rsrvd_fix(LOGICAL,41)@0 + 1
    excI_bSig_uid42_block_rsrvd_fix_qi <= expXIsMax_uid39_block_rsrvd_fix_q and fracXIsZero_uid40_block_rsrvd_fix_q;
    excI_bSig_uid42_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_bSig_uid42_block_rsrvd_fix_qi, xout => excI_bSig_uid42_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist9_excI_bSig_uid42_block_rsrvd_fix_q_2(DELAY,229)
    redist9_excI_bSig_uid42_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_bSig_uid42_block_rsrvd_fix_q, xout => redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- sigBBInf_uid102_block_rsrvd_fix(LOGICAL,101)@2
    sigBBInf_uid102_block_rsrvd_fix_q <= redist5_sigB_uid52_block_rsrvd_fix_b_2_q and redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q;

    -- fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@1 + 1
    fracXIsZero_uid26_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid20_block_rsrvd_fix_q = redist11_frac_aSig_uid23_block_rsrvd_fix_b_1_q ELSE "0";
    fracXIsZero_uid26_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid26_block_rsrvd_fix_qi, xout => fracXIsZero_uid26_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- excI_aSig_uid28_block_rsrvd_fix(LOGICAL,27)@2
    excI_aSig_uid28_block_rsrvd_fix_q <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsZero_uid26_block_rsrvd_fix_q;

    -- sigAAInf_uid103_block_rsrvd_fix(LOGICAL,102)@2
    sigAAInf_uid103_block_rsrvd_fix_q <= redist6_sigA_uid51_block_rsrvd_fix_b_2_q and excI_aSig_uid28_block_rsrvd_fix_q;

    -- signRInf_uid104_block_rsrvd_fix(LOGICAL,103)@2
    signRInf_uid104_block_rsrvd_fix_q <= sigAAInf_uid103_block_rsrvd_fix_q or sigBBInf_uid102_block_rsrvd_fix_q;

    -- signRInfRZRReg_uid108_block_rsrvd_fix(LOGICAL,107)@2
    signRInfRZRReg_uid108_block_rsrvd_fix_q <= signRInf_uid104_block_rsrvd_fix_q or signRZero_uid107_block_rsrvd_fix_q or signRReg_uid101_block_rsrvd_fix_q;

    -- fracXIsNotZero_uid41_block_rsrvd_fix(LOGICAL,40)@0
    fracXIsNotZero_uid41_block_rsrvd_fix_q <= not (fracXIsZero_uid40_block_rsrvd_fix_q);

    -- excN_bSig_uid43_block_rsrvd_fix(LOGICAL,42)@0 + 1
    excN_bSig_uid43_block_rsrvd_fix_qi <= expXIsMax_uid39_block_rsrvd_fix_q and fracXIsNotZero_uid41_block_rsrvd_fix_q;
    excN_bSig_uid43_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_bSig_uid43_block_rsrvd_fix_qi, xout => excN_bSig_uid43_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist8_excN_bSig_uid43_block_rsrvd_fix_q_2(DELAY,228)
    redist8_excN_bSig_uid43_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_bSig_uid43_block_rsrvd_fix_q, xout => redist8_excN_bSig_uid43_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@2
    fracXIsNotZero_uid27_block_rsrvd_fix_q <= not (fracXIsZero_uid26_block_rsrvd_fix_q);

    -- excN_aSig_uid29_block_rsrvd_fix(LOGICAL,28)@2
    excN_aSig_uid29_block_rsrvd_fix_q <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsNotZero_uid27_block_rsrvd_fix_q;

    -- excRNaN2_uid95_block_rsrvd_fix(LOGICAL,94)@2
    excRNaN2_uid95_block_rsrvd_fix_q <= excN_aSig_uid29_block_rsrvd_fix_q or redist8_excN_bSig_uid43_block_rsrvd_fix_q_2_q;

    -- redist4_effSub_uid53_block_rsrvd_fix_q_2(DELAY,224)
    redist4_effSub_uid53_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => effSub_uid53_block_rsrvd_fix_q, xout => redist4_effSub_uid53_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excAIBISub_uid96_block_rsrvd_fix(LOGICAL,95)@2
    excAIBISub_uid96_block_rsrvd_fix_q <= excI_aSig_uid28_block_rsrvd_fix_q and redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q and redist4_effSub_uid53_block_rsrvd_fix_q_2_q;

    -- excRNaN_uid97_block_rsrvd_fix(LOGICAL,96)@2
    excRNaN_uid97_block_rsrvd_fix_q <= excAIBISub_uid96_block_rsrvd_fix_q or excRNaN2_uid95_block_rsrvd_fix_q;

    -- invExcRNaN_uid109_block_rsrvd_fix(LOGICAL,108)@2
    invExcRNaN_uid109_block_rsrvd_fix_q <= not (excRNaN_uid97_block_rsrvd_fix_q);

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signRPostExc_uid110_block_rsrvd_fix(LOGICAL,109)@2
    signRPostExc_uid110_block_rsrvd_fix_q <= invExcRNaN_uid109_block_rsrvd_fix_q and signRInfRZRReg_uid108_block_rsrvd_fix_q;

    -- expInc_uid79_block_rsrvd_fix(ADD,78)@2
    expInc_uid79_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist12_exp_aSig_uid22_block_rsrvd_fix_b_2_q);
    expInc_uid79_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000" & VCC_q);
    expInc_uid79_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expInc_uid79_block_rsrvd_fix_a) + UNSIGNED(expInc_uid79_block_rsrvd_fix_b));
    expInc_uid79_block_rsrvd_fix_q <= expInc_uid79_block_rsrvd_fix_o(8 downto 0);

    -- expPostNorm_uid80_block_rsrvd_fix(SUB,79)@2
    expPostNorm_uid80_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expInc_uid79_block_rsrvd_fix_q);
    expPostNorm_uid80_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000" & redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1_q);
    expPostNorm_uid80_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expPostNorm_uid80_block_rsrvd_fix_a) - UNSIGNED(expPostNorm_uid80_block_rsrvd_fix_b));
    expPostNorm_uid80_block_rsrvd_fix_q <= expPostNorm_uid80_block_rsrvd_fix_o(9 downto 0);

    -- leftShiftStage2Idx1Rng1_uid211_fracPostNorm_uid76_block_rsrvd_fix(BITSELECT,210)@2
    leftShiftStage2Idx1Rng1_uid211_fracPostNorm_uid76_block_rsrvd_fix_in <= leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q(25 downto 0);
    leftShiftStage2Idx1Rng1_uid211_fracPostNorm_uid76_block_rsrvd_fix_b <= leftShiftStage2Idx1Rng1_uid211_fracPostNorm_uid76_block_rsrvd_fix_in(25 downto 0);

    -- leftShiftStage2Idx1_uid212_fracPostNorm_uid76_block_rsrvd_fix(BITJOIN,211)@2
    leftShiftStage2Idx1_uid212_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage2Idx1Rng1_uid211_fracPostNorm_uid76_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid206_fracPostNorm_uid76_block_rsrvd_fix(BITSELECT,205)@2
    leftShiftStage1Idx3Rng6_uid206_fracPostNorm_uid76_block_rsrvd_fix_in <= leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q(20 downto 0);
    leftShiftStage1Idx3Rng6_uid206_fracPostNorm_uid76_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng6_uid206_fracPostNorm_uid76_block_rsrvd_fix_in(20 downto 0);

    -- leftShiftStage1Idx3Pad6_uid205_fracPostNorm_uid76_block_rsrvd_fix(CONSTANT,204)
    leftShiftStage1Idx3Pad6_uid205_fracPostNorm_uid76_block_rsrvd_fix_q <= "000000";

    -- leftShiftStage1Idx3_uid207_fracPostNorm_uid76_block_rsrvd_fix(BITJOIN,206)@2
    leftShiftStage1Idx3_uid207_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng6_uid206_fracPostNorm_uid76_block_rsrvd_fix_b & leftShiftStage1Idx3Pad6_uid205_fracPostNorm_uid76_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng4_uid203_fracPostNorm_uid76_block_rsrvd_fix(BITSELECT,202)@2
    leftShiftStage1Idx2Rng4_uid203_fracPostNorm_uid76_block_rsrvd_fix_in <= leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q(22 downto 0);
    leftShiftStage1Idx2Rng4_uid203_fracPostNorm_uid76_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng4_uid203_fracPostNorm_uid76_block_rsrvd_fix_in(22 downto 0);

    -- leftShiftStage1Idx2_uid204_fracPostNorm_uid76_block_rsrvd_fix(BITJOIN,203)@2
    leftShiftStage1Idx2_uid204_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng4_uid203_fracPostNorm_uid76_block_rsrvd_fix_b & zs_uid135_lzCountVal_uid75_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng2_uid200_fracPostNorm_uid76_block_rsrvd_fix(BITSELECT,199)@2
    leftShiftStage1Idx1Rng2_uid200_fracPostNorm_uid76_block_rsrvd_fix_in <= leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q(24 downto 0);
    leftShiftStage1Idx1Rng2_uid200_fracPostNorm_uid76_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng2_uid200_fracPostNorm_uid76_block_rsrvd_fix_in(24 downto 0);

    -- leftShiftStage1Idx1_uid201_fracPostNorm_uid76_block_rsrvd_fix(BITJOIN,200)@2
    leftShiftStage1Idx1_uid201_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng2_uid200_fracPostNorm_uid76_block_rsrvd_fix_b & zs_uid141_lzCountVal_uid75_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng24_uid195_fracPostNorm_uid76_block_rsrvd_fix(BITSELECT,194)@2
    leftShiftStage0Idx3Rng24_uid195_fracPostNorm_uid76_block_rsrvd_fix_in <= redist3_fracAddResultNoSignExt_uid74_block_rsrvd_fix_b_1_q(2 downto 0);
    leftShiftStage0Idx3Rng24_uid195_fracPostNorm_uid76_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng24_uid195_fracPostNorm_uid76_block_rsrvd_fix_in(2 downto 0);

    -- leftShiftStage0Idx3Pad24_uid194_fracPostNorm_uid76_block_rsrvd_fix(CONSTANT,193)
    leftShiftStage0Idx3Pad24_uid194_fracPostNorm_uid76_block_rsrvd_fix_q <= "000000000000000000000000";

    -- leftShiftStage0Idx3_uid196_fracPostNorm_uid76_block_rsrvd_fix(BITJOIN,195)@2
    leftShiftStage0Idx3_uid196_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng24_uid195_fracPostNorm_uid76_block_rsrvd_fix_b & leftShiftStage0Idx3Pad24_uid194_fracPostNorm_uid76_block_rsrvd_fix_q;

    -- redist2_vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b_1(DELAY,222)
    redist2_vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b, xout => redist2_vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0Idx2_uid193_fracPostNorm_uid76_block_rsrvd_fix(BITJOIN,192)@2
    leftShiftStage0Idx2_uid193_fracPostNorm_uid76_block_rsrvd_fix_q <= redist2_vStage_uid125_lzCountVal_uid75_block_rsrvd_fix_b_1_q & zs_uid121_lzCountVal_uid75_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng8_uid189_fracPostNorm_uid76_block_rsrvd_fix(BITSELECT,188)@2
    leftShiftStage0Idx1Rng8_uid189_fracPostNorm_uid76_block_rsrvd_fix_in <= redist3_fracAddResultNoSignExt_uid74_block_rsrvd_fix_b_1_q(18 downto 0);
    leftShiftStage0Idx1Rng8_uid189_fracPostNorm_uid76_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng8_uid189_fracPostNorm_uid76_block_rsrvd_fix_in(18 downto 0);

    -- leftShiftStage0Idx1_uid190_fracPostNorm_uid76_block_rsrvd_fix(BITJOIN,189)@2
    leftShiftStage0Idx1_uid190_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng8_uid189_fracPostNorm_uid76_block_rsrvd_fix_b & cstAllZWE_uid21_block_rsrvd_fix_q;

    -- redist3_fracAddResultNoSignExt_uid74_block_rsrvd_fix_b_1(DELAY,223)
    redist3_fracAddResultNoSignExt_uid74_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracAddResultNoSignExt_uid74_block_rsrvd_fix_b, xout => redist3_fracAddResultNoSignExt_uid74_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix(MUX,197)@2
    leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_s <= leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_s, redist3_fracAddResultNoSignExt_uid74_block_rsrvd_fix_b_1_q, leftShiftStage0Idx1_uid190_fracPostNorm_uid76_block_rsrvd_fix_q, leftShiftStage0Idx2_uid193_fracPostNorm_uid76_block_rsrvd_fix_q, leftShiftStage0Idx3_uid196_fracPostNorm_uid76_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q <= redist3_fracAddResultNoSignExt_uid74_block_rsrvd_fix_b_1_q;
            WHEN "01" => leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid190_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid193_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid196_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix(MUX,208)@2
    leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_s <= leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_s, leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q, leftShiftStage1Idx1_uid201_fracPostNorm_uid76_block_rsrvd_fix_q, leftShiftStage1Idx2_uid204_fracPostNorm_uid76_block_rsrvd_fix_q, leftShiftStage1Idx3_uid207_fracPostNorm_uid76_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage0_uid198_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid201_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid204_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid207_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select(BITSELECT,219)@2
    leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_b <= redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1_q(4 downto 3);
    leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_c <= redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1_q(2 downto 1);
    leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_d <= redist1_r_uid150_lzCountVal_uid75_block_rsrvd_fix_q_1_q(0 downto 0);

    -- leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix(MUX,213)@2
    leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_s <= leftShiftStageSel4Dto3_uid197_fracPostNorm_uid76_block_rsrvd_fix_merged_bit_select_d;
    leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_combproc: PROCESS (leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_s, leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q, leftShiftStage2Idx1_uid212_fracPostNorm_uid76_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_s) IS
            WHEN "0" => leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage1_uid209_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN "1" => leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid212_fracPostNorm_uid76_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracPostNormRndRange_uid81_block_rsrvd_fix(BITSELECT,80)@2
    fracPostNormRndRange_uid81_block_rsrvd_fix_in <= leftShiftStage2_uid214_fracPostNorm_uid76_block_rsrvd_fix_q(25 downto 0);
    fracPostNormRndRange_uid81_block_rsrvd_fix_b <= fracPostNormRndRange_uid81_block_rsrvd_fix_in(25 downto 2);

    -- expFracR_uid82_block_rsrvd_fix(BITJOIN,81)@2
    expFracR_uid82_block_rsrvd_fix_q <= expPostNorm_uid80_block_rsrvd_fix_q & fracPostNormRndRange_uid81_block_rsrvd_fix_b;

    -- expRPreExc_uid88_block_rsrvd_fix(BITSELECT,87)@2
    expRPreExc_uid88_block_rsrvd_fix_in <= expFracR_uid82_block_rsrvd_fix_q(31 downto 0);
    expRPreExc_uid88_block_rsrvd_fix_b <= expRPreExc_uid88_block_rsrvd_fix_in(31 downto 24);

    -- wEP2AllOwE_uid83_block_rsrvd_fix(CONSTANT,82)
    wEP2AllOwE_uid83_block_rsrvd_fix_q <= "0011111111";

    -- rndExp_uid84_block_rsrvd_fix(BITSELECT,83)@2
    rndExp_uid84_block_rsrvd_fix_b <= expFracR_uid82_block_rsrvd_fix_q(33 downto 24);

    -- rOvf_uid85_block_rsrvd_fix(LOGICAL,84)@2
    rOvf_uid85_block_rsrvd_fix_q <= "1" WHEN rndExp_uid84_block_rsrvd_fix_b = wEP2AllOwE_uid83_block_rsrvd_fix_q ELSE "0";

    -- regInputs_uid89_block_rsrvd_fix(LOGICAL,88)@2
    regInputs_uid89_block_rsrvd_fix_q <= excR_aSig_uid32_block_rsrvd_fix_q and redist7_excR_bSig_uid46_block_rsrvd_fix_q_2_q;

    -- rInfOvf_uid92_block_rsrvd_fix(LOGICAL,91)@2
    rInfOvf_uid92_block_rsrvd_fix_q <= regInputs_uid89_block_rsrvd_fix_q and rOvf_uid85_block_rsrvd_fix_q;

    -- excRInfVInC_uid93_block_rsrvd_fix(BITJOIN,92)@2
    excRInfVInC_uid93_block_rsrvd_fix_q <= rInfOvf_uid92_block_rsrvd_fix_q & redist8_excN_bSig_uid43_block_rsrvd_fix_q_2_q & excN_aSig_uid29_block_rsrvd_fix_q & redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q & excI_aSig_uid28_block_rsrvd_fix_q & redist4_effSub_uid53_block_rsrvd_fix_q_2_q;

    -- excRInf_uid94_block_rsrvd_fix(LOOKUP,93)@2
    excRInf_uid94_block_rsrvd_fix_combproc: PROCESS (excRInfVInC_uid93_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excRInfVInC_uid93_block_rsrvd_fix_q) IS
            WHEN "000000" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "000001" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "000010" => excRInf_uid94_block_rsrvd_fix_q <= "1";
            WHEN "000011" => excRInf_uid94_block_rsrvd_fix_q <= "1";
            WHEN "000100" => excRInf_uid94_block_rsrvd_fix_q <= "1";
            WHEN "000101" => excRInf_uid94_block_rsrvd_fix_q <= "1";
            WHEN "000110" => excRInf_uid94_block_rsrvd_fix_q <= "1";
            WHEN "000111" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "001000" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "001001" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "001010" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "001011" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "001100" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "001101" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "001110" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "001111" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "010000" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "010001" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "010010" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "010011" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "010100" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "010101" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "010110" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "010111" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "011000" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "011001" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "011010" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "011011" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "011100" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "011101" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "011110" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "011111" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "100000" => excRInf_uid94_block_rsrvd_fix_q <= "1";
            WHEN "100001" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "100010" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "100011" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "100100" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "100101" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "100110" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "100111" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "101000" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "101001" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "101010" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "101011" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "101100" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "101101" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "101110" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "101111" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "110000" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "110001" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "110010" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "110011" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "110100" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "110101" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "110110" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "110111" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "111000" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "111001" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "111010" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "111011" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "111100" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "111101" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "111110" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN "111111" => excRInf_uid94_block_rsrvd_fix_q <= "0";
            WHEN OTHERS => -- unreachable
                           excRInf_uid94_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- rUdf_uid86_block_rsrvd_fix(BITSELECT,85)@2
    rUdf_uid86_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracR_uid82_block_rsrvd_fix_q(33 downto 33));

    -- excRZeroVInC_uid90_block_rsrvd_fix(BITJOIN,89)@2
    excRZeroVInC_uid90_block_rsrvd_fix_q <= aMinusA_uid78_block_rsrvd_fix_q & rUdf_uid86_block_rsrvd_fix_b & regInputs_uid89_block_rsrvd_fix_q & redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q & excZ_aSig_uid17_uid24_block_rsrvd_fix_q;

    -- excRZero_uid91_block_rsrvd_fix(LOOKUP,90)@2
    excRZero_uid91_block_rsrvd_fix_combproc: PROCESS (excRZeroVInC_uid90_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excRZeroVInC_uid90_block_rsrvd_fix_q) IS
            WHEN "00000" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "00001" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "00010" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "00011" => excRZero_uid91_block_rsrvd_fix_q <= "1";
            WHEN "00100" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "00101" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "00110" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "00111" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "01000" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "01001" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "01010" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "01011" => excRZero_uid91_block_rsrvd_fix_q <= "1";
            WHEN "01100" => excRZero_uid91_block_rsrvd_fix_q <= "1";
            WHEN "01101" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "01110" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "01111" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "10000" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "10001" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "10010" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "10011" => excRZero_uid91_block_rsrvd_fix_q <= "1";
            WHEN "10100" => excRZero_uid91_block_rsrvd_fix_q <= "1";
            WHEN "10101" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "10110" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "10111" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "11000" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "11001" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "11010" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "11011" => excRZero_uid91_block_rsrvd_fix_q <= "1";
            WHEN "11100" => excRZero_uid91_block_rsrvd_fix_q <= "1";
            WHEN "11101" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "11110" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN "11111" => excRZero_uid91_block_rsrvd_fix_q <= "0";
            WHEN OTHERS => -- unreachable
                           excRZero_uid91_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- concExc_uid98_block_rsrvd_fix(BITJOIN,97)@2
    concExc_uid98_block_rsrvd_fix_q <= excRNaN_uid97_block_rsrvd_fix_q & excRInf_uid94_block_rsrvd_fix_q & excRZero_uid91_block_rsrvd_fix_q;

    -- excREnc_uid99_block_rsrvd_fix(LOOKUP,98)@2
    excREnc_uid99_block_rsrvd_fix_combproc: PROCESS (concExc_uid98_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid98_block_rsrvd_fix_q) IS
            WHEN "000" => excREnc_uid99_block_rsrvd_fix_q <= "01";
            WHEN "001" => excREnc_uid99_block_rsrvd_fix_q <= "00";
            WHEN "010" => excREnc_uid99_block_rsrvd_fix_q <= "10";
            WHEN "011" => excREnc_uid99_block_rsrvd_fix_q <= "10";
            WHEN "100" => excREnc_uid99_block_rsrvd_fix_q <= "11";
            WHEN "101" => excREnc_uid99_block_rsrvd_fix_q <= "11";
            WHEN "110" => excREnc_uid99_block_rsrvd_fix_q <= "11";
            WHEN "111" => excREnc_uid99_block_rsrvd_fix_q <= "11";
            WHEN OTHERS => -- unreachable
                           excREnc_uid99_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid118_block_rsrvd_fix(MUX,117)@2
    expRPostExc_uid118_block_rsrvd_fix_s <= excREnc_uid99_block_rsrvd_fix_q;
    expRPostExc_uid118_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid118_block_rsrvd_fix_s, cstAllZWE_uid21_block_rsrvd_fix_q, expRPreExc_uid88_block_rsrvd_fix_b, cstAllOWE_uid19_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid118_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid118_block_rsrvd_fix_q <= cstAllZWE_uid21_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid118_block_rsrvd_fix_q <= expRPreExc_uid88_block_rsrvd_fix_b;
            WHEN "10" => expRPostExc_uid118_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid118_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid118_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid111_block_rsrvd_fix(CONSTANT,110)
    oneFracRPostExc2_uid111_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRPreExc_uid87_block_rsrvd_fix(BITSELECT,86)@2
    fracRPreExc_uid87_block_rsrvd_fix_in <= expFracR_uid82_block_rsrvd_fix_q(23 downto 0);
    fracRPreExc_uid87_block_rsrvd_fix_b <= fracRPreExc_uid87_block_rsrvd_fix_in(23 downto 1);

    -- fracRPostExc_uid114_block_rsrvd_fix(MUX,113)@2
    fracRPostExc_uid114_block_rsrvd_fix_s <= excREnc_uid99_block_rsrvd_fix_q;
    fracRPostExc_uid114_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid114_block_rsrvd_fix_s, cstZeroWF_uid20_block_rsrvd_fix_q, fracRPreExc_uid87_block_rsrvd_fix_b, oneFracRPostExc2_uid111_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid114_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid114_block_rsrvd_fix_q <= cstZeroWF_uid20_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid114_block_rsrvd_fix_q <= fracRPreExc_uid87_block_rsrvd_fix_b;
            WHEN "10" => fracRPostExc_uid114_block_rsrvd_fix_q <= cstZeroWF_uid20_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid114_block_rsrvd_fix_q <= oneFracRPostExc2_uid111_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid114_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid119_block_rsrvd_fix(BITJOIN,118)@2
    R_uid119_block_rsrvd_fix_q <= signRPostExc_uid110_block_rsrvd_fix_q & expRPostExc_uid118_block_rsrvd_fix_q & fracRPostExc_uid114_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@2
    out_primWireOut <= R_uid119_block_rsrvd_fix_q;

END normal;
