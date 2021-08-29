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

-- VHDL created from floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A0Z0dd6oq3cd16oe0cp3doz
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
entity floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A0Z0dd6oq3cd16oe0cp3doz is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A0Z0dd6oq3cd16oe0cp3doz;

architecture normal of floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A0Z0dd6oq3cd16oe0cp3doz is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid6_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllZWF_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstBias_uid9_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasMO_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllOWE_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllZWE_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid16_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid19_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid23_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid25_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal e_uid28_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid28_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid28_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal c_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal addrFull_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal yAddr_uid33_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal zPPolyEval_uid34_block_rsrvd_fix_in : STD_LOGIC_VECTOR (14 downto 0);
    signal zPPolyEval_uid34_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal peOR_uid36_block_rsrvd_fix_in : STD_LOGIC_VECTOR (30 downto 0);
    signal peOR_uid36_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal aPostPad_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oMz_uid39_block_rsrvd_fix_a : STD_LOGIC_VECTOR (24 downto 0);
    signal oMz_uid39_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal oMz_uid39_block_rsrvd_fix_o : STD_LOGIC_VECTOR (24 downto 0);
    signal oMz_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal z2_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sEz_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal multTermOne_uid43_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal multTermOne_uid43_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal lowRangeB_uid47_block_rsrvd_fix_in : STD_LOGIC_VECTOR (21 downto 0);
    signal lowRangeB_uid47_block_rsrvd_fix_b : STD_LOGIC_VECTOR (21 downto 0);
    signal highBBits_uid48_block_rsrvd_fix_b : STD_LOGIC_VECTOR (27 downto 0);
    signal finalSumsumAHighB_uid49_block_rsrvd_fix_a : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSumsumAHighB_uid49_block_rsrvd_fix_b : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSumsumAHighB_uid49_block_rsrvd_fix_i : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSumsumAHighB_uid49_block_rsrvd_fix_o : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSumsumAHighB_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal finalSum_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (57 downto 0);
    signal msbUFinalSum_uid51_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal finalSumOneComp_uid53_block_rsrvd_fix_b : STD_LOGIC_VECTOR (57 downto 0);
    signal finalSumOneComp_uid53_block_rsrvd_fix_q : STD_LOGIC_VECTOR (57 downto 0);
    signal finalSumAbs_uid54_block_rsrvd_fix_a : STD_LOGIC_VECTOR (58 downto 0);
    signal finalSumAbs_uid54_block_rsrvd_fix_b : STD_LOGIC_VECTOR (58 downto 0);
    signal finalSumAbs_uid54_block_rsrvd_fix_o : STD_LOGIC_VECTOR (58 downto 0);
    signal finalSumAbs_uid54_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal cstMSBFinalSumPBias_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExt_uid58_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExt_uid58_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExt_uid58_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExt_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal fracR_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (57 downto 0);
    signal fracR_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracConc_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal expFracPostRnd_uid62_block_rsrvd_fix_a : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracPostRnd_uid62_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracPostRnd_uid62_block_rsrvd_fix_o : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracPostRnd_uid62_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal FPOne_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal excRZero_uid67_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid67_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInfC1_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid70_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal negNonZero_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid73_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal notC_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signTerm2_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRC1_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRC11_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid79_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRFull_uid80_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRFull_uid80_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid82_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid90_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid90_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal RLog10_uid91_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xv0_uid93_eLog102_uid29_block_rsrvd_fix_in : STD_LOGIC_VECTOR (5 downto 0);
    signal xv0_uid93_eLog102_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv1_uid94_eLog102_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (2 downto 0);
    signal p1_uid95_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal p0_uid96_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_a : STD_LOGIC_VECTOR (39 downto 0);
    signal lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (39 downto 0);
    signal lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_o : STD_LOGIC_VECTOR (39 downto 0);
    signal lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (38 downto 0);
    signal lev1_a0_uid100_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (39 downto 0);
    signal maxValInOutFormat_uid101_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal minValueInFormat_uid102_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal paddingX_uid103_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal updatedX_uid104_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal ovf_uid103_eLog102_uid29_block_rsrvd_fix_a : STD_LOGIC_VECTOR (41 downto 0);
    signal ovf_uid103_eLog102_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (41 downto 0);
    signal ovf_uid103_eLog102_uid29_block_rsrvd_fix_o : STD_LOGIC_VECTOR (41 downto 0);
    signal ovf_uid103_eLog102_uid29_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal updatedY_uid107_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal udf_uid106_eLog102_uid29_block_rsrvd_fix_a : STD_LOGIC_VECTOR (41 downto 0);
    signal udf_uid106_eLog102_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (41 downto 0);
    signal udf_uid106_eLog102_uid29_block_rsrvd_fix_o : STD_LOGIC_VECTOR (41 downto 0);
    signal udf_uid106_eLog102_uid29_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfudfcond_uid109_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sR_uid110_eLog102_uid29_block_rsrvd_fix_in : STD_LOGIC_VECTOR (37 downto 0);
    signal sR_uid110_eLog102_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal sRA0_uid111_eLog102_uid29_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal sRA0_uid111_eLog102_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal os_uid137_lnTables_q : STD_LOGIC_VECTOR (29 downto 0);
    signal os_uid141_lnTables_q : STD_LOGIC_VECTOR (20 downto 0);
    signal yT1_uid149_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal lowRangeB_uid151_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid151_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid152_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid153_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid153_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid153_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid153_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid154_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid157_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid157_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid158_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid159_invPolyEval_a : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid159_invPolyEval_b : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid159_invPolyEval_o : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid159_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal s2_uid160_invPolyEval_q : STD_LOGIC_VECTOR (32 downto 0);
    signal zs_uid162_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid163_countZ_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid164_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid165_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal vStage_uid166_countZ_uid55_block_rsrvd_fix_in : STD_LOGIC_VECTOR (26 downto 0);
    signal vStage_uid166_countZ_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal cStage_uid167_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid169_countZ_uid55_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid169_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid170_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid172_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid175_countZ_uid55_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid175_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid178_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid181_countZ_uid55_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid181_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid182_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid184_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid187_countZ_uid55_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid187_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid190_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid193_countZ_uid55_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid193_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid195_countZ_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid196_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid197_countZ_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal osig_uid200_pT1_uid150_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid203_pT2_uid156_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC1_uid140_lnTables_q_const_q : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Rng16_uid209_normVal_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (42 downto 0);
    signal leftShiftStage0Idx1Rng16_uid209_normVal_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (42 downto 0);
    signal leftShiftStage0Idx1_uid210_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx2_uid213_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx3Pad48_uid214_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx3Rng48_uid215_normVal_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (10 downto 0);
    signal leftShiftStage0Idx3Rng48_uid215_normVal_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal leftShiftStage0Idx3_uid216_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx1Rng4_uid220_normVal_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (54 downto 0);
    signal leftShiftStage1Idx1Rng4_uid220_normVal_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (54 downto 0);
    signal leftShiftStage1Idx1_uid221_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx2Rng8_uid223_normVal_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx2Rng8_uid223_normVal_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx2_uid224_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx3Pad12_uid225_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx3Rng12_uid226_normVal_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx3Rng12_uid226_normVal_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal leftShiftStage1Idx3_uid227_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage2Idx1Rng1_uid231_normVal_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (57 downto 0);
    signal leftShiftStage2Idx1Rng1_uid231_normVal_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (57 downto 0);
    signal leftShiftStage2Idx1_uid232_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage2Idx2Rng2_uid234_normVal_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (56 downto 0);
    signal leftShiftStage2Idx2Rng2_uid234_normVal_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (56 downto 0);
    signal leftShiftStage2Idx2_uid235_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage2Idx3Rng3_uid237_normVal_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage2Idx3Rng3_uid237_normVal_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage2Idx3_uid238_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (58 downto 0);
    signal memoryC0_uid135_lnTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid135_lnTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid135_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid135_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid135_lnTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid135_lnTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid136_lnTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid136_lnTables_lutmem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC0_uid136_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid136_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid136_lnTables_lutmem_ir : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC0_uid136_lnTables_lutmem_r : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC1_uid139_lnTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid139_lnTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid139_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid139_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid139_lnTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid139_lnTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC2_uid143_lnTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid143_lnTables_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid143_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid143_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid143_lnTables_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid143_lnTables_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_reset : std_logic;
    type postPEMul_uid44_block_rsrvd_fix_cma_a0type is array(NATURAL range <>) of SIGNED(24 downto 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_a0 : postPEMul_uid44_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of postPEMul_uid44_block_rsrvd_fix_cma_a0 : signal is true;
    type postPEMul_uid44_block_rsrvd_fix_cma_c0type is array(NATURAL range <>) of UNSIGNED(24 downto 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_c0 : postPEMul_uid44_block_rsrvd_fix_cma_c0type(0 to 0);
    attribute preserve of postPEMul_uid44_block_rsrvd_fix_cma_c0 : signal is true;
    type postPEMul_uid44_block_rsrvd_fix_cma_rtype is array(NATURAL range <>) of SIGNED(25 downto 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_r : postPEMul_uid44_block_rsrvd_fix_cma_rtype(0 to 0);
    type postPEMul_uid44_block_rsrvd_fix_cma_ptype is array(NATURAL range <>) of SIGNED(50 downto 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_p : postPEMul_uid44_block_rsrvd_fix_cma_ptype(0 to 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_u : postPEMul_uid44_block_rsrvd_fix_cma_ptype(0 to 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_w : postPEMul_uid44_block_rsrvd_fix_cma_ptype(0 to 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_x : postPEMul_uid44_block_rsrvd_fix_cma_ptype(0 to 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_y : postPEMul_uid44_block_rsrvd_fix_cma_ptype(0 to 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_s : postPEMul_uid44_block_rsrvd_fix_cma_ptype(0 to 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_qq : STD_LOGIC_VECTOR (49 downto 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_q : STD_LOGIC_VECTOR (49 downto 0);
    signal postPEMul_uid44_block_rsrvd_fix_cma_ena0 : std_logic;
    signal postPEMul_uid44_block_rsrvd_fix_cma_ena1 : std_logic;
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_reset : std_logic;
    type prodXY_uid199_pT1_uid150_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(12 downto 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_a0 : prodXY_uid199_pT1_uid150_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid199_pT1_uid150_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid199_pT1_uid150_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(12 downto 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_c0 : prodXY_uid199_pT1_uid150_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid199_pT1_uid150_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid199_pT1_uid150_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_l : prodXY_uid199_pT1_uid150_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid199_pT1_uid150_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(26 downto 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_p : prodXY_uid199_pT1_uid150_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_u : prodXY_uid199_pT1_uid150_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_w : prodXY_uid199_pT1_uid150_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_x : prodXY_uid199_pT1_uid150_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_y : prodXY_uid199_pT1_uid150_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_s : prodXY_uid199_pT1_uid150_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_q : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid199_pT1_uid150_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_reset : std_logic;
    type prodXY_uid202_pT2_uid156_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_a0 : prodXY_uid202_pT2_uid156_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid202_pT2_uid156_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid202_pT2_uid156_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_c0 : prodXY_uid202_pT2_uid156_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid202_pT2_uid156_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid202_pT2_uid156_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_l : prodXY_uid202_pT2_uid156_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid202_pT2_uid156_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(38 downto 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_p : prodXY_uid202_pT2_uid156_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_u : prodXY_uid202_pT2_uid156_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_w : prodXY_uid202_pT2_uid156_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_x : prodXY_uid202_pT2_uid156_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_y : prodXY_uid202_pT2_uid156_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_s : prodXY_uid202_pT2_uid156_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid202_pT2_uid156_invPolyEval_cma_ena1 : std_logic;
    signal fracR_uid63_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (31 downto 0);
    signal fracR_uid63_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracR_uid63_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal lowRangeB_uid97_eLog102_uid29_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid97_eLog102_uid29_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (33 downto 0);
    signal rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid177_countZ_uid55_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid177_countZ_uid55_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_vCount_uid178_countZ_uid55_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_vCount_uid172_countZ_uid55_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_vStage_uid166_countZ_uid55_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal redist3_vCount_uid164_countZ_uid55_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_excREnc_uid82_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist5_excRZero_uid67_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_finalSumAbs_uid54_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal redist7_lowRangeB_uid47_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist8_zPPolyEval_uid34_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist9_yAddr_uid33_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist10_yAddr_uid33_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist11_c_uid30_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_c_uid30_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_c_uid30_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_fracXIsZero_uid19_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_excZ_x_uid17_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_frac_x_uid16_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist18_signX_uid7_block_rsrvd_fix_b_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_reset0 : std_logic;
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i : signal is true;
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_eq : signal is true;
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist17_frac_x_uid16_block_rsrvd_fix_b_6_sticky_ena_q : signal is true;
    signal redist17_frac_x_uid16_block_rsrvd_fix_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_mem_reset0 : std_logic;
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i : signal is true;
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq : std_logic;
    attribute preserve of redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq : signal is true;
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist19_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q : signal is true;
    signal redist19_expX_uid6_block_rsrvd_fix_b_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- cstBiasMO_uid10_block_rsrvd_fix(CONSTANT,9)
    cstBiasMO_uid10_block_rsrvd_fix_q <= "01111110";

    -- expX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    expX_uid6_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- c_uid30_block_rsrvd_fix(LOGICAL,29)@0
    c_uid30_block_rsrvd_fix_q <= "1" WHEN expX_uid6_block_rsrvd_fix_b = cstBiasMO_uid10_block_rsrvd_fix_q ELSE "0";

    -- redist11_c_uid30_block_rsrvd_fix_q_6(DELAY,266)
    redist11_c_uid30_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => c_uid30_block_rsrvd_fix_q, xout => redist11_c_uid30_block_rsrvd_fix_q_6_q, clk => clk, aclr => areset );

    -- redist12_c_uid30_block_rsrvd_fix_q_8(DELAY,267)
    redist12_c_uid30_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist11_c_uid30_block_rsrvd_fix_q_6_q, xout => redist12_c_uid30_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- frac_x_uid16_block_rsrvd_fix(BITSELECT,15)@0
    frac_x_uid16_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- addrFull_uid31_block_rsrvd_fix(BITJOIN,30)@0
    addrFull_uid31_block_rsrvd_fix_q <= c_uid30_block_rsrvd_fix_q & frac_x_uid16_block_rsrvd_fix_b;

    -- yAddr_uid33_block_rsrvd_fix(BITSELECT,32)@0
    yAddr_uid33_block_rsrvd_fix_b <= addrFull_uid31_block_rsrvd_fix_q(23 downto 15);

    -- memoryC2_uid143_lnTables_lutmem(DUALMEM,244)@0 + 2
    -- in j@20000000
    memoryC2_uid143_lnTables_lutmem_aa <= yAddr_uid33_block_rsrvd_fix_b;
    memoryC2_uid143_lnTables_lutmem_reset0 <= areset;
    memoryC2_uid143_lnTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A3Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid143_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid143_lnTables_lutmem_aa,
        q_a => memoryC2_uid143_lnTables_lutmem_ir
    );
    memoryC2_uid143_lnTables_lutmem_r <= memoryC2_uid143_lnTables_lutmem_ir(12 downto 0);

    -- redist16_frac_x_uid16_block_rsrvd_fix_b_2(DELAY,271)
    redist16_frac_x_uid16_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_x_uid16_block_rsrvd_fix_b, xout => redist16_frac_x_uid16_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- zPPolyEval_uid34_block_rsrvd_fix(BITSELECT,33)@2
    zPPolyEval_uid34_block_rsrvd_fix_in <= redist16_frac_x_uid16_block_rsrvd_fix_b_2_q(14 downto 0);
    zPPolyEval_uid34_block_rsrvd_fix_b <= zPPolyEval_uid34_block_rsrvd_fix_in(14 downto 0);

    -- yT1_uid149_invPolyEval(BITSELECT,148)@2
    yT1_uid149_invPolyEval_b <= zPPolyEval_uid34_block_rsrvd_fix_b(14 downto 2);

    -- prodXY_uid199_pT1_uid150_invPolyEval_cma(CHAINMULTADD,246)@2 + 2
    prodXY_uid199_pT1_uid150_invPolyEval_cma_reset <= areset;
    prodXY_uid199_pT1_uid150_invPolyEval_cma_ena0 <= '1';
    prodXY_uid199_pT1_uid150_invPolyEval_cma_ena1 <= prodXY_uid199_pT1_uid150_invPolyEval_cma_ena0;
    prodXY_uid199_pT1_uid150_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid199_pT1_uid150_invPolyEval_cma_a0(0),14));
    prodXY_uid199_pT1_uid150_invPolyEval_cma_p(0) <= prodXY_uid199_pT1_uid150_invPolyEval_cma_l(0) * prodXY_uid199_pT1_uid150_invPolyEval_cma_c0(0);
    prodXY_uid199_pT1_uid150_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid199_pT1_uid150_invPolyEval_cma_p(0),27);
    prodXY_uid199_pT1_uid150_invPolyEval_cma_w(0) <= prodXY_uid199_pT1_uid150_invPolyEval_cma_u(0);
    prodXY_uid199_pT1_uid150_invPolyEval_cma_x(0) <= prodXY_uid199_pT1_uid150_invPolyEval_cma_w(0);
    prodXY_uid199_pT1_uid150_invPolyEval_cma_y(0) <= prodXY_uid199_pT1_uid150_invPolyEval_cma_x(0);
    prodXY_uid199_pT1_uid150_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid199_pT1_uid150_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid199_pT1_uid150_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid199_pT1_uid150_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid199_pT1_uid150_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid149_invPolyEval_b),13);
                prodXY_uid199_pT1_uid150_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid143_lnTables_lutmem_r),13);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid199_pT1_uid150_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid199_pT1_uid150_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid199_pT1_uid150_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid199_pT1_uid150_invPolyEval_cma_s(0) <= prodXY_uid199_pT1_uid150_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid199_pT1_uid150_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid199_pT1_uid150_invPolyEval_cma_s(0)(25 downto 0)), xout => prodXY_uid199_pT1_uid150_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid199_pT1_uid150_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid199_pT1_uid150_invPolyEval_cma_qq(25 downto 0));

    -- osig_uid200_pT1_uid150_invPolyEval(BITSELECT,199)@4
    osig_uid200_pT1_uid150_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid199_pT1_uid150_invPolyEval_cma_q(25 downto 12));

    -- highBBits_uid152_invPolyEval(BITSELECT,151)@4
    highBBits_uid152_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid200_pT1_uid150_invPolyEval_b(13 downto 1));

    -- memoryC1_uid140_lnTables_q_const(CONSTANT,204)
    memoryC1_uid140_lnTables_q_const_q <= "1";

    -- redist9_yAddr_uid33_block_rsrvd_fix_b_2(DELAY,264)
    redist9_yAddr_uid33_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid33_block_rsrvd_fix_b, xout => redist9_yAddr_uid33_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid139_lnTables_lutmem(DUALMEM,243)@2 + 2
    -- in j@20000000
    memoryC1_uid139_lnTables_lutmem_aa <= redist9_yAddr_uid33_block_rsrvd_fix_b_2_q;
    memoryC1_uid139_lnTables_lutmem_reset0 <= areset;
    memoryC1_uid139_lnTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 20,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A2Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid139_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid139_lnTables_lutmem_aa,
        q_a => memoryC1_uid139_lnTables_lutmem_ir
    );
    memoryC1_uid139_lnTables_lutmem_r <= memoryC1_uid139_lnTables_lutmem_ir(19 downto 0);

    -- os_uid141_lnTables(BITJOIN,140)@4
    os_uid141_lnTables_q <= memoryC1_uid140_lnTables_q_const_q & memoryC1_uid139_lnTables_lutmem_r;

    -- s1sumAHighB_uid153_invPolyEval(ADD,152)@4
    s1sumAHighB_uid153_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => os_uid141_lnTables_q(20)) & os_uid141_lnTables_q));
    s1sumAHighB_uid153_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid152_invPolyEval_b(12)) & highBBits_uid152_invPolyEval_b));
    s1sumAHighB_uid153_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid153_invPolyEval_a) + SIGNED(s1sumAHighB_uid153_invPolyEval_b));
    s1sumAHighB_uid153_invPolyEval_q <= s1sumAHighB_uid153_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid151_invPolyEval(BITSELECT,150)@4
    lowRangeB_uid151_invPolyEval_in <= osig_uid200_pT1_uid150_invPolyEval_b(0 downto 0);
    lowRangeB_uid151_invPolyEval_b <= lowRangeB_uid151_invPolyEval_in(0 downto 0);

    -- s1_uid154_invPolyEval(BITJOIN,153)@4
    s1_uid154_invPolyEval_q <= s1sumAHighB_uid153_invPolyEval_q & lowRangeB_uid151_invPolyEval_b;

    -- redist8_zPPolyEval_uid34_block_rsrvd_fix_b_2(DELAY,263)
    redist8_zPPolyEval_uid34_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => zPPolyEval_uid34_block_rsrvd_fix_b, xout => redist8_zPPolyEval_uid34_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- prodXY_uid202_pT2_uid156_invPolyEval_cma(CHAINMULTADD,247)@4 + 2
    prodXY_uid202_pT2_uid156_invPolyEval_cma_reset <= areset;
    prodXY_uid202_pT2_uid156_invPolyEval_cma_ena0 <= '1';
    prodXY_uid202_pT2_uid156_invPolyEval_cma_ena1 <= prodXY_uid202_pT2_uid156_invPolyEval_cma_ena0;
    prodXY_uid202_pT2_uid156_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid202_pT2_uid156_invPolyEval_cma_a0(0),16));
    prodXY_uid202_pT2_uid156_invPolyEval_cma_p(0) <= prodXY_uid202_pT2_uid156_invPolyEval_cma_l(0) * prodXY_uid202_pT2_uid156_invPolyEval_cma_c0(0);
    prodXY_uid202_pT2_uid156_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid202_pT2_uid156_invPolyEval_cma_p(0),39);
    prodXY_uid202_pT2_uid156_invPolyEval_cma_w(0) <= prodXY_uid202_pT2_uid156_invPolyEval_cma_u(0);
    prodXY_uid202_pT2_uid156_invPolyEval_cma_x(0) <= prodXY_uid202_pT2_uid156_invPolyEval_cma_w(0);
    prodXY_uid202_pT2_uid156_invPolyEval_cma_y(0) <= prodXY_uid202_pT2_uid156_invPolyEval_cma_x(0);
    prodXY_uid202_pT2_uid156_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid202_pT2_uid156_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid202_pT2_uid156_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid202_pT2_uid156_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid202_pT2_uid156_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist8_zPPolyEval_uid34_block_rsrvd_fix_b_2_q),15);
                prodXY_uid202_pT2_uid156_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid154_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid202_pT2_uid156_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid202_pT2_uid156_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid202_pT2_uid156_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid202_pT2_uid156_invPolyEval_cma_s(0) <= prodXY_uid202_pT2_uid156_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid202_pT2_uid156_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid202_pT2_uid156_invPolyEval_cma_s(0)(37 downto 0)), xout => prodXY_uid202_pT2_uid156_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid202_pT2_uid156_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid202_pT2_uid156_invPolyEval_cma_qq(37 downto 0));

    -- osig_uid203_pT2_uid156_invPolyEval(BITSELECT,202)@6
    osig_uid203_pT2_uid156_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid202_pT2_uid156_invPolyEval_cma_q(37 downto 14));

    -- highBBits_uid158_invPolyEval(BITSELECT,157)@6
    highBBits_uid158_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid203_pT2_uid156_invPolyEval_b(23 downto 2));

    -- redist10_yAddr_uid33_block_rsrvd_fix_b_4(DELAY,265)
    redist10_yAddr_uid33_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_yAddr_uid33_block_rsrvd_fix_b_2_q, xout => redist10_yAddr_uid33_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid136_lnTables_lutmem(DUALMEM,242)@4 + 2
    -- in j@20000000
    memoryC0_uid136_lnTables_lutmem_aa <= redist10_yAddr_uid33_block_rsrvd_fix_b_4_q;
    memoryC0_uid136_lnTables_lutmem_reset0 <= areset;
    memoryC0_uid136_lnTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 10,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A1Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid136_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid136_lnTables_lutmem_aa,
        q_a => memoryC0_uid136_lnTables_lutmem_ir
    );
    memoryC0_uid136_lnTables_lutmem_r <= memoryC0_uid136_lnTables_lutmem_ir(9 downto 0);

    -- memoryC0_uid135_lnTables_lutmem(DUALMEM,241)@4 + 2
    -- in j@20000000
    memoryC0_uid135_lnTables_lutmem_aa <= redist10_yAddr_uid33_block_rsrvd_fix_b_4_q;
    memoryC0_uid135_lnTables_lutmem_reset0 <= areset;
    memoryC0_uid135_lnTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 20,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A0Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid135_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid135_lnTables_lutmem_aa,
        q_a => memoryC0_uid135_lnTables_lutmem_ir
    );
    memoryC0_uid135_lnTables_lutmem_r <= memoryC0_uid135_lnTables_lutmem_ir(19 downto 0);

    -- os_uid137_lnTables(BITJOIN,136)@6
    os_uid137_lnTables_q <= memoryC0_uid136_lnTables_lutmem_r & memoryC0_uid135_lnTables_lutmem_r;

    -- s2sumAHighB_uid159_invPolyEval(ADD,158)@6
    s2sumAHighB_uid159_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => os_uid137_lnTables_q(29)) & os_uid137_lnTables_q));
    s2sumAHighB_uid159_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 22 => highBBits_uid158_invPolyEval_b(21)) & highBBits_uid158_invPolyEval_b));
    s2sumAHighB_uid159_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid159_invPolyEval_a) + SIGNED(s2sumAHighB_uid159_invPolyEval_b));
    s2sumAHighB_uid159_invPolyEval_q <= s2sumAHighB_uid159_invPolyEval_o(30 downto 0);

    -- lowRangeB_uid157_invPolyEval(BITSELECT,156)@6
    lowRangeB_uid157_invPolyEval_in <= osig_uid203_pT2_uid156_invPolyEval_b(1 downto 0);
    lowRangeB_uid157_invPolyEval_b <= lowRangeB_uid157_invPolyEval_in(1 downto 0);

    -- s2_uid160_invPolyEval(BITJOIN,159)@6
    s2_uid160_invPolyEval_q <= s2sumAHighB_uid159_invPolyEval_q & lowRangeB_uid157_invPolyEval_b;

    -- peOR_uid36_block_rsrvd_fix(BITSELECT,35)@6
    peOR_uid36_block_rsrvd_fix_in <= s2_uid160_invPolyEval_q(30 downto 0);
    peOR_uid36_block_rsrvd_fix_b <= peOR_uid36_block_rsrvd_fix_in(30 downto 6);

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_notEnable(LOGICAL,281)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_nor(LOGICAL,282)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_nor_q <= not (redist17_frac_x_uid16_block_rsrvd_fix_b_6_notEnable_q or redist17_frac_x_uid16_block_rsrvd_fix_b_6_sticky_ena_q);

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_last(CONSTANT,278)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_last_q <= "01";

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmp(LOGICAL,279)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmp_q <= "1" WHEN redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_last_q = redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_q ELSE "0";

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmpReg(REG,280)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_sticky_ena(REG,283)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_frac_x_uid16_block_rsrvd_fix_b_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist17_frac_x_uid16_block_rsrvd_fix_b_6_nor_q = "1") THEN
                redist17_frac_x_uid16_block_rsrvd_fix_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist17_frac_x_uid16_block_rsrvd_fix_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_enaAnd(LOGICAL,284)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_enaAnd_q <= redist17_frac_x_uid16_block_rsrvd_fix_b_6_sticky_ena_q and VCC_q;

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt(COUNTER,276)
    -- low=0, high=2, step=1, init=0
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_eq <= '1';
            ELSE
                redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_eq = '1') THEN
                redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i <= redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i + 2;
            ELSE
                redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i <= redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_i, 2)));

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_wraddr(REG,277)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_frac_x_uid16_block_rsrvd_fix_b_6_wraddr_q <= "10";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist17_frac_x_uid16_block_rsrvd_fix_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem(DUALMEM,275)
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_ia <= STD_LOGIC_VECTOR(redist16_frac_x_uid16_block_rsrvd_fix_b_2_q);
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_aa <= redist17_frac_x_uid16_block_rsrvd_fix_b_6_wraddr_q;
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_ab <= redist17_frac_x_uid16_block_rsrvd_fix_b_6_rdcnt_q;
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_reset0 <= areset;
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 23,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 23,
        widthad_b => 2,
        numwords_b => 3,
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
        clocken1 => redist17_frac_x_uid16_block_rsrvd_fix_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_reset0,
        clock1 => clk,
        address_a => redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_aa,
        data_a => redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_ab,
        q_b => redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_iq
    );
    redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_q <= redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_iq(22 downto 0);

    -- cstAllZWF_uid8_block_rsrvd_fix(CONSTANT,7)
    cstAllZWF_uid8_block_rsrvd_fix_q <= "00000000000000000000000";

    -- aPostPad_uid38_block_rsrvd_fix(BITJOIN,37)@6
    aPostPad_uid38_block_rsrvd_fix_q <= VCC_q & cstAllZWF_uid8_block_rsrvd_fix_q;

    -- oMz_uid39_block_rsrvd_fix(SUB,38)@6
    oMz_uid39_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & aPostPad_uid38_block_rsrvd_fix_q);
    oMz_uid39_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_q);
    oMz_uid39_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(oMz_uid39_block_rsrvd_fix_a) - UNSIGNED(oMz_uid39_block_rsrvd_fix_b));
    oMz_uid39_block_rsrvd_fix_q <= oMz_uid39_block_rsrvd_fix_o(24 downto 0);

    -- z2_uid40_block_rsrvd_fix(CONSTANT,39)
    z2_uid40_block_rsrvd_fix_q <= "00";

    -- sEz_uid41_block_rsrvd_fix(BITJOIN,40)@6
    sEz_uid41_block_rsrvd_fix_q <= z2_uid40_block_rsrvd_fix_q & redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_q;

    -- multTermOne_uid43_block_rsrvd_fix(MUX,42)@6
    multTermOne_uid43_block_rsrvd_fix_s <= redist11_c_uid30_block_rsrvd_fix_q_6_q;
    multTermOne_uid43_block_rsrvd_fix_combproc: PROCESS (multTermOne_uid43_block_rsrvd_fix_s, sEz_uid41_block_rsrvd_fix_q, oMz_uid39_block_rsrvd_fix_q)
    BEGIN
        CASE (multTermOne_uid43_block_rsrvd_fix_s) IS
            WHEN "0" => multTermOne_uid43_block_rsrvd_fix_q <= sEz_uid41_block_rsrvd_fix_q;
            WHEN "1" => multTermOne_uid43_block_rsrvd_fix_q <= oMz_uid39_block_rsrvd_fix_q;
            WHEN OTHERS => multTermOne_uid43_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- postPEMul_uid44_block_rsrvd_fix_cma(CHAINMULTADD,245)@6 + 2
    postPEMul_uid44_block_rsrvd_fix_cma_reset <= areset;
    postPEMul_uid44_block_rsrvd_fix_cma_ena0 <= '1';
    postPEMul_uid44_block_rsrvd_fix_cma_ena1 <= postPEMul_uid44_block_rsrvd_fix_cma_ena0;
    postPEMul_uid44_block_rsrvd_fix_cma_r(0) <= SIGNED(RESIZE(postPEMul_uid44_block_rsrvd_fix_cma_c0(0),26));
    postPEMul_uid44_block_rsrvd_fix_cma_p(0) <= postPEMul_uid44_block_rsrvd_fix_cma_a0(0) * postPEMul_uid44_block_rsrvd_fix_cma_r(0);
    postPEMul_uid44_block_rsrvd_fix_cma_u(0) <= RESIZE(postPEMul_uid44_block_rsrvd_fix_cma_p(0),51);
    postPEMul_uid44_block_rsrvd_fix_cma_w(0) <= postPEMul_uid44_block_rsrvd_fix_cma_u(0);
    postPEMul_uid44_block_rsrvd_fix_cma_x(0) <= postPEMul_uid44_block_rsrvd_fix_cma_w(0);
    postPEMul_uid44_block_rsrvd_fix_cma_y(0) <= postPEMul_uid44_block_rsrvd_fix_cma_x(0);
    postPEMul_uid44_block_rsrvd_fix_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            postPEMul_uid44_block_rsrvd_fix_cma_a0 <= (others => (others => '0'));
            postPEMul_uid44_block_rsrvd_fix_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (postPEMul_uid44_block_rsrvd_fix_cma_ena0 = '1') THEN
                postPEMul_uid44_block_rsrvd_fix_cma_a0(0) <= RESIZE(SIGNED(multTermOne_uid43_block_rsrvd_fix_q),25);
                postPEMul_uid44_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(peOR_uid36_block_rsrvd_fix_b),25);
            END IF;
        END IF;
    END PROCESS;
    postPEMul_uid44_block_rsrvd_fix_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            postPEMul_uid44_block_rsrvd_fix_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (postPEMul_uid44_block_rsrvd_fix_cma_ena1 = '1') THEN
                postPEMul_uid44_block_rsrvd_fix_cma_s(0) <= postPEMul_uid44_block_rsrvd_fix_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    postPEMul_uid44_block_rsrvd_fix_cma_delay : dspba_delay
    GENERIC MAP ( width => 50, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(postPEMul_uid44_block_rsrvd_fix_cma_s(0)(49 downto 0)), xout => postPEMul_uid44_block_rsrvd_fix_cma_qq, clk => clk, aclr => areset );
    postPEMul_uid44_block_rsrvd_fix_cma_q <= STD_LOGIC_VECTOR(postPEMul_uid44_block_rsrvd_fix_cma_qq(49 downto 0));

    -- highBBits_uid48_block_rsrvd_fix(BITSELECT,47)@8
    highBBits_uid48_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(postPEMul_uid44_block_rsrvd_fix_cma_q(49 downto 22));

    -- maxValInOutFormat_uid101_eLog102_uid29_block_rsrvd_fix(CONSTANT,100)
    maxValInOutFormat_uid101_eLog102_uid29_block_rsrvd_fix_q <= "01111111111111111111111111111111111";

    -- minValueInFormat_uid102_eLog102_uid29_block_rsrvd_fix(CONSTANT,101)
    minValueInFormat_uid102_eLog102_uid29_block_rsrvd_fix_q <= "10000000000000000000000000000000000";

    -- cstBias_uid9_block_rsrvd_fix(CONSTANT,8)
    cstBias_uid9_block_rsrvd_fix_q <= "01111111";

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_notEnable(LOGICAL,291)
    redist19_expX_uid6_block_rsrvd_fix_b_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_nor(LOGICAL,292)
    redist19_expX_uid6_block_rsrvd_fix_b_8_nor_q <= not (redist19_expX_uid6_block_rsrvd_fix_b_8_notEnable_q or redist19_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q);

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_mem_last(CONSTANT,288)
    redist19_expX_uid6_block_rsrvd_fix_b_8_mem_last_q <= "0101";

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_cmp(LOGICAL,289)
    redist19_expX_uid6_block_rsrvd_fix_b_8_cmp_b <= STD_LOGIC_VECTOR("0" & redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q);
    redist19_expX_uid6_block_rsrvd_fix_b_8_cmp_q <= "1" WHEN redist19_expX_uid6_block_rsrvd_fix_b_8_mem_last_q = redist19_expX_uid6_block_rsrvd_fix_b_8_cmp_b ELSE "0";

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_cmpReg(REG,290)
    redist19_expX_uid6_block_rsrvd_fix_b_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist19_expX_uid6_block_rsrvd_fix_b_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist19_expX_uid6_block_rsrvd_fix_b_8_cmpReg_q <= STD_LOGIC_VECTOR(redist19_expX_uid6_block_rsrvd_fix_b_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_sticky_ena(REG,293)
    redist19_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist19_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist19_expX_uid6_block_rsrvd_fix_b_8_nor_q = "1") THEN
                redist19_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist19_expX_uid6_block_rsrvd_fix_b_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_enaAnd(LOGICAL,294)
    redist19_expX_uid6_block_rsrvd_fix_b_8_enaAnd_q <= redist19_expX_uid6_block_rsrvd_fix_b_8_sticky_ena_q and VCC_q;

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt(COUNTER,286)
    -- low=0, high=6, step=1, init=0
    redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq <= '1';
            ELSE
                redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
            END IF;
            IF (redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_eq = '1') THEN
                redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i <= redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i + 2;
            ELSE
                redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i <= redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_i, 3)));

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_wraddr(REG,287)
    redist19_expX_uid6_block_rsrvd_fix_b_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist19_expX_uid6_block_rsrvd_fix_b_8_wraddr_q <= "110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist19_expX_uid6_block_rsrvd_fix_b_8_wraddr_q <= STD_LOGIC_VECTOR(redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist19_expX_uid6_block_rsrvd_fix_b_8_mem(DUALMEM,285)
    redist19_expX_uid6_block_rsrvd_fix_b_8_mem_ia <= STD_LOGIC_VECTOR(expX_uid6_block_rsrvd_fix_b);
    redist19_expX_uid6_block_rsrvd_fix_b_8_mem_aa <= redist19_expX_uid6_block_rsrvd_fix_b_8_wraddr_q;
    redist19_expX_uid6_block_rsrvd_fix_b_8_mem_ab <= redist19_expX_uid6_block_rsrvd_fix_b_8_rdcnt_q;
    redist19_expX_uid6_block_rsrvd_fix_b_8_mem_reset0 <= areset;
    redist19_expX_uid6_block_rsrvd_fix_b_8_mem_dmem : altera_syncram
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
        clocken1 => redist19_expX_uid6_block_rsrvd_fix_b_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist19_expX_uid6_block_rsrvd_fix_b_8_mem_reset0,
        clock1 => clk,
        address_a => redist19_expX_uid6_block_rsrvd_fix_b_8_mem_aa,
        data_a => redist19_expX_uid6_block_rsrvd_fix_b_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist19_expX_uid6_block_rsrvd_fix_b_8_mem_ab,
        q_b => redist19_expX_uid6_block_rsrvd_fix_b_8_mem_iq
    );
    redist19_expX_uid6_block_rsrvd_fix_b_8_mem_q <= redist19_expX_uid6_block_rsrvd_fix_b_8_mem_iq(7 downto 0);

    -- e_uid28_block_rsrvd_fix(SUB,27)@8
    e_uid28_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist19_expX_uid6_block_rsrvd_fix_b_8_mem_q);
    e_uid28_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & cstBias_uid9_block_rsrvd_fix_q);
    e_uid28_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(e_uid28_block_rsrvd_fix_a) - UNSIGNED(e_uid28_block_rsrvd_fix_b));
    e_uid28_block_rsrvd_fix_q <= e_uid28_block_rsrvd_fix_o(8 downto 0);

    -- xv1_uid94_eLog102_uid29_block_rsrvd_fix(BITSELECT,93)@8
    xv1_uid94_eLog102_uid29_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(e_uid28_block_rsrvd_fix_q(8 downto 6));

    -- p1_uid95_eLog102_uid29_block_rsrvd_fix(LOOKUP,94)@8
    p1_uid95_eLog102_uid29_block_rsrvd_fix_combproc: PROCESS (xv1_uid94_eLog102_uid29_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv1_uid94_eLog102_uid29_block_rsrvd_fix_b) IS
            WHEN "000" => p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= "00000000000000000000000000000000000010";
            WHEN "001" => p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= "00001001101000100000100110101000000010";
            WHEN "010" => p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= "00010011010001000001001101010000000010";
            WHEN "011" => p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= "00011100111001100001110011111000000010";
            WHEN "100" => p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= "11011001011101111101100101100000000010";
            WHEN "101" => p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= "11100011000110011110001100001000000010";
            WHEN "110" => p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= "11101100101110111110110010110000000010";
            WHEN "111" => p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= "11110110010111011111011001011000000010";
            WHEN OTHERS => -- unreachable
                           p1_uid95_eLog102_uid29_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix(ADD,98)@8
    lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 38 => p1_uid95_eLog102_uid29_block_rsrvd_fix_q(37)) & p1_uid95_eLog102_uid29_block_rsrvd_fix_q));
    lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000" & lowRangeB_uid97_eLog102_uid29_block_rsrvd_fix_merged_bit_select_c));
    lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_a) + SIGNED(lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_b));
    lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_q <= lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_o(38 downto 0);

    -- xv0_uid93_eLog102_uid29_block_rsrvd_fix(BITSELECT,92)@8
    xv0_uid93_eLog102_uid29_block_rsrvd_fix_in <= e_uid28_block_rsrvd_fix_q(5 downto 0);
    xv0_uid93_eLog102_uid29_block_rsrvd_fix_b <= xv0_uid93_eLog102_uid29_block_rsrvd_fix_in(5 downto 0);

    -- p0_uid96_eLog102_uid29_block_rsrvd_fix(LOOKUP,95)@8
    p0_uid96_eLog102_uid29_block_rsrvd_fix_combproc: PROCESS (xv0_uid93_eLog102_uid29_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv0_uid93_eLog102_uid29_block_rsrvd_fix_b) IS
            WHEN "000000" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00000000000000000000000000000000000";
            WHEN "000001" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00000010011010001000001001101010000";
            WHEN "000010" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00000100110100010000010011010100000";
            WHEN "000011" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00000111001110011000011100111110000";
            WHEN "000100" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00001001101000100000100110101000000";
            WHEN "000101" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00001100000010101000110000010010000";
            WHEN "000110" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00001110011100110000111001111100000";
            WHEN "000111" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00010000110110111001000011100110000";
            WHEN "001000" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00010011010001000001001101010000000";
            WHEN "001001" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00010101101011001001010110111010000";
            WHEN "001010" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00011000000101010001100000100100000";
            WHEN "001011" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00011010011111011001101010001110000";
            WHEN "001100" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00011100111001100001110011111000000";
            WHEN "001101" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00011111010011101001111101100010000";
            WHEN "001110" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00100001101101110010000111001100000";
            WHEN "001111" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00100100000111111010010000110110000";
            WHEN "010000" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00100110100010000010011010100000000";
            WHEN "010001" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00101000111100001010100100001010000";
            WHEN "010010" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00101011010110010010101101110100000";
            WHEN "010011" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00101101110000011010110111011110000";
            WHEN "010100" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00110000001010100011000001001000000";
            WHEN "010101" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00110010100100101011001010110010000";
            WHEN "010110" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00110100111110110011010100011100000";
            WHEN "010111" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00110111011000111011011110000110000";
            WHEN "011000" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00111001110011000011100111110000000";
            WHEN "011001" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00111100001101001011110001011010000";
            WHEN "011010" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "00111110100111010011111011000100000";
            WHEN "011011" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01000001000001011100000100101110000";
            WHEN "011100" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01000011011011100100001110011000000";
            WHEN "011101" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01000101110101101100011000000010000";
            WHEN "011110" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01001000001111110100100001101100000";
            WHEN "011111" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01001010101001111100101011010110000";
            WHEN "100000" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01001101000100000100110101000000000";
            WHEN "100001" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01001111011110001100111110101010000";
            WHEN "100010" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01010001111000010101001000010100000";
            WHEN "100011" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01010100010010011101010001111110000";
            WHEN "100100" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01010110101100100101011011101000000";
            WHEN "100101" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01011001000110101101100101010010000";
            WHEN "100110" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01011011100000110101101110111100000";
            WHEN "100111" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01011101111010111101111000100110000";
            WHEN "101000" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01100000010101000110000010010000000";
            WHEN "101001" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01100010101111001110001011111010000";
            WHEN "101010" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01100101001001010110010101100100000";
            WHEN "101011" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01100111100011011110011111001110000";
            WHEN "101100" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01101001111101100110101000111000000";
            WHEN "101101" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01101100010111101110110010100010000";
            WHEN "101110" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01101110110001110110111100001100000";
            WHEN "101111" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01110001001011111111000101110110000";
            WHEN "110000" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01110011100110000111001111100000000";
            WHEN "110001" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01110110000000001111011001001010000";
            WHEN "110010" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01111000011010010111100010110100000";
            WHEN "110011" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01111010110100011111101100011110000";
            WHEN "110100" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01111101001110100111110110001000000";
            WHEN "110101" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "01111111101000101111111111110010000";
            WHEN "110110" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10000010000010111000001001011100000";
            WHEN "110111" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10000100011101000000010011000110000";
            WHEN "111000" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10000110110111001000011100110000000";
            WHEN "111001" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10001001010001010000100110011010000";
            WHEN "111010" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10001011101011011000110000000100000";
            WHEN "111011" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10001110000101100000111001101110000";
            WHEN "111100" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10010000011111101001000011011000000";
            WHEN "111101" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10010010111001110001001101000010000";
            WHEN "111110" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10010101010011111001010110101100000";
            WHEN "111111" => p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= "10010111101110000001100000010110000";
            WHEN OTHERS => -- unreachable
                           p0_uid96_eLog102_uid29_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lowRangeB_uid97_eLog102_uid29_block_rsrvd_fix_merged_bit_select(BITSELECT,249)@8
    lowRangeB_uid97_eLog102_uid29_block_rsrvd_fix_merged_bit_select_b <= p0_uid96_eLog102_uid29_block_rsrvd_fix_q(0 downto 0);
    lowRangeB_uid97_eLog102_uid29_block_rsrvd_fix_merged_bit_select_c <= p0_uid96_eLog102_uid29_block_rsrvd_fix_q(34 downto 1);

    -- lev1_a0_uid100_eLog102_uid29_block_rsrvd_fix(BITJOIN,99)@8
    lev1_a0_uid100_eLog102_uid29_block_rsrvd_fix_q <= lev1_a0sumAHighB_uid99_eLog102_uid29_block_rsrvd_fix_q & lowRangeB_uid97_eLog102_uid29_block_rsrvd_fix_merged_bit_select_b;

    -- sR_uid110_eLog102_uid29_block_rsrvd_fix(BITSELECT,109)@8
    sR_uid110_eLog102_uid29_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(lev1_a0_uid100_eLog102_uid29_block_rsrvd_fix_q(37 downto 0));
    sR_uid110_eLog102_uid29_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(sR_uid110_eLog102_uid29_block_rsrvd_fix_in(37 downto 3));

    -- paddingX_uid103_eLog102_uid29_block_rsrvd_fix(CONSTANT,102)
    paddingX_uid103_eLog102_uid29_block_rsrvd_fix_q <= "000";

    -- updatedX_uid104_eLog102_uid29_block_rsrvd_fix(BITJOIN,103)@8
    updatedX_uid104_eLog102_uid29_block_rsrvd_fix_q <= maxValInOutFormat_uid101_eLog102_uid29_block_rsrvd_fix_q & paddingX_uid103_eLog102_uid29_block_rsrvd_fix_q;

    -- ovf_uid103_eLog102_uid29_block_rsrvd_fix(COMPARE,104)@8
    ovf_uid103_eLog102_uid29_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((41 downto 38 => updatedX_uid104_eLog102_uid29_block_rsrvd_fix_q(37)) & updatedX_uid104_eLog102_uid29_block_rsrvd_fix_q));
    ovf_uid103_eLog102_uid29_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((41 downto 40 => lev1_a0_uid100_eLog102_uid29_block_rsrvd_fix_q(39)) & lev1_a0_uid100_eLog102_uid29_block_rsrvd_fix_q));
    ovf_uid103_eLog102_uid29_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid103_eLog102_uid29_block_rsrvd_fix_a) - SIGNED(ovf_uid103_eLog102_uid29_block_rsrvd_fix_b));
    ovf_uid103_eLog102_uid29_block_rsrvd_fix_c(0) <= ovf_uid103_eLog102_uid29_block_rsrvd_fix_o(41);

    -- updatedY_uid107_eLog102_uid29_block_rsrvd_fix(BITJOIN,106)@8
    updatedY_uid107_eLog102_uid29_block_rsrvd_fix_q <= minValueInFormat_uid102_eLog102_uid29_block_rsrvd_fix_q & paddingX_uid103_eLog102_uid29_block_rsrvd_fix_q;

    -- udf_uid106_eLog102_uid29_block_rsrvd_fix(COMPARE,107)@8
    udf_uid106_eLog102_uid29_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((41 downto 40 => lev1_a0_uid100_eLog102_uid29_block_rsrvd_fix_q(39)) & lev1_a0_uid100_eLog102_uid29_block_rsrvd_fix_q));
    udf_uid106_eLog102_uid29_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((41 downto 38 => updatedY_uid107_eLog102_uid29_block_rsrvd_fix_q(37)) & updatedY_uid107_eLog102_uid29_block_rsrvd_fix_q));
    udf_uid106_eLog102_uid29_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid106_eLog102_uid29_block_rsrvd_fix_a) - SIGNED(udf_uid106_eLog102_uid29_block_rsrvd_fix_b));
    udf_uid106_eLog102_uid29_block_rsrvd_fix_c(0) <= udf_uid106_eLog102_uid29_block_rsrvd_fix_o(41);

    -- ovfudfcond_uid109_eLog102_uid29_block_rsrvd_fix(BITJOIN,108)@8
    ovfudfcond_uid109_eLog102_uid29_block_rsrvd_fix_q <= ovf_uid103_eLog102_uid29_block_rsrvd_fix_c & udf_uid106_eLog102_uid29_block_rsrvd_fix_c;

    -- sRA0_uid111_eLog102_uid29_block_rsrvd_fix(MUX,110)@8
    sRA0_uid111_eLog102_uid29_block_rsrvd_fix_s <= ovfudfcond_uid109_eLog102_uid29_block_rsrvd_fix_q;
    sRA0_uid111_eLog102_uid29_block_rsrvd_fix_combproc: PROCESS (sRA0_uid111_eLog102_uid29_block_rsrvd_fix_s, sR_uid110_eLog102_uid29_block_rsrvd_fix_b, minValueInFormat_uid102_eLog102_uid29_block_rsrvd_fix_q, maxValInOutFormat_uid101_eLog102_uid29_block_rsrvd_fix_q)
    BEGIN
        CASE (sRA0_uid111_eLog102_uid29_block_rsrvd_fix_s) IS
            WHEN "00" => sRA0_uid111_eLog102_uid29_block_rsrvd_fix_q <= sR_uid110_eLog102_uid29_block_rsrvd_fix_b;
            WHEN "01" => sRA0_uid111_eLog102_uid29_block_rsrvd_fix_q <= minValueInFormat_uid102_eLog102_uid29_block_rsrvd_fix_q;
            WHEN "10" => sRA0_uid111_eLog102_uid29_block_rsrvd_fix_q <= maxValInOutFormat_uid101_eLog102_uid29_block_rsrvd_fix_q;
            WHEN "11" => sRA0_uid111_eLog102_uid29_block_rsrvd_fix_q <= maxValInOutFormat_uid101_eLog102_uid29_block_rsrvd_fix_q;
            WHEN OTHERS => sRA0_uid111_eLog102_uid29_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- finalSumsumAHighB_uid49_block_rsrvd_fix(ADD,48)@8 + 1
    finalSumsumAHighB_uid49_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 35 => sRA0_uid111_eLog102_uid29_block_rsrvd_fix_q(34)) & sRA0_uid111_eLog102_uid29_block_rsrvd_fix_q));
    finalSumsumAHighB_uid49_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 28 => highBBits_uid48_block_rsrvd_fix_b(27)) & highBBits_uid48_block_rsrvd_fix_b));
    finalSumsumAHighB_uid49_block_rsrvd_fix_i <= finalSumsumAHighB_uid49_block_rsrvd_fix_b;
    finalSumsumAHighB_uid49_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            finalSumsumAHighB_uid49_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist12_c_uid30_block_rsrvd_fix_q_8_q = "1") THEN
                finalSumsumAHighB_uid49_block_rsrvd_fix_o <= finalSumsumAHighB_uid49_block_rsrvd_fix_i;
            ELSE
                finalSumsumAHighB_uid49_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(finalSumsumAHighB_uid49_block_rsrvd_fix_a) + SIGNED(finalSumsumAHighB_uid49_block_rsrvd_fix_b));
            END IF;
        END IF;
    END PROCESS;
    finalSumsumAHighB_uid49_block_rsrvd_fix_q <= finalSumsumAHighB_uid49_block_rsrvd_fix_o(35 downto 0);

    -- lowRangeB_uid47_block_rsrvd_fix(BITSELECT,46)@8
    lowRangeB_uid47_block_rsrvd_fix_in <= postPEMul_uid44_block_rsrvd_fix_cma_q(21 downto 0);
    lowRangeB_uid47_block_rsrvd_fix_b <= lowRangeB_uid47_block_rsrvd_fix_in(21 downto 0);

    -- redist7_lowRangeB_uid47_block_rsrvd_fix_b_1(DELAY,262)
    redist7_lowRangeB_uid47_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 22, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => lowRangeB_uid47_block_rsrvd_fix_b, xout => redist7_lowRangeB_uid47_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- finalSum_uid50_block_rsrvd_fix(BITJOIN,49)@9
    finalSum_uid50_block_rsrvd_fix_q <= finalSumsumAHighB_uid49_block_rsrvd_fix_q & redist7_lowRangeB_uid47_block_rsrvd_fix_b_1_q;

    -- msbUFinalSum_uid51_block_rsrvd_fix(BITSELECT,50)@9
    msbUFinalSum_uid51_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(finalSum_uid50_block_rsrvd_fix_q(57 downto 57));

    -- notC_uid74_block_rsrvd_fix(LOGICAL,73)@9
    notC_uid74_block_rsrvd_fix_q <= not (redist13_c_uid30_block_rsrvd_fix_q_9_q);

    -- signTerm2_uid75_block_rsrvd_fix(LOGICAL,74)@9
    signTerm2_uid75_block_rsrvd_fix_q <= notC_uid74_block_rsrvd_fix_q and msbUFinalSum_uid51_block_rsrvd_fix_b;

    -- redist13_c_uid30_block_rsrvd_fix_q_9(DELAY,268)
    redist13_c_uid30_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist12_c_uid30_block_rsrvd_fix_q_8_q, xout => redist13_c_uid30_block_rsrvd_fix_q_9_q, clk => clk, aclr => areset );

    -- signRC1_uid76_block_rsrvd_fix(LOGICAL,75)@9
    signRC1_uid76_block_rsrvd_fix_q <= redist13_c_uid30_block_rsrvd_fix_q_9_q or signTerm2_uid75_block_rsrvd_fix_q;

    -- cstAllOWE_uid12_block_rsrvd_fix(CONSTANT,11)
    cstAllOWE_uid12_block_rsrvd_fix_q <= "11111111";

    -- expXIsMax_uid18_block_rsrvd_fix(LOGICAL,17)@8
    expXIsMax_uid18_block_rsrvd_fix_q <= "1" WHEN redist19_expX_uid6_block_rsrvd_fix_b_8_mem_q = cstAllOWE_uid12_block_rsrvd_fix_q ELSE "0";

    -- invExpXIsMax_uid23_block_rsrvd_fix(LOGICAL,22)@8
    invExpXIsMax_uid23_block_rsrvd_fix_q <= not (expXIsMax_uid18_block_rsrvd_fix_q);

    -- cstAllZWE_uid14_block_rsrvd_fix(CONSTANT,13)
    cstAllZWE_uid14_block_rsrvd_fix_q <= "00000000";

    -- excZ_x_uid17_block_rsrvd_fix(LOGICAL,16)@8
    excZ_x_uid17_block_rsrvd_fix_q <= "1" WHEN redist19_expX_uid6_block_rsrvd_fix_b_8_mem_q = cstAllZWE_uid14_block_rsrvd_fix_q ELSE "0";

    -- InvExpXIsZero_uid24_block_rsrvd_fix(LOGICAL,23)@8
    InvExpXIsZero_uid24_block_rsrvd_fix_q <= not (excZ_x_uid17_block_rsrvd_fix_q);

    -- excR_x_uid25_block_rsrvd_fix(LOGICAL,24)@8 + 1
    excR_x_uid25_block_rsrvd_fix_qi <= InvExpXIsZero_uid24_block_rsrvd_fix_q and invExpXIsMax_uid23_block_rsrvd_fix_q;
    excR_x_uid25_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excR_x_uid25_block_rsrvd_fix_qi, xout => excR_x_uid25_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- signRC11_uid77_block_rsrvd_fix(LOGICAL,76)@9
    signRC11_uid77_block_rsrvd_fix_q <= excR_x_uid25_block_rsrvd_fix_q and signRC1_uid76_block_rsrvd_fix_q;

    -- redist15_excZ_x_uid17_block_rsrvd_fix_q_1(DELAY,270)
    redist15_excZ_x_uid17_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid17_block_rsrvd_fix_q, xout => redist15_excZ_x_uid17_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- signR_uid78_block_rsrvd_fix(LOGICAL,77)@9
    signR_uid78_block_rsrvd_fix_q <= redist15_excZ_x_uid17_block_rsrvd_fix_q_1_q or signRC11_uid77_block_rsrvd_fix_q;

    -- fracXIsZero_uid19_block_rsrvd_fix(LOGICAL,18)@6 + 1
    fracXIsZero_uid19_block_rsrvd_fix_qi <= "1" WHEN cstAllZWF_uid8_block_rsrvd_fix_q = redist17_frac_x_uid16_block_rsrvd_fix_b_6_mem_q ELSE "0";
    fracXIsZero_uid19_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid19_block_rsrvd_fix_qi, xout => fracXIsZero_uid19_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist14_fracXIsZero_uid19_block_rsrvd_fix_q_2(DELAY,269)
    redist14_fracXIsZero_uid19_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid19_block_rsrvd_fix_q, xout => redist14_fracXIsZero_uid19_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- fracXIsNotZero_uid20_block_rsrvd_fix(LOGICAL,19)@8
    fracXIsNotZero_uid20_block_rsrvd_fix_q <= not (redist14_fracXIsZero_uid19_block_rsrvd_fix_q_2_q);

    -- excN_x_uid22_block_rsrvd_fix(LOGICAL,21)@8
    excN_x_uid22_block_rsrvd_fix_q <= expXIsMax_uid18_block_rsrvd_fix_q and fracXIsNotZero_uid20_block_rsrvd_fix_q;

    -- signX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    signX_uid7_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- redist18_signX_uid7_block_rsrvd_fix_b_8(DELAY,273)
    redist18_signX_uid7_block_rsrvd_fix_b_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid7_block_rsrvd_fix_b, xout => redist18_signX_uid7_block_rsrvd_fix_b_8_q, clk => clk, aclr => areset );

    -- negNonZero_uid72_block_rsrvd_fix(LOGICAL,71)@8
    negNonZero_uid72_block_rsrvd_fix_q <= InvExpXIsZero_uid24_block_rsrvd_fix_q and redist18_signX_uid7_block_rsrvd_fix_b_8_q;

    -- excRNaN_uid73_block_rsrvd_fix(LOGICAL,72)@8
    excRNaN_uid73_block_rsrvd_fix_q <= negNonZero_uid72_block_rsrvd_fix_q or excN_x_uid22_block_rsrvd_fix_q;

    -- invExcRNaN_uid79_block_rsrvd_fix(LOGICAL,78)@8 + 1
    invExcRNaN_uid79_block_rsrvd_fix_qi <= not (excRNaN_uid73_block_rsrvd_fix_q);
    invExcRNaN_uid79_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invExcRNaN_uid79_block_rsrvd_fix_qi, xout => invExcRNaN_uid79_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signRFull_uid80_block_rsrvd_fix(LOGICAL,79)@9 + 1
    signRFull_uid80_block_rsrvd_fix_qi <= invExcRNaN_uid79_block_rsrvd_fix_q and signR_uid78_block_rsrvd_fix_q;
    signRFull_uid80_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRFull_uid80_block_rsrvd_fix_qi, xout => signRFull_uid80_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- zs_uid162_countZ_uid55_block_rsrvd_fix(CONSTANT,161)
    zs_uid162_countZ_uid55_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- finalSumOneComp_uid53_block_rsrvd_fix(LOGICAL,52)@9
    finalSumOneComp_uid53_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((57 downto 1 => msbUFinalSum_uid51_block_rsrvd_fix_b(0)) & msbUFinalSum_uid51_block_rsrvd_fix_b));
    finalSumOneComp_uid53_block_rsrvd_fix_q <= finalSum_uid50_block_rsrvd_fix_q xor finalSumOneComp_uid53_block_rsrvd_fix_b;

    -- finalSumAbs_uid54_block_rsrvd_fix(ADD,53)@9
    finalSumAbs_uid54_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & finalSumOneComp_uid53_block_rsrvd_fix_q);
    finalSumAbs_uid54_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000000000000000000000000000" & msbUFinalSum_uid51_block_rsrvd_fix_b);
    finalSumAbs_uid54_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(finalSumAbs_uid54_block_rsrvd_fix_a) + UNSIGNED(finalSumAbs_uid54_block_rsrvd_fix_b));
    finalSumAbs_uid54_block_rsrvd_fix_q <= finalSumAbs_uid54_block_rsrvd_fix_o(58 downto 0);

    -- rVStage_uid163_countZ_uid55_block_rsrvd_fix(BITSELECT,162)@9
    rVStage_uid163_countZ_uid55_block_rsrvd_fix_b <= finalSumAbs_uid54_block_rsrvd_fix_q(58 downto 27);

    -- vCount_uid164_countZ_uid55_block_rsrvd_fix(LOGICAL,163)@9
    vCount_uid164_countZ_uid55_block_rsrvd_fix_q <= "1" WHEN rVStage_uid163_countZ_uid55_block_rsrvd_fix_b = zs_uid162_countZ_uid55_block_rsrvd_fix_q ELSE "0";

    -- redist3_vCount_uid164_countZ_uid55_block_rsrvd_fix_q_1(DELAY,258)
    redist3_vCount_uid164_countZ_uid55_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid164_countZ_uid55_block_rsrvd_fix_q, xout => redist3_vCount_uid164_countZ_uid55_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid170_countZ_uid55_block_rsrvd_fix(CONSTANT,169)
    zs_uid170_countZ_uid55_block_rsrvd_fix_q <= "0000000000000000";

    -- vStage_uid166_countZ_uid55_block_rsrvd_fix(BITSELECT,165)@9
    vStage_uid166_countZ_uid55_block_rsrvd_fix_in <= finalSumAbs_uid54_block_rsrvd_fix_q(26 downto 0);
    vStage_uid166_countZ_uid55_block_rsrvd_fix_b <= vStage_uid166_countZ_uid55_block_rsrvd_fix_in(26 downto 0);

    -- mO_uid165_countZ_uid55_block_rsrvd_fix(CONSTANT,164)
    mO_uid165_countZ_uid55_block_rsrvd_fix_q <= "11111";

    -- cStage_uid167_countZ_uid55_block_rsrvd_fix(BITJOIN,166)@9
    cStage_uid167_countZ_uid55_block_rsrvd_fix_q <= vStage_uid166_countZ_uid55_block_rsrvd_fix_b & mO_uid165_countZ_uid55_block_rsrvd_fix_q;

    -- vStagei_uid169_countZ_uid55_block_rsrvd_fix(MUX,168)@9
    vStagei_uid169_countZ_uid55_block_rsrvd_fix_s <= vCount_uid164_countZ_uid55_block_rsrvd_fix_q;
    vStagei_uid169_countZ_uid55_block_rsrvd_fix_combproc: PROCESS (vStagei_uid169_countZ_uid55_block_rsrvd_fix_s, rVStage_uid163_countZ_uid55_block_rsrvd_fix_b, cStage_uid167_countZ_uid55_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid169_countZ_uid55_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid169_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid163_countZ_uid55_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid169_countZ_uid55_block_rsrvd_fix_q <= cStage_uid167_countZ_uid55_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid169_countZ_uid55_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select(BITSELECT,250)@9
    rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid169_countZ_uid55_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid169_countZ_uid55_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid172_countZ_uid55_block_rsrvd_fix(LOGICAL,171)@9
    vCount_uid172_countZ_uid55_block_rsrvd_fix_q <= "1" WHEN rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_b = zs_uid170_countZ_uid55_block_rsrvd_fix_q ELSE "0";

    -- redist1_vCount_uid172_countZ_uid55_block_rsrvd_fix_q_1(DELAY,256)
    redist1_vCount_uid172_countZ_uid55_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid172_countZ_uid55_block_rsrvd_fix_q, xout => redist1_vCount_uid172_countZ_uid55_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid175_countZ_uid55_block_rsrvd_fix(MUX,174)@9
    vStagei_uid175_countZ_uid55_block_rsrvd_fix_s <= vCount_uid172_countZ_uid55_block_rsrvd_fix_q;
    vStagei_uid175_countZ_uid55_block_rsrvd_fix_combproc: PROCESS (vStagei_uid175_countZ_uid55_block_rsrvd_fix_s, rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_b, rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid175_countZ_uid55_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid175_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid175_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid171_countZ_uid55_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid175_countZ_uid55_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid177_countZ_uid55_block_rsrvd_fix_merged_bit_select(BITSELECT,251)@9
    rVStage_uid177_countZ_uid55_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid175_countZ_uid55_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid177_countZ_uid55_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid175_countZ_uid55_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid178_countZ_uid55_block_rsrvd_fix(LOGICAL,177)@9
    vCount_uid178_countZ_uid55_block_rsrvd_fix_q <= "1" WHEN rVStage_uid177_countZ_uid55_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid14_block_rsrvd_fix_q ELSE "0";

    -- redist0_vCount_uid178_countZ_uid55_block_rsrvd_fix_q_1(DELAY,255)
    redist0_vCount_uid178_countZ_uid55_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid178_countZ_uid55_block_rsrvd_fix_q, xout => redist0_vCount_uid178_countZ_uid55_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid182_countZ_uid55_block_rsrvd_fix(CONSTANT,181)
    zs_uid182_countZ_uid55_block_rsrvd_fix_q <= "0000";

    -- vStagei_uid181_countZ_uid55_block_rsrvd_fix(MUX,180)@9 + 1
    vStagei_uid181_countZ_uid55_block_rsrvd_fix_s <= vCount_uid178_countZ_uid55_block_rsrvd_fix_q;
    vStagei_uid181_countZ_uid55_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid181_countZ_uid55_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid181_countZ_uid55_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid181_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid177_countZ_uid55_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid181_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid177_countZ_uid55_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid181_countZ_uid55_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select(BITSELECT,252)@10
    rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid181_countZ_uid55_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid181_countZ_uid55_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid184_countZ_uid55_block_rsrvd_fix(LOGICAL,183)@10
    vCount_uid184_countZ_uid55_block_rsrvd_fix_q <= "1" WHEN rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_b = zs_uid182_countZ_uid55_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid187_countZ_uid55_block_rsrvd_fix(MUX,186)@10
    vStagei_uid187_countZ_uid55_block_rsrvd_fix_s <= vCount_uid184_countZ_uid55_block_rsrvd_fix_q;
    vStagei_uid187_countZ_uid55_block_rsrvd_fix_combproc: PROCESS (vStagei_uid187_countZ_uid55_block_rsrvd_fix_s, rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_b, rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid187_countZ_uid55_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid187_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid187_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid183_countZ_uid55_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid187_countZ_uid55_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select(BITSELECT,253)@10
    rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid187_countZ_uid55_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid187_countZ_uid55_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid190_countZ_uid55_block_rsrvd_fix(LOGICAL,189)@10
    vCount_uid190_countZ_uid55_block_rsrvd_fix_q <= "1" WHEN rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_b = z2_uid40_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid193_countZ_uid55_block_rsrvd_fix(MUX,192)@10
    vStagei_uid193_countZ_uid55_block_rsrvd_fix_s <= vCount_uid190_countZ_uid55_block_rsrvd_fix_q;
    vStagei_uid193_countZ_uid55_block_rsrvd_fix_combproc: PROCESS (vStagei_uid193_countZ_uid55_block_rsrvd_fix_s, rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_b, rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid193_countZ_uid55_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid193_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid193_countZ_uid55_block_rsrvd_fix_q <= rVStage_uid189_countZ_uid55_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid193_countZ_uid55_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid195_countZ_uid55_block_rsrvd_fix(BITSELECT,194)@10
    rVStage_uid195_countZ_uid55_block_rsrvd_fix_b <= vStagei_uid193_countZ_uid55_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid196_countZ_uid55_block_rsrvd_fix(LOGICAL,195)@10
    vCount_uid196_countZ_uid55_block_rsrvd_fix_q <= "1" WHEN rVStage_uid195_countZ_uid55_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid197_countZ_uid55_block_rsrvd_fix(BITJOIN,196)@10
    r_uid197_countZ_uid55_block_rsrvd_fix_q <= redist3_vCount_uid164_countZ_uid55_block_rsrvd_fix_q_1_q & redist1_vCount_uid172_countZ_uid55_block_rsrvd_fix_q_1_q & redist0_vCount_uid178_countZ_uid55_block_rsrvd_fix_q_1_q & vCount_uid184_countZ_uid55_block_rsrvd_fix_q & vCount_uid190_countZ_uid55_block_rsrvd_fix_q & vCount_uid196_countZ_uid55_block_rsrvd_fix_q;

    -- cstMSBFinalSumPBias_uid57_block_rsrvd_fix(CONSTANT,56)
    cstMSBFinalSumPBias_uid57_block_rsrvd_fix_q <= "010001000";

    -- expRExt_uid58_block_rsrvd_fix(SUB,57)@10
    expRExt_uid58_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & cstMSBFinalSumPBias_uid57_block_rsrvd_fix_q);
    expRExt_uid58_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000" & r_uid197_countZ_uid55_block_rsrvd_fix_q);
    expRExt_uid58_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expRExt_uid58_block_rsrvd_fix_a) - UNSIGNED(expRExt_uid58_block_rsrvd_fix_b));
    expRExt_uid58_block_rsrvd_fix_q <= expRExt_uid58_block_rsrvd_fix_o(9 downto 0);

    -- leftShiftStage2Idx3Rng3_uid237_normVal_uid56_block_rsrvd_fix(BITSELECT,236)@10
    leftShiftStage2Idx3Rng3_uid237_normVal_uid56_block_rsrvd_fix_in <= leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q(55 downto 0);
    leftShiftStage2Idx3Rng3_uid237_normVal_uid56_block_rsrvd_fix_b <= leftShiftStage2Idx3Rng3_uid237_normVal_uid56_block_rsrvd_fix_in(55 downto 0);

    -- leftShiftStage2Idx3_uid238_normVal_uid56_block_rsrvd_fix(BITJOIN,237)@10
    leftShiftStage2Idx3_uid238_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage2Idx3Rng3_uid237_normVal_uid56_block_rsrvd_fix_b & paddingX_uid103_eLog102_uid29_block_rsrvd_fix_q;

    -- leftShiftStage2Idx2Rng2_uid234_normVal_uid56_block_rsrvd_fix(BITSELECT,233)@10
    leftShiftStage2Idx2Rng2_uid234_normVal_uid56_block_rsrvd_fix_in <= leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q(56 downto 0);
    leftShiftStage2Idx2Rng2_uid234_normVal_uid56_block_rsrvd_fix_b <= leftShiftStage2Idx2Rng2_uid234_normVal_uid56_block_rsrvd_fix_in(56 downto 0);

    -- leftShiftStage2Idx2_uid235_normVal_uid56_block_rsrvd_fix(BITJOIN,234)@10
    leftShiftStage2Idx2_uid235_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage2Idx2Rng2_uid234_normVal_uid56_block_rsrvd_fix_b & z2_uid40_block_rsrvd_fix_q;

    -- leftShiftStage2Idx1Rng1_uid231_normVal_uid56_block_rsrvd_fix(BITSELECT,230)@10
    leftShiftStage2Idx1Rng1_uid231_normVal_uid56_block_rsrvd_fix_in <= leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q(57 downto 0);
    leftShiftStage2Idx1Rng1_uid231_normVal_uid56_block_rsrvd_fix_b <= leftShiftStage2Idx1Rng1_uid231_normVal_uid56_block_rsrvd_fix_in(57 downto 0);

    -- leftShiftStage2Idx1_uid232_normVal_uid56_block_rsrvd_fix(BITJOIN,231)@10
    leftShiftStage2Idx1_uid232_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage2Idx1Rng1_uid231_normVal_uid56_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid226_normVal_uid56_block_rsrvd_fix(BITSELECT,225)@10
    leftShiftStage1Idx3Rng12_uid226_normVal_uid56_block_rsrvd_fix_in <= leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q(46 downto 0);
    leftShiftStage1Idx3Rng12_uid226_normVal_uid56_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng12_uid226_normVal_uid56_block_rsrvd_fix_in(46 downto 0);

    -- leftShiftStage1Idx3Pad12_uid225_normVal_uid56_block_rsrvd_fix(CONSTANT,224)
    leftShiftStage1Idx3Pad12_uid225_normVal_uid56_block_rsrvd_fix_q <= "000000000000";

    -- leftShiftStage1Idx3_uid227_normVal_uid56_block_rsrvd_fix(BITJOIN,226)@10
    leftShiftStage1Idx3_uid227_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng12_uid226_normVal_uid56_block_rsrvd_fix_b & leftShiftStage1Idx3Pad12_uid225_normVal_uid56_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng8_uid223_normVal_uid56_block_rsrvd_fix(BITSELECT,222)@10
    leftShiftStage1Idx2Rng8_uid223_normVal_uid56_block_rsrvd_fix_in <= leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q(50 downto 0);
    leftShiftStage1Idx2Rng8_uid223_normVal_uid56_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng8_uid223_normVal_uid56_block_rsrvd_fix_in(50 downto 0);

    -- leftShiftStage1Idx2_uid224_normVal_uid56_block_rsrvd_fix(BITJOIN,223)@10
    leftShiftStage1Idx2_uid224_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng8_uid223_normVal_uid56_block_rsrvd_fix_b & cstAllZWE_uid14_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng4_uid220_normVal_uid56_block_rsrvd_fix(BITSELECT,219)@10
    leftShiftStage1Idx1Rng4_uid220_normVal_uid56_block_rsrvd_fix_in <= leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q(54 downto 0);
    leftShiftStage1Idx1Rng4_uid220_normVal_uid56_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng4_uid220_normVal_uid56_block_rsrvd_fix_in(54 downto 0);

    -- leftShiftStage1Idx1_uid221_normVal_uid56_block_rsrvd_fix(BITJOIN,220)@10
    leftShiftStage1Idx1_uid221_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng4_uid220_normVal_uid56_block_rsrvd_fix_b & zs_uid182_countZ_uid55_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng48_uid215_normVal_uid56_block_rsrvd_fix(BITSELECT,214)@10
    leftShiftStage0Idx3Rng48_uid215_normVal_uid56_block_rsrvd_fix_in <= redist6_finalSumAbs_uid54_block_rsrvd_fix_q_1_q(10 downto 0);
    leftShiftStage0Idx3Rng48_uid215_normVal_uid56_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng48_uid215_normVal_uid56_block_rsrvd_fix_in(10 downto 0);

    -- leftShiftStage0Idx3Pad48_uid214_normVal_uid56_block_rsrvd_fix(CONSTANT,213)
    leftShiftStage0Idx3Pad48_uid214_normVal_uid56_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid216_normVal_uid56_block_rsrvd_fix(BITJOIN,215)@10
    leftShiftStage0Idx3_uid216_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng48_uid215_normVal_uid56_block_rsrvd_fix_b & leftShiftStage0Idx3Pad48_uid214_normVal_uid56_block_rsrvd_fix_q;

    -- redist2_vStage_uid166_countZ_uid55_block_rsrvd_fix_b_1(DELAY,257)
    redist2_vStage_uid166_countZ_uid55_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 27, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid166_countZ_uid55_block_rsrvd_fix_b, xout => redist2_vStage_uid166_countZ_uid55_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0Idx2_uid213_normVal_uid56_block_rsrvd_fix(BITJOIN,212)@10
    leftShiftStage0Idx2_uid213_normVal_uid56_block_rsrvd_fix_q <= redist2_vStage_uid166_countZ_uid55_block_rsrvd_fix_b_1_q & zs_uid162_countZ_uid55_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng16_uid209_normVal_uid56_block_rsrvd_fix(BITSELECT,208)@10
    leftShiftStage0Idx1Rng16_uid209_normVal_uid56_block_rsrvd_fix_in <= redist6_finalSumAbs_uid54_block_rsrvd_fix_q_1_q(42 downto 0);
    leftShiftStage0Idx1Rng16_uid209_normVal_uid56_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng16_uid209_normVal_uid56_block_rsrvd_fix_in(42 downto 0);

    -- leftShiftStage0Idx1_uid210_normVal_uid56_block_rsrvd_fix(BITJOIN,209)@10
    leftShiftStage0Idx1_uid210_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng16_uid209_normVal_uid56_block_rsrvd_fix_b & zs_uid170_countZ_uid55_block_rsrvd_fix_q;

    -- redist6_finalSumAbs_uid54_block_rsrvd_fix_q_1(DELAY,261)
    redist6_finalSumAbs_uid54_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 59, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => finalSumAbs_uid54_block_rsrvd_fix_q, xout => redist6_finalSumAbs_uid54_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix(MUX,217)@10
    leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_s, redist6_finalSumAbs_uid54_block_rsrvd_fix_q_1_q, leftShiftStage0Idx1_uid210_normVal_uid56_block_rsrvd_fix_q, leftShiftStage0Idx2_uid213_normVal_uid56_block_rsrvd_fix_q, leftShiftStage0Idx3_uid216_normVal_uid56_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q <= redist6_finalSumAbs_uid54_block_rsrvd_fix_q_1_q;
            WHEN "01" => leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid210_normVal_uid56_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid213_normVal_uid56_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid216_normVal_uid56_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix(MUX,228)@10
    leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_s, leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q, leftShiftStage1Idx1_uid221_normVal_uid56_block_rsrvd_fix_q, leftShiftStage1Idx2_uid224_normVal_uid56_block_rsrvd_fix_q, leftShiftStage1Idx3_uid227_normVal_uid56_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage0_uid218_normVal_uid56_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid221_normVal_uid56_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid224_normVal_uid56_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid227_normVal_uid56_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select(BITSELECT,254)@10
    leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_b <= r_uid197_countZ_uid55_block_rsrvd_fix_q(5 downto 4);
    leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_c <= r_uid197_countZ_uid55_block_rsrvd_fix_q(3 downto 2);
    leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_d <= r_uid197_countZ_uid55_block_rsrvd_fix_q(1 downto 0);

    -- leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix(MUX,239)@10
    leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid217_normVal_uid56_block_rsrvd_fix_merged_bit_select_d;
    leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_combproc: PROCESS (leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_s, leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q, leftShiftStage2Idx1_uid232_normVal_uid56_block_rsrvd_fix_q, leftShiftStage2Idx2_uid235_normVal_uid56_block_rsrvd_fix_q, leftShiftStage2Idx3_uid238_normVal_uid56_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage1_uid229_normVal_uid56_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid232_normVal_uid56_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage2Idx2_uid235_normVal_uid56_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_q <= leftShiftStage2Idx3_uid238_normVal_uid56_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracR_uid59_block_rsrvd_fix(BITSELECT,58)@10
    fracR_uid59_block_rsrvd_fix_in <= leftShiftStage2_uid240_normVal_uid56_block_rsrvd_fix_q(57 downto 0);
    fracR_uid59_block_rsrvd_fix_b <= fracR_uid59_block_rsrvd_fix_in(57 downto 34);

    -- expFracConc_uid60_block_rsrvd_fix(BITJOIN,59)@10
    expFracConc_uid60_block_rsrvd_fix_q <= expRExt_uid58_block_rsrvd_fix_q & fracR_uid59_block_rsrvd_fix_b;

    -- expFracPostRnd_uid62_block_rsrvd_fix(ADD,61)@10
    expFracPostRnd_uid62_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expFracConc_uid60_block_rsrvd_fix_q);
    expFracPostRnd_uid62_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000" & VCC_q);
    expFracPostRnd_uid62_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expFracPostRnd_uid62_block_rsrvd_fix_a) + UNSIGNED(expFracPostRnd_uid62_block_rsrvd_fix_b));
    expFracPostRnd_uid62_block_rsrvd_fix_q <= expFracPostRnd_uid62_block_rsrvd_fix_o(34 downto 0);

    -- fracR_uid63_block_rsrvd_fix_merged_bit_select(BITSELECT,248)@10
    fracR_uid63_block_rsrvd_fix_merged_bit_select_in <= expFracPostRnd_uid62_block_rsrvd_fix_q(31 downto 0);
    fracR_uid63_block_rsrvd_fix_merged_bit_select_b <= fracR_uid63_block_rsrvd_fix_merged_bit_select_in(23 downto 1);
    fracR_uid63_block_rsrvd_fix_merged_bit_select_c <= fracR_uid63_block_rsrvd_fix_merged_bit_select_in(31 downto 24);

    -- invSignX_uid68_block_rsrvd_fix(LOGICAL,67)@8
    invSignX_uid68_block_rsrvd_fix_q <= not (redist18_signX_uid7_block_rsrvd_fix_b_8_q);

    -- excI_x_uid21_block_rsrvd_fix(LOGICAL,20)@8
    excI_x_uid21_block_rsrvd_fix_q <= expXIsMax_uid18_block_rsrvd_fix_q and redist14_fracXIsZero_uid19_block_rsrvd_fix_q_2_q;

    -- excRInfC1_uid69_block_rsrvd_fix(LOGICAL,68)@8
    excRInfC1_uid69_block_rsrvd_fix_q <= excI_x_uid21_block_rsrvd_fix_q and invSignX_uid68_block_rsrvd_fix_q;

    -- excRInf_uid70_block_rsrvd_fix(LOGICAL,69)@8
    excRInf_uid70_block_rsrvd_fix_q <= excRInfC1_uid69_block_rsrvd_fix_q or excZ_x_uid17_block_rsrvd_fix_q;

    -- FPOne_uid65_block_rsrvd_fix(BITJOIN,64)@0
    FPOne_uid65_block_rsrvd_fix_q <= GND_q & cstBias_uid9_block_rsrvd_fix_q & cstAllZWF_uid8_block_rsrvd_fix_q;

    -- excRZero_uid67_block_rsrvd_fix(LOGICAL,66)@0 + 1
    excRZero_uid67_block_rsrvd_fix_qi <= "1" WHEN in_0 = FPOne_uid65_block_rsrvd_fix_q ELSE "0";
    excRZero_uid67_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRZero_uid67_block_rsrvd_fix_qi, xout => excRZero_uid67_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist5_excRZero_uid67_block_rsrvd_fix_q_8(DELAY,260)
    redist5_excRZero_uid67_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRZero_uid67_block_rsrvd_fix_q, xout => redist5_excRZero_uid67_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- concExc_uid81_block_rsrvd_fix(BITJOIN,80)@8
    concExc_uid81_block_rsrvd_fix_q <= excRNaN_uid73_block_rsrvd_fix_q & excRInf_uid70_block_rsrvd_fix_q & redist5_excRZero_uid67_block_rsrvd_fix_q_8_q;

    -- excREnc_uid82_block_rsrvd_fix(LOOKUP,81)@8 + 1
    excREnc_uid82_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            excREnc_uid82_block_rsrvd_fix_q <= "01";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (concExc_uid81_block_rsrvd_fix_q) IS
                WHEN "000" => excREnc_uid82_block_rsrvd_fix_q <= "01";
                WHEN "001" => excREnc_uid82_block_rsrvd_fix_q <= "00";
                WHEN "010" => excREnc_uid82_block_rsrvd_fix_q <= "10";
                WHEN "011" => excREnc_uid82_block_rsrvd_fix_q <= "00";
                WHEN "100" => excREnc_uid82_block_rsrvd_fix_q <= "11";
                WHEN "101" => excREnc_uid82_block_rsrvd_fix_q <= "00";
                WHEN "110" => excREnc_uid82_block_rsrvd_fix_q <= "00";
                WHEN "111" => excREnc_uid82_block_rsrvd_fix_q <= "00";
                WHEN OTHERS => -- unreachable
                               excREnc_uid82_block_rsrvd_fix_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- redist4_excREnc_uid82_block_rsrvd_fix_q_2(DELAY,259)
    redist4_excREnc_uid82_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excREnc_uid82_block_rsrvd_fix_q, xout => redist4_excREnc_uid82_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- expRPostExc_uid90_block_rsrvd_fix(MUX,89)@10
    expRPostExc_uid90_block_rsrvd_fix_s <= redist4_excREnc_uid82_block_rsrvd_fix_q_2_q;
    expRPostExc_uid90_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid90_block_rsrvd_fix_s, cstAllZWE_uid14_block_rsrvd_fix_q, fracR_uid63_block_rsrvd_fix_merged_bit_select_c, cstAllOWE_uid12_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid90_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid90_block_rsrvd_fix_q <= cstAllZWE_uid14_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid90_block_rsrvd_fix_q <= fracR_uid63_block_rsrvd_fix_merged_bit_select_c;
            WHEN "10" => expRPostExc_uid90_block_rsrvd_fix_q <= cstAllOWE_uid12_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid90_block_rsrvd_fix_q <= cstAllOWE_uid12_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid90_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid83_block_rsrvd_fix(CONSTANT,82)
    oneFracRPostExc2_uid83_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRPostExc_uid86_block_rsrvd_fix(MUX,85)@10
    fracRPostExc_uid86_block_rsrvd_fix_s <= redist4_excREnc_uid82_block_rsrvd_fix_q_2_q;
    fracRPostExc_uid86_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid86_block_rsrvd_fix_s, cstAllZWF_uid8_block_rsrvd_fix_q, fracR_uid63_block_rsrvd_fix_merged_bit_select_b, oneFracRPostExc2_uid83_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid86_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid86_block_rsrvd_fix_q <= cstAllZWF_uid8_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid86_block_rsrvd_fix_q <= fracR_uid63_block_rsrvd_fix_merged_bit_select_b;
            WHEN "10" => fracRPostExc_uid86_block_rsrvd_fix_q <= cstAllZWF_uid8_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid86_block_rsrvd_fix_q <= oneFracRPostExc2_uid83_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid86_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- RLog10_uid91_block_rsrvd_fix(BITJOIN,90)@10
    RLog10_uid91_block_rsrvd_fix_q <= signRFull_uid80_block_rsrvd_fix_q & expRPostExc_uid90_block_rsrvd_fix_q & fracRPostExc_uid86_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@10
    out_primWireOut <= RLog10_uid91_block_rsrvd_fix_q;

END normal;
