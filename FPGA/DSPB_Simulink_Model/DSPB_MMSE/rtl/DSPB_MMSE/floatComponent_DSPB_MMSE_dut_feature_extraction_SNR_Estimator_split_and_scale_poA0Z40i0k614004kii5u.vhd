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

-- VHDL created from floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA0Z0m6140i0k614004kii5u
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
entity floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA0Z0m6140i0k614004kii5u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA0Z0m6140i0k614004kii5u;

architecture normal of floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA0Z0m6140i0k614004kii5u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllZWF_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstBias_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasMO_uid9_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllOWE_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllZWE_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_x_uid15_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid16_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid17_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid18_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid19_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid23_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_y_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_y_uid30_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_y_uid31_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid32_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid33_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid33_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid34_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid35_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid36_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid37_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signX_uid40_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid43_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstOneFPExpFrac_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracX_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xEQOneAbs_uid48_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xEQOneAbs_uid48_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal e_uid49_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid49_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid49_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal e_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal caseLog_uid51_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal addrFull_uid52_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal yAddr_uid54_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal zPPolyEvalLog_uid55_block_rsrvd_fix_in : STD_LOGIC_VECTOR (14 downto 0);
    signal zPPolyEvalLog_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal peORNatLog_uid57_block_rsrvd_fix_in : STD_LOGIC_VECTOR (41 downto 0);
    signal peORNatLog_uid57_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal aPostPad_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oMzLog_uid60_block_rsrvd_fix_a : STD_LOGIC_VECTOR (24 downto 0);
    signal oMzLog_uid60_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal oMzLog_uid60_block_rsrvd_fix_o : STD_LOGIC_VECTOR (24 downto 0);
    signal oMzLog_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal z2_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sEzLog_uid62_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal multTermOneLog_uid64_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal multTermOneLog_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal lowRangeB_uid68_block_rsrvd_fix_in : STD_LOGIC_VECTOR (19 downto 0);
    signal lowRangeB_uid68_block_rsrvd_fix_b : STD_LOGIC_VECTOR (19 downto 0);
    signal highBBits_uid69_block_rsrvd_fix_in : STD_LOGIC_VECTOR (59 downto 0);
    signal highBBits_uid69_block_rsrvd_fix_b : STD_LOGIC_VECTOR (39 downto 0);
    signal finalSumLogsumAHighB_uid70_block_rsrvd_fix_a : STD_LOGIC_VECTOR (45 downto 0);
    signal finalSumLogsumAHighB_uid70_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal finalSumLogsumAHighB_uid70_block_rsrvd_fix_i : STD_LOGIC_VECTOR (45 downto 0);
    signal finalSumLogsumAHighB_uid70_block_rsrvd_fix_o : STD_LOGIC_VECTOR (45 downto 0);
    signal finalSumLogsumAHighB_uid70_block_rsrvd_fix_q : STD_LOGIC_VECTOR (45 downto 0);
    signal finalSumLog_uid71_block_rsrvd_fix_q : STD_LOGIC_VECTOR (65 downto 0);
    signal finalSumSignLog_uid72_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal finalSumOneCompLog_uid74_block_rsrvd_fix_b : STD_LOGIC_VECTOR (65 downto 0);
    signal finalSumOneCompLog_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (65 downto 0);
    signal finalSumAbsLog_uid75_block_rsrvd_fix_a : STD_LOGIC_VECTOR (66 downto 0);
    signal finalSumAbsLog_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (66 downto 0);
    signal finalSumAbsLog_uid75_block_rsrvd_fix_o : STD_LOGIC_VECTOR (66 downto 0);
    signal finalSumAbsLog_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal notCaseLog_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signSignLog_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRLog0_uid80_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRLog0_uid80_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRLog_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstMSBFinalSumPBias_uid82_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExtLog_uid83_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExtLog_uid83_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExtLog_uid83_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expRExtLog_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal fracRPreRndLog_uid84_block_rsrvd_fix_in : STD_LOGIC_VECTOR (65 downto 0);
    signal fracRPreRndLog_uid84_block_rsrvd_fix_b : STD_LOGIC_VECTOR (33 downto 0);
    signal expFracConc_uid85_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal expFracPostRndLog_uid87_block_rsrvd_fix_a : STD_LOGIC_VECTOR (44 downto 0);
    signal expFracPostRndLog_uid87_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal expFracPostRndLog_uid87_block_rsrvd_fix_o : STD_LOGIC_VECTOR (44 downto 0);
    signal expFracPostRndLog_uid87_block_rsrvd_fix_q : STD_LOGIC_VECTOR (44 downto 0);
    signal fracRLog_uid88_block_rsrvd_fix_in : STD_LOGIC_VECTOR (33 downto 0);
    signal fracRLog_uid88_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal expRLog_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (42 downto 0);
    signal expRLog_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal oFracY_uid90_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oFracLog_uid91_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodNormBit_uid93_block_rsrvd_fix_in : STD_LOGIC_VECTOR (57 downto 0);
    signal prodNormBit_uid93_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal normProdYLogXHigh_uid95_block_rsrvd_fix_in : STD_LOGIC_VECTOR (56 downto 0);
    signal normProdYLogXHigh_uid95_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal normProdYLogXLow_uid96_block_rsrvd_fix_in : STD_LOGIC_VECTOR (55 downto 0);
    signal normProdYLogXLow_uid96_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal normProdYLogX_uid97_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal normProdYLogX_uid97_block_rsrvd_fix_q : STD_LOGIC_VECTOR (32 downto 0);
    signal oFracProd_uid98_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal expProdPhase1_uid99_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal expProdPhase1_uid99_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal expProdPhase1_uid99_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal expProdPhase1_uid99_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal expProdPhase2_uid100_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal expProdPhase2_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expProdPhase2_uid100_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal expProdPhase2_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal expProdPre_uid101_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expProdPre_uid101_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expProdPre_uid101_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expProdPre_uid101_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal msbuExpProdPre_uid102_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invMsbuExpProdPre_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expProd_uid104_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal expProd_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal signProd_uid105_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstZeroWEP1_uid107_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal cstBiasPWE_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasPWE_uid109_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal zoFracQ_uid110_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal onesCmpFxpInQ_uid111_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal onesCmpFxpInQ_uid111_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal fxpInExtQ_uid112_block_rsrvd_fix_a : STD_LOGIC_VECTOR (35 downto 0);
    signal fxpInExtQ_uid112_block_rsrvd_fix_b : STD_LOGIC_VECTOR (35 downto 0);
    signal fxpInExtQ_uid112_block_rsrvd_fix_o : STD_LOGIC_VECTOR (35 downto 0);
    signal fxpInExtQ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal fxpInQPreConstMult_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (34 downto 0);
    signal fxpInQPreConstMult_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal oFracXZwE_uid116_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal shiftValuePreSatExp_uid118_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal shiftValuePreSatExp_uid118_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal shiftValuePreSatExp_uid118_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal shiftValuePreSatExp_uid118_block_rsrvd_fix_q : STD_LOGIC_VECTOR (12 downto 0);
    signal expOvfInitialExp_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftUdfExp_uid120_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal shiftUdfExp_uid120_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal shiftUdfExp_uid120_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal shiftUdfExp_uid120_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftValuePreSatRedExp_uid121_block_rsrvd_fix_in : STD_LOGIC_VECTOR (5 downto 0);
    signal shiftValuePreSatRedExp_uid121_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal shiftValExp_uid122_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftValExp_uid122_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal ePreRndExp_uid125_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal oFracQZwE_uid128_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal onesCmpFxpInQ2_uid129_block_rsrvd_fix_b : STD_LOGIC_VECTOR (43 downto 0);
    signal onesCmpFxpInQ2_uid129_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal fxpInExtQ2_uid130_block_rsrvd_fix_a : STD_LOGIC_VECTOR (44 downto 0);
    signal fxpInExtQ2_uid130_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal fxpInExtQ2_uid130_block_rsrvd_fix_o : STD_LOGIC_VECTOR (44 downto 0);
    signal fxpInExtQ2_uid130_block_rsrvd_fix_q : STD_LOGIC_VECTOR (44 downto 0);
    signal fxpInPreAlignQ2_uid131_block_rsrvd_fix_in : STD_LOGIC_VECTOR (43 downto 0);
    signal fxpInPreAlignQ2_uid131_block_rsrvd_fix_b : STD_LOGIC_VECTOR (43 downto 0);
    signal aPostPad_uid139_block_rsrvd_fix_q : STD_LOGIC_VECTOR (44 downto 0);
    signal yExtExp_uid140_block_rsrvd_fix_a : STD_LOGIC_VECTOR (46 downto 0);
    signal yExtExp_uid140_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal yExtExp_uid140_block_rsrvd_fix_o : STD_LOGIC_VECTOR (46 downto 0);
    signal yExtExp_uid140_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal yExtNeg_uid141_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal zY_uid142_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal yRed_uid143_block_rsrvd_fix_in : STD_LOGIC_VECTOR (34 downto 0);
    signal yRed_uid143_block_rsrvd_fix_b : STD_LOGIC_VECTOR (33 downto 0);
    signal yRedPostMux_uid144_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal yRedPostMux_uid144_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal peORExp_uid149_block_rsrvd_fix_in : STD_LOGIC_VECTOR (40 downto 0);
    signal peORExp_uid149_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal peORExpInc_uid150_block_rsrvd_fix_in : STD_LOGIC_VECTOR (41 downto 0);
    signal peORExpInc_uid150_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal expRPostBiasPreExc0_uid151_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expRPostBiasPreExc0_uid151_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expRPostBiasPreExc0_uid151_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expRPostBiasPreExc0_uid151_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal expRPostBiasPreExc_uid152_block_rsrvd_fix_a : STD_LOGIC_VECTOR (13 downto 0);
    signal expRPostBiasPreExc_uid152_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal expRPostBiasPreExc_uid152_block_rsrvd_fix_o : STD_LOGIC_VECTOR (13 downto 0);
    signal expRPostBiasPreExc_uid152_block_rsrvd_fix_q : STD_LOGIC_VECTOR (12 downto 0);
    signal fracR_uid153_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal fracR_uid153_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expR_uid154_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid154_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expUdf_uid155_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal expUdf_uid155_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal expUdf_uid155_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal expUdf_uid155_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid157_block_rsrvd_fix_a : STD_LOGIC_VECTOR (14 downto 0);
    signal expOvf_uid157_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal expOvf_uid157_block_rsrvd_fix_o : STD_LOGIC_VECTOR (14 downto 0);
    signal expOvf_uid157_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignX_uid161_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignY_uid162_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invXIsOne_uid163_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracXGTExpFracOne_uid164_block_rsrvd_fix_a : STD_LOGIC_VECTOR (32 downto 0);
    signal expFracXGTExpFracOne_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal expFracXGTExpFracOne_uid164_block_rsrvd_fix_o : STD_LOGIC_VECTOR (32 downto 0);
    signal expFracXGTExpFracOne_uid164_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal xGTOne_uid165_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xInZO_uid167_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal xInZO_uid167_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal xInZO_uid167_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal xInZO_uid167_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal xInZOZPos_uid168_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yRegOrInf_uid169_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase6_uid170_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase6_uid170_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase5_uid171_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase5_uid171_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase4_uid173_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase4_uid173_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase3_uid174_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase3_uid174_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase2_uid175_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase2_uid175_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase1_uid176_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase1_uid176_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase0_uid177_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroCase0_uid177_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid178_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSignProd_uid179_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal infCase5_uid180_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal infCase5_uid180_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpOvfInitialExp_uid181_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal infCase4_uid182_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal infCase3_uid184_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal infCase2_uid185_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal infCase1_uid186_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal infCase0_uid187_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid188_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid188_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneIsNaN_uid189_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xRegOrInf_uid190_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal nanCase4_uid191_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal nanCase3_uid192_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal nanCase2_uid193_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal nanCase1_uid194_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid195_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid195_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excROne_uid196_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excROne_uid196_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostOne_uid197_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostOne_uid197_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostOne_uid198_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRPostOne_uid198_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal concExc_uid199_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid200_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid201_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid204_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid204_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid208_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid208_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal RPowr_uid209_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xv0_uid211_eLn2_uid50_block_rsrvd_fix_in : STD_LOGIC_VECTOR (5 downto 0);
    signal xv0_uid211_eLn2_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv1_uid212_eLn2_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (2 downto 0);
    signal p1_uid213_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal p0_uid214_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (44 downto 0);
    signal lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_a : STD_LOGIC_VECTOR (49 downto 0);
    signal lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (49 downto 0);
    signal lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_o : STD_LOGIC_VECTOR (49 downto 0);
    signal lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal lev1_a0_uid218_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (49 downto 0);
    signal maxValInOutFormat_uid219_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (44 downto 0);
    signal minValueInFormat_uid220_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (44 downto 0);
    signal paddingX_uid221_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal updatedX_uid222_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal ovf_uid221_eLn2_uid50_block_rsrvd_fix_a : STD_LOGIC_VECTOR (51 downto 0);
    signal ovf_uid221_eLn2_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal ovf_uid221_eLn2_uid50_block_rsrvd_fix_o : STD_LOGIC_VECTOR (51 downto 0);
    signal ovf_uid221_eLn2_uid50_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal updatedY_uid225_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal udf_uid224_eLn2_uid50_block_rsrvd_fix_a : STD_LOGIC_VECTOR (51 downto 0);
    signal udf_uid224_eLn2_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (51 downto 0);
    signal udf_uid224_eLn2_uid50_block_rsrvd_fix_o : STD_LOGIC_VECTOR (51 downto 0);
    signal udf_uid224_eLn2_uid50_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfudfcond_uid227_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sR_uid228_eLn2_uid50_block_rsrvd_fix_in : STD_LOGIC_VECTOR (47 downto 0);
    signal sR_uid228_eLn2_uid50_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal sRA0_uid229_eLn2_uid50_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal sRA0_uid229_eLn2_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (44 downto 0);
    signal os_uid257_lnTables_q : STD_LOGIC_VECTOR (39 downto 0);
    signal os_uid261_lnTables_q : STD_LOGIC_VECTOR (29 downto 0);
    signal os_uid265_lnTables_q : STD_LOGIC_VECTOR (21 downto 0);
    signal yT1_uid274_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal lowRangeB_uid276_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid276_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid277_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid278_invPolyEval_a : STD_LOGIC_VECTOR (22 downto 0);
    signal s1sumAHighB_uid278_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal s1sumAHighB_uid278_invPolyEval_o : STD_LOGIC_VECTOR (22 downto 0);
    signal s1sumAHighB_uid278_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal s1_uid279_invPolyEval_q : STD_LOGIC_VECTOR (23 downto 0);
    signal lowRangeB_uid282_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid282_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid283_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal s2sumAHighB_uid284_invPolyEval_a : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid284_invPolyEval_b : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid284_invPolyEval_o : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid284_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal s2_uid285_invPolyEval_q : STD_LOGIC_VECTOR (31 downto 0);
    signal lowRangeB_uid288_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid288_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid289_invPolyEval_b : STD_LOGIC_VECTOR (30 downto 0);
    signal s3sumAHighB_uid290_invPolyEval_a : STD_LOGIC_VECTOR (40 downto 0);
    signal s3sumAHighB_uid290_invPolyEval_b : STD_LOGIC_VECTOR (40 downto 0);
    signal s3sumAHighB_uid290_invPolyEval_o : STD_LOGIC_VECTOR (40 downto 0);
    signal s3sumAHighB_uid290_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal s3_uid291_invPolyEval_q : STD_LOGIC_VECTOR (42 downto 0);
    signal zs_uid293_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rVStage_uid294_countZLog_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (63 downto 0);
    signal vCount_uid295_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid296_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (60 downto 0);
    signal vStage_uid297_countZLog_uid76_block_rsrvd_fix_in : STD_LOGIC_VECTOR (2 downto 0);
    signal vStage_uid297_countZLog_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (2 downto 0);
    signal cStage_uid298_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal vStagei_uid300_countZLog_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid300_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal zs_uid301_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid303_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid306_countZLog_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid306_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid307_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid309_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid312_countZLog_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid312_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid315_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid318_countZLog_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid318_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid319_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid321_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid324_countZLog_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid324_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid327_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid330_countZLog_uid76_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid330_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid332_countZLog_uid76_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid333_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid334_countZLog_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (6 downto 0);
    signal xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in : STD_LOGIC_VECTOR (5 downto 0);
    signal xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in : STD_LOGIC_VECTOR (11 downto 0);
    signal xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv2_uid338_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in : STD_LOGIC_VECTOR (17 downto 0);
    signal xv2_uid338_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv3_uid339_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal xv3_uid339_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv4_uid340_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in : STD_LOGIC_VECTOR (29 downto 0);
    signal xv4_uid340_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv5_uid341_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (4 downto 0);
    signal p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (42 downto 0);
    signal p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (19 downto 0);
    signal p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (13 downto 0);
    signal lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a : STD_LOGIC_VECTOR (44 downto 0);
    signal lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o : STD_LOGIC_VECTOR (44 downto 0);
    signal lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal lev1_a0_uid351_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (44 downto 0);
    signal lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a : STD_LOGIC_VECTOR (32 downto 0);
    signal lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o : STD_LOGIC_VECTOR (32 downto 0);
    signal lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (32 downto 0);
    signal lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a : STD_LOGIC_VECTOR (20 downto 0);
    signal lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (20 downto 0);
    signal lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o : STD_LOGIC_VECTOR (20 downto 0);
    signal lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (20 downto 0);
    signal lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a : STD_LOGIC_VECTOR (46 downto 0);
    signal lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o : STD_LOGIC_VECTOR (46 downto 0);
    signal lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (45 downto 0);
    signal lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a : STD_LOGIC_VECTOR (47 downto 0);
    signal lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (47 downto 0);
    signal lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o : STD_LOGIC_VECTOR (47 downto 0);
    signal lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal maxValInOutFormat_uid356_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (38 downto 0);
    signal minValueInFormat_uid357_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (38 downto 0);
    signal updatedX_uid359_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (42 downto 0);
    signal ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a : STD_LOGIC_VECTOR (48 downto 0);
    signal ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o : STD_LOGIC_VECTOR (48 downto 0);
    signal ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal updatedY_uid362_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (42 downto 0);
    signal udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a : STD_LOGIC_VECTOR (48 downto 0);
    signal udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o : STD_LOGIC_VECTOR (48 downto 0);
    signal udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfudfcond_uid364_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sR_uid365_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in : STD_LOGIC_VECTOR (42 downto 0);
    signal sR_uid365_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (38 downto 0);
    signal sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (38 downto 0);
    signal xv0_uid402_eRndXlog2_uid126_block_rsrvd_fix_in : STD_LOGIC_VECTOR (5 downto 0);
    signal xv0_uid402_eRndXlog2_uid126_block_rsrvd_fix_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv1_uid403_eRndXlog2_uid126_block_rsrvd_fix_b : STD_LOGIC_VECTOR (4 downto 0);
    signal p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_a : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_b : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_o : STD_LOGIC_VECTOR (50 downto 0);
    signal lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (49 downto 0);
    signal lev1_a0_uid409_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (50 downto 0);
    signal maxValInOutFormat_uid410_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (45 downto 0);
    signal minValueInFormat_uid411_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (45 downto 0);
    signal updatedX_uid413_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_a : STD_LOGIC_VECTOR (52 downto 0);
    signal ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_o : STD_LOGIC_VECTOR (52 downto 0);
    signal ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal updatedY_uid416_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_a : STD_LOGIC_VECTOR (52 downto 0);
    signal udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_o : STD_LOGIC_VECTOR (52 downto 0);
    signal udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfudfcond_uid418_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sR_uid419_eRndXlog2_uid126_block_rsrvd_fix_in : STD_LOGIC_VECTOR (48 downto 0);
    signal sR_uid419_eRndXlog2_uid126_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (45 downto 0);
    signal os_uid450_sqrtTables_q : STD_LOGIC_VECTOR (40 downto 0);
    signal yT1_uid465_invPolyEval_b : STD_LOGIC_VECTOR (14 downto 0);
    signal lowRangeB_uid467_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid467_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid468_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal s1sumAHighB_uid469_invPolyEval_a : STD_LOGIC_VECTOR (24 downto 0);
    signal s1sumAHighB_uid469_invPolyEval_b : STD_LOGIC_VECTOR (24 downto 0);
    signal s1sumAHighB_uid469_invPolyEval_o : STD_LOGIC_VECTOR (24 downto 0);
    signal s1sumAHighB_uid469_invPolyEval_q : STD_LOGIC_VECTOR (24 downto 0);
    signal s1_uid470_invPolyEval_q : STD_LOGIC_VECTOR (25 downto 0);
    signal yT2_uid471_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal lowRangeB_uid473_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid473_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid474_invPolyEval_b : STD_LOGIC_VECTOR (24 downto 0);
    signal s2sumAHighB_uid475_invPolyEval_a : STD_LOGIC_VECTOR (33 downto 0);
    signal s2sumAHighB_uid475_invPolyEval_b : STD_LOGIC_VECTOR (33 downto 0);
    signal s2sumAHighB_uid475_invPolyEval_o : STD_LOGIC_VECTOR (33 downto 0);
    signal s2sumAHighB_uid475_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal s2_uid476_invPolyEval_q : STD_LOGIC_VECTOR (34 downto 0);
    signal lowRangeB_uid479_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid479_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid480_invPolyEval_b : STD_LOGIC_VECTOR (33 downto 0);
    signal s3sumAHighB_uid481_invPolyEval_a : STD_LOGIC_VECTOR (41 downto 0);
    signal s3sumAHighB_uid481_invPolyEval_b : STD_LOGIC_VECTOR (41 downto 0);
    signal s3sumAHighB_uid481_invPolyEval_o : STD_LOGIC_VECTOR (41 downto 0);
    signal s3sumAHighB_uid481_invPolyEval_q : STD_LOGIC_VECTOR (41 downto 0);
    signal s3_uid482_invPolyEval_q : STD_LOGIC_VECTOR (43 downto 0);
    signal osig_uid485_pT1_uid275_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid488_pT2_uid281_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal nx_mergedSignalTM_uid504_pT3_uid287_invPolyEval_q : STD_LOGIC_VECTOR (15 downto 0);
    signal topRangeX_mergedSignalTM_uid508_pT3_uid287_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftY_mergedSignalTM_uid517_pT3_uid287_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid524_pT3_uid287_invPolyEval_in : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid524_pT3_uid287_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal highBBits_uid525_pT3_uid287_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0_uid527_pT3_uid287_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid528_pT3_uid287_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid528_pT3_uid287_invPolyEval_b : STD_LOGIC_VECTOR (32 downto 0);
    signal osig_uid531_pT1_uid466_invPolyEval_b : STD_LOGIC_VECTOR (14 downto 0);
    signal osig_uid534_pT2_uid472_invPolyEval_b : STD_LOGIC_VECTOR (25 downto 0);
    signal nx_mergedSignalTM_uid548_pT3_uid478_invPolyEval_q : STD_LOGIC_VECTOR (26 downto 0);
    signal topRangeX_uid550_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid551_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftY_bottomRange_uid554_pT3_uid478_invPolyEval_in : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_bottomRange_uid554_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_mergedSignalTM_uid555_pT3_uid478_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal rightBottomX_bottomRange_uid558_pT3_uid478_invPolyEval_in : STD_LOGIC_VECTOR (8 downto 0);
    signal rightBottomX_bottomRange_uid558_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightBottomX_mergedSignalTM_uid559_pT3_uid478_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftX_uid562_pT3_uid478_invPolyEval_in : STD_LOGIC_VECTOR (8 downto 0);
    signal aboveLeftX_uid562_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (2 downto 0);
    signal aboveLeftY_uid563_pT3_uid478_invPolyEval_in : STD_LOGIC_VECTOR (16 downto 0);
    signal aboveLeftY_uid563_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (2 downto 0);
    signal sm0_uid567_pT3_uid478_invPolyEval_a0 : STD_LOGIC_VECTOR (2 downto 0);
    signal sm0_uid567_pT3_uid478_invPolyEval_b0 : STD_LOGIC_VECTOR (2 downto 0);
    signal sm0_uid567_pT3_uid478_invPolyEval_s1 : STD_LOGIC_VECTOR (5 downto 0);
    signal sm0_uid567_pT3_uid478_invPolyEval_pr : UNSIGNED (5 downto 0);
    attribute multstyle : string;
    attribute multstyle of sm0_uid567_pT3_uid478_invPolyEval_pr : signal is "logic";
    signal sm0_uid567_pT3_uid478_invPolyEval_q : STD_LOGIC_VECTOR (5 downto 0);
    signal sumAb_uid568_pT3_uid478_invPolyEval_q : STD_LOGIC_VECTOR (41 downto 0);
    signal lowRangeB_uid569_pT3_uid478_invPolyEval_in : STD_LOGIC_VECTOR (11 downto 0);
    signal lowRangeB_uid569_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal highBBits_uid570_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (24 downto 0);
    signal lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_a : STD_LOGIC_VECTOR (42 downto 0);
    signal lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (42 downto 0);
    signal lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_o : STD_LOGIC_VECTOR (42 downto 0);
    signal lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_q : STD_LOGIC_VECTOR (42 downto 0);
    signal lev1_a0_uid572_pT3_uid478_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid573_pT3_uid478_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid573_pT3_uid478_invPolyEval_b : STD_LOGIC_VECTOR (35 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs5_b : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_bs10_b : STD_LOGIC_VECTOR (16 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_join_11_q : STD_LOGIC_VECTOR (59 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_align_12_q : STD_LOGIC_VECTOR (53 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_align_12_qint : STD_LOGIC_VECTOR (53 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_a : STD_LOGIC_VECTOR (60 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_b : STD_LOGIC_VECTOR (60 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_o : STD_LOGIC_VECTOR (60 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_q : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage0Idx1Rng32_uid594_normValLog_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (34 downto 0);
    signal leftShiftStage0Idx1Rng32_uid594_normValLog_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal leftShiftStage0Idx1_uid595_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage0Idx2_uid598_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage0Idx3_uid599_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage1Idx1Rng8_uid603_normValLog_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx1Rng8_uid603_normValLog_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage1Idx1_uid604_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage1Idx2Rng16_uid606_normValLog_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx2Rng16_uid606_normValLog_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (50 downto 0);
    signal leftShiftStage1Idx2_uid607_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage1Idx3Pad24_uid608_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx3Rng24_uid609_normValLog_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (42 downto 0);
    signal leftShiftStage1Idx3Rng24_uid609_normValLog_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (42 downto 0);
    signal leftShiftStage1Idx3_uid610_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage2Idx1Rng2_uid614_normValLog_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2Idx1Rng2_uid614_normValLog_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2Idx1_uid615_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage2Idx2Rng4_uid617_normValLog_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage2Idx2Rng4_uid617_normValLog_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage2Idx2_uid618_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage2Idx3Pad6_uid619_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage2Idx3Rng6_uid620_normValLog_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage2Idx3Rng6_uid620_normValLog_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage2Idx3_uid621_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage3Idx1Rng1_uid625_normValLog_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage3Idx1Rng1_uid625_normValLog_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage3Idx1_uid626_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bs7_b : STD_LOGIC_VECTOR (5 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bs11_b : STD_LOGIC_VECTOR (5 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_join_13_q : STD_LOGIC_VECTOR (57 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_align_14_q : STD_LOGIC_VECTOR (53 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_align_14_qint : STD_LOGIC_VECTOR (53 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_a : STD_LOGIC_VECTOR (60 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_b : STD_LOGIC_VECTOR (60 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_o : STD_LOGIC_VECTOR (60 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_q : STD_LOGIC_VECTOR (59 downto 0);
    signal xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid649_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid649_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid650_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid651_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal seMsb_to32_uid652_in : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to32_uid652_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2Rng32_uid653_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal rightShiftStage0Idx2_uid654_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal stageIndexName_to47_uid655_in : STD_LOGIC_VECTOR (46 downto 0);
    signal stageIndexName_to47_uid655_b : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal seMsb_to4_uid659_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid659_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage1Idx1Rng4_uid660_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (42 downto 0);
    signal rightShiftStage1Idx1_uid661_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal seMsb_to8_uid662_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid662_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx2Rng8_uid663_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (38 downto 0);
    signal rightShiftStage1Idx2_uid664_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal seMsb_to12_uid665_in : STD_LOGIC_VECTOR (11 downto 0);
    signal seMsb_to12_uid665_b : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage1Idx3Rng12_uid666_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal rightShiftStage1Idx3_uid667_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage2Idx1Rng1_uid670_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage2Idx1_uid671_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal seMsb_to2_uid672_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid672_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2Idx2Rng2_uid673_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal rightShiftStage2Idx2_uid674_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal seMsb_to3_uid675_in : STD_LOGIC_VECTOR (2 downto 0);
    signal seMsb_to3_uid675_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage2Idx3Rng3_uid676_fxpInPostAlignExp_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (43 downto 0);
    signal rightShiftStage2Idx3_uid677_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid683_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid683_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid684_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage0Idx1_uid685_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal seMsb_to32_uid686_in : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to32_uid686_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2Rng32_uid687_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage0Idx2_uid688_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal stageIndexName_to44_uid689_in : STD_LOGIC_VECTOR (43 downto 0);
    signal stageIndexName_to44_uid689_b : STD_LOGIC_VECTOR (43 downto 0);
    signal rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal seMsb_to4_uid693_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid693_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage1Idx1Rng4_uid694_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (39 downto 0);
    signal rightShiftStage1Idx1_uid695_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal seMsb_to8_uid696_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid696_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx2Rng8_uid697_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (35 downto 0);
    signal rightShiftStage1Idx2_uid698_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal seMsb_to12_uid699_in : STD_LOGIC_VECTOR (11 downto 0);
    signal seMsb_to12_uid699_b : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage1Idx3Rng12_uid700_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx3_uid701_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal rightShiftStage2Idx1Rng1_uid704_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (42 downto 0);
    signal rightShiftStage2Idx1_uid705_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal seMsb_to2_uid706_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid706_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2Idx2Rng2_uid707_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (41 downto 0);
    signal rightShiftStage2Idx2_uid708_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal seMsb_to3_uid709_in : STD_LOGIC_VECTOR (2 downto 0);
    signal seMsb_to3_uid709_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage2Idx3Rng3_uid710_fxpInPostAlign_X_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage2Idx3_uid711_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (43 downto 0);
    signal memoryC0_uid255_lnTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid255_lnTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid255_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid255_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid255_lnTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid255_lnTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid256_lnTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid256_lnTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid256_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid256_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid256_lnTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid256_lnTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid259_lnTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid259_lnTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid259_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid259_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid259_lnTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid259_lnTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid260_lnTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid260_lnTables_lutmem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC1_uid260_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid260_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid260_lnTables_lutmem_ir : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC1_uid260_lnTables_lutmem_r : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC2_uid263_lnTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid263_lnTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC2_uid263_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid263_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid263_lnTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC2_uid263_lnTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC2_uid264_lnTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid264_lnTables_lutmem_ia : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC2_uid264_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid264_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid264_lnTables_lutmem_ir : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC2_uid264_lnTables_lutmem_r : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC3_uid267_lnTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid267_lnTables_lutmem_ia : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid267_lnTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC3_uid267_lnTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC3_uid267_lnTables_lutmem_ir : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid267_lnTables_lutmem_r : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC0_uid448_sqrtTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid448_sqrtTables_lutmem_ia : STD_LOGIC_VECTOR (39 downto 0);
    signal memoryC0_uid448_sqrtTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid448_sqrtTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid448_sqrtTables_lutmem_ir : STD_LOGIC_VECTOR (39 downto 0);
    signal memoryC0_uid448_sqrtTables_lutmem_r : STD_LOGIC_VECTOR (39 downto 0);
    signal memoryC1_uid452_sqrtTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid452_sqrtTables_lutmem_ia : STD_LOGIC_VECTOR (32 downto 0);
    signal memoryC1_uid452_sqrtTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid452_sqrtTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid452_sqrtTables_lutmem_ir : STD_LOGIC_VECTOR (32 downto 0);
    signal memoryC1_uid452_sqrtTables_lutmem_r : STD_LOGIC_VECTOR (32 downto 0);
    signal memoryC2_uid455_sqrtTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid455_sqrtTables_lutmem_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC2_uid455_sqrtTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid455_sqrtTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid455_sqrtTables_lutmem_ir : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC2_uid455_sqrtTables_lutmem_r : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC3_uid458_sqrtTables_lutmem_reset0 : std_logic;
    signal memoryC3_uid458_sqrtTables_lutmem_ia : STD_LOGIC_VECTOR (14 downto 0);
    signal memoryC3_uid458_sqrtTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid458_sqrtTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid458_sqrtTables_lutmem_ir : STD_LOGIC_VECTOR (14 downto 0);
    signal memoryC3_uid458_sqrtTables_lutmem_r : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_reset : std_logic;
    type prodXY_uid484_pT1_uid275_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_a0 : prodXY_uid484_pT1_uid275_invPolyEval_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid484_pT1_uid275_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid484_pT1_uid275_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_c0 : prodXY_uid484_pT1_uid275_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid484_pT1_uid275_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid484_pT1_uid275_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_l : prodXY_uid484_pT1_uid275_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid484_pT1_uid275_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(28 downto 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_p : prodXY_uid484_pT1_uid275_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_u : prodXY_uid484_pT1_uid275_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_w : prodXY_uid484_pT1_uid275_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_x : prodXY_uid484_pT1_uid275_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_y : prodXY_uid484_pT1_uid275_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_s : prodXY_uid484_pT1_uid275_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid484_pT1_uid275_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_reset : std_logic;
    type prodXY_uid487_pT2_uid281_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_a0 : prodXY_uid487_pT2_uid281_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid487_pT2_uid281_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid487_pT2_uid281_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(23 downto 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_c0 : prodXY_uid487_pT2_uid281_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid487_pT2_uid281_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid487_pT2_uid281_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_l : prodXY_uid487_pT2_uid281_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid487_pT2_uid281_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(39 downto 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_p : prodXY_uid487_pT2_uid281_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_u : prodXY_uid487_pT2_uid281_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_w : prodXY_uid487_pT2_uid281_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_x : prodXY_uid487_pT2_uid281_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_y : prodXY_uid487_pT2_uid281_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_s : prodXY_uid487_pT2_uid281_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_qq : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_q : STD_LOGIC_VECTOR (38 downto 0);
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid487_pT2_uid281_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_reset : std_logic;
    type sm0_uid522_pT3_uid287_invPolyEval_cma_a0type is array(NATURAL range <>) of SIGNED(17 downto 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_a0 : sm0_uid522_pT3_uid287_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid522_pT3_uid287_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_c0 : sm0_uid522_pT3_uid287_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid522_pT3_uid287_invPolyEval_cma_c0 : signal is true;
    type sm0_uid522_pT3_uid287_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(35 downto 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_p : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_u : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_w : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_x : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_y : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_s : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid522_pT3_uid287_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_reset : std_logic;
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_a0 : sm0_uid522_pT3_uid287_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid523_pT3_uid287_invPolyEval_cma_a0 : signal is true;
    type sm0_uid523_pT3_uid287_invPolyEval_cma_c0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_c0 : sm0_uid523_pT3_uid287_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of sm0_uid523_pT3_uid287_invPolyEval_cma_c0 : signal is true;
    type sm0_uid523_pT3_uid287_invPolyEval_cma_rtype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_r : sm0_uid523_pT3_uid287_invPolyEval_cma_rtype(0 to 0);
    type sm0_uid523_pT3_uid287_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(36 downto 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_p : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_u : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_w : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_x : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_y : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_s : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid523_pT3_uid287_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_reset : std_logic;
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_a0 : prodXY_uid487_pT2_uid281_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid530_pT1_uid466_invPolyEval_cma_a0 : signal is true;
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_c0 : prodXY_uid484_pT1_uid275_invPolyEval_cma_ltype(0 to 0);
    attribute preserve of prodXY_uid530_pT1_uid466_invPolyEval_cma_c0 : signal is true;
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_l : prodXY_uid487_pT2_uid281_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid530_pT1_uid466_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(30 downto 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_p : prodXY_uid530_pT1_uid466_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_u : prodXY_uid530_pT1_uid466_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_w : prodXY_uid530_pT1_uid466_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_x : prodXY_uid530_pT1_uid466_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_y : prodXY_uid530_pT1_uid466_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_s : prodXY_uid530_pT1_uid466_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_qq : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_q : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid530_pT1_uid466_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_reset : std_logic;
    type prodXY_uid533_pT2_uid472_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(23 downto 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_a0 : prodXY_uid533_pT2_uid472_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid533_pT2_uid472_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid533_pT2_uid472_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(25 downto 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_c0 : prodXY_uid533_pT2_uid472_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid533_pT2_uid472_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid533_pT2_uid472_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(24 downto 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_l : prodXY_uid533_pT2_uid472_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid533_pT2_uid472_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(50 downto 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_p : prodXY_uid533_pT2_uid472_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_u : prodXY_uid533_pT2_uid472_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_w : prodXY_uid533_pT2_uid472_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_x : prodXY_uid533_pT2_uid472_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_y : prodXY_uid533_pT2_uid472_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_s : prodXY_uid533_pT2_uid472_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_qq : STD_LOGIC_VECTOR (49 downto 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_q : STD_LOGIC_VECTOR (49 downto 0);
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid533_pT2_uid472_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_reset : std_logic;
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_a0 : sm0_uid522_pT3_uid287_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid564_pT3_uid478_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_c0 : sm0_uid522_pT3_uid287_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid564_pT3_uid478_invPolyEval_cma_c0 : signal is true;
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_p : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_u : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_w : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_x : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_y : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_s : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid564_pT3_uid478_invPolyEval_cma_ena1 : std_logic;
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_reset : std_logic;
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_a0 : sm0_uid523_pT3_uid287_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of postPEMulLog_uid65_block_rsrvd_fix_im0_cma_a0 : signal is true;
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_c0 : sm0_uid523_pT3_uid287_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of postPEMulLog_uid65_block_rsrvd_fix_im0_cma_c0 : signal is true;
    type postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_p : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_u : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_w : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_x : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_y : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_s : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ena0 : std_logic;
    signal postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ena1 : std_logic;
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_reset : std_logic;
    type postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0type is array(NATURAL range <>) of SIGNED(16 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0 : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0type(0 to 0);
    attribute preserve of postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0 : signal is true;
    type postPEMulLog_uid65_block_rsrvd_fix_im8_cma_c0type is array(NATURAL range <>) of SIGNED(10 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_c0 : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_c0type(0 to 0);
    attribute preserve of postPEMulLog_uid65_block_rsrvd_fix_im8_cma_c0 : signal is true;
    type postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ptype is array(NATURAL range <>) of SIGNED(27 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_p : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_u : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_w : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_x : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_y : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_s : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ena0 : std_logic;
    signal postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ena1 : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_reset : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_a0 : sm0_uid523_pT3_uid287_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodYLogX_uid92_block_rsrvd_fix_im0_cma_a0 : signal is true;
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_c0 : sm0_uid523_pT3_uid287_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodYLogX_uid92_block_rsrvd_fix_im0_cma_c0 : signal is true;
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_p : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_u : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_w : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_x : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_y : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_s : postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_ena0 : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_im0_cma_ena1 : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_reset : std_logic;
    type prodYLogX_uid92_block_rsrvd_fix_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(15 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_a0 : prodYLogX_uid92_block_rsrvd_fix_im10_cma_a0type(0 to 0);
    attribute preserve of prodYLogX_uid92_block_rsrvd_fix_im10_cma_a0 : signal is true;
    type prodYLogX_uid92_block_rsrvd_fix_im10_cma_c0type is array(NATURAL range <>) of UNSIGNED(9 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_c0 : prodYLogX_uid92_block_rsrvd_fix_im10_cma_c0type(0 to 0);
    attribute preserve of prodYLogX_uid92_block_rsrvd_fix_im10_cma_c0 : signal is true;
    type prodYLogX_uid92_block_rsrvd_fix_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(25 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_p : prodYLogX_uid92_block_rsrvd_fix_im10_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_u : prodYLogX_uid92_block_rsrvd_fix_im10_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_w : prodYLogX_uid92_block_rsrvd_fix_im10_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_x : prodYLogX_uid92_block_rsrvd_fix_im10_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_y : prodYLogX_uid92_block_rsrvd_fix_im10_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_s : prodYLogX_uid92_block_rsrvd_fix_im10_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_q : STD_LOGIC_VECTOR (21 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_ena0 : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_im10_cma_ena1 : std_logic;
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_reset : std_logic;
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_a0 : sm0_uid523_pT3_uid287_invPolyEval_cma_c0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_a0 : signal is true;
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_c0 : sm0_uid522_pT3_uid287_invPolyEval_cma_a0type(0 to 1);
    attribute preserve of multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_c0 : signal is true;
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_l : sm0_uid523_pT3_uid287_invPolyEval_cma_rtype(0 to 1);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_p : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 1);
    type multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_utype is array(NATURAL range <>) of SIGNED(37 downto 0);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_u : multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_utype(0 to 1);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_w : multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_x : multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_y : multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_s : multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_utype(0 to 0);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_ena0 : std_logic;
    signal multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_ena1 : std_logic;
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_reset : std_logic;
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_a0 : sm0_uid523_pT3_uid287_invPolyEval_cma_c0type(0 to 1);
    attribute preserve of postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_a0 : signal is true;
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_c0 : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0type(0 to 1);
    attribute preserve of postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_c0 : signal is true;
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_l : sm0_uid523_pT3_uid287_invPolyEval_cma_rtype(0 to 1);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_p : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 1);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_u : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 1);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_w : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_x : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_y : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_s : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_ena0 : std_logic;
    signal postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_ena1 : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_reset : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_a0 : prodYLogX_uid92_block_rsrvd_fix_im10_cma_a0type(0 to 1);
    attribute preserve of prodYLogX_uid92_block_rsrvd_fix_ma3_cma_a0 : signal is true;
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_c0 : sm0_uid523_pT3_uid287_invPolyEval_cma_rtype(0 to 1);
    attribute preserve of prodYLogX_uid92_block_rsrvd_fix_ma3_cma_c0 : signal is true;
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_l : postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0type(0 to 1);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_p : sm0_uid522_pT3_uid287_invPolyEval_cma_ptype(0 to 1);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_u : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 1);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_w : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_x : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_y : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_s : sm0_uid523_pT3_uid287_invPolyEval_cma_ptype(0 to 0);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_ena0 : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_ma3_cma_ena1 : std_logic;
    signal prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal yAddr_uid146_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid146_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (25 downto 0);
    signal lowRangeB_uid215_eLn2_uid50_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid215_eLn2_uid50_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (43 downto 0);
    signal topRangeY_uid510_pT3_uid287_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid510_pT3_uid287_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid308_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid308_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (36 downto 0);
    signal lowRangeB_uid406_eRndXlog2_uid126_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid406_eRndXlog2_uid126_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (42 downto 0);
    signal redist0_lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist3_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_6_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist4_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist5_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist6_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_6_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist7_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist11_xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist12_r_uid334_countZLog_uid76_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist13_vCount_uid309_countZLog_uid76_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_vCount_uid303_countZLog_uid76_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_vStage_uid297_countZLog_uid76_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist16_vCount_uid295_countZLog_uid76_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_excROne_uid196_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_excRNaN_uid195_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_infCase5_uid180_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_zeroCase6_uid170_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_xInZO_uid167_block_rsrvd_fix_c_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_expFracXGTExpFracOne_uid164_block_rsrvd_fix_c_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_invSignX_uid161_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_ePreRndExp_uid125_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist26_expOvfInitialExp_uid119_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_expOvfInitialExp_uid119_block_rsrvd_fix_b_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_signProd_uid105_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_expProdPhase1_uid99_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (9 downto 0);
    signal redist30_oFracProd_uid98_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist31_prodNormBit_uid93_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_fracRPreRndLog_uid84_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist33_signRLog0_uid80_block_rsrvd_fix_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_finalSumAbsLog_uid75_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (66 downto 0);
    signal redist35_lowRangeB_uid68_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist36_zPPolyEvalLog_uid55_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist37_zPPolyEvalLog_uid55_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist38_yAddr_uid54_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist39_yAddr_uid54_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist40_yAddr_uid54_block_rsrvd_fix_b_6_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist41_caseLog_uid51_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_caseLog_uid51_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_caseLog_uid51_block_rsrvd_fix_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_xEQOneAbs_uid48_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_signY_uid43_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_signY_uid43_block_rsrvd_fix_b_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_signX_uid40_block_rsrvd_fix_b_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist48_excR_y_uid39_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_excI_y_uid35_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist50_fracXIsZero_uid33_block_rsrvd_fix_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist51_expXIsMax_uid32_block_rsrvd_fix_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist52_excZ_y_uid31_block_rsrvd_fix_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist53_excR_x_uid25_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist54_excR_x_uid25_block_rsrvd_fix_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist55_excI_x_uid21_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist56_fracXIsZero_uid19_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist57_expXIsMax_uid18_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist58_expXIsMax_uid18_block_rsrvd_fix_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist59_excZ_x_uid17_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist60_excZ_x_uid17_block_rsrvd_fix_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist61_excZ_x_uid17_block_rsrvd_fix_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist62_frac_x_uid16_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist65_exp_x_uid15_block_rsrvd_fix_b_10_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_reset0 : std_logic;
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_ia : STD_LOGIC_VECTOR (10 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_iq : STD_LOGIC_VECTOR (10 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i : signal is true;
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_eq : std_logic;
    attribute preserve of redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_eq : signal is true;
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_sticky_ena_q : signal is true;
    signal redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_reset0 : std_logic;
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i : signal is true;
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_eq : std_logic;
    attribute preserve of redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_eq : signal is true;
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist63_frac_x_uid16_block_rsrvd_fix_b_8_sticky_ena_q : signal is true;
    signal redist63_frac_x_uid16_block_rsrvd_fix_b_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_reset0 : std_logic;
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i : signal is true;
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_eq : std_logic;
    attribute preserve of redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_eq : signal is true;
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist64_exp_x_uid15_block_rsrvd_fix_b_8_sticky_ena_q : signal is true;
    signal redist64_exp_x_uid15_block_rsrvd_fix_b_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- cstAllOWE_uid12_block_rsrvd_fix(CONSTANT,11)
    cstAllOWE_uid12_block_rsrvd_fix_q <= "11111111";

    -- cstBias_uid8_block_rsrvd_fix(CONSTANT,7)
    cstBias_uid8_block_rsrvd_fix_q <= "01111111";

    -- zY_uid142_block_rsrvd_fix(CONSTANT,141)
    zY_uid142_block_rsrvd_fix_q <= "0000000000000000000000000000000000";

    -- maxValInOutFormat_uid410_eRndXlog2_uid126_block_rsrvd_fix(CONSTANT,409)
    maxValInOutFormat_uid410_eRndXlog2_uid126_block_rsrvd_fix_q <= "0111111111111111111111111111111111111111111111";

    -- minValueInFormat_uid411_eRndXlog2_uid126_block_rsrvd_fix(CONSTANT,410)
    minValueInFormat_uid411_eRndXlog2_uid126_block_rsrvd_fix_q <= "1000000000000000000000000000000000000000000000";

    -- maxValInOutFormat_uid356_qTimesOOlog2Ext_uid114_block_rsrvd_fix(CONSTANT,355)
    maxValInOutFormat_uid356_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "011111111111111111111111111111111111111";

    -- minValueInFormat_uid357_qTimesOOlog2Ext_uid114_block_rsrvd_fix(CONSTANT,356)
    minValueInFormat_uid357_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "100000000000000000000000000000000000000";

    -- signY_uid43_block_rsrvd_fix(BITSELECT,42)@13
    signY_uid43_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(31 downto 31));

    -- redist45_signY_uid43_block_rsrvd_fix_b_2(DELAY,797)
    redist45_signY_uid43_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => signY_uid43_block_rsrvd_fix_b, xout => redist45_signY_uid43_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- cstBiasMO_uid9_block_rsrvd_fix(CONSTANT,8)
    cstBiasMO_uid9_block_rsrvd_fix_q <= "01111110";

    -- exp_x_uid15_block_rsrvd_fix(BITSELECT,14)@0
    exp_x_uid15_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- caseLog_uid51_block_rsrvd_fix(LOGICAL,50)@0
    caseLog_uid51_block_rsrvd_fix_q <= "1" WHEN exp_x_uid15_block_rsrvd_fix_b = cstBiasMO_uid9_block_rsrvd_fix_q ELSE "0";

    -- redist41_caseLog_uid51_block_rsrvd_fix_q_8(DELAY,793)
    redist41_caseLog_uid51_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => caseLog_uid51_block_rsrvd_fix_q, xout => redist41_caseLog_uid51_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- redist42_caseLog_uid51_block_rsrvd_fix_q_10(DELAY,794)
    redist42_caseLog_uid51_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist41_caseLog_uid51_block_rsrvd_fix_q_8_q, xout => redist42_caseLog_uid51_block_rsrvd_fix_q_10_q, clk => clk, aclr => areset );

    -- frac_x_uid16_block_rsrvd_fix(BITSELECT,15)@0
    frac_x_uid16_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- addrFull_uid52_block_rsrvd_fix(BITJOIN,51)@0
    addrFull_uid52_block_rsrvd_fix_q <= caseLog_uid51_block_rsrvd_fix_q & frac_x_uid16_block_rsrvd_fix_b;

    -- yAddr_uid54_block_rsrvd_fix(BITSELECT,53)@0
    yAddr_uid54_block_rsrvd_fix_b <= addrFull_uid52_block_rsrvd_fix_q(23 downto 15);

    -- memoryC3_uid267_lnTables_lutmem(DUALMEM,720)@0 + 2
    -- in j@20000000
    memoryC3_uid267_lnTables_lutmem_aa <= yAddr_uid54_block_rsrvd_fix_b;
    memoryC3_uid267_lnTables_lutmem_reset0 <= areset;
    memoryC3_uid267_lnTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 14,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA6Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid267_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC3_uid267_lnTables_lutmem_aa,
        q_a => memoryC3_uid267_lnTables_lutmem_ir
    );
    memoryC3_uid267_lnTables_lutmem_r <= memoryC3_uid267_lnTables_lutmem_ir(13 downto 0);

    -- redist62_frac_x_uid16_block_rsrvd_fix_b_2(DELAY,814)
    redist62_frac_x_uid16_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_x_uid16_block_rsrvd_fix_b, xout => redist62_frac_x_uid16_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- zPPolyEvalLog_uid55_block_rsrvd_fix(BITSELECT,54)@2
    zPPolyEvalLog_uid55_block_rsrvd_fix_in <= redist62_frac_x_uid16_block_rsrvd_fix_b_2_q(14 downto 0);
    zPPolyEvalLog_uid55_block_rsrvd_fix_b <= zPPolyEvalLog_uid55_block_rsrvd_fix_in(14 downto 0);

    -- yT1_uid274_invPolyEval(BITSELECT,273)@2
    yT1_uid274_invPolyEval_b <= zPPolyEvalLog_uid55_block_rsrvd_fix_b(14 downto 1);

    -- prodXY_uid484_pT1_uid275_invPolyEval_cma(CHAINMULTADD,725)@2 + 2
    prodXY_uid484_pT1_uid275_invPolyEval_cma_reset <= areset;
    prodXY_uid484_pT1_uid275_invPolyEval_cma_ena0 <= '1';
    prodXY_uid484_pT1_uid275_invPolyEval_cma_ena1 <= prodXY_uid484_pT1_uid275_invPolyEval_cma_ena0;
    prodXY_uid484_pT1_uid275_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid484_pT1_uid275_invPolyEval_cma_a0(0),15));
    prodXY_uid484_pT1_uid275_invPolyEval_cma_p(0) <= prodXY_uid484_pT1_uid275_invPolyEval_cma_l(0) * prodXY_uid484_pT1_uid275_invPolyEval_cma_c0(0);
    prodXY_uid484_pT1_uid275_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid484_pT1_uid275_invPolyEval_cma_p(0),29);
    prodXY_uid484_pT1_uid275_invPolyEval_cma_w(0) <= prodXY_uid484_pT1_uid275_invPolyEval_cma_u(0);
    prodXY_uid484_pT1_uid275_invPolyEval_cma_x(0) <= prodXY_uid484_pT1_uid275_invPolyEval_cma_w(0);
    prodXY_uid484_pT1_uid275_invPolyEval_cma_y(0) <= prodXY_uid484_pT1_uid275_invPolyEval_cma_x(0);
    prodXY_uid484_pT1_uid275_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid484_pT1_uid275_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid484_pT1_uid275_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid484_pT1_uid275_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid484_pT1_uid275_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid274_invPolyEval_b),14);
                prodXY_uid484_pT1_uid275_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC3_uid267_lnTables_lutmem_r),14);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid484_pT1_uid275_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid484_pT1_uid275_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid484_pT1_uid275_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid484_pT1_uid275_invPolyEval_cma_s(0) <= prodXY_uid484_pT1_uid275_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid484_pT1_uid275_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid484_pT1_uid275_invPolyEval_cma_s(0)(27 downto 0)), xout => prodXY_uid484_pT1_uid275_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid484_pT1_uid275_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid484_pT1_uid275_invPolyEval_cma_qq(27 downto 0));

    -- osig_uid485_pT1_uid275_invPolyEval(BITSELECT,484)@4
    osig_uid485_pT1_uid275_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid484_pT1_uid275_invPolyEval_cma_q(27 downto 14));

    -- highBBits_uid277_invPolyEval(BITSELECT,276)@4
    highBBits_uid277_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid485_pT1_uid275_invPolyEval_b(13 downto 1));

    -- redist38_yAddr_uid54_block_rsrvd_fix_b_2(DELAY,790)
    redist38_yAddr_uid54_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid54_block_rsrvd_fix_b, xout => redist38_yAddr_uid54_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- memoryC2_uid264_lnTables_lutmem(DUALMEM,719)@2 + 2
    -- in j@20000000
    memoryC2_uid264_lnTables_lutmem_aa <= redist38_yAddr_uid54_block_rsrvd_fix_b_2_q;
    memoryC2_uid264_lnTables_lutmem_reset0 <= areset;
    memoryC2_uid264_lnTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 2,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA5Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid264_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid264_lnTables_lutmem_aa,
        q_a => memoryC2_uid264_lnTables_lutmem_ir
    );
    memoryC2_uid264_lnTables_lutmem_r <= memoryC2_uid264_lnTables_lutmem_ir(1 downto 0);

    -- memoryC2_uid263_lnTables_lutmem(DUALMEM,718)@2 + 2
    -- in j@20000000
    memoryC2_uid263_lnTables_lutmem_aa <= redist38_yAddr_uid54_block_rsrvd_fix_b_2_q;
    memoryC2_uid263_lnTables_lutmem_reset0 <= areset;
    memoryC2_uid263_lnTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA4Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid263_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid263_lnTables_lutmem_aa,
        q_a => memoryC2_uid263_lnTables_lutmem_ir
    );
    memoryC2_uid263_lnTables_lutmem_r <= memoryC2_uid263_lnTables_lutmem_ir(19 downto 0);

    -- os_uid265_lnTables(BITJOIN,264)@4
    os_uid265_lnTables_q <= memoryC2_uid264_lnTables_lutmem_r & memoryC2_uid263_lnTables_lutmem_r;

    -- s1sumAHighB_uid278_invPolyEval(ADD,277)@4
    s1sumAHighB_uid278_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => os_uid265_lnTables_q(21)) & os_uid265_lnTables_q));
    s1sumAHighB_uid278_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 13 => highBBits_uid277_invPolyEval_b(12)) & highBBits_uid277_invPolyEval_b));
    s1sumAHighB_uid278_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid278_invPolyEval_a) + SIGNED(s1sumAHighB_uid278_invPolyEval_b));
    s1sumAHighB_uid278_invPolyEval_q <= s1sumAHighB_uid278_invPolyEval_o(22 downto 0);

    -- lowRangeB_uid276_invPolyEval(BITSELECT,275)@4
    lowRangeB_uid276_invPolyEval_in <= osig_uid485_pT1_uid275_invPolyEval_b(0 downto 0);
    lowRangeB_uid276_invPolyEval_b <= lowRangeB_uid276_invPolyEval_in(0 downto 0);

    -- s1_uid279_invPolyEval(BITJOIN,278)@4
    s1_uid279_invPolyEval_q <= s1sumAHighB_uid278_invPolyEval_q & lowRangeB_uid276_invPolyEval_b;

    -- redist36_zPPolyEvalLog_uid55_block_rsrvd_fix_b_2(DELAY,788)
    redist36_zPPolyEvalLog_uid55_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => zPPolyEvalLog_uid55_block_rsrvd_fix_b, xout => redist36_zPPolyEvalLog_uid55_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- prodXY_uid487_pT2_uid281_invPolyEval_cma(CHAINMULTADD,726)@4 + 2
    prodXY_uid487_pT2_uid281_invPolyEval_cma_reset <= areset;
    prodXY_uid487_pT2_uid281_invPolyEval_cma_ena0 <= '1';
    prodXY_uid487_pT2_uid281_invPolyEval_cma_ena1 <= prodXY_uid487_pT2_uid281_invPolyEval_cma_ena0;
    prodXY_uid487_pT2_uid281_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid487_pT2_uid281_invPolyEval_cma_a0(0),16));
    prodXY_uid487_pT2_uid281_invPolyEval_cma_p(0) <= prodXY_uid487_pT2_uid281_invPolyEval_cma_l(0) * prodXY_uid487_pT2_uid281_invPolyEval_cma_c0(0);
    prodXY_uid487_pT2_uid281_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid487_pT2_uid281_invPolyEval_cma_p(0),40);
    prodXY_uid487_pT2_uid281_invPolyEval_cma_w(0) <= prodXY_uid487_pT2_uid281_invPolyEval_cma_u(0);
    prodXY_uid487_pT2_uid281_invPolyEval_cma_x(0) <= prodXY_uid487_pT2_uid281_invPolyEval_cma_w(0);
    prodXY_uid487_pT2_uid281_invPolyEval_cma_y(0) <= prodXY_uid487_pT2_uid281_invPolyEval_cma_x(0);
    prodXY_uid487_pT2_uid281_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid487_pT2_uid281_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid487_pT2_uid281_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid487_pT2_uid281_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid487_pT2_uid281_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist36_zPPolyEvalLog_uid55_block_rsrvd_fix_b_2_q),15);
                prodXY_uid487_pT2_uid281_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid279_invPolyEval_q),24);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid487_pT2_uid281_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid487_pT2_uid281_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid487_pT2_uid281_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid487_pT2_uid281_invPolyEval_cma_s(0) <= prodXY_uid487_pT2_uid281_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid487_pT2_uid281_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 39, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid487_pT2_uid281_invPolyEval_cma_s(0)(38 downto 0)), xout => prodXY_uid487_pT2_uid281_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid487_pT2_uid281_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid487_pT2_uid281_invPolyEval_cma_qq(38 downto 0));

    -- osig_uid488_pT2_uid281_invPolyEval(BITSELECT,487)@6
    osig_uid488_pT2_uid281_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid487_pT2_uid281_invPolyEval_cma_q(38 downto 15));

    -- highBBits_uid283_invPolyEval(BITSELECT,282)@6
    highBBits_uid283_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid488_pT2_uid281_invPolyEval_b(23 downto 1));

    -- redist39_yAddr_uid54_block_rsrvd_fix_b_4(DELAY,791)
    redist39_yAddr_uid54_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist38_yAddr_uid54_block_rsrvd_fix_b_2_q, xout => redist39_yAddr_uid54_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- memoryC1_uid260_lnTables_lutmem(DUALMEM,717)@4 + 2
    -- in j@20000000
    memoryC1_uid260_lnTables_lutmem_aa <= redist39_yAddr_uid54_block_rsrvd_fix_b_4_q;
    memoryC1_uid260_lnTables_lutmem_reset0 <= areset;
    memoryC1_uid260_lnTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA3Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid260_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid260_lnTables_lutmem_aa,
        q_a => memoryC1_uid260_lnTables_lutmem_ir
    );
    memoryC1_uid260_lnTables_lutmem_r <= memoryC1_uid260_lnTables_lutmem_ir(9 downto 0);

    -- memoryC1_uid259_lnTables_lutmem(DUALMEM,716)@4 + 2
    -- in j@20000000
    memoryC1_uid259_lnTables_lutmem_aa <= redist39_yAddr_uid54_block_rsrvd_fix_b_4_q;
    memoryC1_uid259_lnTables_lutmem_reset0 <= areset;
    memoryC1_uid259_lnTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA2Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid259_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid259_lnTables_lutmem_aa,
        q_a => memoryC1_uid259_lnTables_lutmem_ir
    );
    memoryC1_uid259_lnTables_lutmem_r <= memoryC1_uid259_lnTables_lutmem_ir(19 downto 0);

    -- os_uid261_lnTables(BITJOIN,260)@6
    os_uid261_lnTables_q <= memoryC1_uid260_lnTables_lutmem_r & memoryC1_uid259_lnTables_lutmem_r;

    -- s2sumAHighB_uid284_invPolyEval(ADD,283)@6
    s2sumAHighB_uid284_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => os_uid261_lnTables_q(29)) & os_uid261_lnTables_q));
    s2sumAHighB_uid284_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 23 => highBBits_uid283_invPolyEval_b(22)) & highBBits_uid283_invPolyEval_b));
    s2sumAHighB_uid284_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid284_invPolyEval_a) + SIGNED(s2sumAHighB_uid284_invPolyEval_b));
    s2sumAHighB_uid284_invPolyEval_q <= s2sumAHighB_uid284_invPolyEval_o(30 downto 0);

    -- lowRangeB_uid282_invPolyEval(BITSELECT,281)@6
    lowRangeB_uid282_invPolyEval_in <= osig_uid488_pT2_uid281_invPolyEval_b(0 downto 0);
    lowRangeB_uid282_invPolyEval_b <= lowRangeB_uid282_invPolyEval_in(0 downto 0);

    -- s2_uid285_invPolyEval(BITJOIN,284)@6
    s2_uid285_invPolyEval_q <= s2sumAHighB_uid284_invPolyEval_q & lowRangeB_uid282_invPolyEval_b;

    -- topRangeY_uid510_pT3_uid287_invPolyEval_merged_bit_select(BITSELECT,743)@6
    topRangeY_uid510_pT3_uid287_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s2_uid285_invPolyEval_q(31 downto 14));
    topRangeY_uid510_pT3_uid287_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s2_uid285_invPolyEval_q(13 downto 0));

    -- zs_uid319_countZLog_uid76_block_rsrvd_fix(CONSTANT,318)
    zs_uid319_countZLog_uid76_block_rsrvd_fix_q <= "0000";

    -- aboveLeftY_mergedSignalTM_uid517_pT3_uid287_invPolyEval(BITJOIN,516)@6
    aboveLeftY_mergedSignalTM_uid517_pT3_uid287_invPolyEval_q <= topRangeY_uid510_pT3_uid287_invPolyEval_merged_bit_select_c & zs_uid319_countZLog_uid76_block_rsrvd_fix_q;

    -- redist37_zPPolyEvalLog_uid55_block_rsrvd_fix_b_4(DELAY,789)
    redist37_zPPolyEvalLog_uid55_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist36_zPPolyEvalLog_uid55_block_rsrvd_fix_b_2_q, xout => redist37_zPPolyEvalLog_uid55_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- nx_mergedSignalTM_uid504_pT3_uid287_invPolyEval(BITJOIN,503)@6
    nx_mergedSignalTM_uid504_pT3_uid287_invPolyEval_q <= GND_q & redist37_zPPolyEvalLog_uid55_block_rsrvd_fix_b_4_q;

    -- z2_uid61_block_rsrvd_fix(CONSTANT,60)
    z2_uid61_block_rsrvd_fix_q <= "00";

    -- topRangeX_mergedSignalTM_uid508_pT3_uid287_invPolyEval(BITJOIN,507)@6
    topRangeX_mergedSignalTM_uid508_pT3_uid287_invPolyEval_q <= nx_mergedSignalTM_uid504_pT3_uid287_invPolyEval_q & z2_uid61_block_rsrvd_fix_q;

    -- sm0_uid523_pT3_uid287_invPolyEval_cma(CHAINMULTADD,728)@6 + 2
    sm0_uid523_pT3_uid287_invPolyEval_cma_reset <= areset;
    sm0_uid523_pT3_uid287_invPolyEval_cma_ena0 <= '1';
    sm0_uid523_pT3_uid287_invPolyEval_cma_ena1 <= sm0_uid523_pT3_uid287_invPolyEval_cma_ena0;
    sm0_uid523_pT3_uid287_invPolyEval_cma_r(0) <= SIGNED(RESIZE(sm0_uid523_pT3_uid287_invPolyEval_cma_c0(0),19));
    sm0_uid523_pT3_uid287_invPolyEval_cma_p(0) <= sm0_uid523_pT3_uid287_invPolyEval_cma_a0(0) * sm0_uid523_pT3_uid287_invPolyEval_cma_r(0);
    sm0_uid523_pT3_uid287_invPolyEval_cma_u(0) <= RESIZE(sm0_uid523_pT3_uid287_invPolyEval_cma_p(0),37);
    sm0_uid523_pT3_uid287_invPolyEval_cma_w(0) <= sm0_uid523_pT3_uid287_invPolyEval_cma_u(0);
    sm0_uid523_pT3_uid287_invPolyEval_cma_x(0) <= sm0_uid523_pT3_uid287_invPolyEval_cma_w(0);
    sm0_uid523_pT3_uid287_invPolyEval_cma_y(0) <= sm0_uid523_pT3_uid287_invPolyEval_cma_x(0);
    sm0_uid523_pT3_uid287_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid523_pT3_uid287_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid523_pT3_uid287_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid523_pT3_uid287_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid523_pT3_uid287_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid508_pT3_uid287_invPolyEval_q),18);
                sm0_uid523_pT3_uid287_invPolyEval_cma_c0(0) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid517_pT3_uid287_invPolyEval_q),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid523_pT3_uid287_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid523_pT3_uid287_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid523_pT3_uid287_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid523_pT3_uid287_invPolyEval_cma_s(0) <= sm0_uid523_pT3_uid287_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid523_pT3_uid287_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid523_pT3_uid287_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid523_pT3_uid287_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid523_pT3_uid287_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid523_pT3_uid287_invPolyEval_cma_qq(35 downto 0));

    -- highBBits_uid525_pT3_uid287_invPolyEval(BITSELECT,524)@8
    highBBits_uid525_pT3_uid287_invPolyEval_b <= STD_LOGIC_VECTOR(sm0_uid523_pT3_uid287_invPolyEval_cma_q(35 downto 18));

    -- sm0_uid522_pT3_uid287_invPolyEval_cma(CHAINMULTADD,727)@6 + 2
    sm0_uid522_pT3_uid287_invPolyEval_cma_reset <= areset;
    sm0_uid522_pT3_uid287_invPolyEval_cma_ena0 <= '1';
    sm0_uid522_pT3_uid287_invPolyEval_cma_ena1 <= sm0_uid522_pT3_uid287_invPolyEval_cma_ena0;
    sm0_uid522_pT3_uid287_invPolyEval_cma_p(0) <= sm0_uid522_pT3_uid287_invPolyEval_cma_a0(0) * sm0_uid522_pT3_uid287_invPolyEval_cma_c0(0);
    sm0_uid522_pT3_uid287_invPolyEval_cma_u(0) <= RESIZE(sm0_uid522_pT3_uid287_invPolyEval_cma_p(0),36);
    sm0_uid522_pT3_uid287_invPolyEval_cma_w(0) <= sm0_uid522_pT3_uid287_invPolyEval_cma_u(0);
    sm0_uid522_pT3_uid287_invPolyEval_cma_x(0) <= sm0_uid522_pT3_uid287_invPolyEval_cma_w(0);
    sm0_uid522_pT3_uid287_invPolyEval_cma_y(0) <= sm0_uid522_pT3_uid287_invPolyEval_cma_x(0);
    sm0_uid522_pT3_uid287_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid522_pT3_uid287_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid522_pT3_uid287_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid522_pT3_uid287_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid522_pT3_uid287_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid508_pT3_uid287_invPolyEval_q),18);
                sm0_uid522_pT3_uid287_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid510_pT3_uid287_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid522_pT3_uid287_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid522_pT3_uid287_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid522_pT3_uid287_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid522_pT3_uid287_invPolyEval_cma_s(0) <= sm0_uid522_pT3_uid287_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid522_pT3_uid287_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid522_pT3_uid287_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid522_pT3_uid287_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid522_pT3_uid287_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid522_pT3_uid287_invPolyEval_cma_qq(35 downto 0));

    -- lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval(ADD,525)@8
    lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => sm0_uid522_pT3_uid287_invPolyEval_cma_q(35)) & sm0_uid522_pT3_uid287_invPolyEval_cma_q));
    lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 18 => highBBits_uid525_pT3_uid287_invPolyEval_b(17)) & highBBits_uid525_pT3_uid287_invPolyEval_b));
    lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_b));
    lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_q <= lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_o(36 downto 0);

    -- lowRangeB_uid524_pT3_uid287_invPolyEval(BITSELECT,523)@8
    lowRangeB_uid524_pT3_uid287_invPolyEval_in <= sm0_uid523_pT3_uid287_invPolyEval_cma_q(17 downto 0);
    lowRangeB_uid524_pT3_uid287_invPolyEval_b <= lowRangeB_uid524_pT3_uid287_invPolyEval_in(17 downto 0);

    -- lev1_a0_uid527_pT3_uid287_invPolyEval(BITJOIN,526)@8
    lev1_a0_uid527_pT3_uid287_invPolyEval_q <= lev1_a0sumAHighB_uid526_pT3_uid287_invPolyEval_q & lowRangeB_uid524_pT3_uid287_invPolyEval_b;

    -- os_uid528_pT3_uid287_invPolyEval(BITSELECT,527)@8
    os_uid528_pT3_uid287_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid527_pT3_uid287_invPolyEval_q(52 downto 0));
    os_uid528_pT3_uid287_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid528_pT3_uid287_invPolyEval_in(52 downto 20));

    -- highBBits_uid289_invPolyEval(BITSELECT,288)@8
    highBBits_uid289_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid528_pT3_uid287_invPolyEval_b(32 downto 2));

    -- redist40_yAddr_uid54_block_rsrvd_fix_b_6(DELAY,792)
    redist40_yAddr_uid54_block_rsrvd_fix_b_6 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist39_yAddr_uid54_block_rsrvd_fix_b_4_q, xout => redist40_yAddr_uid54_block_rsrvd_fix_b_6_q, clk => clk, aclr => areset );

    -- memoryC0_uid256_lnTables_lutmem(DUALMEM,715)@6 + 2
    -- in j@20000000
    memoryC0_uid256_lnTables_lutmem_aa <= redist40_yAddr_uid54_block_rsrvd_fix_b_6_q;
    memoryC0_uid256_lnTables_lutmem_reset0 <= areset;
    memoryC0_uid256_lnTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA1Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid256_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid256_lnTables_lutmem_aa,
        q_a => memoryC0_uid256_lnTables_lutmem_ir
    );
    memoryC0_uid256_lnTables_lutmem_r <= memoryC0_uid256_lnTables_lutmem_ir(19 downto 0);

    -- memoryC0_uid255_lnTables_lutmem(DUALMEM,714)@6 + 2
    -- in j@20000000
    memoryC0_uid255_lnTables_lutmem_aa <= redist40_yAddr_uid54_block_rsrvd_fix_b_6_q;
    memoryC0_uid255_lnTables_lutmem_reset0 <= areset;
    memoryC0_uid255_lnTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA0Z_lnTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid255_lnTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid255_lnTables_lutmem_aa,
        q_a => memoryC0_uid255_lnTables_lutmem_ir
    );
    memoryC0_uid255_lnTables_lutmem_r <= memoryC0_uid255_lnTables_lutmem_ir(19 downto 0);

    -- os_uid257_lnTables(BITJOIN,256)@8
    os_uid257_lnTables_q <= memoryC0_uid256_lnTables_lutmem_r & memoryC0_uid255_lnTables_lutmem_r;

    -- s3sumAHighB_uid290_invPolyEval(ADD,289)@8
    s3sumAHighB_uid290_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 40 => os_uid257_lnTables_q(39)) & os_uid257_lnTables_q));
    s3sumAHighB_uid290_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((40 downto 31 => highBBits_uid289_invPolyEval_b(30)) & highBBits_uid289_invPolyEval_b));
    s3sumAHighB_uid290_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid290_invPolyEval_a) + SIGNED(s3sumAHighB_uid290_invPolyEval_b));
    s3sumAHighB_uid290_invPolyEval_q <= s3sumAHighB_uid290_invPolyEval_o(40 downto 0);

    -- lowRangeB_uid288_invPolyEval(BITSELECT,287)@8
    lowRangeB_uid288_invPolyEval_in <= os_uid528_pT3_uid287_invPolyEval_b(1 downto 0);
    lowRangeB_uid288_invPolyEval_b <= lowRangeB_uid288_invPolyEval_in(1 downto 0);

    -- s3_uid291_invPolyEval(BITJOIN,290)@8
    s3_uid291_invPolyEval_q <= s3sumAHighB_uid290_invPolyEval_q & lowRangeB_uid288_invPolyEval_b;

    -- peORNatLog_uid57_block_rsrvd_fix(BITSELECT,56)@8
    peORNatLog_uid57_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(s3_uid291_invPolyEval_q(41 downto 0));
    peORNatLog_uid57_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(peORNatLog_uid57_block_rsrvd_fix_in(41 downto 7));

    -- postPEMulLog_uid65_block_rsrvd_fix_bs5(BITSELECT,580)@8
    postPEMulLog_uid65_block_rsrvd_fix_bs5_b <= peORNatLog_uid57_block_rsrvd_fix_b(34 downto 18);

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_notEnable(LOGICAL,834)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_nor(LOGICAL,835)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_nor_q <= not (redist63_frac_x_uid16_block_rsrvd_fix_b_8_notEnable_q or redist63_frac_x_uid16_block_rsrvd_fix_b_8_sticky_ena_q);

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_last(CONSTANT,831)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_last_q <= "011";

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmp(LOGICAL,832)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmp_q <= "1" WHEN redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_last_q = redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_q ELSE "0";

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmpReg(REG,833)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmpReg_q <= STD_LOGIC_VECTOR(redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_sticky_ena(REG,836)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist63_frac_x_uid16_block_rsrvd_fix_b_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist63_frac_x_uid16_block_rsrvd_fix_b_8_nor_q = "1") THEN
                redist63_frac_x_uid16_block_rsrvd_fix_b_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist63_frac_x_uid16_block_rsrvd_fix_b_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_enaAnd(LOGICAL,837)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_enaAnd_q <= redist63_frac_x_uid16_block_rsrvd_fix_b_8_sticky_ena_q and VCC_q;

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt(COUNTER,829)
    -- low=0, high=4, step=1, init=0
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_eq <= '1';
            ELSE
                redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
            END IF;
            IF (redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_eq = '1') THEN
                redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i <= redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i + 4;
            ELSE
                redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i <= redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_i, 3)));

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_wraddr(REG,830)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist63_frac_x_uid16_block_rsrvd_fix_b_8_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist63_frac_x_uid16_block_rsrvd_fix_b_8_wraddr_q <= STD_LOGIC_VECTOR(redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem(DUALMEM,828)
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_ia <= STD_LOGIC_VECTOR(redist62_frac_x_uid16_block_rsrvd_fix_b_2_q);
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_aa <= redist63_frac_x_uid16_block_rsrvd_fix_b_8_wraddr_q;
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_ab <= redist63_frac_x_uid16_block_rsrvd_fix_b_8_rdcnt_q;
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_reset0 <= areset;
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_dmem : altera_syncram
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
        clocken1 => redist63_frac_x_uid16_block_rsrvd_fix_b_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_reset0,
        clock1 => clk,
        address_a => redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_aa,
        data_a => redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_ab,
        q_b => redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_iq
    );
    redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_q <= redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_iq(22 downto 0);

    -- cstAllZWF_uid7_block_rsrvd_fix(CONSTANT,6)
    cstAllZWF_uid7_block_rsrvd_fix_q <= "00000000000000000000000";

    -- aPostPad_uid59_block_rsrvd_fix(BITJOIN,58)@8
    aPostPad_uid59_block_rsrvd_fix_q <= VCC_q & cstAllZWF_uid7_block_rsrvd_fix_q;

    -- oMzLog_uid60_block_rsrvd_fix(SUB,59)@8
    oMzLog_uid60_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & aPostPad_uid59_block_rsrvd_fix_q);
    oMzLog_uid60_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_q);
    oMzLog_uid60_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(oMzLog_uid60_block_rsrvd_fix_a) - UNSIGNED(oMzLog_uid60_block_rsrvd_fix_b));
    oMzLog_uid60_block_rsrvd_fix_q <= oMzLog_uid60_block_rsrvd_fix_o(24 downto 0);

    -- sEzLog_uid62_block_rsrvd_fix(BITJOIN,61)@8
    sEzLog_uid62_block_rsrvd_fix_q <= z2_uid61_block_rsrvd_fix_q & redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_q;

    -- multTermOneLog_uid64_block_rsrvd_fix(MUX,63)@8
    multTermOneLog_uid64_block_rsrvd_fix_s <= redist41_caseLog_uid51_block_rsrvd_fix_q_8_q;
    multTermOneLog_uid64_block_rsrvd_fix_combproc: PROCESS (multTermOneLog_uid64_block_rsrvd_fix_s, sEzLog_uid62_block_rsrvd_fix_q, oMzLog_uid60_block_rsrvd_fix_q)
    BEGIN
        CASE (multTermOneLog_uid64_block_rsrvd_fix_s) IS
            WHEN "0" => multTermOneLog_uid64_block_rsrvd_fix_q <= sEzLog_uid62_block_rsrvd_fix_q;
            WHEN "1" => multTermOneLog_uid64_block_rsrvd_fix_q <= oMzLog_uid60_block_rsrvd_fix_q;
            WHEN OTHERS => multTermOneLog_uid64_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- postPEMulLog_uid65_block_rsrvd_fix_bs4(BITSELECT,579)@8
    postPEMulLog_uid65_block_rsrvd_fix_bs4_in <= STD_LOGIC_VECTOR(multTermOneLog_uid64_block_rsrvd_fix_q(17 downto 0));
    postPEMulLog_uid65_block_rsrvd_fix_bs4_b <= STD_LOGIC_VECTOR(postPEMulLog_uid65_block_rsrvd_fix_bs4_in(17 downto 0));

    -- postPEMulLog_uid65_block_rsrvd_fix_bs6(BITSELECT,581)@8
    postPEMulLog_uid65_block_rsrvd_fix_bs6_b <= STD_LOGIC_VECTOR(multTermOneLog_uid64_block_rsrvd_fix_q(24 downto 18));

    -- postPEMulLog_uid65_block_rsrvd_fix_bs2(BITSELECT,577)@8
    postPEMulLog_uid65_block_rsrvd_fix_bs2_in <= peORNatLog_uid57_block_rsrvd_fix_b(17 downto 0);
    postPEMulLog_uid65_block_rsrvd_fix_bs2_b <= postPEMulLog_uid65_block_rsrvd_fix_bs2_in(17 downto 0);

    -- postPEMulLog_uid65_block_rsrvd_fix_ma3_cma(CHAINMULTADD,737)@8 + 2
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_reset <= areset;
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_ena0 <= '1';
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_ena1 <= postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_ena0;
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_l(0) <= SIGNED(RESIZE(postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_a0(0),19));
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_l(1) <= SIGNED(RESIZE(postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_a0(1),19));
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_p(0) <= postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_l(0) * postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_c0(0);
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_p(1) <= postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_l(1) * postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_c0(1);
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_u(0) <= RESIZE(postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_p(0),37);
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_u(1) <= RESIZE(postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_p(1),37);
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_w(0) <= postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_u(0) + postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_u(1);
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_x(0) <= postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_w(0);
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_y(0) <= postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_x(0);
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_a0 <= (others => (others => '0'));
            postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_ena0 = '1') THEN
                postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_a0(0) <= RESIZE(UNSIGNED(postPEMulLog_uid65_block_rsrvd_fix_bs2_b),18);
                postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_a0(1) <= RESIZE(UNSIGNED(postPEMulLog_uid65_block_rsrvd_fix_bs4_b),18);
                postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_c0(0) <= RESIZE(SIGNED(postPEMulLog_uid65_block_rsrvd_fix_bs6_b),17);
                postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_c0(1) <= RESIZE(SIGNED(postPEMulLog_uid65_block_rsrvd_fix_bs5_b),17);
            END IF;
        END IF;
    END PROCESS;
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_ena1 = '1') THEN
                postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_s(0) <= postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_s(0)(35 downto 0)), xout => postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_qq, clk => clk, aclr => areset );
    postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_q <= STD_LOGIC_VECTOR(postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_qq(35 downto 0));

    -- postPEMulLog_uid65_block_rsrvd_fix_align_12(BITSHIFT,587)@10
    postPEMulLog_uid65_block_rsrvd_fix_align_12_qint <= postPEMulLog_uid65_block_rsrvd_fix_ma3_cma_q & "000000000000000000";
    postPEMulLog_uid65_block_rsrvd_fix_align_12_q <= postPEMulLog_uid65_block_rsrvd_fix_align_12_qint(53 downto 0);

    -- postPEMulLog_uid65_block_rsrvd_fix_bs10(BITSELECT,585)@8
    postPEMulLog_uid65_block_rsrvd_fix_bs10_b <= STD_LOGIC_VECTOR(peORNatLog_uid57_block_rsrvd_fix_b(34 downto 18));

    -- postPEMulLog_uid65_block_rsrvd_fix_im8_cma(CHAINMULTADD,733)@8 + 2
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_reset <= areset;
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ena0 <= '1';
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ena1 <= postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ena0;
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_p(0) <= postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0(0) * postPEMulLog_uid65_block_rsrvd_fix_im8_cma_c0(0);
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_u(0) <= RESIZE(postPEMulLog_uid65_block_rsrvd_fix_im8_cma_p(0),28);
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_w(0) <= postPEMulLog_uid65_block_rsrvd_fix_im8_cma_u(0);
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_x(0) <= postPEMulLog_uid65_block_rsrvd_fix_im8_cma_w(0);
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_y(0) <= postPEMulLog_uid65_block_rsrvd_fix_im8_cma_x(0);
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0 <= (others => (others => '0'));
            postPEMulLog_uid65_block_rsrvd_fix_im8_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ena0 = '1') THEN
                postPEMulLog_uid65_block_rsrvd_fix_im8_cma_a0(0) <= RESIZE(SIGNED(postPEMulLog_uid65_block_rsrvd_fix_bs10_b),17);
                postPEMulLog_uid65_block_rsrvd_fix_im8_cma_c0(0) <= RESIZE(SIGNED(postPEMulLog_uid65_block_rsrvd_fix_bs6_b),11);
            END IF;
        END IF;
    END PROCESS;
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            postPEMulLog_uid65_block_rsrvd_fix_im8_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (postPEMulLog_uid65_block_rsrvd_fix_im8_cma_ena1 = '1') THEN
                postPEMulLog_uid65_block_rsrvd_fix_im8_cma_s(0) <= postPEMulLog_uid65_block_rsrvd_fix_im8_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(postPEMulLog_uid65_block_rsrvd_fix_im8_cma_s(0)(27 downto 0)), xout => postPEMulLog_uid65_block_rsrvd_fix_im8_cma_qq, clk => clk, aclr => areset );
    postPEMulLog_uid65_block_rsrvd_fix_im8_cma_q <= STD_LOGIC_VECTOR(postPEMulLog_uid65_block_rsrvd_fix_im8_cma_qq(23 downto 0));

    -- postPEMulLog_uid65_block_rsrvd_fix_bs1(BITSELECT,576)@8
    postPEMulLog_uid65_block_rsrvd_fix_bs1_in <= multTermOneLog_uid64_block_rsrvd_fix_q(17 downto 0);
    postPEMulLog_uid65_block_rsrvd_fix_bs1_b <= postPEMulLog_uid65_block_rsrvd_fix_bs1_in(17 downto 0);

    -- postPEMulLog_uid65_block_rsrvd_fix_im0_cma(CHAINMULTADD,732)@8 + 2
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_reset <= areset;
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ena0 <= '1';
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ena1 <= postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ena0;
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_p(0) <= postPEMulLog_uid65_block_rsrvd_fix_im0_cma_a0(0) * postPEMulLog_uid65_block_rsrvd_fix_im0_cma_c0(0);
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_u(0) <= RESIZE(postPEMulLog_uid65_block_rsrvd_fix_im0_cma_p(0),36);
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_w(0) <= postPEMulLog_uid65_block_rsrvd_fix_im0_cma_u(0);
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_x(0) <= postPEMulLog_uid65_block_rsrvd_fix_im0_cma_w(0);
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_y(0) <= postPEMulLog_uid65_block_rsrvd_fix_im0_cma_x(0);
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            postPEMulLog_uid65_block_rsrvd_fix_im0_cma_a0 <= (others => (others => '0'));
            postPEMulLog_uid65_block_rsrvd_fix_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ena0 = '1') THEN
                postPEMulLog_uid65_block_rsrvd_fix_im0_cma_a0(0) <= RESIZE(UNSIGNED(postPEMulLog_uid65_block_rsrvd_fix_bs1_b),18);
                postPEMulLog_uid65_block_rsrvd_fix_im0_cma_c0(0) <= RESIZE(UNSIGNED(postPEMulLog_uid65_block_rsrvd_fix_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            postPEMulLog_uid65_block_rsrvd_fix_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (postPEMulLog_uid65_block_rsrvd_fix_im0_cma_ena1 = '1') THEN
                postPEMulLog_uid65_block_rsrvd_fix_im0_cma_s(0) <= postPEMulLog_uid65_block_rsrvd_fix_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(postPEMulLog_uid65_block_rsrvd_fix_im0_cma_s(0)(35 downto 0)), xout => postPEMulLog_uid65_block_rsrvd_fix_im0_cma_qq, clk => clk, aclr => areset );
    postPEMulLog_uid65_block_rsrvd_fix_im0_cma_q <= STD_LOGIC_VECTOR(postPEMulLog_uid65_block_rsrvd_fix_im0_cma_qq(35 downto 0));

    -- postPEMulLog_uid65_block_rsrvd_fix_join_11(BITJOIN,586)@10
    postPEMulLog_uid65_block_rsrvd_fix_join_11_q <= postPEMulLog_uid65_block_rsrvd_fix_im8_cma_q & postPEMulLog_uid65_block_rsrvd_fix_im0_cma_q;

    -- postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0(ADD,589)@10
    postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((60 downto 60 => postPEMulLog_uid65_block_rsrvd_fix_join_11_q(59)) & postPEMulLog_uid65_block_rsrvd_fix_join_11_q));
    postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((60 downto 54 => postPEMulLog_uid65_block_rsrvd_fix_align_12_q(53)) & postPEMulLog_uid65_block_rsrvd_fix_align_12_q));
    postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_a) + SIGNED(postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_b));
    postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_q <= postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_o(60 downto 0);

    -- highBBits_uid69_block_rsrvd_fix(BITSELECT,68)@10
    highBBits_uid69_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_q(59 downto 0));
    highBBits_uid69_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(highBBits_uid69_block_rsrvd_fix_in(59 downto 20));

    -- maxValInOutFormat_uid219_eLn2_uid50_block_rsrvd_fix(CONSTANT,218)
    maxValInOutFormat_uid219_eLn2_uid50_block_rsrvd_fix_q <= "011111111111111111111111111111111111111111111";

    -- minValueInFormat_uid220_eLn2_uid50_block_rsrvd_fix(CONSTANT,219)
    minValueInFormat_uid220_eLn2_uid50_block_rsrvd_fix_q <= "100000000000000000000000000000000000000000000";

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_notEnable(LOGICAL,844)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_nor(LOGICAL,845)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_nor_q <= not (redist64_exp_x_uid15_block_rsrvd_fix_b_8_notEnable_q or redist64_exp_x_uid15_block_rsrvd_fix_b_8_sticky_ena_q);

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_last(CONSTANT,841)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_last_q <= "0101";

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmp(LOGICAL,842)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmp_b <= STD_LOGIC_VECTOR("0" & redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_q);
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmp_q <= "1" WHEN redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_last_q = redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmp_b ELSE "0";

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmpReg(REG,843)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmpReg_q <= STD_LOGIC_VECTOR(redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_sticky_ena(REG,846)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist64_exp_x_uid15_block_rsrvd_fix_b_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist64_exp_x_uid15_block_rsrvd_fix_b_8_nor_q = "1") THEN
                redist64_exp_x_uid15_block_rsrvd_fix_b_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist64_exp_x_uid15_block_rsrvd_fix_b_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_enaAnd(LOGICAL,847)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_enaAnd_q <= redist64_exp_x_uid15_block_rsrvd_fix_b_8_sticky_ena_q and VCC_q;

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt(COUNTER,839)
    -- low=0, high=6, step=1, init=0
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_eq <= '1';
            ELSE
                redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
            END IF;
            IF (redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_eq = '1') THEN
                redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i <= redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i + 2;
            ELSE
                redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i <= redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_i, 3)));

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_wraddr(REG,840)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist64_exp_x_uid15_block_rsrvd_fix_b_8_wraddr_q <= "110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist64_exp_x_uid15_block_rsrvd_fix_b_8_wraddr_q <= STD_LOGIC_VECTOR(redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem(DUALMEM,838)
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_ia <= STD_LOGIC_VECTOR(exp_x_uid15_block_rsrvd_fix_b);
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_aa <= redist64_exp_x_uid15_block_rsrvd_fix_b_8_wraddr_q;
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_ab <= redist64_exp_x_uid15_block_rsrvd_fix_b_8_rdcnt_q;
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_reset0 <= areset;
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_dmem : altera_syncram
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
        clocken1 => redist64_exp_x_uid15_block_rsrvd_fix_b_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_reset0,
        clock1 => clk,
        address_a => redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_aa,
        data_a => redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_ab,
        q_b => redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_iq
    );
    redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_q <= redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_iq(7 downto 0);

    -- redist65_exp_x_uid15_block_rsrvd_fix_b_10(DELAY,817)
    redist65_exp_x_uid15_block_rsrvd_fix_b_10 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_q, xout => redist65_exp_x_uid15_block_rsrvd_fix_b_10_q, clk => clk, aclr => areset );

    -- e_uid49_block_rsrvd_fix(SUB,48)@10
    e_uid49_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist65_exp_x_uid15_block_rsrvd_fix_b_10_q);
    e_uid49_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & cstBias_uid8_block_rsrvd_fix_q);
    e_uid49_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(e_uid49_block_rsrvd_fix_a) - UNSIGNED(e_uid49_block_rsrvd_fix_b));
    e_uid49_block_rsrvd_fix_q <= e_uid49_block_rsrvd_fix_o(8 downto 0);

    -- xv1_uid212_eLn2_uid50_block_rsrvd_fix(BITSELECT,211)@10
    xv1_uid212_eLn2_uid50_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(e_uid49_block_rsrvd_fix_q(8 downto 6));

    -- p1_uid213_eLn2_uid50_block_rsrvd_fix(LOOKUP,212)@10
    p1_uid213_eLn2_uid50_block_rsrvd_fix_combproc: PROCESS (xv1_uid212_eLn2_uid50_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv1_uid212_eLn2_uid50_block_rsrvd_fix_b) IS
            WHEN "000" => p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000010";
            WHEN "001" => p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= "000010110001011100100001011111110111111000000010";
            WHEN "010" => p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= "000101100010111001000010111111101111110000000010";
            WHEN "011" => p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= "001000010100010101100100011111100111101000000010";
            WHEN "100" => p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= "110100111010001101111010000000100000100000000010";
            WHEN "101" => p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= "110111101011101010011011100000011000011000000010";
            WHEN "110" => p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= "111010011101000110111101000000010000010000000010";
            WHEN "111" => p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= "111101001110100011011110100000001000001000000010";
            WHEN OTHERS => -- unreachable
                           p1_uid213_eLn2_uid50_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix(ADD,216)@10
    lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 48 => p1_uid213_eLn2_uid50_block_rsrvd_fix_q(47)) & p1_uid213_eLn2_uid50_block_rsrvd_fix_q));
    lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000" & lowRangeB_uid215_eLn2_uid50_block_rsrvd_fix_merged_bit_select_c));
    lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_a) + SIGNED(lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_b));
    lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_q <= lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_o(48 downto 0);

    -- xv0_uid211_eLn2_uid50_block_rsrvd_fix(BITSELECT,210)@10
    xv0_uid211_eLn2_uid50_block_rsrvd_fix_in <= e_uid49_block_rsrvd_fix_q(5 downto 0);
    xv0_uid211_eLn2_uid50_block_rsrvd_fix_b <= xv0_uid211_eLn2_uid50_block_rsrvd_fix_in(5 downto 0);

    -- p0_uid214_eLn2_uid50_block_rsrvd_fix(LOOKUP,213)@10
    p0_uid214_eLn2_uid50_block_rsrvd_fix_combproc: PROCESS (xv0_uid211_eLn2_uid50_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv0_uid211_eLn2_uid50_block_rsrvd_fix_b) IS
            WHEN "000000" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000";
            WHEN "000001" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000000101100010111001000010111111101111110000";
            WHEN "000010" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000001011000101110010000101111111011111100000";
            WHEN "000011" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000010000101000101011001000111111001111010000";
            WHEN "000100" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000010110001011100100001011111110111111000000";
            WHEN "000101" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000011011101110011101001110111110101110110000";
            WHEN "000110" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000100001010001010110010001111110011110100000";
            WHEN "000111" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000100110110100001111010100111110001110010000";
            WHEN "001000" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000101100010111001000010111111101111110000000";
            WHEN "001001" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000110001111010000001011010111101101101110000";
            WHEN "001010" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000110111011100111010011101111101011101100000";
            WHEN "001011" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "000111100111111110011100000111101001101010000";
            WHEN "001100" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001000010100010101100100011111100111101000000";
            WHEN "001101" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001001000000101100101100110111100101100110000";
            WHEN "001110" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001001101101000011110101001111100011100100000";
            WHEN "001111" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001010011001011010111101100111100001100010000";
            WHEN "010000" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001011000101110010000101111111011111100000000";
            WHEN "010001" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001011110010001001001110010111011101011110000";
            WHEN "010010" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001100011110100000010110101111011011011100000";
            WHEN "010011" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001101001010110111011111000111011001011010000";
            WHEN "010100" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001101110111001110100111011111010111011000000";
            WHEN "010101" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001110100011100101101111110111010101010110000";
            WHEN "010110" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001111001111111100111000001111010011010100000";
            WHEN "010111" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "001111111100010100000000100111010001010010000";
            WHEN "011000" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010000101000101011001000111111001111010000000";
            WHEN "011001" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010001010101000010010001010111001101001110000";
            WHEN "011010" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010010000001011001011001101111001011001100000";
            WHEN "011011" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010010101101110000100010000111001001001010000";
            WHEN "011100" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010011011010000111101010011111000111001000000";
            WHEN "011101" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010100000110011110110010110111000101000110000";
            WHEN "011110" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010100110010110101111011001111000011000100000";
            WHEN "011111" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010101011111001101000011100111000001000010000";
            WHEN "100000" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010110001011100100001011111110111111000000000";
            WHEN "100001" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010110110111111011010100010110111100111110000";
            WHEN "100010" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "010111100100010010011100101110111010111100000";
            WHEN "100011" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011000010000101001100101000110111000111010000";
            WHEN "100100" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011000111101000000101101011110110110111000000";
            WHEN "100101" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011001101001010111110101110110110100110110000";
            WHEN "100110" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011010010101101110111110001110110010110100000";
            WHEN "100111" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011011000010000110000110100110110000110010000";
            WHEN "101000" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011011101110011101001110111110101110110000000";
            WHEN "101001" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011100011010110100010111010110101100101110000";
            WHEN "101010" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011101000111001011011111101110101010101100000";
            WHEN "101011" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011101110011100010101000000110101000101010000";
            WHEN "101100" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011110011111111001110000011110100110101000000";
            WHEN "101101" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011111001100010000111000110110100100100110000";
            WHEN "101110" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "011111111000101000000001001110100010100100000";
            WHEN "101111" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100000100100111111001001100110100000100010000";
            WHEN "110000" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100001010001010110010001111110011110100000000";
            WHEN "110001" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100001111101101101011010010110011100011110000";
            WHEN "110010" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100010101010000100100010101110011010011100000";
            WHEN "110011" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100011010110011011101011000110011000011010000";
            WHEN "110100" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100100000010110010110011011110010110011000000";
            WHEN "110101" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100100101111001001111011110110010100010110000";
            WHEN "110110" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100101011011100001000100001110010010010100000";
            WHEN "110111" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100110000111111000001100100110010000010010000";
            WHEN "111000" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100110110100001111010100111110001110010000000";
            WHEN "111001" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "100111100000100110011101010110001100001110000";
            WHEN "111010" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "101000001100111101100101101110001010001100000";
            WHEN "111011" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "101000111001010100101110000110001000001010000";
            WHEN "111100" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "101001100101101011110110011110000110001000000";
            WHEN "111101" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "101010010010000010111110110110000100000110000";
            WHEN "111110" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "101010111110011010000111001110000010000100000";
            WHEN "111111" => p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= "101011101010110001001111100110000000000010000";
            WHEN OTHERS => -- unreachable
                           p0_uid214_eLn2_uid50_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lowRangeB_uid215_eLn2_uid50_block_rsrvd_fix_merged_bit_select(BITSELECT,742)@10
    lowRangeB_uid215_eLn2_uid50_block_rsrvd_fix_merged_bit_select_b <= p0_uid214_eLn2_uid50_block_rsrvd_fix_q(0 downto 0);
    lowRangeB_uid215_eLn2_uid50_block_rsrvd_fix_merged_bit_select_c <= p0_uid214_eLn2_uid50_block_rsrvd_fix_q(44 downto 1);

    -- lev1_a0_uid218_eLn2_uid50_block_rsrvd_fix(BITJOIN,217)@10
    lev1_a0_uid218_eLn2_uid50_block_rsrvd_fix_q <= lev1_a0sumAHighB_uid217_eLn2_uid50_block_rsrvd_fix_q & lowRangeB_uid215_eLn2_uid50_block_rsrvd_fix_merged_bit_select_b;

    -- sR_uid228_eLn2_uid50_block_rsrvd_fix(BITSELECT,227)@10
    sR_uid228_eLn2_uid50_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(lev1_a0_uid218_eLn2_uid50_block_rsrvd_fix_q(47 downto 0));
    sR_uid228_eLn2_uid50_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(sR_uid228_eLn2_uid50_block_rsrvd_fix_in(47 downto 3));

    -- paddingX_uid221_eLn2_uid50_block_rsrvd_fix(CONSTANT,220)
    paddingX_uid221_eLn2_uid50_block_rsrvd_fix_q <= "000";

    -- updatedX_uid222_eLn2_uid50_block_rsrvd_fix(BITJOIN,221)@10
    updatedX_uid222_eLn2_uid50_block_rsrvd_fix_q <= maxValInOutFormat_uid219_eLn2_uid50_block_rsrvd_fix_q & paddingX_uid221_eLn2_uid50_block_rsrvd_fix_q;

    -- ovf_uid221_eLn2_uid50_block_rsrvd_fix(COMPARE,222)@10
    ovf_uid221_eLn2_uid50_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 48 => updatedX_uid222_eLn2_uid50_block_rsrvd_fix_q(47)) & updatedX_uid222_eLn2_uid50_block_rsrvd_fix_q));
    ovf_uid221_eLn2_uid50_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 50 => lev1_a0_uid218_eLn2_uid50_block_rsrvd_fix_q(49)) & lev1_a0_uid218_eLn2_uid50_block_rsrvd_fix_q));
    ovf_uid221_eLn2_uid50_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid221_eLn2_uid50_block_rsrvd_fix_a) - SIGNED(ovf_uid221_eLn2_uid50_block_rsrvd_fix_b));
    ovf_uid221_eLn2_uid50_block_rsrvd_fix_c(0) <= ovf_uid221_eLn2_uid50_block_rsrvd_fix_o(51);

    -- updatedY_uid225_eLn2_uid50_block_rsrvd_fix(BITJOIN,224)@10
    updatedY_uid225_eLn2_uid50_block_rsrvd_fix_q <= minValueInFormat_uid220_eLn2_uid50_block_rsrvd_fix_q & paddingX_uid221_eLn2_uid50_block_rsrvd_fix_q;

    -- udf_uid224_eLn2_uid50_block_rsrvd_fix(COMPARE,225)@10
    udf_uid224_eLn2_uid50_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 50 => lev1_a0_uid218_eLn2_uid50_block_rsrvd_fix_q(49)) & lev1_a0_uid218_eLn2_uid50_block_rsrvd_fix_q));
    udf_uid224_eLn2_uid50_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 48 => updatedY_uid225_eLn2_uid50_block_rsrvd_fix_q(47)) & updatedY_uid225_eLn2_uid50_block_rsrvd_fix_q));
    udf_uid224_eLn2_uid50_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid224_eLn2_uid50_block_rsrvd_fix_a) - SIGNED(udf_uid224_eLn2_uid50_block_rsrvd_fix_b));
    udf_uid224_eLn2_uid50_block_rsrvd_fix_c(0) <= udf_uid224_eLn2_uid50_block_rsrvd_fix_o(51);

    -- ovfudfcond_uid227_eLn2_uid50_block_rsrvd_fix(BITJOIN,226)@10
    ovfudfcond_uid227_eLn2_uid50_block_rsrvd_fix_q <= ovf_uid221_eLn2_uid50_block_rsrvd_fix_c & udf_uid224_eLn2_uid50_block_rsrvd_fix_c;

    -- sRA0_uid229_eLn2_uid50_block_rsrvd_fix(MUX,228)@10
    sRA0_uid229_eLn2_uid50_block_rsrvd_fix_s <= ovfudfcond_uid227_eLn2_uid50_block_rsrvd_fix_q;
    sRA0_uid229_eLn2_uid50_block_rsrvd_fix_combproc: PROCESS (sRA0_uid229_eLn2_uid50_block_rsrvd_fix_s, sR_uid228_eLn2_uid50_block_rsrvd_fix_b, minValueInFormat_uid220_eLn2_uid50_block_rsrvd_fix_q, maxValInOutFormat_uid219_eLn2_uid50_block_rsrvd_fix_q)
    BEGIN
        CASE (sRA0_uid229_eLn2_uid50_block_rsrvd_fix_s) IS
            WHEN "00" => sRA0_uid229_eLn2_uid50_block_rsrvd_fix_q <= sR_uid228_eLn2_uid50_block_rsrvd_fix_b;
            WHEN "01" => sRA0_uid229_eLn2_uid50_block_rsrvd_fix_q <= minValueInFormat_uid220_eLn2_uid50_block_rsrvd_fix_q;
            WHEN "10" => sRA0_uid229_eLn2_uid50_block_rsrvd_fix_q <= maxValInOutFormat_uid219_eLn2_uid50_block_rsrvd_fix_q;
            WHEN "11" => sRA0_uid229_eLn2_uid50_block_rsrvd_fix_q <= maxValInOutFormat_uid219_eLn2_uid50_block_rsrvd_fix_q;
            WHEN OTHERS => sRA0_uid229_eLn2_uid50_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- finalSumLogsumAHighB_uid70_block_rsrvd_fix(ADD,69)@10 + 1
    finalSumLogsumAHighB_uid70_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => sRA0_uid229_eLn2_uid50_block_rsrvd_fix_q(44)) & sRA0_uid229_eLn2_uid50_block_rsrvd_fix_q));
    finalSumLogsumAHighB_uid70_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 40 => highBBits_uid69_block_rsrvd_fix_b(39)) & highBBits_uid69_block_rsrvd_fix_b));
    finalSumLogsumAHighB_uid70_block_rsrvd_fix_i <= finalSumLogsumAHighB_uid70_block_rsrvd_fix_b;
    finalSumLogsumAHighB_uid70_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            finalSumLogsumAHighB_uid70_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist42_caseLog_uid51_block_rsrvd_fix_q_10_q = "1") THEN
                finalSumLogsumAHighB_uid70_block_rsrvd_fix_o <= finalSumLogsumAHighB_uid70_block_rsrvd_fix_i;
            ELSE
                finalSumLogsumAHighB_uid70_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(finalSumLogsumAHighB_uid70_block_rsrvd_fix_a) + SIGNED(finalSumLogsumAHighB_uid70_block_rsrvd_fix_b));
            END IF;
        END IF;
    END PROCESS;
    finalSumLogsumAHighB_uid70_block_rsrvd_fix_q <= finalSumLogsumAHighB_uid70_block_rsrvd_fix_o(45 downto 0);

    -- lowRangeB_uid68_block_rsrvd_fix(BITSELECT,67)@10
    lowRangeB_uid68_block_rsrvd_fix_in <= postPEMulLog_uid65_block_rsrvd_fix_result_add_0_0_q(19 downto 0);
    lowRangeB_uid68_block_rsrvd_fix_b <= lowRangeB_uid68_block_rsrvd_fix_in(19 downto 0);

    -- redist35_lowRangeB_uid68_block_rsrvd_fix_b_1(DELAY,787)
    redist35_lowRangeB_uid68_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => lowRangeB_uid68_block_rsrvd_fix_b, xout => redist35_lowRangeB_uid68_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- finalSumLog_uid71_block_rsrvd_fix(BITJOIN,70)@11
    finalSumLog_uid71_block_rsrvd_fix_q <= finalSumLogsumAHighB_uid70_block_rsrvd_fix_q & redist35_lowRangeB_uid68_block_rsrvd_fix_b_1_q;

    -- finalSumSignLog_uid72_block_rsrvd_fix(BITSELECT,71)@11
    finalSumSignLog_uid72_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(finalSumLog_uid71_block_rsrvd_fix_q(65 downto 65));

    -- notCaseLog_uid78_block_rsrvd_fix(LOGICAL,77)@11
    notCaseLog_uid78_block_rsrvd_fix_q <= not (redist43_caseLog_uid51_block_rsrvd_fix_q_11_q);

    -- signSignLog_uid79_block_rsrvd_fix(LOGICAL,78)@11
    signSignLog_uid79_block_rsrvd_fix_q <= notCaseLog_uid78_block_rsrvd_fix_q and finalSumSignLog_uid72_block_rsrvd_fix_b;

    -- redist43_caseLog_uid51_block_rsrvd_fix_q_11(DELAY,795)
    redist43_caseLog_uid51_block_rsrvd_fix_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist42_caseLog_uid51_block_rsrvd_fix_q_10_q, xout => redist43_caseLog_uid51_block_rsrvd_fix_q_11_q, clk => clk, aclr => areset );

    -- signRLog0_uid80_block_rsrvd_fix(LOGICAL,79)@11 + 1
    signRLog0_uid80_block_rsrvd_fix_qi <= redist43_caseLog_uid51_block_rsrvd_fix_q_11_q or signSignLog_uid79_block_rsrvd_fix_q;
    signRLog0_uid80_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRLog0_uid80_block_rsrvd_fix_qi, xout => signRLog0_uid80_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist33_signRLog0_uid80_block_rsrvd_fix_q_4(DELAY,785)
    redist33_signRLog0_uid80_block_rsrvd_fix_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRLog0_uid80_block_rsrvd_fix_q, xout => redist33_signRLog0_uid80_block_rsrvd_fix_q_4_q, clk => clk, aclr => areset );

    -- expXIsMax_uid18_block_rsrvd_fix(LOGICAL,17)@10 + 1
    expXIsMax_uid18_block_rsrvd_fix_qi <= "1" WHEN redist65_exp_x_uid15_block_rsrvd_fix_b_10_q = cstAllOWE_uid12_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid18_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid18_block_rsrvd_fix_qi, xout => expXIsMax_uid18_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist57_expXIsMax_uid18_block_rsrvd_fix_q_5(DELAY,809)
    redist57_expXIsMax_uid18_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid18_block_rsrvd_fix_q, xout => redist57_expXIsMax_uid18_block_rsrvd_fix_q_5_q, clk => clk, aclr => areset );

    -- invExpXIsMax_uid23_block_rsrvd_fix(LOGICAL,22)@15
    invExpXIsMax_uid23_block_rsrvd_fix_q <= not (redist57_expXIsMax_uid18_block_rsrvd_fix_q_5_q);

    -- excZ_x_uid17_block_rsrvd_fix(LOGICAL,16)@10 + 1
    excZ_x_uid17_block_rsrvd_fix_qi <= "1" WHEN redist65_exp_x_uid15_block_rsrvd_fix_b_10_q = cstAllZWE_uid14_block_rsrvd_fix_q ELSE "0";
    excZ_x_uid17_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid17_block_rsrvd_fix_qi, xout => excZ_x_uid17_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist59_excZ_x_uid17_block_rsrvd_fix_q_5(DELAY,811)
    redist59_excZ_x_uid17_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid17_block_rsrvd_fix_q, xout => redist59_excZ_x_uid17_block_rsrvd_fix_q_5_q, clk => clk, aclr => areset );

    -- InvExpXIsZero_uid24_block_rsrvd_fix(LOGICAL,23)@15
    InvExpXIsZero_uid24_block_rsrvd_fix_q <= not (redist59_excZ_x_uid17_block_rsrvd_fix_q_5_q);

    -- excR_x_uid25_block_rsrvd_fix(LOGICAL,24)@15
    excR_x_uid25_block_rsrvd_fix_q <= InvExpXIsZero_uid24_block_rsrvd_fix_q and invExpXIsMax_uid23_block_rsrvd_fix_q;

    -- signRLog_uid81_block_rsrvd_fix(LOGICAL,80)@15
    signRLog_uid81_block_rsrvd_fix_q <= excR_x_uid25_block_rsrvd_fix_q and redist33_signRLog0_uid80_block_rsrvd_fix_q_4_q;

    -- signProd_uid105_block_rsrvd_fix(LOGICAL,104)@15
    signProd_uid105_block_rsrvd_fix_q <= signRLog_uid81_block_rsrvd_fix_q xor redist45_signY_uid43_block_rsrvd_fix_b_2_q;

    -- frac_y_uid30_block_rsrvd_fix(BITSELECT,29)@13
    frac_y_uid30_block_rsrvd_fix_b <= in_1(22 downto 0);

    -- oFracY_uid90_block_rsrvd_fix(BITJOIN,89)@13
    oFracY_uid90_block_rsrvd_fix_q <= VCC_q & frac_y_uid30_block_rsrvd_fix_b;

    -- prodYLogX_uid92_block_rsrvd_fix_bs4(BITSELECT,633)@13
    prodYLogX_uid92_block_rsrvd_fix_bs4_in <= STD_LOGIC_VECTOR(oFracY_uid90_block_rsrvd_fix_q(17 downto 0));
    prodYLogX_uid92_block_rsrvd_fix_bs4_b <= STD_LOGIC_VECTOR(prodYLogX_uid92_block_rsrvd_fix_bs4_in(17 downto 0));

    -- prodYLogX_uid92_block_rsrvd_fix_bjA5(BITJOIN,634)@13
    prodYLogX_uid92_block_rsrvd_fix_bjA5_q <= GND_q & prodYLogX_uid92_block_rsrvd_fix_bs4_b;

    -- zs_uid293_countZLog_uid76_block_rsrvd_fix(CONSTANT,292)
    zs_uid293_countZLog_uid76_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- finalSumOneCompLog_uid74_block_rsrvd_fix(LOGICAL,73)@11
    finalSumOneCompLog_uid74_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((65 downto 1 => finalSumSignLog_uid72_block_rsrvd_fix_b(0)) & finalSumSignLog_uid72_block_rsrvd_fix_b));
    finalSumOneCompLog_uid74_block_rsrvd_fix_q <= finalSumLog_uid71_block_rsrvd_fix_q xor finalSumOneCompLog_uid74_block_rsrvd_fix_b;

    -- finalSumAbsLog_uid75_block_rsrvd_fix(ADD,74)@11
    finalSumAbsLog_uid75_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & finalSumOneCompLog_uid74_block_rsrvd_fix_q);
    finalSumAbsLog_uid75_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("000000000000000000000000000000000000000000000000000000000000000000" & finalSumSignLog_uid72_block_rsrvd_fix_b);
    finalSumAbsLog_uid75_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(finalSumAbsLog_uid75_block_rsrvd_fix_a) + UNSIGNED(finalSumAbsLog_uid75_block_rsrvd_fix_b));
    finalSumAbsLog_uid75_block_rsrvd_fix_q <= finalSumAbsLog_uid75_block_rsrvd_fix_o(66 downto 0);

    -- rVStage_uid294_countZLog_uid76_block_rsrvd_fix(BITSELECT,293)@11
    rVStage_uid294_countZLog_uid76_block_rsrvd_fix_b <= finalSumAbsLog_uid75_block_rsrvd_fix_q(66 downto 3);

    -- vCount_uid295_countZLog_uid76_block_rsrvd_fix(LOGICAL,294)@11
    vCount_uid295_countZLog_uid76_block_rsrvd_fix_q <= "1" WHEN rVStage_uid294_countZLog_uid76_block_rsrvd_fix_b = zs_uid293_countZLog_uid76_block_rsrvd_fix_q ELSE "0";

    -- redist16_vCount_uid295_countZLog_uid76_block_rsrvd_fix_q_1(DELAY,768)
    redist16_vCount_uid295_countZLog_uid76_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid295_countZLog_uid76_block_rsrvd_fix_q, xout => redist16_vCount_uid295_countZLog_uid76_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid301_countZLog_uid76_block_rsrvd_fix(CONSTANT,300)
    zs_uid301_countZLog_uid76_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- vStage_uid297_countZLog_uid76_block_rsrvd_fix(BITSELECT,296)@11
    vStage_uid297_countZLog_uid76_block_rsrvd_fix_in <= finalSumAbsLog_uid75_block_rsrvd_fix_q(2 downto 0);
    vStage_uid297_countZLog_uid76_block_rsrvd_fix_b <= vStage_uid297_countZLog_uid76_block_rsrvd_fix_in(2 downto 0);

    -- mO_uid296_countZLog_uid76_block_rsrvd_fix(CONSTANT,295)
    mO_uid296_countZLog_uid76_block_rsrvd_fix_q <= "1111111111111111111111111111111111111111111111111111111111111";

    -- cStage_uid298_countZLog_uid76_block_rsrvd_fix(BITJOIN,297)@11
    cStage_uid298_countZLog_uid76_block_rsrvd_fix_q <= vStage_uid297_countZLog_uid76_block_rsrvd_fix_b & mO_uid296_countZLog_uid76_block_rsrvd_fix_q;

    -- vStagei_uid300_countZLog_uid76_block_rsrvd_fix(MUX,299)@11
    vStagei_uid300_countZLog_uid76_block_rsrvd_fix_s <= vCount_uid295_countZLog_uid76_block_rsrvd_fix_q;
    vStagei_uid300_countZLog_uid76_block_rsrvd_fix_combproc: PROCESS (vStagei_uid300_countZLog_uid76_block_rsrvd_fix_s, rVStage_uid294_countZLog_uid76_block_rsrvd_fix_b, cStage_uid298_countZLog_uid76_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid300_countZLog_uid76_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid300_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid294_countZLog_uid76_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid300_countZLog_uid76_block_rsrvd_fix_q <= cStage_uid298_countZLog_uid76_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid300_countZLog_uid76_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select(BITSELECT,744)@11
    rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid300_countZLog_uid76_block_rsrvd_fix_q(63 downto 32);
    rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid300_countZLog_uid76_block_rsrvd_fix_q(31 downto 0);

    -- vCount_uid303_countZLog_uid76_block_rsrvd_fix(LOGICAL,302)@11
    vCount_uid303_countZLog_uid76_block_rsrvd_fix_q <= "1" WHEN rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b = zs_uid301_countZLog_uid76_block_rsrvd_fix_q ELSE "0";

    -- redist14_vCount_uid303_countZLog_uid76_block_rsrvd_fix_q_1(DELAY,766)
    redist14_vCount_uid303_countZLog_uid76_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid303_countZLog_uid76_block_rsrvd_fix_q, xout => redist14_vCount_uid303_countZLog_uid76_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid307_countZLog_uid76_block_rsrvd_fix(CONSTANT,306)
    zs_uid307_countZLog_uid76_block_rsrvd_fix_q <= "0000000000000000";

    -- vStagei_uid306_countZLog_uid76_block_rsrvd_fix(MUX,305)@11
    vStagei_uid306_countZLog_uid76_block_rsrvd_fix_s <= vCount_uid303_countZLog_uid76_block_rsrvd_fix_q;
    vStagei_uid306_countZLog_uid76_block_rsrvd_fix_combproc: PROCESS (vStagei_uid306_countZLog_uid76_block_rsrvd_fix_s, rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b, rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid306_countZLog_uid76_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid306_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid306_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid302_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid306_countZLog_uid76_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid308_countZLog_uid76_block_rsrvd_fix_merged_bit_select(BITSELECT,745)@11
    rVStage_uid308_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid306_countZLog_uid76_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid308_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid306_countZLog_uid76_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid309_countZLog_uid76_block_rsrvd_fix(LOGICAL,308)@11
    vCount_uid309_countZLog_uid76_block_rsrvd_fix_q <= "1" WHEN rVStage_uid308_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b = zs_uid307_countZLog_uid76_block_rsrvd_fix_q ELSE "0";

    -- redist13_vCount_uid309_countZLog_uid76_block_rsrvd_fix_q_1(DELAY,765)
    redist13_vCount_uid309_countZLog_uid76_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid309_countZLog_uid76_block_rsrvd_fix_q, xout => redist13_vCount_uid309_countZLog_uid76_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid312_countZLog_uid76_block_rsrvd_fix(MUX,311)@11 + 1
    vStagei_uid312_countZLog_uid76_block_rsrvd_fix_s <= vCount_uid309_countZLog_uid76_block_rsrvd_fix_q;
    vStagei_uid312_countZLog_uid76_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid312_countZLog_uid76_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid312_countZLog_uid76_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid312_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid308_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid312_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid308_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid312_countZLog_uid76_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select(BITSELECT,746)@12
    rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid312_countZLog_uid76_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid312_countZLog_uid76_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid315_countZLog_uid76_block_rsrvd_fix(LOGICAL,314)@12
    vCount_uid315_countZLog_uid76_block_rsrvd_fix_q <= "1" WHEN rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid14_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid318_countZLog_uid76_block_rsrvd_fix(MUX,317)@12
    vStagei_uid318_countZLog_uid76_block_rsrvd_fix_s <= vCount_uid315_countZLog_uid76_block_rsrvd_fix_q;
    vStagei_uid318_countZLog_uid76_block_rsrvd_fix_combproc: PROCESS (vStagei_uid318_countZLog_uid76_block_rsrvd_fix_s, rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b, rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid318_countZLog_uid76_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid318_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid318_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid314_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid318_countZLog_uid76_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select(BITSELECT,747)@12
    rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid318_countZLog_uid76_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid318_countZLog_uid76_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid321_countZLog_uid76_block_rsrvd_fix(LOGICAL,320)@12
    vCount_uid321_countZLog_uid76_block_rsrvd_fix_q <= "1" WHEN rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b = zs_uid319_countZLog_uid76_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid324_countZLog_uid76_block_rsrvd_fix(MUX,323)@12
    vStagei_uid324_countZLog_uid76_block_rsrvd_fix_s <= vCount_uid321_countZLog_uid76_block_rsrvd_fix_q;
    vStagei_uid324_countZLog_uid76_block_rsrvd_fix_combproc: PROCESS (vStagei_uid324_countZLog_uid76_block_rsrvd_fix_s, rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b, rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid324_countZLog_uid76_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid324_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid324_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid320_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid324_countZLog_uid76_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select(BITSELECT,748)@12
    rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid324_countZLog_uid76_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid324_countZLog_uid76_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid327_countZLog_uid76_block_rsrvd_fix(LOGICAL,326)@12
    vCount_uid327_countZLog_uid76_block_rsrvd_fix_q <= "1" WHEN rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b = z2_uid61_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid330_countZLog_uid76_block_rsrvd_fix(MUX,329)@12
    vStagei_uid330_countZLog_uid76_block_rsrvd_fix_s <= vCount_uid327_countZLog_uid76_block_rsrvd_fix_q;
    vStagei_uid330_countZLog_uid76_block_rsrvd_fix_combproc: PROCESS (vStagei_uid330_countZLog_uid76_block_rsrvd_fix_s, rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b, rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid330_countZLog_uid76_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid330_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid330_countZLog_uid76_block_rsrvd_fix_q <= rVStage_uid326_countZLog_uid76_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid330_countZLog_uid76_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid332_countZLog_uid76_block_rsrvd_fix(BITSELECT,331)@12
    rVStage_uid332_countZLog_uid76_block_rsrvd_fix_b <= vStagei_uid330_countZLog_uid76_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid333_countZLog_uid76_block_rsrvd_fix(LOGICAL,332)@12
    vCount_uid333_countZLog_uid76_block_rsrvd_fix_q <= "1" WHEN rVStage_uid332_countZLog_uid76_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid334_countZLog_uid76_block_rsrvd_fix(BITJOIN,333)@12
    r_uid334_countZLog_uid76_block_rsrvd_fix_q <= redist16_vCount_uid295_countZLog_uid76_block_rsrvd_fix_q_1_q & redist14_vCount_uid303_countZLog_uid76_block_rsrvd_fix_q_1_q & redist13_vCount_uid309_countZLog_uid76_block_rsrvd_fix_q_1_q & vCount_uid315_countZLog_uid76_block_rsrvd_fix_q & vCount_uid321_countZLog_uid76_block_rsrvd_fix_q & vCount_uid327_countZLog_uid76_block_rsrvd_fix_q & vCount_uid333_countZLog_uid76_block_rsrvd_fix_q;

    -- redist12_r_uid334_countZLog_uid76_block_rsrvd_fix_q_1(DELAY,764)
    redist12_r_uid334_countZLog_uid76_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => r_uid334_countZLog_uid76_block_rsrvd_fix_q, xout => redist12_r_uid334_countZLog_uid76_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- cstMSBFinalSumPBias_uid82_block_rsrvd_fix(CONSTANT,81)
    cstMSBFinalSumPBias_uid82_block_rsrvd_fix_q <= "010001001";

    -- expRExtLog_uid83_block_rsrvd_fix(SUB,82)@13
    expRExtLog_uid83_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & cstMSBFinalSumPBias_uid82_block_rsrvd_fix_q);
    expRExtLog_uid83_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("000" & redist12_r_uid334_countZLog_uid76_block_rsrvd_fix_q_1_q);
    expRExtLog_uid83_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expRExtLog_uid83_block_rsrvd_fix_a) - UNSIGNED(expRExtLog_uid83_block_rsrvd_fix_b));
    expRExtLog_uid83_block_rsrvd_fix_q <= expRExtLog_uid83_block_rsrvd_fix_o(9 downto 0);

    -- leftShiftStage3Idx1Rng1_uid625_normValLog_uid77_block_rsrvd_fix(BITSELECT,624)@12
    leftShiftStage3Idx1Rng1_uid625_normValLog_uid77_block_rsrvd_fix_in <= leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q(65 downto 0);
    leftShiftStage3Idx1Rng1_uid625_normValLog_uid77_block_rsrvd_fix_b <= leftShiftStage3Idx1Rng1_uid625_normValLog_uid77_block_rsrvd_fix_in(65 downto 0);

    -- leftShiftStage3Idx1_uid626_normValLog_uid77_block_rsrvd_fix(BITJOIN,625)@12
    leftShiftStage3Idx1_uid626_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage3Idx1Rng1_uid625_normValLog_uid77_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage2Idx3Rng6_uid620_normValLog_uid77_block_rsrvd_fix(BITSELECT,619)@12
    leftShiftStage2Idx3Rng6_uid620_normValLog_uid77_block_rsrvd_fix_in <= leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q(60 downto 0);
    leftShiftStage2Idx3Rng6_uid620_normValLog_uid77_block_rsrvd_fix_b <= leftShiftStage2Idx3Rng6_uid620_normValLog_uid77_block_rsrvd_fix_in(60 downto 0);

    -- leftShiftStage2Idx3Pad6_uid619_normValLog_uid77_block_rsrvd_fix(CONSTANT,618)
    leftShiftStage2Idx3Pad6_uid619_normValLog_uid77_block_rsrvd_fix_q <= "000000";

    -- leftShiftStage2Idx3_uid621_normValLog_uid77_block_rsrvd_fix(BITJOIN,620)@12
    leftShiftStage2Idx3_uid621_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage2Idx3Rng6_uid620_normValLog_uid77_block_rsrvd_fix_b & leftShiftStage2Idx3Pad6_uid619_normValLog_uid77_block_rsrvd_fix_q;

    -- leftShiftStage2Idx2Rng4_uid617_normValLog_uid77_block_rsrvd_fix(BITSELECT,616)@12
    leftShiftStage2Idx2Rng4_uid617_normValLog_uid77_block_rsrvd_fix_in <= leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q(62 downto 0);
    leftShiftStage2Idx2Rng4_uid617_normValLog_uid77_block_rsrvd_fix_b <= leftShiftStage2Idx2Rng4_uid617_normValLog_uid77_block_rsrvd_fix_in(62 downto 0);

    -- leftShiftStage2Idx2_uid618_normValLog_uid77_block_rsrvd_fix(BITJOIN,617)@12
    leftShiftStage2Idx2_uid618_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage2Idx2Rng4_uid617_normValLog_uid77_block_rsrvd_fix_b & zs_uid319_countZLog_uid76_block_rsrvd_fix_q;

    -- leftShiftStage2Idx1Rng2_uid614_normValLog_uid77_block_rsrvd_fix(BITSELECT,613)@12
    leftShiftStage2Idx1Rng2_uid614_normValLog_uid77_block_rsrvd_fix_in <= leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q(64 downto 0);
    leftShiftStage2Idx1Rng2_uid614_normValLog_uid77_block_rsrvd_fix_b <= leftShiftStage2Idx1Rng2_uid614_normValLog_uid77_block_rsrvd_fix_in(64 downto 0);

    -- leftShiftStage2Idx1_uid615_normValLog_uid77_block_rsrvd_fix(BITJOIN,614)@12
    leftShiftStage2Idx1_uid615_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage2Idx1Rng2_uid614_normValLog_uid77_block_rsrvd_fix_b & z2_uid61_block_rsrvd_fix_q;

    -- leftShiftStage1Idx3Rng24_uid609_normValLog_uid77_block_rsrvd_fix(BITSELECT,608)@12
    leftShiftStage1Idx3Rng24_uid609_normValLog_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q(42 downto 0);
    leftShiftStage1Idx3Rng24_uid609_normValLog_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng24_uid609_normValLog_uid77_block_rsrvd_fix_in(42 downto 0);

    -- leftShiftStage1Idx3Pad24_uid608_normValLog_uid77_block_rsrvd_fix(CONSTANT,607)
    leftShiftStage1Idx3Pad24_uid608_normValLog_uid77_block_rsrvd_fix_q <= "000000000000000000000000";

    -- leftShiftStage1Idx3_uid610_normValLog_uid77_block_rsrvd_fix(BITJOIN,609)@12
    leftShiftStage1Idx3_uid610_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng24_uid609_normValLog_uid77_block_rsrvd_fix_b & leftShiftStage1Idx3Pad24_uid608_normValLog_uid77_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng16_uid606_normValLog_uid77_block_rsrvd_fix(BITSELECT,605)@12
    leftShiftStage1Idx2Rng16_uid606_normValLog_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q(50 downto 0);
    leftShiftStage1Idx2Rng16_uid606_normValLog_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng16_uid606_normValLog_uid77_block_rsrvd_fix_in(50 downto 0);

    -- leftShiftStage1Idx2_uid607_normValLog_uid77_block_rsrvd_fix(BITJOIN,606)@12
    leftShiftStage1Idx2_uid607_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng16_uid606_normValLog_uid77_block_rsrvd_fix_b & zs_uid307_countZLog_uid76_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng8_uid603_normValLog_uid77_block_rsrvd_fix(BITSELECT,602)@12
    leftShiftStage1Idx1Rng8_uid603_normValLog_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q(58 downto 0);
    leftShiftStage1Idx1Rng8_uid603_normValLog_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng8_uid603_normValLog_uid77_block_rsrvd_fix_in(58 downto 0);

    -- leftShiftStage1Idx1_uid604_normValLog_uid77_block_rsrvd_fix(BITJOIN,603)@12
    leftShiftStage1Idx1_uid604_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng8_uid603_normValLog_uid77_block_rsrvd_fix_b & cstAllZWE_uid14_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3_uid599_normValLog_uid77_block_rsrvd_fix(CONSTANT,598)
    leftShiftStage0Idx3_uid599_normValLog_uid77_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000000000000000000000";

    -- redist15_vStage_uid297_countZLog_uid76_block_rsrvd_fix_b_1(DELAY,767)
    redist15_vStage_uid297_countZLog_uid76_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid297_countZLog_uid76_block_rsrvd_fix_b, xout => redist15_vStage_uid297_countZLog_uid76_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0Idx2_uid598_normValLog_uid77_block_rsrvd_fix(BITJOIN,597)@12
    leftShiftStage0Idx2_uid598_normValLog_uid77_block_rsrvd_fix_q <= redist15_vStage_uid297_countZLog_uid76_block_rsrvd_fix_b_1_q & zs_uid293_countZLog_uid76_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng32_uid594_normValLog_uid77_block_rsrvd_fix(BITSELECT,593)@12
    leftShiftStage0Idx1Rng32_uid594_normValLog_uid77_block_rsrvd_fix_in <= redist34_finalSumAbsLog_uid75_block_rsrvd_fix_q_1_q(34 downto 0);
    leftShiftStage0Idx1Rng32_uid594_normValLog_uid77_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng32_uid594_normValLog_uid77_block_rsrvd_fix_in(34 downto 0);

    -- leftShiftStage0Idx1_uid595_normValLog_uid77_block_rsrvd_fix(BITJOIN,594)@12
    leftShiftStage0Idx1_uid595_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng32_uid594_normValLog_uid77_block_rsrvd_fix_b & zs_uid301_countZLog_uid76_block_rsrvd_fix_q;

    -- redist34_finalSumAbsLog_uid75_block_rsrvd_fix_q_1(DELAY,786)
    redist34_finalSumAbsLog_uid75_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 67, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => finalSumAbsLog_uid75_block_rsrvd_fix_q, xout => redist34_finalSumAbsLog_uid75_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix(MUX,600)@12
    leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_s, redist34_finalSumAbsLog_uid75_block_rsrvd_fix_q_1_q, leftShiftStage0Idx1_uid595_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage0Idx2_uid598_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage0Idx3_uid599_normValLog_uid77_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q <= redist34_finalSumAbsLog_uid75_block_rsrvd_fix_q_1_q;
            WHEN "01" => leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid595_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid598_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid599_normValLog_uid77_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix(MUX,611)@12
    leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_s, leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage1Idx1_uid604_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage1Idx2_uid607_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage1Idx3_uid610_normValLog_uid77_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage0_uid601_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid604_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid607_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid610_normValLog_uid77_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix(MUX,622)@12
    leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_d;
    leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_combproc: PROCESS (leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_s, leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage2Idx1_uid615_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage2Idx2_uid618_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage2Idx3_uid621_normValLog_uid77_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage1_uid612_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid615_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage2Idx2_uid618_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage2Idx3_uid621_normValLog_uid77_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select(BITSELECT,749)@12
    leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_b <= r_uid334_countZLog_uid76_block_rsrvd_fix_q(6 downto 5);
    leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_c <= r_uid334_countZLog_uid76_block_rsrvd_fix_q(4 downto 3);
    leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_d <= r_uid334_countZLog_uid76_block_rsrvd_fix_q(2 downto 1);
    leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_e <= r_uid334_countZLog_uid76_block_rsrvd_fix_q(0 downto 0);

    -- leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix(MUX,627)@12
    leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid600_normValLog_uid77_block_rsrvd_fix_merged_bit_select_e;
    leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_combproc: PROCESS (leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_s, leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q, leftShiftStage3Idx1_uid626_normValLog_uid77_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_s) IS
            WHEN "0" => leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage2_uid623_normValLog_uid77_block_rsrvd_fix_q;
            WHEN "1" => leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_q <= leftShiftStage3Idx1_uid626_normValLog_uid77_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPreRndLog_uid84_block_rsrvd_fix(BITSELECT,83)@12
    fracRPreRndLog_uid84_block_rsrvd_fix_in <= leftShiftStage3_uid628_normValLog_uid77_block_rsrvd_fix_q(65 downto 0);
    fracRPreRndLog_uid84_block_rsrvd_fix_b <= fracRPreRndLog_uid84_block_rsrvd_fix_in(65 downto 32);

    -- redist32_fracRPreRndLog_uid84_block_rsrvd_fix_b_1(DELAY,784)
    redist32_fracRPreRndLog_uid84_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRPreRndLog_uid84_block_rsrvd_fix_b, xout => redist32_fracRPreRndLog_uid84_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- expFracConc_uid85_block_rsrvd_fix(BITJOIN,84)@13
    expFracConc_uid85_block_rsrvd_fix_q <= expRExtLog_uid83_block_rsrvd_fix_q & redist32_fracRPreRndLog_uid84_block_rsrvd_fix_b_1_q;

    -- expFracPostRndLog_uid87_block_rsrvd_fix(ADD,86)@13
    expFracPostRndLog_uid87_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expFracConc_uid85_block_rsrvd_fix_q);
    expFracPostRndLog_uid87_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000000000000000" & VCC_q);
    expFracPostRndLog_uid87_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expFracPostRndLog_uid87_block_rsrvd_fix_a) + UNSIGNED(expFracPostRndLog_uid87_block_rsrvd_fix_b));
    expFracPostRndLog_uid87_block_rsrvd_fix_q <= expFracPostRndLog_uid87_block_rsrvd_fix_o(44 downto 0);

    -- fracRLog_uid88_block_rsrvd_fix(BITSELECT,87)@13
    fracRLog_uid88_block_rsrvd_fix_in <= expFracPostRndLog_uid87_block_rsrvd_fix_q(33 downto 0);
    fracRLog_uid88_block_rsrvd_fix_b <= fracRLog_uid88_block_rsrvd_fix_in(33 downto 1);

    -- oFracLog_uid91_block_rsrvd_fix(BITJOIN,90)@13
    oFracLog_uid91_block_rsrvd_fix_q <= VCC_q & fracRLog_uid88_block_rsrvd_fix_b;

    -- prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select(BITSELECT,739)@13
    prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select_b <= oFracLog_uid91_block_rsrvd_fix_q(17 downto 0);
    prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select_c <= oFracLog_uid91_block_rsrvd_fix_q(33 downto 18);

    -- prodYLogX_uid92_block_rsrvd_fix_bjB9(BITJOIN,638)@13
    prodYLogX_uid92_block_rsrvd_fix_bjB9_q <= GND_q & prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select_b;

    -- prodYLogX_uid92_block_rsrvd_fix_bs7(BITSELECT,636)@13
    prodYLogX_uid92_block_rsrvd_fix_bs7_b <= STD_LOGIC_VECTOR(oFracY_uid90_block_rsrvd_fix_q(23 downto 18));

    -- prodYLogX_uid92_block_rsrvd_fix_ma3_cma(CHAINMULTADD,738)@13 + 2
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_reset <= areset;
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_ena0 <= '1';
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_ena1 <= prodYLogX_uid92_block_rsrvd_fix_ma3_cma_ena0;
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_l(0) <= SIGNED(RESIZE(prodYLogX_uid92_block_rsrvd_fix_ma3_cma_a0(0),17));
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_l(1) <= SIGNED(RESIZE(prodYLogX_uid92_block_rsrvd_fix_ma3_cma_a0(1),17));
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_p(0) <= prodYLogX_uid92_block_rsrvd_fix_ma3_cma_l(0) * prodYLogX_uid92_block_rsrvd_fix_ma3_cma_c0(0);
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_p(1) <= prodYLogX_uid92_block_rsrvd_fix_ma3_cma_l(1) * prodYLogX_uid92_block_rsrvd_fix_ma3_cma_c0(1);
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_u(0) <= RESIZE(prodYLogX_uid92_block_rsrvd_fix_ma3_cma_p(0),37);
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_u(1) <= RESIZE(prodYLogX_uid92_block_rsrvd_fix_ma3_cma_p(1),37);
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_w(0) <= prodYLogX_uid92_block_rsrvd_fix_ma3_cma_u(0) + prodYLogX_uid92_block_rsrvd_fix_ma3_cma_u(1);
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_x(0) <= prodYLogX_uid92_block_rsrvd_fix_ma3_cma_w(0);
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_y(0) <= prodYLogX_uid92_block_rsrvd_fix_ma3_cma_x(0);
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodYLogX_uid92_block_rsrvd_fix_ma3_cma_a0 <= (others => (others => '0'));
            prodYLogX_uid92_block_rsrvd_fix_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodYLogX_uid92_block_rsrvd_fix_ma3_cma_ena0 = '1') THEN
                prodYLogX_uid92_block_rsrvd_fix_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodYLogX_uid92_block_rsrvd_fix_bs7_b),16);
                prodYLogX_uid92_block_rsrvd_fix_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select_c),16);
                prodYLogX_uid92_block_rsrvd_fix_ma3_cma_c0(0) <= RESIZE(SIGNED(prodYLogX_uid92_block_rsrvd_fix_bjB9_q),19);
                prodYLogX_uid92_block_rsrvd_fix_ma3_cma_c0(1) <= RESIZE(SIGNED(prodYLogX_uid92_block_rsrvd_fix_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodYLogX_uid92_block_rsrvd_fix_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodYLogX_uid92_block_rsrvd_fix_ma3_cma_ena1 = '1') THEN
                prodYLogX_uid92_block_rsrvd_fix_ma3_cma_s(0) <= prodYLogX_uid92_block_rsrvd_fix_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodYLogX_uid92_block_rsrvd_fix_ma3_cma_s(0)(35 downto 0)), xout => prodYLogX_uid92_block_rsrvd_fix_ma3_cma_qq, clk => clk, aclr => areset );
    prodYLogX_uid92_block_rsrvd_fix_ma3_cma_q <= STD_LOGIC_VECTOR(prodYLogX_uid92_block_rsrvd_fix_ma3_cma_qq(35 downto 0));

    -- prodYLogX_uid92_block_rsrvd_fix_align_14(BITSHIFT,643)@15
    prodYLogX_uid92_block_rsrvd_fix_align_14_qint <= prodYLogX_uid92_block_rsrvd_fix_ma3_cma_q & "000000000000000000";
    prodYLogX_uid92_block_rsrvd_fix_align_14_q <= prodYLogX_uid92_block_rsrvd_fix_align_14_qint(53 downto 0);

    -- prodYLogX_uid92_block_rsrvd_fix_bs11(BITSELECT,640)@13
    prodYLogX_uid92_block_rsrvd_fix_bs11_b <= oFracY_uid90_block_rsrvd_fix_q(23 downto 18);

    -- prodYLogX_uid92_block_rsrvd_fix_im10_cma(CHAINMULTADD,735)@13 + 2
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_reset <= areset;
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_ena0 <= '1';
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_ena1 <= prodYLogX_uid92_block_rsrvd_fix_im10_cma_ena0;
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_p(0) <= prodYLogX_uid92_block_rsrvd_fix_im10_cma_a0(0) * prodYLogX_uid92_block_rsrvd_fix_im10_cma_c0(0);
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_u(0) <= RESIZE(prodYLogX_uid92_block_rsrvd_fix_im10_cma_p(0),26);
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_w(0) <= prodYLogX_uid92_block_rsrvd_fix_im10_cma_u(0);
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_x(0) <= prodYLogX_uid92_block_rsrvd_fix_im10_cma_w(0);
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_y(0) <= prodYLogX_uid92_block_rsrvd_fix_im10_cma_x(0);
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodYLogX_uid92_block_rsrvd_fix_im10_cma_a0 <= (others => (others => '0'));
            prodYLogX_uid92_block_rsrvd_fix_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodYLogX_uid92_block_rsrvd_fix_im10_cma_ena0 = '1') THEN
                prodYLogX_uid92_block_rsrvd_fix_im10_cma_a0(0) <= RESIZE(UNSIGNED(prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select_c),16);
                prodYLogX_uid92_block_rsrvd_fix_im10_cma_c0(0) <= RESIZE(UNSIGNED(prodYLogX_uid92_block_rsrvd_fix_bs11_b),10);
            END IF;
        END IF;
    END PROCESS;
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodYLogX_uid92_block_rsrvd_fix_im10_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodYLogX_uid92_block_rsrvd_fix_im10_cma_ena1 = '1') THEN
                prodYLogX_uid92_block_rsrvd_fix_im10_cma_s(0) <= prodYLogX_uid92_block_rsrvd_fix_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodYLogX_uid92_block_rsrvd_fix_im10_cma_s(0)(25 downto 0)), xout => prodYLogX_uid92_block_rsrvd_fix_im10_cma_qq, clk => clk, aclr => areset );
    prodYLogX_uid92_block_rsrvd_fix_im10_cma_q <= STD_LOGIC_VECTOR(prodYLogX_uid92_block_rsrvd_fix_im10_cma_qq(21 downto 0));

    -- prodYLogX_uid92_block_rsrvd_fix_bs1(BITSELECT,630)@13
    prodYLogX_uid92_block_rsrvd_fix_bs1_in <= oFracY_uid90_block_rsrvd_fix_q(17 downto 0);
    prodYLogX_uid92_block_rsrvd_fix_bs1_b <= prodYLogX_uid92_block_rsrvd_fix_bs1_in(17 downto 0);

    -- prodYLogX_uid92_block_rsrvd_fix_im0_cma(CHAINMULTADD,734)@13 + 2
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_reset <= areset;
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_ena0 <= '1';
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_ena1 <= prodYLogX_uid92_block_rsrvd_fix_im0_cma_ena0;
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_p(0) <= prodYLogX_uid92_block_rsrvd_fix_im0_cma_a0(0) * prodYLogX_uid92_block_rsrvd_fix_im0_cma_c0(0);
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_u(0) <= RESIZE(prodYLogX_uid92_block_rsrvd_fix_im0_cma_p(0),36);
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_w(0) <= prodYLogX_uid92_block_rsrvd_fix_im0_cma_u(0);
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_x(0) <= prodYLogX_uid92_block_rsrvd_fix_im0_cma_w(0);
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_y(0) <= prodYLogX_uid92_block_rsrvd_fix_im0_cma_x(0);
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodYLogX_uid92_block_rsrvd_fix_im0_cma_a0 <= (others => (others => '0'));
            prodYLogX_uid92_block_rsrvd_fix_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodYLogX_uid92_block_rsrvd_fix_im0_cma_ena0 = '1') THEN
                prodYLogX_uid92_block_rsrvd_fix_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodYLogX_uid92_block_rsrvd_fix_bs1_b),18);
                prodYLogX_uid92_block_rsrvd_fix_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodYLogX_uid92_block_rsrvd_fix_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodYLogX_uid92_block_rsrvd_fix_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodYLogX_uid92_block_rsrvd_fix_im0_cma_ena1 = '1') THEN
                prodYLogX_uid92_block_rsrvd_fix_im0_cma_s(0) <= prodYLogX_uid92_block_rsrvd_fix_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodYLogX_uid92_block_rsrvd_fix_im0_cma_s(0)(35 downto 0)), xout => prodYLogX_uid92_block_rsrvd_fix_im0_cma_qq, clk => clk, aclr => areset );
    prodYLogX_uid92_block_rsrvd_fix_im0_cma_q <= STD_LOGIC_VECTOR(prodYLogX_uid92_block_rsrvd_fix_im0_cma_qq(35 downto 0));

    -- prodYLogX_uid92_block_rsrvd_fix_join_13(BITJOIN,642)@15
    prodYLogX_uid92_block_rsrvd_fix_join_13_q <= prodYLogX_uid92_block_rsrvd_fix_im10_cma_q & prodYLogX_uid92_block_rsrvd_fix_im0_cma_q;

    -- prodYLogX_uid92_block_rsrvd_fix_result_add_0_0(ADD,645)@15
    prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & prodYLogX_uid92_block_rsrvd_fix_join_13_q));
    prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((60 downto 54 => prodYLogX_uid92_block_rsrvd_fix_align_14_q(53)) & prodYLogX_uid92_block_rsrvd_fix_align_14_q));
    prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_a) + SIGNED(prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_b));
    prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_q <= prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_o(59 downto 0);

    -- normProdYLogXHigh_uid95_block_rsrvd_fix(BITSELECT,94)@15
    normProdYLogXHigh_uid95_block_rsrvd_fix_in <= prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_q(56 downto 0);
    normProdYLogXHigh_uid95_block_rsrvd_fix_b <= normProdYLogXHigh_uid95_block_rsrvd_fix_in(56 downto 24);

    -- normProdYLogXLow_uid96_block_rsrvd_fix(BITSELECT,95)@15
    normProdYLogXLow_uid96_block_rsrvd_fix_in <= prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_q(55 downto 0);
    normProdYLogXLow_uid96_block_rsrvd_fix_b <= normProdYLogXLow_uid96_block_rsrvd_fix_in(55 downto 23);

    -- prodNormBit_uid93_block_rsrvd_fix(BITSELECT,92)@15
    prodNormBit_uid93_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(prodYLogX_uid92_block_rsrvd_fix_result_add_0_0_q(57 downto 0));
    prodNormBit_uid93_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(prodNormBit_uid93_block_rsrvd_fix_in(57 downto 57));

    -- normProdYLogX_uid97_block_rsrvd_fix(MUX,96)@15
    normProdYLogX_uid97_block_rsrvd_fix_s <= prodNormBit_uid93_block_rsrvd_fix_b;
    normProdYLogX_uid97_block_rsrvd_fix_combproc: PROCESS (normProdYLogX_uid97_block_rsrvd_fix_s, normProdYLogXLow_uid96_block_rsrvd_fix_b, normProdYLogXHigh_uid95_block_rsrvd_fix_b)
    BEGIN
        CASE (normProdYLogX_uid97_block_rsrvd_fix_s) IS
            WHEN "0" => normProdYLogX_uid97_block_rsrvd_fix_q <= normProdYLogXLow_uid96_block_rsrvd_fix_b;
            WHEN "1" => normProdYLogX_uid97_block_rsrvd_fix_q <= normProdYLogXHigh_uid95_block_rsrvd_fix_b;
            WHEN OTHERS => normProdYLogX_uid97_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oFracProd_uid98_block_rsrvd_fix(BITJOIN,97)@15
    oFracProd_uid98_block_rsrvd_fix_q <= VCC_q & normProdYLogX_uid97_block_rsrvd_fix_q;

    -- zoFracQ_uid110_block_rsrvd_fix(BITJOIN,109)@15
    zoFracQ_uid110_block_rsrvd_fix_q <= GND_q & oFracProd_uid98_block_rsrvd_fix_q;

    -- onesCmpFxpInQ_uid111_block_rsrvd_fix(LOGICAL,110)@15
    onesCmpFxpInQ_uid111_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 1 => signProd_uid105_block_rsrvd_fix_q(0)) & signProd_uid105_block_rsrvd_fix_q));
    onesCmpFxpInQ_uid111_block_rsrvd_fix_q <= zoFracQ_uid110_block_rsrvd_fix_q xor onesCmpFxpInQ_uid111_block_rsrvd_fix_b;

    -- fxpInExtQ_uid112_block_rsrvd_fix(ADD,111)@15
    fxpInExtQ_uid112_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & onesCmpFxpInQ_uid111_block_rsrvd_fix_q);
    fxpInExtQ_uid112_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000000" & signProd_uid105_block_rsrvd_fix_q);
    fxpInExtQ_uid112_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fxpInExtQ_uid112_block_rsrvd_fix_a) + UNSIGNED(fxpInExtQ_uid112_block_rsrvd_fix_b));
    fxpInExtQ_uid112_block_rsrvd_fix_q <= fxpInExtQ_uid112_block_rsrvd_fix_o(35 downto 0);

    -- fxpInQPreConstMult_uid113_block_rsrvd_fix(BITSELECT,112)@15
    fxpInQPreConstMult_uid113_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(fxpInExtQ_uid112_block_rsrvd_fix_q(34 downto 0));
    fxpInQPreConstMult_uid113_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(fxpInQPreConstMult_uid113_block_rsrvd_fix_in(34 downto 0));

    -- xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITSELECT,335)@15
    xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in <= fxpInQPreConstMult_uid113_block_rsrvd_fix_b(5 downto 0);
    xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in(5 downto 0);

    -- redist11_xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1(DELAY,763)
    redist11_xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b, xout => redist11_xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix(LOOKUP,346)@16
    p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_combproc: PROCESS (redist11_xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist11_xv0_uid336_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1_q) IS
            WHEN "000000" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000000000000";
            WHEN "000001" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000010111000";
            WHEN "000010" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000101110001";
            WHEN "000011" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001000101001";
            WHEN "000100" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001011100010";
            WHEN "000101" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001110011011";
            WHEN "000110" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010001010011";
            WHEN "000111" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010100001100";
            WHEN "001000" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010111000101";
            WHEN "001001" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011001111101";
            WHEN "001010" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011100110110";
            WHEN "001011" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011111101111";
            WHEN "001100" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100010100111";
            WHEN "001101" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100101100000";
            WHEN "001110" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101000011001";
            WHEN "001111" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101011010001";
            WHEN "010000" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101110001010";
            WHEN "010001" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110001000011";
            WHEN "010010" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110011111011";
            WHEN "010011" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110110110100";
            WHEN "010100" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111001101101";
            WHEN "010101" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111100100101";
            WHEN "010110" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111111011110";
            WHEN "010111" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000010010111";
            WHEN "011000" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000101001111";
            WHEN "011001" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001000001000";
            WHEN "011010" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001011000001";
            WHEN "011011" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001101111001";
            WHEN "011100" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010000110010";
            WHEN "011101" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010011101011";
            WHEN "011110" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010110100011";
            WHEN "011111" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011001011100";
            WHEN "100000" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011100010101";
            WHEN "100001" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011111001101";
            WHEN "100010" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100010000110";
            WHEN "100011" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100100111111";
            WHEN "100100" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100111110111";
            WHEN "100101" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101010110000";
            WHEN "100110" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101101101001";
            WHEN "100111" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110000100001";
            WHEN "101000" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110011011010";
            WHEN "101001" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110110010011";
            WHEN "101010" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111001001011";
            WHEN "101011" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111100000100";
            WHEN "101100" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111110111101";
            WHEN "101101" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000001110101";
            WHEN "101110" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000100101110";
            WHEN "101111" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000111100111";
            WHEN "110000" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001010011111";
            WHEN "110001" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001101011000";
            WHEN "110010" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010000010001";
            WHEN "110011" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010011001001";
            WHEN "110100" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010110000010";
            WHEN "110101" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011000111011";
            WHEN "110110" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011011110011";
            WHEN "110111" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011110101100";
            WHEN "111000" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100001100101";
            WHEN "111001" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100100011101";
            WHEN "111010" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100111010110";
            WHEN "111011" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101010001111";
            WHEN "111100" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101101000111";
            WHEN "111101" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110000000000";
            WHEN "111110" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110010111001";
            WHEN "111111" => p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110101110001";
            WHEN OTHERS => -- unreachable
                           p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITSELECT,336)@15
    xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in <= fxpInQPreConstMult_uid113_block_rsrvd_fix_b(11 downto 0);
    xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in(11 downto 6);

    -- redist10_xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1(DELAY,762)
    redist10_xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b, xout => redist10_xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix(LOOKUP,345)@16
    p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_combproc: PROCESS (redist10_xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist10_xv1_uid337_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b_1_q) IS
            WHEN "000000" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000000000000000000";
            WHEN "000001" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000010111000101010";
            WHEN "000010" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000101110001010101";
            WHEN "000011" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001000101001111111";
            WHEN "000100" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001011100010101010";
            WHEN "000101" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001110011011010100";
            WHEN "000110" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010001010011111111";
            WHEN "000111" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010100001100101001";
            WHEN "001000" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010111000101010100";
            WHEN "001001" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011001111101111111";
            WHEN "001010" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011100110110101001";
            WHEN "001011" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011111101111010100";
            WHEN "001100" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100010100111111110";
            WHEN "001101" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100101100000101001";
            WHEN "001110" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101000011001010011";
            WHEN "001111" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101011010001111110";
            WHEN "010000" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101110001010101000";
            WHEN "010001" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110001000011010011";
            WHEN "010010" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110011111011111110";
            WHEN "010011" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110110110100101000";
            WHEN "010100" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111001101101010011";
            WHEN "010101" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111100100101111101";
            WHEN "010110" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111111011110101000";
            WHEN "010111" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000010010111010010";
            WHEN "011000" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000101001111111101";
            WHEN "011001" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001000001000100111";
            WHEN "011010" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001011000001010010";
            WHEN "011011" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001101111001111101";
            WHEN "011100" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010000110010100111";
            WHEN "011101" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010011101011010010";
            WHEN "011110" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010110100011111100";
            WHEN "011111" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011001011100100111";
            WHEN "100000" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011100010101010001";
            WHEN "100001" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011111001101111100";
            WHEN "100010" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100010000110100110";
            WHEN "100011" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100100111111010001";
            WHEN "100100" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100111110111111100";
            WHEN "100101" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101010110000100110";
            WHEN "100110" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101101101001010001";
            WHEN "100111" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110000100001111011";
            WHEN "101000" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110011011010100110";
            WHEN "101001" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110110010011010000";
            WHEN "101010" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111001001011111011";
            WHEN "101011" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111100000100100101";
            WHEN "101100" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111110111101010000";
            WHEN "101101" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000001110101111011";
            WHEN "101110" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000100101110100101";
            WHEN "101111" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000111100111010000";
            WHEN "110000" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001010011111111010";
            WHEN "110001" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001101011000100101";
            WHEN "110010" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010000010001001111";
            WHEN "110011" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010011001001111010";
            WHEN "110100" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010110000010100101";
            WHEN "110101" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011000111011001111";
            WHEN "110110" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011011110011111010";
            WHEN "110111" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011110101100100100";
            WHEN "111000" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100001100101001111";
            WHEN "111001" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100100011101111001";
            WHEN "111010" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100111010110100100";
            WHEN "111011" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101010001111001110";
            WHEN "111100" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101101000111111001";
            WHEN "111101" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110000000000100100";
            WHEN "111110" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110010111001001110";
            WHEN "111111" => p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110101110001111001";
            WHEN OTHERS => -- unreachable
                           p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix(ADD,352)@16
    lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & p1_uid346_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q);
    lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000" & p0_uid347_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q);
    lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a) + UNSIGNED(lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b));
    lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o(20 downto 0);

    -- xv2_uid338_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITSELECT,337)@15
    xv2_uid338_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in <= fxpInQPreConstMult_uid113_block_rsrvd_fix_b(17 downto 0);
    xv2_uid338_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= xv2_uid338_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in(17 downto 12);

    -- p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix(LOOKUP,344)@15
    p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_combproc: PROCESS (xv2_uid338_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv2_uid338_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b) IS
            WHEN "000000" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000000000000000000000000";
            WHEN "000001" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000010111000101010100011";
            WHEN "000010" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000101110001010101000111";
            WHEN "000011" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001000101001111111101011";
            WHEN "000100" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001011100010101010001110";
            WHEN "000101" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001110011011010100110010";
            WHEN "000110" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010001010011111111010110";
            WHEN "000111" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010100001100101001111001";
            WHEN "001000" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010111000101010100011101";
            WHEN "001001" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011001111101111111000001";
            WHEN "001010" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011100110110101001100100";
            WHEN "001011" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011111101111010100001000";
            WHEN "001100" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100010100111111110101100";
            WHEN "001101" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100101100000101001010000";
            WHEN "001110" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101000011001010011110011";
            WHEN "001111" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101011010001111110010111";
            WHEN "010000" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101110001010101000111011";
            WHEN "010001" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110001000011010011011110";
            WHEN "010010" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110011111011111110000010";
            WHEN "010011" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110110110100101000100110";
            WHEN "010100" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111001101101010011001001";
            WHEN "010101" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111100100101111101101101";
            WHEN "010110" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111111011110101000010001";
            WHEN "010111" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000010010111010010110101";
            WHEN "011000" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000101001111111101011000";
            WHEN "011001" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001000001000100111111100";
            WHEN "011010" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001011000001010010100000";
            WHEN "011011" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001101111001111101000011";
            WHEN "011100" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010000110010100111100111";
            WHEN "011101" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010011101011010010001011";
            WHEN "011110" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010110100011111100101110";
            WHEN "011111" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011001011100100111010010";
            WHEN "100000" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011100010101010001110110";
            WHEN "100001" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011111001101111100011010";
            WHEN "100010" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100010000110100110111101";
            WHEN "100011" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100100111111010001100001";
            WHEN "100100" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100111110111111100000101";
            WHEN "100101" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101010110000100110101000";
            WHEN "100110" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101101101001010001001100";
            WHEN "100111" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110000100001111011110000";
            WHEN "101000" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110011011010100110010011";
            WHEN "101001" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110110010011010000110111";
            WHEN "101010" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111001001011111011011011";
            WHEN "101011" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111100000100100101111110";
            WHEN "101100" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111110111101010000100010";
            WHEN "101101" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000001110101111011000110";
            WHEN "101110" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000100101110100101101010";
            WHEN "101111" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000111100111010000001101";
            WHEN "110000" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001010011111111010110001";
            WHEN "110001" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001101011000100101010101";
            WHEN "110010" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010000010001001111111000";
            WHEN "110011" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010011001001111010011100";
            WHEN "110100" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010110000010100101000000";
            WHEN "110101" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011000111011001111100011";
            WHEN "110110" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011011110011111010000111";
            WHEN "110111" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011110101100100100101011";
            WHEN "111000" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100001100101001111001111";
            WHEN "111001" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100100011101111001110010";
            WHEN "111010" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100111010110100100010110";
            WHEN "111011" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101010001111001110111010";
            WHEN "111100" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101101000111111001011101";
            WHEN "111101" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110000000000100100000001";
            WHEN "111110" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110010111001001110100101";
            WHEN "111111" => p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110101110001111001001000";
            WHEN OTHERS => -- unreachable
                           p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- xv3_uid339_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITSELECT,338)@15
    xv3_uid339_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in <= fxpInQPreConstMult_uid113_block_rsrvd_fix_b(23 downto 0);
    xv3_uid339_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= xv3_uid339_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in(23 downto 18);

    -- p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix(LOOKUP,343)@15
    p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_combproc: PROCESS (xv3_uid339_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv3_uid339_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b) IS
            WHEN "000000" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000000000000000000000000000000";
            WHEN "000001" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000010111000101010100011101100";
            WHEN "000010" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000101110001010101000111011001";
            WHEN "000011" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001000101001111111101011000101";
            WHEN "000100" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001011100010101010001110110010";
            WHEN "000101" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001110011011010100110010011111";
            WHEN "000110" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010001010011111111010110001011";
            WHEN "000111" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010100001100101001111001111000";
            WHEN "001000" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010111000101010100011101100101";
            WHEN "001001" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011001111101111111000001010001";
            WHEN "001010" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011100110110101001100100111110";
            WHEN "001011" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011111101111010100001000101011";
            WHEN "001100" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100010100111111110101100010111";
            WHEN "001101" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100101100000101001010000000100";
            WHEN "001110" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101000011001010011110011110001";
            WHEN "001111" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101011010001111110010111011101";
            WHEN "010000" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101110001010101000111011001010";
            WHEN "010001" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110001000011010011011110110110";
            WHEN "010010" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110011111011111110000010100011";
            WHEN "010011" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110110110100101000100110010000";
            WHEN "010100" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111001101101010011001001111100";
            WHEN "010101" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111100100101111101101101101001";
            WHEN "010110" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111111011110101000010001010110";
            WHEN "010111" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000010010111010010110101000010";
            WHEN "011000" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000101001111111101011000101111";
            WHEN "011001" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001000001000100111111100011100";
            WHEN "011010" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001011000001010010100000001000";
            WHEN "011011" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001101111001111101000011110101";
            WHEN "011100" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010000110010100111100111100010";
            WHEN "011101" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010011101011010010001011001110";
            WHEN "011110" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010110100011111100101110111011";
            WHEN "011111" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011001011100100111010010101000";
            WHEN "100000" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011100010101010001110110010100";
            WHEN "100001" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011111001101111100011010000001";
            WHEN "100010" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100010000110100110111101101101";
            WHEN "100011" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100100111111010001100001011010";
            WHEN "100100" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100111110111111100000101000111";
            WHEN "100101" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101010110000100110101000110011";
            WHEN "100110" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101101101001010001001100100000";
            WHEN "100111" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110000100001111011110000001101";
            WHEN "101000" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110011011010100110010011111001";
            WHEN "101001" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110110010011010000110111100110";
            WHEN "101010" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111001001011111011011011010011";
            WHEN "101011" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111100000100100101111110111111";
            WHEN "101100" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111110111101010000100010101100";
            WHEN "101101" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000001110101111011000110011001";
            WHEN "101110" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000100101110100101101010000101";
            WHEN "101111" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000111100111010000001101110010";
            WHEN "110000" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001010011111111010110001011111";
            WHEN "110001" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001101011000100101010101001011";
            WHEN "110010" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010000010001001111111000111000";
            WHEN "110011" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010011001001111010011100100100";
            WHEN "110100" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010110000010100101000000010001";
            WHEN "110101" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011000111011001111100011111110";
            WHEN "110110" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011011110011111010000111101010";
            WHEN "110111" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011110101100100100101011010111";
            WHEN "111000" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100001100101001111001111000100";
            WHEN "111001" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100100011101111001110010110000";
            WHEN "111010" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100111010110100100010110011101";
            WHEN "111011" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101010001111001110111010001010";
            WHEN "111100" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101101000111111001011101110110";
            WHEN "111101" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110000000000100100000001100011";
            WHEN "111110" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110010111001001110100101010000";
            WHEN "111111" => p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110101110001111001001000111100";
            WHEN OTHERS => -- unreachable
                           p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix(ADD,351)@15 + 1
    lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & p3_uid344_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q);
    lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000" & p2_uid345_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q);
    lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a) + UNSIGNED(lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o(32 downto 0);

    -- xv4_uid340_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITSELECT,339)@15
    xv4_uid340_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in <= fxpInQPreConstMult_uid113_block_rsrvd_fix_b(29 downto 0);
    xv4_uid340_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= xv4_uid340_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in(29 downto 24);

    -- p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix(LOOKUP,342)@15
    p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_combproc: PROCESS (xv4_uid340_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv4_uid340_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b) IS
            WHEN "000000" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000000000000000000000000000000000000";
            WHEN "000001" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000010111000101010100011101100101001";
            WHEN "000010" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00000101110001010101000111011001010010";
            WHEN "000011" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001000101001111111101011000101111100";
            WHEN "000100" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001011100010101010001110110010100101";
            WHEN "000101" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00001110011011010100110010011111001110";
            WHEN "000110" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010001010011111111010110001011111000";
            WHEN "000111" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010100001100101001111001111000100001";
            WHEN "001000" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00010111000101010100011101100101001010";
            WHEN "001001" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011001111101111111000001010001110100";
            WHEN "001010" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011100110110101001100100111110011101";
            WHEN "001011" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00011111101111010100001000101011000110";
            WHEN "001100" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100010100111111110101100010111110000";
            WHEN "001101" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00100101100000101001010000000100011001";
            WHEN "001110" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101000011001010011110011110001000011";
            WHEN "001111" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101011010001111110010111011101101100";
            WHEN "010000" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00101110001010101000111011001010010101";
            WHEN "010001" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110001000011010011011110110110111111";
            WHEN "010010" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110011111011111110000010100011101000";
            WHEN "010011" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00110110110100101000100110010000010001";
            WHEN "010100" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111001101101010011001001111100111011";
            WHEN "010101" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111100100101111101101101101001100100";
            WHEN "010110" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "00111111011110101000010001010110001101";
            WHEN "010111" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000010010111010010110101000010110111";
            WHEN "011000" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01000101001111111101011000101111100000";
            WHEN "011001" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001000001000100111111100011100001001";
            WHEN "011010" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001011000001010010100000001000110011";
            WHEN "011011" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01001101111001111101000011110101011100";
            WHEN "011100" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010000110010100111100111100010000110";
            WHEN "011101" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010011101011010010001011001110101111";
            WHEN "011110" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01010110100011111100101110111011011000";
            WHEN "011111" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011001011100100111010010101000000010";
            WHEN "100000" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011100010101010001110110010100101011";
            WHEN "100001" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01011111001101111100011010000001010100";
            WHEN "100010" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100010000110100110111101101101111110";
            WHEN "100011" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100100111111010001100001011010100111";
            WHEN "100100" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01100111110111111100000101000111010000";
            WHEN "100101" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101010110000100110101000110011111010";
            WHEN "100110" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01101101101001010001001100100000100011";
            WHEN "100111" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110000100001111011110000001101001101";
            WHEN "101000" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110011011010100110010011111001110110";
            WHEN "101001" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01110110010011010000110111100110011111";
            WHEN "101010" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111001001011111011011011010011001001";
            WHEN "101011" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111100000100100101111110111111110010";
            WHEN "101100" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "01111110111101010000100010101100011011";
            WHEN "101101" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000001110101111011000110011001000101";
            WHEN "101110" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000100101110100101101010000101101110";
            WHEN "101111" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10000111100111010000001101110010010111";
            WHEN "110000" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001010011111111010110001011111000001";
            WHEN "110001" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10001101011000100101010101001011101010";
            WHEN "110010" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010000010001001111111000111000010011";
            WHEN "110011" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010011001001111010011100100100111101";
            WHEN "110100" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10010110000010100101000000010001100110";
            WHEN "110101" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011000111011001111100011111110010000";
            WHEN "110110" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011011110011111010000111101010111001";
            WHEN "110111" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10011110101100100100101011010111100010";
            WHEN "111000" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100001100101001111001111000100001100";
            WHEN "111001" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100100011101111001110010110000110101";
            WHEN "111010" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10100111010110100100010110011101011110";
            WHEN "111011" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101010001111001110111010001010001000";
            WHEN "111100" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10101101000111111001011101110110110001";
            WHEN "111101" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110000000000100100000001100011011010";
            WHEN "111110" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110010111001001110100101010000000100";
            WHEN "111111" => p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "10110101110001111001001000111100101101";
            WHEN OTHERS => -- unreachable
                           p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select(BITSELECT,750)@15
    lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_b <= p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(0 downto 0);
    lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_c <= p4_uid343_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(37 downto 1);

    -- xv5_uid341_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITSELECT,340)@15
    xv5_uid341_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(fxpInQPreConstMult_uid113_block_rsrvd_fix_b(34 downto 30));

    -- p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix(LOOKUP,341)@15
    p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_combproc: PROCESS (xv5_uid341_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv5_uid341_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b) IS
            WHEN "00000" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000100";
            WHEN "00001" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0000001011100010101010001110110010100101111";
            WHEN "00010" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0000010111000101010100011101100101001011011";
            WHEN "00011" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0000100010100111111110101100010111110000110";
            WHEN "00100" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0000101110001010101000111011001010010110010";
            WHEN "00101" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0000111001101101010011001001111100111011101";
            WHEN "00110" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0001000101001111111101011000101111100001001";
            WHEN "00111" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0001010000110010100111100111100010000110100";
            WHEN "01000" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0001011100010101010001110110010100101100000";
            WHEN "01001" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0001100111110111111100000101000111010001011";
            WHEN "01010" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0001110011011010100110010011111001110110111";
            WHEN "01011" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0001111110111101010000100010101100011100010";
            WHEN "01100" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0010001010011111111010110001011111000001110";
            WHEN "01101" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0010010110000010100101000000010001100111001";
            WHEN "01110" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0010100001100101001111001111000100001100101";
            WHEN "01111" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "0010101101000111111001011101110110110010000";
            WHEN "10000" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1101000111010101011100010011010110101001100";
            WHEN "10001" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1101010010111000000110100010001001001110111";
            WHEN "10010" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1101011110011010110000110000111011110100011";
            WHEN "10011" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1101101001111101011010111111101110011001110";
            WHEN "10100" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1101110101100000000101001110100000111111010";
            WHEN "10101" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1110000001000010101111011101010011100100101";
            WHEN "10110" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1110001100100101011001101100000110001010001";
            WHEN "10111" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1110011000001000000011111010111000101111100";
            WHEN "11000" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1110100011101010101110001001101011010101000";
            WHEN "11001" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1110101111001101011000011000011101111010011";
            WHEN "11010" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1110111010110000000010100111010000011111111";
            WHEN "11011" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1111000110010010101100110110000011000101010";
            WHEN "11100" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1111010001110101010111000100110101101010110";
            WHEN "11101" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1111011101011000000001010011101000010000001";
            WHEN "11110" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1111101000111010101011100010011010110101101";
            WHEN "11111" => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= "1111110100011101010101110001001101011011000";
            WHEN OTHERS => -- unreachable
                           p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix(ADD,349)@15 + 1
    lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 43 => p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(42)) & p5_uid342_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000" & lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_c));
    lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a) + SIGNED(lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o(43 downto 0);

    -- redist0_lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_b_1(DELAY,752)
    redist0_lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_b, xout => redist0_lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_b_1_q, clk => clk, aclr => areset );

    -- lev1_a0_uid351_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITJOIN,350)@16
    lev1_a0_uid351_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= lev1_a0sumAHighB_uid350_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q & redist0_lowRangeB_uid348_qTimesOOlog2Ext_uid114_block_rsrvd_fix_merged_bit_select_b_1_q;

    -- lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix(ADD,353)@16
    lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 45 => lev1_a0_uid351_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(44)) & lev1_a0_uid351_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000" & lev1_a1_uid352_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a) + SIGNED(lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b));
    lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o(45 downto 0);

    -- lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix(ADD,354)@16
    lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 46 => lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(45)) & lev2_a0_uid354_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000000000000000000000" & lev1_a2_uid353_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a) + SIGNED(lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b));
    lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o(46 downto 0);

    -- sR_uid365_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITSELECT,364)@16
    sR_uid365_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(42 downto 0));
    sR_uid365_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(sR_uid365_qTimesOOlog2Ext_uid114_block_rsrvd_fix_in(42 downto 4));

    -- updatedX_uid359_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITJOIN,358)@16
    updatedX_uid359_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= maxValInOutFormat_uid356_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q & zs_uid319_countZLog_uid76_block_rsrvd_fix_q;

    -- ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix(COMPARE,359)@16
    ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 43 => updatedX_uid359_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(42)) & updatedX_uid359_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 47 => lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(46)) & lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a) - SIGNED(ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b));
    ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_c(0) <= ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o(48);

    -- updatedY_uid362_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITJOIN,361)@16
    updatedY_uid362_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= minValueInFormat_uid357_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q & zs_uid319_countZLog_uid76_block_rsrvd_fix_q;

    -- udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix(COMPARE,362)@16
    udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 47 => lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(46)) & lev3_a0_uid355_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 43 => updatedY_uid362_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q(42)) & updatedY_uid362_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q));
    udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_a) - SIGNED(udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b));
    udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_c(0) <= udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_o(48);

    -- ovfudfcond_uid364_qTimesOOlog2Ext_uid114_block_rsrvd_fix(BITJOIN,363)@16
    ovfudfcond_uid364_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= ovf_uid358_qTimesOOlog2Ext_uid114_block_rsrvd_fix_c & udf_uid361_qTimesOOlog2Ext_uid114_block_rsrvd_fix_c;

    -- sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix(MUX,365)@16
    sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_s <= ovfudfcond_uid364_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q;
    sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_combproc: PROCESS (sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_s, sR_uid365_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b, minValueInFormat_uid357_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q, maxValInOutFormat_uid356_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q)
    BEGIN
        CASE (sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_s) IS
            WHEN "00" => sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= sR_uid365_qTimesOOlog2Ext_uid114_block_rsrvd_fix_b;
            WHEN "01" => sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= minValueInFormat_uid357_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q;
            WHEN "10" => sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= maxValInOutFormat_uid356_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q;
            WHEN "11" => sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= maxValInOutFormat_uid356_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q;
            WHEN OTHERS => sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oFracXZwE_uid116_block_rsrvd_fix(BITJOIN,115)@16
    oFracXZwE_uid116_block_rsrvd_fix_q <= sRA0_uid366_qTimesOOlog2Ext_uid114_block_rsrvd_fix_q & cstAllZWE_uid14_block_rsrvd_fix_q;

    -- xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,646)@16
    xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(oFracXZwE_uid116_block_rsrvd_fix_q(46 downto 46));

    -- seMsb_to3_uid675(BITSELECT,674)@16
    seMsb_to3_uid675_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((2 downto 1 => xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b(0)) & xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b));
    seMsb_to3_uid675_b <= STD_LOGIC_VECTOR(seMsb_to3_uid675_in(2 downto 0));

    -- rightShiftStage2Idx3Rng3_uid676_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,675)@16
    rightShiftStage2Idx3Rng3_uid676_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q(46 downto 3);

    -- rightShiftStage2Idx3_uid677_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITJOIN,676)@16
    rightShiftStage2Idx3_uid677_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= seMsb_to3_uid675_b & rightShiftStage2Idx3Rng3_uid676_fxpInPostAlignExp_uid123_block_rsrvd_fix_b;

    -- seMsb_to2_uid672(BITSELECT,671)@16
    seMsb_to2_uid672_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b(0)) & xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b));
    seMsb_to2_uid672_b <= STD_LOGIC_VECTOR(seMsb_to2_uid672_in(1 downto 0));

    -- rightShiftStage2Idx2Rng2_uid673_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,672)@16
    rightShiftStage2Idx2Rng2_uid673_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q(46 downto 2);

    -- rightShiftStage2Idx2_uid674_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITJOIN,673)@16
    rightShiftStage2Idx2_uid674_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= seMsb_to2_uid672_b & rightShiftStage2Idx2Rng2_uid673_fxpInPostAlignExp_uid123_block_rsrvd_fix_b;

    -- rightShiftStage2Idx1Rng1_uid670_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,669)@16
    rightShiftStage2Idx1Rng1_uid670_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q(46 downto 1);

    -- rightShiftStage2Idx1_uid671_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITJOIN,670)@16
    rightShiftStage2Idx1_uid671_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b & rightShiftStage2Idx1Rng1_uid670_fxpInPostAlignExp_uid123_block_rsrvd_fix_b;

    -- seMsb_to12_uid665(BITSELECT,664)@16
    seMsb_to12_uid665_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 1 => xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b(0)) & xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b));
    seMsb_to12_uid665_b <= STD_LOGIC_VECTOR(seMsb_to12_uid665_in(11 downto 0));

    -- rightShiftStage1Idx3Rng12_uid666_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,665)@16
    rightShiftStage1Idx3Rng12_uid666_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q(46 downto 12);

    -- rightShiftStage1Idx3_uid667_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITJOIN,666)@16
    rightShiftStage1Idx3_uid667_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= seMsb_to12_uid665_b & rightShiftStage1Idx3Rng12_uid666_fxpInPostAlignExp_uid123_block_rsrvd_fix_b;

    -- seMsb_to8_uid662(BITSELECT,661)@16
    seMsb_to8_uid662_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b(0)) & xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b));
    seMsb_to8_uid662_b <= STD_LOGIC_VECTOR(seMsb_to8_uid662_in(7 downto 0));

    -- rightShiftStage1Idx2Rng8_uid663_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,662)@16
    rightShiftStage1Idx2Rng8_uid663_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q(46 downto 8);

    -- rightShiftStage1Idx2_uid664_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITJOIN,663)@16
    rightShiftStage1Idx2_uid664_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= seMsb_to8_uid662_b & rightShiftStage1Idx2Rng8_uid663_fxpInPostAlignExp_uid123_block_rsrvd_fix_b;

    -- seMsb_to4_uid659(BITSELECT,658)@16
    seMsb_to4_uid659_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b(0)) & xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b));
    seMsb_to4_uid659_b <= STD_LOGIC_VECTOR(seMsb_to4_uid659_in(3 downto 0));

    -- rightShiftStage1Idx1Rng4_uid660_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,659)@16
    rightShiftStage1Idx1Rng4_uid660_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q(46 downto 4);

    -- rightShiftStage1Idx1_uid661_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITJOIN,660)@16
    rightShiftStage1Idx1_uid661_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= seMsb_to4_uid659_b & rightShiftStage1Idx1Rng4_uid660_fxpInPostAlignExp_uid123_block_rsrvd_fix_b;

    -- stageIndexName_to47_uid655(BITSELECT,654)@16
    stageIndexName_to47_uid655_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 1 => xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b(0)) & xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b));
    stageIndexName_to47_uid655_b <= STD_LOGIC_VECTOR(stageIndexName_to47_uid655_in(46 downto 0));

    -- seMsb_to32_uid652(BITSELECT,651)@16
    seMsb_to32_uid652_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b(0)) & xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b));
    seMsb_to32_uid652_b <= STD_LOGIC_VECTOR(seMsb_to32_uid652_in(31 downto 0));

    -- rightShiftStage0Idx2Rng32_uid653_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,652)@16
    rightShiftStage0Idx2Rng32_uid653_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= oFracXZwE_uid116_block_rsrvd_fix_q(46 downto 32);

    -- rightShiftStage0Idx2_uid654_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITJOIN,653)@16
    rightShiftStage0Idx2_uid654_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= seMsb_to32_uid652_b & rightShiftStage0Idx2Rng32_uid653_fxpInPostAlignExp_uid123_block_rsrvd_fix_b;

    -- seMsb_to16_uid649(BITSELECT,648)@16
    seMsb_to16_uid649_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b(0)) & xMSB_uid647_fxpInPostAlignExp_uid123_block_rsrvd_fix_b));
    seMsb_to16_uid649_b <= STD_LOGIC_VECTOR(seMsb_to16_uid649_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid650_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITSELECT,649)@16
    rightShiftStage0Idx1Rng16_uid650_fxpInPostAlignExp_uid123_block_rsrvd_fix_b <= oFracXZwE_uid116_block_rsrvd_fix_q(46 downto 16);

    -- rightShiftStage0Idx1_uid651_fxpInPostAlignExp_uid123_block_rsrvd_fix(BITJOIN,650)@16
    rightShiftStage0Idx1_uid651_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= seMsb_to16_uid649_b & rightShiftStage0Idx1Rng16_uid650_fxpInPostAlignExp_uid123_block_rsrvd_fix_b;

    -- rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix(MUX,657)@16
    rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_s <= rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b;
    rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_combproc: PROCESS (rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_s, oFracXZwE_uid116_block_rsrvd_fix_q, rightShiftStage0Idx1_uid651_fxpInPostAlignExp_uid123_block_rsrvd_fix_q, rightShiftStage0Idx2_uid654_fxpInPostAlignExp_uid123_block_rsrvd_fix_q, stageIndexName_to47_uid655_b)
    BEGIN
        CASE (rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= oFracXZwE_uid116_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid651_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid654_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= stageIndexName_to47_uid655_b;
            WHEN OTHERS => rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix(MUX,668)@16
    rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_s <= rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c;
    rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_s, rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q, rightShiftStage1Idx1_uid661_fxpInPostAlignExp_uid123_block_rsrvd_fix_q, rightShiftStage1Idx2_uid664_fxpInPostAlignExp_uid123_block_rsrvd_fix_q, rightShiftStage1Idx3_uid667_fxpInPostAlignExp_uid123_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage0_uid658_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid661_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid664_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid667_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstBiasPWE_uid109_block_rsrvd_fix(CONSTANT,108)
    cstBiasPWE_uid109_block_rsrvd_fix_q <= "101011";

    -- msbuExpProdPre_uid102_block_rsrvd_fix(BITSELECT,101)@16
    msbuExpProdPre_uid102_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expProdPre_uid101_block_rsrvd_fix_q(11 downto 11));

    -- invMsbuExpProdPre_uid103_block_rsrvd_fix(LOGICAL,102)@16
    invMsbuExpProdPre_uid103_block_rsrvd_fix_q <= not (msbuExpProdPre_uid102_block_rsrvd_fix_b);

    -- redist31_prodNormBit_uid93_block_rsrvd_fix_b_1(DELAY,783)
    redist31_prodNormBit_uid93_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => prodNormBit_uid93_block_rsrvd_fix_b, xout => redist31_prodNormBit_uid93_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- expRLog_uid89_block_rsrvd_fix(BITSELECT,88)@13
    expRLog_uid89_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(expFracPostRndLog_uid87_block_rsrvd_fix_q(42 downto 0));
    expRLog_uid89_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expRLog_uid89_block_rsrvd_fix_in(42 downto 34));

    -- exp_y_uid29_block_rsrvd_fix(BITSELECT,28)@13
    exp_y_uid29_block_rsrvd_fix_b <= in_1(30 downto 23);

    -- expProdPhase1_uid99_block_rsrvd_fix(ADD,98)@13 + 1
    expProdPhase1_uid99_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & exp_y_uid29_block_rsrvd_fix_b));
    expProdPhase1_uid99_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => expRLog_uid89_block_rsrvd_fix_b(8)) & expRLog_uid89_block_rsrvd_fix_b));
    expProdPhase1_uid99_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expProdPhase1_uid99_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            expProdPhase1_uid99_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expProdPhase1_uid99_block_rsrvd_fix_a) + SIGNED(expProdPhase1_uid99_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expProdPhase1_uid99_block_rsrvd_fix_q <= expProdPhase1_uid99_block_rsrvd_fix_o(9 downto 0);

    -- redist29_expProdPhase1_uid99_block_rsrvd_fix_q_3(DELAY,781)
    redist29_expProdPhase1_uid99_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expProdPhase1_uid99_block_rsrvd_fix_q, xout => redist29_expProdPhase1_uid99_block_rsrvd_fix_q_3_q, clk => clk, aclr => areset );

    -- expProdPhase2_uid100_block_rsrvd_fix(ADD,99)@16
    expProdPhase2_uid100_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => redist29_expProdPhase1_uid99_block_rsrvd_fix_q_3_q(9)) & redist29_expProdPhase1_uid99_block_rsrvd_fix_q_3_q));
    expProdPhase2_uid100_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & redist31_prodNormBit_uid93_block_rsrvd_fix_b_1_q));
    expProdPhase2_uid100_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expProdPhase2_uid100_block_rsrvd_fix_a) + SIGNED(expProdPhase2_uid100_block_rsrvd_fix_b));
    expProdPhase2_uid100_block_rsrvd_fix_q <= expProdPhase2_uid100_block_rsrvd_fix_o(10 downto 0);

    -- expProdPre_uid101_block_rsrvd_fix(SUB,100)@16
    expProdPre_uid101_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => expProdPhase2_uid100_block_rsrvd_fix_q(10)) & expProdPhase2_uid100_block_rsrvd_fix_q));
    expProdPre_uid101_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000" & cstBias_uid8_block_rsrvd_fix_q));
    expProdPre_uid101_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expProdPre_uid101_block_rsrvd_fix_a) - SIGNED(expProdPre_uid101_block_rsrvd_fix_b));
    expProdPre_uid101_block_rsrvd_fix_q <= expProdPre_uid101_block_rsrvd_fix_o(11 downto 0);

    -- expProd_uid104_block_rsrvd_fix(LOGICAL,103)@16
    expProd_uid104_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 1 => invMsbuExpProdPre_uid103_block_rsrvd_fix_q(0)) & invMsbuExpProdPre_uid103_block_rsrvd_fix_q));
    expProd_uid104_block_rsrvd_fix_q <= expProdPre_uid101_block_rsrvd_fix_q and expProd_uid104_block_rsrvd_fix_b;

    -- cstBiasPWE_uid108_block_rsrvd_fix(CONSTANT,107)
    cstBiasPWE_uid108_block_rsrvd_fix_q <= "10000111";

    -- shiftValuePreSatExp_uid118_block_rsrvd_fix(SUB,117)@16
    shiftValuePreSatExp_uid118_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00000" & cstBiasPWE_uid108_block_rsrvd_fix_q);
    shiftValuePreSatExp_uid118_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & expProd_uid104_block_rsrvd_fix_q);
    shiftValuePreSatExp_uid118_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftValuePreSatExp_uid118_block_rsrvd_fix_a) - UNSIGNED(shiftValuePreSatExp_uid118_block_rsrvd_fix_b));
    shiftValuePreSatExp_uid118_block_rsrvd_fix_q <= shiftValuePreSatExp_uid118_block_rsrvd_fix_o(12 downto 0);

    -- shiftValuePreSatRedExp_uid121_block_rsrvd_fix(BITSELECT,120)@16
    shiftValuePreSatRedExp_uid121_block_rsrvd_fix_in <= shiftValuePreSatExp_uid118_block_rsrvd_fix_q(5 downto 0);
    shiftValuePreSatRedExp_uid121_block_rsrvd_fix_b <= shiftValuePreSatRedExp_uid121_block_rsrvd_fix_in(5 downto 0);

    -- shiftUdfExp_uid120_block_rsrvd_fix(COMPARE,119)@16
    shiftUdfExp_uid120_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => shiftValuePreSatExp_uid118_block_rsrvd_fix_q(12)) & shiftValuePreSatExp_uid118_block_rsrvd_fix_q));
    shiftUdfExp_uid120_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000" & cstBiasPWE_uid109_block_rsrvd_fix_q));
    shiftUdfExp_uid120_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(shiftUdfExp_uid120_block_rsrvd_fix_a) - SIGNED(shiftUdfExp_uid120_block_rsrvd_fix_b));
    shiftUdfExp_uid120_block_rsrvd_fix_n(0) <= not (shiftUdfExp_uid120_block_rsrvd_fix_o(14));

    -- shiftValExp_uid122_block_rsrvd_fix(MUX,121)@16
    shiftValExp_uid122_block_rsrvd_fix_s <= shiftUdfExp_uid120_block_rsrvd_fix_n;
    shiftValExp_uid122_block_rsrvd_fix_combproc: PROCESS (shiftValExp_uid122_block_rsrvd_fix_s, shiftValuePreSatRedExp_uid121_block_rsrvd_fix_b, cstBiasPWE_uid109_block_rsrvd_fix_q)
    BEGIN
        CASE (shiftValExp_uid122_block_rsrvd_fix_s) IS
            WHEN "0" => shiftValExp_uid122_block_rsrvd_fix_q <= shiftValuePreSatRedExp_uid121_block_rsrvd_fix_b;
            WHEN "1" => shiftValExp_uid122_block_rsrvd_fix_q <= cstBiasPWE_uid109_block_rsrvd_fix_q;
            WHEN OTHERS => shiftValExp_uid122_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select(BITSELECT,740)@16
    rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b <= shiftValExp_uid122_block_rsrvd_fix_q(5 downto 4);
    rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c <= shiftValExp_uid122_block_rsrvd_fix_q(3 downto 2);
    rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d <= shiftValExp_uid122_block_rsrvd_fix_q(1 downto 0);

    -- rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix(MUX,678)@16
    rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_s <= rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d;
    rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_combproc: PROCESS (rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_s, rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q, rightShiftStage2Idx1_uid671_fxpInPostAlignExp_uid123_block_rsrvd_fix_q, rightShiftStage2Idx2_uid674_fxpInPostAlignExp_uid123_block_rsrvd_fix_q, rightShiftStage2Idx3_uid677_fxpInPostAlignExp_uid123_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage1_uid669_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid671_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage2Idx2_uid674_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= rightShiftStage2Idx3_uid677_fxpInPostAlignExp_uid123_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- ePreRndExp_uid125_block_rsrvd_fix(BITSELECT,124)@16
    ePreRndExp_uid125_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(rightShiftStage2_uid679_fxpInPostAlignExp_uid123_block_rsrvd_fix_q(46 downto 36));

    -- redist24_ePreRndExp_uid125_block_rsrvd_fix_b_1(DELAY,776)
    redist24_ePreRndExp_uid125_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 11, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => ePreRndExp_uid125_block_rsrvd_fix_b, xout => redist24_ePreRndExp_uid125_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- xv1_uid403_eRndXlog2_uid126_block_rsrvd_fix(BITSELECT,402)@17
    xv1_uid403_eRndXlog2_uid126_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(redist24_ePreRndExp_uid125_block_rsrvd_fix_b_1_q(10 downto 6));

    -- p1_uid404_eRndXlog2_uid126_block_rsrvd_fix(LOOKUP,403)@17
    p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_combproc: PROCESS (xv1_uid403_eRndXlog2_uid126_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv1_uid403_eRndXlog2_uid126_block_rsrvd_fix_b) IS
            WHEN "00000" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000010";
            WHEN "00001" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0000001011000101110010000101111111011111010000010";
            WHEN "00010" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0000010110001011100100001011111110111110100000010";
            WHEN "00011" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0000100001010001010110010001111110011101110000010";
            WHEN "00100" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0000101100010111001000010111111101111101000000010";
            WHEN "00101" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0000110111011100111010011101111101011100010000010";
            WHEN "00110" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0001000010100010101100100011111100111011100000010";
            WHEN "00111" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0001001101101000011110101001111100011010110000010";
            WHEN "01000" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0001011000101110010000101111111011111010000000010";
            WHEN "01001" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0001100011110100000010110101111011011001010000010";
            WHEN "01010" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0001101110111001110100111011111010111000100000010";
            WHEN "01011" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0001111001111111100111000001111010010111110000010";
            WHEN "01100" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0010000101000101011001000111111001110111000000010";
            WHEN "01101" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0010010000001011001011001101111001010110010000010";
            WHEN "01110" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0010011011010000111101010011111000110101100000010";
            WHEN "01111" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "0010100110010110101111011001111000010100110000010";
            WHEN "10000" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1101001110100011011110100000001000001100000000010";
            WHEN "10001" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1101011001101001010000100110000111101011010000010";
            WHEN "10010" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1101100100101111000010101100000111001010100000010";
            WHEN "10011" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1101101111110100110100110010000110101001110000010";
            WHEN "10100" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1101111010111010100110111000000110001001000000010";
            WHEN "10101" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1110000110000000011000111110000101101000010000010";
            WHEN "10110" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1110010001000110001011000100000101000111100000010";
            WHEN "10111" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1110011100001011111101001010000100100110110000010";
            WHEN "11000" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1110100111010001101111010000000100000110000000010";
            WHEN "11001" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1110110010010111100001010110000011100101010000010";
            WHEN "11010" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1110111101011101010011011100000011000100100000010";
            WHEN "11011" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1111001000100011000101100010000010100011110000010";
            WHEN "11100" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1111010011101000110111101000000010000011000000010";
            WHEN "11101" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1111011110101110101001101110000001100010010000010";
            WHEN "11110" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1111101001110100011011110100000001000001100000010";
            WHEN "11111" => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= "1111110100111010001101111010000000100000110000010";
            WHEN OTHERS => -- unreachable
                           p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix(ADD,407)@17
    lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 49 => p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q(48)) & p1_uid404_eRndXlog2_uid126_block_rsrvd_fix_q));
    lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000" & lowRangeB_uid406_eRndXlog2_uid126_block_rsrvd_fix_merged_bit_select_c));
    lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_a) + SIGNED(lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_b));
    lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_q <= lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_o(49 downto 0);

    -- xv0_uid402_eRndXlog2_uid126_block_rsrvd_fix(BITSELECT,401)@17
    xv0_uid402_eRndXlog2_uid126_block_rsrvd_fix_in <= redist24_ePreRndExp_uid125_block_rsrvd_fix_b_1_q(5 downto 0);
    xv0_uid402_eRndXlog2_uid126_block_rsrvd_fix_b <= xv0_uid402_eRndXlog2_uid126_block_rsrvd_fix_in(5 downto 0);

    -- p0_uid405_eRndXlog2_uid126_block_rsrvd_fix(LOOKUP,404)@17
    p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_combproc: PROCESS (xv0_uid402_eRndXlog2_uid126_block_rsrvd_fix_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv0_uid402_eRndXlog2_uid126_block_rsrvd_fix_b) IS
            WHEN "000000" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00000000000000000000000000000000000000000000";
            WHEN "000001" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00000010110001011100100001011111110111110100";
            WHEN "000010" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00000101100010111001000010111111101111101000";
            WHEN "000011" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00001000010100010101100100011111100111011100";
            WHEN "000100" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00001011000101110010000101111111011111010000";
            WHEN "000101" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00001101110111001110100111011111010111000100";
            WHEN "000110" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00010000101000101011001000111111001110111000";
            WHEN "000111" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00010011011010000111101010011111000110101100";
            WHEN "001000" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00010110001011100100001011111110111110100000";
            WHEN "001001" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00011000111101000000101101011110110110010100";
            WHEN "001010" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00011011101110011101001110111110101110001000";
            WHEN "001011" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00011110011111111001110000011110100101111100";
            WHEN "001100" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00100001010001010110010001111110011101110000";
            WHEN "001101" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00100100000010110010110011011110010101100100";
            WHEN "001110" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00100110110100001111010100111110001101011000";
            WHEN "001111" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00101001100101101011110110011110000101001100";
            WHEN "010000" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00101100010111001000010111111101111101000000";
            WHEN "010001" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00101111001000100100111001011101110100110100";
            WHEN "010010" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00110001111010000001011010111101101100101000";
            WHEN "010011" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00110100101011011101111100011101100100011100";
            WHEN "010100" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00110111011100111010011101111101011100010000";
            WHEN "010101" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00111010001110010110111111011101010100000100";
            WHEN "010110" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00111100111111110011100000111101001011111000";
            WHEN "010111" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "00111111110001010000000010011101000011101100";
            WHEN "011000" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01000010100010101100100011111100111011100000";
            WHEN "011001" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01000101010100001001000101011100110011010100";
            WHEN "011010" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01001000000101100101100110111100101011001000";
            WHEN "011011" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01001010110111000010001000011100100010111100";
            WHEN "011100" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01001101101000011110101001111100011010110000";
            WHEN "011101" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01010000011001111011001011011100010010100100";
            WHEN "011110" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01010011001011010111101100111100001010011000";
            WHEN "011111" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01010101111100110100001110011100000010001100";
            WHEN "100000" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01011000101110010000101111111011111010000000";
            WHEN "100001" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01011011011111101101010001011011110001110100";
            WHEN "100010" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01011110010001001001110010111011101001101000";
            WHEN "100011" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01100001000010100110010100011011100001011100";
            WHEN "100100" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01100011110100000010110101111011011001010000";
            WHEN "100101" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01100110100101011111010111011011010001000100";
            WHEN "100110" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01101001010110111011111000111011001000111000";
            WHEN "100111" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01101100001000011000011010011011000000101100";
            WHEN "101000" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01101110111001110100111011111010111000100000";
            WHEN "101001" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01110001101011010001011101011010110000010100";
            WHEN "101010" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01110100011100101101111110111010101000001000";
            WHEN "101011" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01110111001110001010100000011010011111111100";
            WHEN "101100" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01111001111111100111000001111010010111110000";
            WHEN "101101" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01111100110001000011100011011010001111100100";
            WHEN "101110" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "01111111100010100000000100111010000111011000";
            WHEN "101111" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10000010010011111100100110011001111111001100";
            WHEN "110000" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10000101000101011001000111111001110111000000";
            WHEN "110001" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10000111110110110101101001011001101110110100";
            WHEN "110010" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10001010101000010010001010111001100110101000";
            WHEN "110011" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10001101011001101110101100011001011110011100";
            WHEN "110100" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10010000001011001011001101111001010110010000";
            WHEN "110101" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10010010111100100111101111011001001110000100";
            WHEN "110110" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10010101101110000100010000111001000101111000";
            WHEN "110111" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10011000011111100000110010011000111101101100";
            WHEN "111000" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10011011010000111101010011111000110101100000";
            WHEN "111001" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10011110000010011001110101011000101101010100";
            WHEN "111010" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10100000110011110110010110111000100101001000";
            WHEN "111011" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10100011100101010010111000011000011100111100";
            WHEN "111100" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10100110010110101111011001111000010100110000";
            WHEN "111101" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10101001001000001011111011011000001100100100";
            WHEN "111110" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10101011111001101000011100111000000100011000";
            WHEN "111111" => p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= "10101110101011000100111110010111111100001100";
            WHEN OTHERS => -- unreachable
                           p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lowRangeB_uid406_eRndXlog2_uid126_block_rsrvd_fix_merged_bit_select(BITSELECT,751)@17
    lowRangeB_uid406_eRndXlog2_uid126_block_rsrvd_fix_merged_bit_select_b <= p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q(0 downto 0);
    lowRangeB_uid406_eRndXlog2_uid126_block_rsrvd_fix_merged_bit_select_c <= p0_uid405_eRndXlog2_uid126_block_rsrvd_fix_q(43 downto 1);

    -- lev1_a0_uid409_eRndXlog2_uid126_block_rsrvd_fix(BITJOIN,408)@17
    lev1_a0_uid409_eRndXlog2_uid126_block_rsrvd_fix_q <= lev1_a0sumAHighB_uid408_eRndXlog2_uid126_block_rsrvd_fix_q & lowRangeB_uid406_eRndXlog2_uid126_block_rsrvd_fix_merged_bit_select_b;

    -- sR_uid419_eRndXlog2_uid126_block_rsrvd_fix(BITSELECT,418)@17
    sR_uid419_eRndXlog2_uid126_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(lev1_a0_uid409_eRndXlog2_uid126_block_rsrvd_fix_q(48 downto 0));
    sR_uid419_eRndXlog2_uid126_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(sR_uid419_eRndXlog2_uid126_block_rsrvd_fix_in(48 downto 3));

    -- updatedX_uid413_eRndXlog2_uid126_block_rsrvd_fix(BITJOIN,412)@17
    updatedX_uid413_eRndXlog2_uid126_block_rsrvd_fix_q <= maxValInOutFormat_uid410_eRndXlog2_uid126_block_rsrvd_fix_q & paddingX_uid221_eLn2_uid50_block_rsrvd_fix_q;

    -- ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix(COMPARE,413)@17
    ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 49 => updatedX_uid413_eRndXlog2_uid126_block_rsrvd_fix_q(48)) & updatedX_uid413_eRndXlog2_uid126_block_rsrvd_fix_q));
    ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 51 => lev1_a0_uid409_eRndXlog2_uid126_block_rsrvd_fix_q(50)) & lev1_a0_uid409_eRndXlog2_uid126_block_rsrvd_fix_q));
    ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_a) - SIGNED(ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_b));
    ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_c(0) <= ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_o(52);

    -- updatedY_uid416_eRndXlog2_uid126_block_rsrvd_fix(BITJOIN,415)@17
    updatedY_uid416_eRndXlog2_uid126_block_rsrvd_fix_q <= minValueInFormat_uid411_eRndXlog2_uid126_block_rsrvd_fix_q & paddingX_uid221_eLn2_uid50_block_rsrvd_fix_q;

    -- udf_uid415_eRndXlog2_uid126_block_rsrvd_fix(COMPARE,416)@17
    udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 51 => lev1_a0_uid409_eRndXlog2_uid126_block_rsrvd_fix_q(50)) & lev1_a0_uid409_eRndXlog2_uid126_block_rsrvd_fix_q));
    udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 49 => updatedY_uid416_eRndXlog2_uid126_block_rsrvd_fix_q(48)) & updatedY_uid416_eRndXlog2_uid126_block_rsrvd_fix_q));
    udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_a) - SIGNED(udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_b));
    udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_c(0) <= udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_o(52);

    -- ovfudfcond_uid418_eRndXlog2_uid126_block_rsrvd_fix(BITJOIN,417)@17
    ovfudfcond_uid418_eRndXlog2_uid126_block_rsrvd_fix_q <= ovf_uid412_eRndXlog2_uid126_block_rsrvd_fix_c & udf_uid415_eRndXlog2_uid126_block_rsrvd_fix_c;

    -- sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix(MUX,419)@17
    sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_s <= ovfudfcond_uid418_eRndXlog2_uid126_block_rsrvd_fix_q;
    sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_combproc: PROCESS (sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_s, sR_uid419_eRndXlog2_uid126_block_rsrvd_fix_b, minValueInFormat_uid411_eRndXlog2_uid126_block_rsrvd_fix_q, maxValInOutFormat_uid410_eRndXlog2_uid126_block_rsrvd_fix_q)
    BEGIN
        CASE (sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_s) IS
            WHEN "00" => sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_q <= sR_uid419_eRndXlog2_uid126_block_rsrvd_fix_b;
            WHEN "01" => sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_q <= minValueInFormat_uid411_eRndXlog2_uid126_block_rsrvd_fix_q;
            WHEN "10" => sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_q <= maxValInOutFormat_uid410_eRndXlog2_uid126_block_rsrvd_fix_q;
            WHEN "11" => sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_q <= maxValInOutFormat_uid410_eRndXlog2_uid126_block_rsrvd_fix_q;
            WHEN OTHERS => sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist28_signProd_uid105_block_rsrvd_fix_q_2(DELAY,780)
    redist28_signProd_uid105_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => signProd_uid105_block_rsrvd_fix_q, xout => redist28_signProd_uid105_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- redist30_oFracProd_uid98_block_rsrvd_fix_q_2(DELAY,782)
    redist30_oFracProd_uid98_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 34, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => oFracProd_uid98_block_rsrvd_fix_q, xout => redist30_oFracProd_uid98_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- cstZeroWEP1_uid107_block_rsrvd_fix(CONSTANT,106)
    cstZeroWEP1_uid107_block_rsrvd_fix_q <= "000000000";

    -- oFracQZwE_uid128_block_rsrvd_fix(BITJOIN,127)@17
    oFracQZwE_uid128_block_rsrvd_fix_q <= GND_q & redist30_oFracProd_uid98_block_rsrvd_fix_q_2_q & cstZeroWEP1_uid107_block_rsrvd_fix_q;

    -- onesCmpFxpInQ2_uid129_block_rsrvd_fix(LOGICAL,128)@17
    onesCmpFxpInQ2_uid129_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((43 downto 1 => redist28_signProd_uid105_block_rsrvd_fix_q_2_q(0)) & redist28_signProd_uid105_block_rsrvd_fix_q_2_q));
    onesCmpFxpInQ2_uid129_block_rsrvd_fix_q <= oFracQZwE_uid128_block_rsrvd_fix_q xor onesCmpFxpInQ2_uid129_block_rsrvd_fix_b;

    -- fxpInExtQ2_uid130_block_rsrvd_fix(ADD,129)@17
    fxpInExtQ2_uid130_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & onesCmpFxpInQ2_uid129_block_rsrvd_fix_q);
    fxpInExtQ2_uid130_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000000000000000" & redist28_signProd_uid105_block_rsrvd_fix_q_2_q);
    fxpInExtQ2_uid130_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fxpInExtQ2_uid130_block_rsrvd_fix_a) + UNSIGNED(fxpInExtQ2_uid130_block_rsrvd_fix_b));
    fxpInExtQ2_uid130_block_rsrvd_fix_q <= fxpInExtQ2_uid130_block_rsrvd_fix_o(44 downto 0);

    -- fxpInPreAlignQ2_uid131_block_rsrvd_fix(BITSELECT,130)@17
    fxpInPreAlignQ2_uid131_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(fxpInExtQ2_uid130_block_rsrvd_fix_q(43 downto 0));
    fxpInPreAlignQ2_uid131_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(fxpInPreAlignQ2_uid131_block_rsrvd_fix_in(43 downto 0));

    -- xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,680)@17
    xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(fxpInPreAlignQ2_uid131_block_rsrvd_fix_b(43 downto 43));

    -- seMsb_to3_uid709(BITSELECT,708)@17
    seMsb_to3_uid709_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((2 downto 1 => xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b(0)) & xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b));
    seMsb_to3_uid709_b <= STD_LOGIC_VECTOR(seMsb_to3_uid709_in(2 downto 0));

    -- rightShiftStage2Idx3Rng3_uid710_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,709)@17
    rightShiftStage2Idx3Rng3_uid710_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q(43 downto 3);

    -- rightShiftStage2Idx3_uid711_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITJOIN,710)@17
    rightShiftStage2Idx3_uid711_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= seMsb_to3_uid709_b & rightShiftStage2Idx3Rng3_uid710_fxpInPostAlign_X_uid136_block_rsrvd_fix_b;

    -- seMsb_to2_uid706(BITSELECT,705)@17
    seMsb_to2_uid706_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b(0)) & xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b));
    seMsb_to2_uid706_b <= STD_LOGIC_VECTOR(seMsb_to2_uid706_in(1 downto 0));

    -- rightShiftStage2Idx2Rng2_uid707_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,706)@17
    rightShiftStage2Idx2Rng2_uid707_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q(43 downto 2);

    -- rightShiftStage2Idx2_uid708_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITJOIN,707)@17
    rightShiftStage2Idx2_uid708_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= seMsb_to2_uid706_b & rightShiftStage2Idx2Rng2_uid707_fxpInPostAlign_X_uid136_block_rsrvd_fix_b;

    -- rightShiftStage2Idx1Rng1_uid704_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,703)@17
    rightShiftStage2Idx1Rng1_uid704_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q(43 downto 1);

    -- rightShiftStage2Idx1_uid705_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITJOIN,704)@17
    rightShiftStage2Idx1_uid705_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b & rightShiftStage2Idx1Rng1_uid704_fxpInPostAlign_X_uid136_block_rsrvd_fix_b;

    -- seMsb_to12_uid699(BITSELECT,698)@17
    seMsb_to12_uid699_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 1 => xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b(0)) & xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b));
    seMsb_to12_uid699_b <= STD_LOGIC_VECTOR(seMsb_to12_uid699_in(11 downto 0));

    -- rightShiftStage1Idx3Rng12_uid700_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,699)@17
    rightShiftStage1Idx3Rng12_uid700_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q(43 downto 12);

    -- rightShiftStage1Idx3_uid701_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITJOIN,700)@17
    rightShiftStage1Idx3_uid701_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= seMsb_to12_uid699_b & rightShiftStage1Idx3Rng12_uid700_fxpInPostAlign_X_uid136_block_rsrvd_fix_b;

    -- seMsb_to8_uid696(BITSELECT,695)@17
    seMsb_to8_uid696_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b(0)) & xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b));
    seMsb_to8_uid696_b <= STD_LOGIC_VECTOR(seMsb_to8_uid696_in(7 downto 0));

    -- rightShiftStage1Idx2Rng8_uid697_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,696)@17
    rightShiftStage1Idx2Rng8_uid697_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q(43 downto 8);

    -- rightShiftStage1Idx2_uid698_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITJOIN,697)@17
    rightShiftStage1Idx2_uid698_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= seMsb_to8_uid696_b & rightShiftStage1Idx2Rng8_uid697_fxpInPostAlign_X_uid136_block_rsrvd_fix_b;

    -- seMsb_to4_uid693(BITSELECT,692)@17
    seMsb_to4_uid693_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b(0)) & xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b));
    seMsb_to4_uid693_b <= STD_LOGIC_VECTOR(seMsb_to4_uid693_in(3 downto 0));

    -- rightShiftStage1Idx1Rng4_uid694_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,693)@17
    rightShiftStage1Idx1Rng4_uid694_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q(43 downto 4);

    -- rightShiftStage1Idx1_uid695_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITJOIN,694)@17
    rightShiftStage1Idx1_uid695_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= seMsb_to4_uid693_b & rightShiftStage1Idx1Rng4_uid694_fxpInPostAlign_X_uid136_block_rsrvd_fix_b;

    -- stageIndexName_to44_uid689(BITSELECT,688)@17
    stageIndexName_to44_uid689_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((43 downto 1 => xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b(0)) & xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b));
    stageIndexName_to44_uid689_b <= STD_LOGIC_VECTOR(stageIndexName_to44_uid689_in(43 downto 0));

    -- seMsb_to32_uid686(BITSELECT,685)@17
    seMsb_to32_uid686_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b(0)) & xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b));
    seMsb_to32_uid686_b <= STD_LOGIC_VECTOR(seMsb_to32_uid686_in(31 downto 0));

    -- rightShiftStage0Idx2Rng32_uid687_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,686)@17
    rightShiftStage0Idx2Rng32_uid687_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= fxpInPreAlignQ2_uid131_block_rsrvd_fix_b(43 downto 32);

    -- rightShiftStage0Idx2_uid688_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITJOIN,687)@17
    rightShiftStage0Idx2_uid688_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= seMsb_to32_uid686_b & rightShiftStage0Idx2Rng32_uid687_fxpInPostAlign_X_uid136_block_rsrvd_fix_b;

    -- seMsb_to16_uid683(BITSELECT,682)@17
    seMsb_to16_uid683_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b(0)) & xMSB_uid681_fxpInPostAlign_X_uid136_block_rsrvd_fix_b));
    seMsb_to16_uid683_b <= STD_LOGIC_VECTOR(seMsb_to16_uid683_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid684_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITSELECT,683)@17
    rightShiftStage0Idx1Rng16_uid684_fxpInPostAlign_X_uid136_block_rsrvd_fix_b <= fxpInPreAlignQ2_uid131_block_rsrvd_fix_b(43 downto 16);

    -- rightShiftStage0Idx1_uid685_fxpInPostAlign_X_uid136_block_rsrvd_fix(BITJOIN,684)@17
    rightShiftStage0Idx1_uid685_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= seMsb_to16_uid683_b & rightShiftStage0Idx1Rng16_uid684_fxpInPostAlign_X_uid136_block_rsrvd_fix_b;

    -- redist7_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b_1(DELAY,759)
    redist7_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b, xout => redist7_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b_1_q, clk => clk, aclr => areset );

    -- rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix(MUX,691)@17
    rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_s <= redist7_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_b_1_q;
    rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_combproc: PROCESS (rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_s, fxpInPreAlignQ2_uid131_block_rsrvd_fix_b, rightShiftStage0Idx1_uid685_fxpInPostAlign_X_uid136_block_rsrvd_fix_q, rightShiftStage0Idx2_uid688_fxpInPostAlign_X_uid136_block_rsrvd_fix_q, stageIndexName_to44_uid689_b)
    BEGIN
        CASE (rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= fxpInPreAlignQ2_uid131_block_rsrvd_fix_b;
            WHEN "01" => rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid685_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid688_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= stageIndexName_to44_uid689_b;
            WHEN OTHERS => rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist8_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c_1(DELAY,760)
    redist8_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c, xout => redist8_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c_1_q, clk => clk, aclr => areset );

    -- rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix(MUX,702)@17
    rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_s <= redist8_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_c_1_q;
    rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_s, rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q, rightShiftStage1Idx1_uid695_fxpInPostAlign_X_uid136_block_rsrvd_fix_q, rightShiftStage1Idx2_uid698_fxpInPostAlign_X_uid136_block_rsrvd_fix_q, rightShiftStage1Idx3_uid701_fxpInPostAlign_X_uid136_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage0_uid692_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid695_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid698_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid701_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist9_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d_1(DELAY,761)
    redist9_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d, xout => redist9_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d_1_q, clk => clk, aclr => areset );

    -- rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix(MUX,712)@17
    rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_s <= redist9_rightShiftStageSel5Dto4_uid657_fxpInPostAlignExp_uid123_block_rsrvd_fix_merged_bit_select_d_1_q;
    rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_combproc: PROCESS (rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_s, rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q, rightShiftStage2Idx1_uid705_fxpInPostAlign_X_uid136_block_rsrvd_fix_q, rightShiftStage2Idx2_uid708_fxpInPostAlign_X_uid136_block_rsrvd_fix_q, rightShiftStage2Idx3_uid711_fxpInPostAlign_X_uid136_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage1_uid703_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid705_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage2Idx2_uid708_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= rightShiftStage2Idx3_uid711_fxpInPostAlign_X_uid136_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- aPostPad_uid139_block_rsrvd_fix(BITJOIN,138)@17
    aPostPad_uid139_block_rsrvd_fix_q <= rightShiftStage2_uid713_fxpInPostAlign_X_uid136_block_rsrvd_fix_q & GND_q;

    -- yExtExp_uid140_block_rsrvd_fix(SUB,139)@17
    yExtExp_uid140_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 45 => aPostPad_uid139_block_rsrvd_fix_q(44)) & aPostPad_uid139_block_rsrvd_fix_q));
    yExtExp_uid140_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_q(45)) & sRA0_uid420_eRndXlog2_uid126_block_rsrvd_fix_q));
    yExtExp_uid140_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(yExtExp_uid140_block_rsrvd_fix_a) - SIGNED(yExtExp_uid140_block_rsrvd_fix_b));
    yExtExp_uid140_block_rsrvd_fix_q <= yExtExp_uid140_block_rsrvd_fix_o(46 downto 0);

    -- yRed_uid143_block_rsrvd_fix(BITSELECT,142)@17
    yRed_uid143_block_rsrvd_fix_in <= yExtExp_uid140_block_rsrvd_fix_q(34 downto 0);
    yRed_uid143_block_rsrvd_fix_b <= yRed_uid143_block_rsrvd_fix_in(34 downto 1);

    -- yExtNeg_uid141_block_rsrvd_fix(BITSELECT,140)@17
    yExtNeg_uid141_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(yExtExp_uid140_block_rsrvd_fix_q(46 downto 46));

    -- yRedPostMux_uid144_block_rsrvd_fix(MUX,143)@17
    yRedPostMux_uid144_block_rsrvd_fix_s <= yExtNeg_uid141_block_rsrvd_fix_b;
    yRedPostMux_uid144_block_rsrvd_fix_combproc: PROCESS (yRedPostMux_uid144_block_rsrvd_fix_s, yRed_uid143_block_rsrvd_fix_b, zY_uid142_block_rsrvd_fix_q)
    BEGIN
        CASE (yRedPostMux_uid144_block_rsrvd_fix_s) IS
            WHEN "0" => yRedPostMux_uid144_block_rsrvd_fix_q <= yRed_uid143_block_rsrvd_fix_b;
            WHEN "1" => yRedPostMux_uid144_block_rsrvd_fix_q <= zY_uid142_block_rsrvd_fix_q;
            WHEN OTHERS => yRedPostMux_uid144_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- yAddr_uid146_block_rsrvd_fix_merged_bit_select(BITSELECT,741)@17
    yAddr_uid146_block_rsrvd_fix_merged_bit_select_b <= yRedPostMux_uid144_block_rsrvd_fix_q(33 downto 26);
    yAddr_uid146_block_rsrvd_fix_merged_bit_select_c <= yRedPostMux_uid144_block_rsrvd_fix_q(25 downto 0);

    -- redist4_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_2(DELAY,756)
    redist4_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 26, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid146_block_rsrvd_fix_merged_bit_select_c, xout => redist4_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_2_q, clk => clk, aclr => areset );

    -- redist5_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_4(DELAY,757)
    redist5_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 26, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist4_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_2_q, xout => redist5_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_4_q, clk => clk, aclr => areset );

    -- redist6_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_6(DELAY,758)
    redist6_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_6 : dspba_delay
    GENERIC MAP ( width => 26, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist5_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_4_q, xout => redist6_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_6_q, clk => clk, aclr => areset );

    -- nx_mergedSignalTM_uid548_pT3_uid478_invPolyEval(BITJOIN,547)@23
    nx_mergedSignalTM_uid548_pT3_uid478_invPolyEval_q <= GND_q & redist6_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_6_q;

    -- topRangeX_uid550_pT3_uid478_invPolyEval(BITSELECT,549)@23
    topRangeX_uid550_pT3_uid478_invPolyEval_b <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid548_pT3_uid478_invPolyEval_q(26 downto 9));

    -- memoryC3_uid458_sqrtTables_lutmem(DUALMEM,724)@17 + 2
    -- in j@20000000
    memoryC3_uid458_sqrtTables_lutmem_aa <= yAddr_uid146_block_rsrvd_fix_merged_bit_select_b;
    memoryC3_uid458_sqrtTables_lutmem_reset0 <= areset;
    memoryC3_uid458_sqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 15,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA3ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid458_sqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC3_uid458_sqrtTables_lutmem_aa,
        q_a => memoryC3_uid458_sqrtTables_lutmem_ir
    );
    memoryC3_uid458_sqrtTables_lutmem_r <= memoryC3_uid458_sqrtTables_lutmem_ir(14 downto 0);

    -- yT1_uid465_invPolyEval(BITSELECT,464)@19
    yT1_uid465_invPolyEval_b <= redist4_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_2_q(25 downto 11);

    -- prodXY_uid530_pT1_uid466_invPolyEval_cma(CHAINMULTADD,729)@19 + 2
    prodXY_uid530_pT1_uid466_invPolyEval_cma_reset <= areset;
    prodXY_uid530_pT1_uid466_invPolyEval_cma_ena0 <= '1';
    prodXY_uid530_pT1_uid466_invPolyEval_cma_ena1 <= prodXY_uid530_pT1_uid466_invPolyEval_cma_ena0;
    prodXY_uid530_pT1_uid466_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid530_pT1_uid466_invPolyEval_cma_a0(0),16));
    prodXY_uid530_pT1_uid466_invPolyEval_cma_p(0) <= prodXY_uid530_pT1_uid466_invPolyEval_cma_l(0) * prodXY_uid530_pT1_uid466_invPolyEval_cma_c0(0);
    prodXY_uid530_pT1_uid466_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid530_pT1_uid466_invPolyEval_cma_p(0),31);
    prodXY_uid530_pT1_uid466_invPolyEval_cma_w(0) <= prodXY_uid530_pT1_uid466_invPolyEval_cma_u(0);
    prodXY_uid530_pT1_uid466_invPolyEval_cma_x(0) <= prodXY_uid530_pT1_uid466_invPolyEval_cma_w(0);
    prodXY_uid530_pT1_uid466_invPolyEval_cma_y(0) <= prodXY_uid530_pT1_uid466_invPolyEval_cma_x(0);
    prodXY_uid530_pT1_uid466_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid530_pT1_uid466_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid530_pT1_uid466_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid530_pT1_uid466_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid530_pT1_uid466_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid465_invPolyEval_b),15);
                prodXY_uid530_pT1_uid466_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC3_uid458_sqrtTables_lutmem_r),15);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid530_pT1_uid466_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid530_pT1_uid466_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid530_pT1_uid466_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid530_pT1_uid466_invPolyEval_cma_s(0) <= prodXY_uid530_pT1_uid466_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid530_pT1_uid466_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 30, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid530_pT1_uid466_invPolyEval_cma_s(0)(29 downto 0)), xout => prodXY_uid530_pT1_uid466_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid530_pT1_uid466_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid530_pT1_uid466_invPolyEval_cma_qq(29 downto 0));

    -- osig_uid531_pT1_uid466_invPolyEval(BITSELECT,530)@21
    osig_uid531_pT1_uid466_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid530_pT1_uid466_invPolyEval_cma_q(29 downto 15));

    -- highBBits_uid468_invPolyEval(BITSELECT,467)@21
    highBBits_uid468_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid531_pT1_uid466_invPolyEval_b(14 downto 1));

    -- redist1_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_2(DELAY,753)
    redist1_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid146_block_rsrvd_fix_merged_bit_select_b, xout => redist1_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_2_q, clk => clk, aclr => areset );

    -- memoryC2_uid455_sqrtTables_lutmem(DUALMEM,723)@19 + 2
    -- in j@20000000
    memoryC2_uid455_sqrtTables_lutmem_aa <= redist1_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_2_q;
    memoryC2_uid455_sqrtTables_lutmem_reset0 <= areset;
    memoryC2_uid455_sqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 24,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA2ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid455_sqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid455_sqrtTables_lutmem_aa,
        q_a => memoryC2_uid455_sqrtTables_lutmem_ir
    );
    memoryC2_uid455_sqrtTables_lutmem_r <= memoryC2_uid455_sqrtTables_lutmem_ir(23 downto 0);

    -- s1sumAHighB_uid469_invPolyEval(ADD,468)@21
    s1sumAHighB_uid469_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => memoryC2_uid455_sqrtTables_lutmem_r(23)) & memoryC2_uid455_sqrtTables_lutmem_r));
    s1sumAHighB_uid469_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 14 => highBBits_uid468_invPolyEval_b(13)) & highBBits_uid468_invPolyEval_b));
    s1sumAHighB_uid469_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid469_invPolyEval_a) + SIGNED(s1sumAHighB_uid469_invPolyEval_b));
    s1sumAHighB_uid469_invPolyEval_q <= s1sumAHighB_uid469_invPolyEval_o(24 downto 0);

    -- lowRangeB_uid467_invPolyEval(BITSELECT,466)@21
    lowRangeB_uid467_invPolyEval_in <= osig_uid531_pT1_uid466_invPolyEval_b(0 downto 0);
    lowRangeB_uid467_invPolyEval_b <= lowRangeB_uid467_invPolyEval_in(0 downto 0);

    -- s1_uid470_invPolyEval(BITJOIN,469)@21
    s1_uid470_invPolyEval_q <= s1sumAHighB_uid469_invPolyEval_q & lowRangeB_uid467_invPolyEval_b;

    -- yT2_uid471_invPolyEval(BITSELECT,470)@21
    yT2_uid471_invPolyEval_b <= redist5_yAddr_uid146_block_rsrvd_fix_merged_bit_select_c_4_q(25 downto 2);

    -- prodXY_uid533_pT2_uid472_invPolyEval_cma(CHAINMULTADD,730)@21 + 2
    prodXY_uid533_pT2_uid472_invPolyEval_cma_reset <= areset;
    prodXY_uid533_pT2_uid472_invPolyEval_cma_ena0 <= '1';
    prodXY_uid533_pT2_uid472_invPolyEval_cma_ena1 <= prodXY_uid533_pT2_uid472_invPolyEval_cma_ena0;
    prodXY_uid533_pT2_uid472_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid533_pT2_uid472_invPolyEval_cma_a0(0),25));
    prodXY_uid533_pT2_uid472_invPolyEval_cma_p(0) <= prodXY_uid533_pT2_uid472_invPolyEval_cma_l(0) * prodXY_uid533_pT2_uid472_invPolyEval_cma_c0(0);
    prodXY_uid533_pT2_uid472_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid533_pT2_uid472_invPolyEval_cma_p(0),51);
    prodXY_uid533_pT2_uid472_invPolyEval_cma_w(0) <= prodXY_uid533_pT2_uid472_invPolyEval_cma_u(0);
    prodXY_uid533_pT2_uid472_invPolyEval_cma_x(0) <= prodXY_uid533_pT2_uid472_invPolyEval_cma_w(0);
    prodXY_uid533_pT2_uid472_invPolyEval_cma_y(0) <= prodXY_uid533_pT2_uid472_invPolyEval_cma_x(0);
    prodXY_uid533_pT2_uid472_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid533_pT2_uid472_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid533_pT2_uid472_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid533_pT2_uid472_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid533_pT2_uid472_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT2_uid471_invPolyEval_b),24);
                prodXY_uid533_pT2_uid472_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid470_invPolyEval_q),26);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid533_pT2_uid472_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid533_pT2_uid472_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid533_pT2_uid472_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid533_pT2_uid472_invPolyEval_cma_s(0) <= prodXY_uid533_pT2_uid472_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid533_pT2_uid472_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 50, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid533_pT2_uid472_invPolyEval_cma_s(0)(49 downto 0)), xout => prodXY_uid533_pT2_uid472_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid533_pT2_uid472_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid533_pT2_uid472_invPolyEval_cma_qq(49 downto 0));

    -- osig_uid534_pT2_uid472_invPolyEval(BITSELECT,533)@23
    osig_uid534_pT2_uid472_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid533_pT2_uid472_invPolyEval_cma_q(49 downto 24));

    -- highBBits_uid474_invPolyEval(BITSELECT,473)@23
    highBBits_uid474_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid534_pT2_uid472_invPolyEval_b(25 downto 1));

    -- redist2_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_4(DELAY,754)
    redist2_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist1_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_2_q, xout => redist2_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_4_q, clk => clk, aclr => areset );

    -- memoryC1_uid452_sqrtTables_lutmem(DUALMEM,722)@21 + 2
    -- in j@20000000
    memoryC1_uid452_sqrtTables_lutmem_aa <= redist2_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_4_q;
    memoryC1_uid452_sqrtTables_lutmem_reset0 <= areset;
    memoryC1_uid452_sqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 33,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA1ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid452_sqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid452_sqrtTables_lutmem_aa,
        q_a => memoryC1_uid452_sqrtTables_lutmem_ir
    );
    memoryC1_uid452_sqrtTables_lutmem_r <= memoryC1_uid452_sqrtTables_lutmem_ir(32 downto 0);

    -- s2sumAHighB_uid475_invPolyEval(ADD,474)@23
    s2sumAHighB_uid475_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => memoryC1_uid452_sqrtTables_lutmem_r(32)) & memoryC1_uid452_sqrtTables_lutmem_r));
    s2sumAHighB_uid475_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 25 => highBBits_uid474_invPolyEval_b(24)) & highBBits_uid474_invPolyEval_b));
    s2sumAHighB_uid475_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid475_invPolyEval_a) + SIGNED(s2sumAHighB_uid475_invPolyEval_b));
    s2sumAHighB_uid475_invPolyEval_q <= s2sumAHighB_uid475_invPolyEval_o(33 downto 0);

    -- lowRangeB_uid473_invPolyEval(BITSELECT,472)@23
    lowRangeB_uid473_invPolyEval_in <= osig_uid534_pT2_uid472_invPolyEval_b(0 downto 0);
    lowRangeB_uid473_invPolyEval_b <= lowRangeB_uid473_invPolyEval_in(0 downto 0);

    -- s2_uid476_invPolyEval(BITJOIN,475)@23
    s2_uid476_invPolyEval_q <= s2sumAHighB_uid475_invPolyEval_q & lowRangeB_uid473_invPolyEval_b;

    -- aboveLeftY_bottomRange_uid554_pT3_uid478_invPolyEval(BITSELECT,553)@23
    aboveLeftY_bottomRange_uid554_pT3_uid478_invPolyEval_in <= STD_LOGIC_VECTOR(s2_uid476_invPolyEval_q(16 downto 0));
    aboveLeftY_bottomRange_uid554_pT3_uid478_invPolyEval_b <= STD_LOGIC_VECTOR(aboveLeftY_bottomRange_uid554_pT3_uid478_invPolyEval_in(16 downto 0));

    -- aboveLeftY_mergedSignalTM_uid555_pT3_uid478_invPolyEval(BITJOIN,554)@23
    aboveLeftY_mergedSignalTM_uid555_pT3_uid478_invPolyEval_q <= aboveLeftY_bottomRange_uid554_pT3_uid478_invPolyEval_b & GND_q;

    -- topRangeY_uid551_pT3_uid478_invPolyEval(BITSELECT,550)@23
    topRangeY_uid551_pT3_uid478_invPolyEval_b <= STD_LOGIC_VECTOR(s2_uid476_invPolyEval_q(34 downto 17));

    -- rightBottomX_bottomRange_uid558_pT3_uid478_invPolyEval(BITSELECT,557)@23
    rightBottomX_bottomRange_uid558_pT3_uid478_invPolyEval_in <= STD_LOGIC_VECTOR(nx_mergedSignalTM_uid548_pT3_uid478_invPolyEval_q(8 downto 0));
    rightBottomX_bottomRange_uid558_pT3_uid478_invPolyEval_b <= STD_LOGIC_VECTOR(rightBottomX_bottomRange_uid558_pT3_uid478_invPolyEval_in(8 downto 0));

    -- rightBottomX_mergedSignalTM_uid559_pT3_uid478_invPolyEval(BITJOIN,558)@23
    rightBottomX_mergedSignalTM_uid559_pT3_uid478_invPolyEval_q <= rightBottomX_bottomRange_uid558_pT3_uid478_invPolyEval_b & cstZeroWEP1_uid107_block_rsrvd_fix_q;

    -- multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma(CHAINMULTADD,736)@23 + 2
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_reset <= areset;
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_ena0 <= '1';
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_ena1 <= multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_ena0;
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_l(0) <= SIGNED(RESIZE(multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_a0(0),19));
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_l(1) <= SIGNED(RESIZE(multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_a0(1),19));
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_p(0) <= multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_l(0) * multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_c0(0);
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_p(1) <= multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_l(1) * multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_c0(1);
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_u(0) <= RESIZE(multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_p(0),38);
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_u(1) <= RESIZE(multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_p(1),38);
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_w(0) <= multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_u(0) + multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_u(1);
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_x(0) <= multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_w(0);
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_y(0) <= multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_x(0);
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_a0 <= (others => (others => '0'));
            multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_ena0 = '1') THEN
                multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(rightBottomX_mergedSignalTM_uid559_pT3_uid478_invPolyEval_q),18);
                multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_a0(1) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid555_pT3_uid478_invPolyEval_q),18);
                multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid551_pT3_uid478_invPolyEval_b),18);
                multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_c0(1) <= RESIZE(SIGNED(topRangeX_uid550_pT3_uid478_invPolyEval_b),18);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_ena1 = '1') THEN
                multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_s(0) <= multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_s(0)(36 downto 0)), xout => multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_qq, clk => clk, aclr => areset );
    multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_q <= STD_LOGIC_VECTOR(multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_qq(36 downto 0));

    -- highBBits_uid570_pT3_uid478_invPolyEval(BITSELECT,569)@25
    highBBits_uid570_pT3_uid478_invPolyEval_b <= STD_LOGIC_VECTOR(multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_q(36 downto 12));

    -- sm0_uid564_pT3_uid478_invPolyEval_cma(CHAINMULTADD,731)@23 + 2
    sm0_uid564_pT3_uid478_invPolyEval_cma_reset <= areset;
    sm0_uid564_pT3_uid478_invPolyEval_cma_ena0 <= '1';
    sm0_uid564_pT3_uid478_invPolyEval_cma_ena1 <= sm0_uid564_pT3_uid478_invPolyEval_cma_ena0;
    sm0_uid564_pT3_uid478_invPolyEval_cma_p(0) <= sm0_uid564_pT3_uid478_invPolyEval_cma_a0(0) * sm0_uid564_pT3_uid478_invPolyEval_cma_c0(0);
    sm0_uid564_pT3_uid478_invPolyEval_cma_u(0) <= RESIZE(sm0_uid564_pT3_uid478_invPolyEval_cma_p(0),36);
    sm0_uid564_pT3_uid478_invPolyEval_cma_w(0) <= sm0_uid564_pT3_uid478_invPolyEval_cma_u(0);
    sm0_uid564_pT3_uid478_invPolyEval_cma_x(0) <= sm0_uid564_pT3_uid478_invPolyEval_cma_w(0);
    sm0_uid564_pT3_uid478_invPolyEval_cma_y(0) <= sm0_uid564_pT3_uid478_invPolyEval_cma_x(0);
    sm0_uid564_pT3_uid478_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid564_pT3_uid478_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid564_pT3_uid478_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid564_pT3_uid478_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid564_pT3_uid478_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_uid550_pT3_uid478_invPolyEval_b),18);
                sm0_uid564_pT3_uid478_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid551_pT3_uid478_invPolyEval_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid564_pT3_uid478_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid564_pT3_uid478_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid564_pT3_uid478_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid564_pT3_uid478_invPolyEval_cma_s(0) <= sm0_uid564_pT3_uid478_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid564_pT3_uid478_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid564_pT3_uid478_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid564_pT3_uid478_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid564_pT3_uid478_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid564_pT3_uid478_invPolyEval_cma_qq(35 downto 0));

    -- aboveLeftY_uid563_pT3_uid478_invPolyEval(BITSELECT,562)@23
    aboveLeftY_uid563_pT3_uid478_invPolyEval_in <= s2_uid476_invPolyEval_q(16 downto 0);
    aboveLeftY_uid563_pT3_uid478_invPolyEval_b <= aboveLeftY_uid563_pT3_uid478_invPolyEval_in(16 downto 14);

    -- aboveLeftX_uid562_pT3_uid478_invPolyEval(BITSELECT,561)@23
    aboveLeftX_uid562_pT3_uid478_invPolyEval_in <= nx_mergedSignalTM_uid548_pT3_uid478_invPolyEval_q(8 downto 0);
    aboveLeftX_uid562_pT3_uid478_invPolyEval_b <= aboveLeftX_uid562_pT3_uid478_invPolyEval_in(8 downto 6);

    -- sm0_uid567_pT3_uid478_invPolyEval(MULT,566)@23 + 2
    sm0_uid567_pT3_uid478_invPolyEval_pr <= UNSIGNED(sm0_uid567_pT3_uid478_invPolyEval_a0) * UNSIGNED(sm0_uid567_pT3_uid478_invPolyEval_b0);
    sm0_uid567_pT3_uid478_invPolyEval_component: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid567_pT3_uid478_invPolyEval_a0 <= (others => '0');
            sm0_uid567_pT3_uid478_invPolyEval_b0 <= (others => '0');
            sm0_uid567_pT3_uid478_invPolyEval_s1 <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            sm0_uid567_pT3_uid478_invPolyEval_a0 <= aboveLeftX_uid562_pT3_uid478_invPolyEval_b;
            sm0_uid567_pT3_uid478_invPolyEval_b0 <= aboveLeftY_uid563_pT3_uid478_invPolyEval_b;
            sm0_uid567_pT3_uid478_invPolyEval_s1 <= STD_LOGIC_VECTOR(sm0_uid567_pT3_uid478_invPolyEval_pr);
        END IF;
    END PROCESS;
    sm0_uid567_pT3_uid478_invPolyEval_q <= sm0_uid567_pT3_uid478_invPolyEval_s1;

    -- sumAb_uid568_pT3_uid478_invPolyEval(BITJOIN,567)@25
    sumAb_uid568_pT3_uid478_invPolyEval_q <= sm0_uid564_pT3_uid478_invPolyEval_cma_q & sm0_uid567_pT3_uid478_invPolyEval_q;

    -- lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval(ADD,570)@25
    lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 42 => sumAb_uid568_pT3_uid478_invPolyEval_q(41)) & sumAb_uid568_pT3_uid478_invPolyEval_q));
    lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 25 => highBBits_uid570_pT3_uid478_invPolyEval_b(24)) & highBBits_uid570_pT3_uid478_invPolyEval_b));
    lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_b));
    lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_q <= lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_o(42 downto 0);

    -- lowRangeB_uid569_pT3_uid478_invPolyEval(BITSELECT,568)@25
    lowRangeB_uid569_pT3_uid478_invPolyEval_in <= multSumOfTwoTS_uid565_pT3_uid478_invPolyEval_cma_q(11 downto 0);
    lowRangeB_uid569_pT3_uid478_invPolyEval_b <= lowRangeB_uid569_pT3_uid478_invPolyEval_in(11 downto 0);

    -- lev1_a0_uid572_pT3_uid478_invPolyEval(BITJOIN,571)@25
    lev1_a0_uid572_pT3_uid478_invPolyEval_q <= lev1_a0sumAHighB_uid571_pT3_uid478_invPolyEval_q & lowRangeB_uid569_pT3_uid478_invPolyEval_b;

    -- os_uid573_pT3_uid478_invPolyEval(BITSELECT,572)@25
    os_uid573_pT3_uid478_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid572_pT3_uid478_invPolyEval_q(52 downto 0));
    os_uid573_pT3_uid478_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid573_pT3_uid478_invPolyEval_in(52 downto 17));

    -- highBBits_uid480_invPolyEval(BITSELECT,479)@25
    highBBits_uid480_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid573_pT3_uid478_invPolyEval_b(35 downto 2));

    -- redist3_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_6(DELAY,755)
    redist3_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_6 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist2_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_4_q, xout => redist3_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_6_q, clk => clk, aclr => areset );

    -- memoryC0_uid448_sqrtTables_lutmem(DUALMEM,721)@23 + 2
    -- in j@20000000
    memoryC0_uid448_sqrtTables_lutmem_aa <= redist3_yAddr_uid146_block_rsrvd_fix_merged_bit_select_b_6_q;
    memoryC0_uid448_sqrtTables_lutmem_reset0 <= areset;
    memoryC0_uid448_sqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 40,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA0ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid448_sqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid448_sqrtTables_lutmem_aa,
        q_a => memoryC0_uid448_sqrtTables_lutmem_ir
    );
    memoryC0_uid448_sqrtTables_lutmem_r <= memoryC0_uid448_sqrtTables_lutmem_ir(39 downto 0);

    -- os_uid450_sqrtTables(BITJOIN,449)@25
    os_uid450_sqrtTables_q <= GND_q & memoryC0_uid448_sqrtTables_lutmem_r;

    -- s3sumAHighB_uid481_invPolyEval(ADD,480)@25
    s3sumAHighB_uid481_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((41 downto 41 => os_uid450_sqrtTables_q(40)) & os_uid450_sqrtTables_q));
    s3sumAHighB_uid481_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((41 downto 34 => highBBits_uid480_invPolyEval_b(33)) & highBBits_uid480_invPolyEval_b));
    s3sumAHighB_uid481_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid481_invPolyEval_a) + SIGNED(s3sumAHighB_uid481_invPolyEval_b));
    s3sumAHighB_uid481_invPolyEval_q <= s3sumAHighB_uid481_invPolyEval_o(41 downto 0);

    -- lowRangeB_uid479_invPolyEval(BITSELECT,478)@25
    lowRangeB_uid479_invPolyEval_in <= os_uid573_pT3_uid478_invPolyEval_b(1 downto 0);
    lowRangeB_uid479_invPolyEval_b <= lowRangeB_uid479_invPolyEval_in(1 downto 0);

    -- s3_uid482_invPolyEval(BITJOIN,481)@25
    s3_uid482_invPolyEval_q <= s3sumAHighB_uid481_invPolyEval_q & lowRangeB_uid479_invPolyEval_b;

    -- peORExpInc_uid150_block_rsrvd_fix(BITSELECT,149)@25
    peORExpInc_uid150_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(s3_uid482_invPolyEval_q(41 downto 0));
    peORExpInc_uid150_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(peORExpInc_uid150_block_rsrvd_fix_in(41 downto 41));

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_notEnable(LOGICAL,824)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_nor(LOGICAL,825)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_nor_q <= not (redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_notEnable_q or redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_sticky_ena_q);

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_last(CONSTANT,821)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_last_q <= "0101";

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmp(LOGICAL,822)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmp_b <= STD_LOGIC_VECTOR("0" & redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_q);
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmp_q <= "1" WHEN redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_last_q = redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmp_b ELSE "0";

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmpReg(REG,823)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmpReg_q <= STD_LOGIC_VECTOR(redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_sticky_ena(REG,826)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_nor_q = "1") THEN
                redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_enaAnd(LOGICAL,827)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_enaAnd_q <= redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_sticky_ena_q and VCC_q;

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt(COUNTER,819)
    -- low=0, high=6, step=1, init=0
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_eq <= '1';
            ELSE
                redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_eq <= '0';
            END IF;
            IF (redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_eq = '1') THEN
                redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i <= redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i + 2;
            ELSE
                redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i <= redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_i, 3)));

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_wraddr(REG,820)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_wraddr_q <= "110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_wraddr_q <= STD_LOGIC_VECTOR(redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem(DUALMEM,818)
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_ia <= STD_LOGIC_VECTOR(redist24_ePreRndExp_uid125_block_rsrvd_fix_b_1_q);
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_aa <= redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_wraddr_q;
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_ab <= redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_rdcnt_q;
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_reset0 <= areset;
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 11,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 11,
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
        clocken1 => redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_reset0,
        clock1 => clk,
        address_a => redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_aa,
        data_a => redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_ab,
        q_b => redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_iq
    );
    redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_q <= redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_iq(10 downto 0);

    -- expRPostBiasPreExc0_uid151_block_rsrvd_fix(ADD,150)@25
    expRPostBiasPreExc0_uid151_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_q(10)) & redist25_ePreRndExp_uid125_block_rsrvd_fix_b_9_mem_q));
    expRPostBiasPreExc0_uid151_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000" & cstBias_uid8_block_rsrvd_fix_q));
    expRPostBiasPreExc0_uid151_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expRPostBiasPreExc0_uid151_block_rsrvd_fix_a) + SIGNED(expRPostBiasPreExc0_uid151_block_rsrvd_fix_b));
    expRPostBiasPreExc0_uid151_block_rsrvd_fix_q <= expRPostBiasPreExc0_uid151_block_rsrvd_fix_o(11 downto 0);

    -- expRPostBiasPreExc_uid152_block_rsrvd_fix(ADD,151)@25
    expRPostBiasPreExc_uid152_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => expRPostBiasPreExc0_uid151_block_rsrvd_fix_q(11)) & expRPostBiasPreExc0_uid151_block_rsrvd_fix_q));
    expRPostBiasPreExc_uid152_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000" & peORExpInc_uid150_block_rsrvd_fix_b));
    expRPostBiasPreExc_uid152_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expRPostBiasPreExc_uid152_block_rsrvd_fix_a) + SIGNED(expRPostBiasPreExc_uid152_block_rsrvd_fix_b));
    expRPostBiasPreExc_uid152_block_rsrvd_fix_q <= expRPostBiasPreExc_uid152_block_rsrvd_fix_o(12 downto 0);

    -- expR_uid154_block_rsrvd_fix(BITSELECT,153)@25
    expR_uid154_block_rsrvd_fix_in <= expRPostBiasPreExc_uid152_block_rsrvd_fix_q(7 downto 0);
    expR_uid154_block_rsrvd_fix_b <= expR_uid154_block_rsrvd_fix_in(7 downto 0);

    -- cstOneFPExpFrac_uid46_block_rsrvd_fix(BITJOIN,45)@8
    cstOneFPExpFrac_uid46_block_rsrvd_fix_q <= cstBias_uid8_block_rsrvd_fix_q & cstAllZWF_uid7_block_rsrvd_fix_q;

    -- expFracX_uid47_block_rsrvd_fix(BITJOIN,46)@8
    expFracX_uid47_block_rsrvd_fix_q <= redist64_exp_x_uid15_block_rsrvd_fix_b_8_mem_q & redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_q;

    -- xEQOneAbs_uid48_block_rsrvd_fix(LOGICAL,47)@8 + 1
    xEQOneAbs_uid48_block_rsrvd_fix_qi <= "1" WHEN expFracX_uid47_block_rsrvd_fix_q = cstOneFPExpFrac_uid46_block_rsrvd_fix_q ELSE "0";
    xEQOneAbs_uid48_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xEQOneAbs_uid48_block_rsrvd_fix_qi, xout => xEQOneAbs_uid48_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist44_xEQOneAbs_uid48_block_rsrvd_fix_q_9(DELAY,796)
    redist44_xEQOneAbs_uid48_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xEQOneAbs_uid48_block_rsrvd_fix_q, xout => redist44_xEQOneAbs_uid48_block_rsrvd_fix_q_9_q, clk => clk, aclr => areset );

    -- excZ_y_uid31_block_rsrvd_fix(LOGICAL,30)@13 + 1
    excZ_y_uid31_block_rsrvd_fix_qi <= "1" WHEN exp_y_uid29_block_rsrvd_fix_b = cstAllZWE_uid14_block_rsrvd_fix_q ELSE "0";
    excZ_y_uid31_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid31_block_rsrvd_fix_qi, xout => excZ_y_uid31_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist52_excZ_y_uid31_block_rsrvd_fix_q_4(DELAY,804)
    redist52_excZ_y_uid31_block_rsrvd_fix_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid31_block_rsrvd_fix_q, xout => redist52_excZ_y_uid31_block_rsrvd_fix_q_4_q, clk => clk, aclr => areset );

    -- excROne_uid196_block_rsrvd_fix(LOGICAL,195)@17 + 1
    excROne_uid196_block_rsrvd_fix_qi <= redist52_excZ_y_uid31_block_rsrvd_fix_q_4_q or redist44_xEQOneAbs_uid48_block_rsrvd_fix_q_9_q;
    excROne_uid196_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excROne_uid196_block_rsrvd_fix_qi, xout => excROne_uid196_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist17_excROne_uid196_block_rsrvd_fix_q_8(DELAY,769)
    redist17_excROne_uid196_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => excROne_uid196_block_rsrvd_fix_q, xout => redist17_excROne_uid196_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- expRPostOne_uid198_block_rsrvd_fix(MUX,197)@25 + 1
    expRPostOne_uid198_block_rsrvd_fix_s <= redist17_excROne_uid196_block_rsrvd_fix_q_8_q;
    expRPostOne_uid198_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expRPostOne_uid198_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (expRPostOne_uid198_block_rsrvd_fix_s) IS
                WHEN "0" => expRPostOne_uid198_block_rsrvd_fix_q <= expR_uid154_block_rsrvd_fix_b;
                WHEN "1" => expRPostOne_uid198_block_rsrvd_fix_q <= cstBias_uid8_block_rsrvd_fix_q;
                WHEN OTHERS => expRPostOne_uid198_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- cstAllZWE_uid14_block_rsrvd_fix(CONSTANT,13)
    cstAllZWE_uid14_block_rsrvd_fix_q <= "00000000";

    -- fracXIsZero_uid33_block_rsrvd_fix(LOGICAL,32)@13 + 1
    fracXIsZero_uid33_block_rsrvd_fix_qi <= "1" WHEN cstAllZWF_uid7_block_rsrvd_fix_q = frac_y_uid30_block_rsrvd_fix_b ELSE "0";
    fracXIsZero_uid33_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid33_block_rsrvd_fix_qi, xout => fracXIsZero_uid33_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist50_fracXIsZero_uid33_block_rsrvd_fix_q_4(DELAY,802)
    redist50_fracXIsZero_uid33_block_rsrvd_fix_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid33_block_rsrvd_fix_q, xout => redist50_fracXIsZero_uid33_block_rsrvd_fix_q_4_q, clk => clk, aclr => areset );

    -- fracXIsNotZero_uid34_block_rsrvd_fix(LOGICAL,33)@17
    fracXIsNotZero_uid34_block_rsrvd_fix_q <= not (redist50_fracXIsZero_uid33_block_rsrvd_fix_q_4_q);

    -- expXIsMax_uid32_block_rsrvd_fix(LOGICAL,31)@13 + 1
    expXIsMax_uid32_block_rsrvd_fix_qi <= "1" WHEN exp_y_uid29_block_rsrvd_fix_b = cstAllOWE_uid12_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid32_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid32_block_rsrvd_fix_qi, xout => expXIsMax_uid32_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist51_expXIsMax_uid32_block_rsrvd_fix_q_4(DELAY,803)
    redist51_expXIsMax_uid32_block_rsrvd_fix_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid32_block_rsrvd_fix_q, xout => redist51_expXIsMax_uid32_block_rsrvd_fix_q_4_q, clk => clk, aclr => areset );

    -- excN_y_uid36_block_rsrvd_fix(LOGICAL,35)@17
    excN_y_uid36_block_rsrvd_fix_q <= redist51_expXIsMax_uid32_block_rsrvd_fix_q_4_q and fracXIsNotZero_uid34_block_rsrvd_fix_q;

    -- fracXIsZero_uid19_block_rsrvd_fix(LOGICAL,18)@8 + 1
    fracXIsZero_uid19_block_rsrvd_fix_qi <= "1" WHEN cstAllZWF_uid7_block_rsrvd_fix_q = redist63_frac_x_uid16_block_rsrvd_fix_b_8_mem_q ELSE "0";
    fracXIsZero_uid19_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid19_block_rsrvd_fix_qi, xout => fracXIsZero_uid19_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist56_fracXIsZero_uid19_block_rsrvd_fix_q_9(DELAY,808)
    redist56_fracXIsZero_uid19_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid19_block_rsrvd_fix_q, xout => redist56_fracXIsZero_uid19_block_rsrvd_fix_q_9_q, clk => clk, aclr => areset );

    -- fracXIsNotZero_uid20_block_rsrvd_fix(LOGICAL,19)@17
    fracXIsNotZero_uid20_block_rsrvd_fix_q <= not (redist56_fracXIsZero_uid19_block_rsrvd_fix_q_9_q);

    -- redist58_expXIsMax_uid18_block_rsrvd_fix_q_7(DELAY,810)
    redist58_expXIsMax_uid18_block_rsrvd_fix_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist57_expXIsMax_uid18_block_rsrvd_fix_q_5_q, xout => redist58_expXIsMax_uid18_block_rsrvd_fix_q_7_q, clk => clk, aclr => areset );

    -- excN_x_uid22_block_rsrvd_fix(LOGICAL,21)@17
    excN_x_uid22_block_rsrvd_fix_q <= redist58_expXIsMax_uid18_block_rsrvd_fix_q_7_q and fracXIsNotZero_uid20_block_rsrvd_fix_q;

    -- oneIsNaN_uid189_block_rsrvd_fix(LOGICAL,188)@17
    oneIsNaN_uid189_block_rsrvd_fix_q <= excN_x_uid22_block_rsrvd_fix_q or excN_y_uid36_block_rsrvd_fix_q;

    -- signX_uid40_block_rsrvd_fix(BITSELECT,39)@0
    signX_uid40_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- redist47_signX_uid40_block_rsrvd_fix_b_17(DELAY,799)
    redist47_signX_uid40_block_rsrvd_fix_b_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 17, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid40_block_rsrvd_fix_b, xout => redist47_signX_uid40_block_rsrvd_fix_b_17_q, clk => clk, aclr => areset );

    -- excI_x_uid21_block_rsrvd_fix(LOGICAL,20)@17
    excI_x_uid21_block_rsrvd_fix_q <= redist58_expXIsMax_uid18_block_rsrvd_fix_q_7_q and redist56_fracXIsZero_uid19_block_rsrvd_fix_q_9_q;

    -- redist53_excR_x_uid25_block_rsrvd_fix_q_2(DELAY,805)
    redist53_excR_x_uid25_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excR_x_uid25_block_rsrvd_fix_q, xout => redist53_excR_x_uid25_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- xRegOrInf_uid190_block_rsrvd_fix(LOGICAL,189)@17
    xRegOrInf_uid190_block_rsrvd_fix_q <= redist53_excR_x_uid25_block_rsrvd_fix_q_2_q or excI_x_uid21_block_rsrvd_fix_q;

    -- nanCase4_uid191_block_rsrvd_fix(LOGICAL,190)@17
    nanCase4_uid191_block_rsrvd_fix_q <= xRegOrInf_uid190_block_rsrvd_fix_q and redist47_signX_uid40_block_rsrvd_fix_b_17_q;

    -- invSignX_uid161_block_rsrvd_fix(LOGICAL,160)@17
    invSignX_uid161_block_rsrvd_fix_q <= not (redist47_signX_uid40_block_rsrvd_fix_b_17_q);

    -- nanCase3_uid192_block_rsrvd_fix(LOGICAL,191)@17
    nanCase3_uid192_block_rsrvd_fix_q <= excI_x_uid21_block_rsrvd_fix_q and invSignX_uid161_block_rsrvd_fix_q and redist52_excZ_y_uid31_block_rsrvd_fix_q_4_q;

    -- redist60_excZ_x_uid17_block_rsrvd_fix_q_7(DELAY,812)
    redist60_excZ_x_uid17_block_rsrvd_fix_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist59_excZ_x_uid17_block_rsrvd_fix_q_5_q, xout => redist60_excZ_x_uid17_block_rsrvd_fix_q_7_q, clk => clk, aclr => areset );

    -- nanCase2_uid193_block_rsrvd_fix(LOGICAL,192)@17
    nanCase2_uid193_block_rsrvd_fix_q <= redist60_excZ_x_uid17_block_rsrvd_fix_q_7_q and redist52_excZ_y_uid31_block_rsrvd_fix_q_4_q;

    -- excI_y_uid35_block_rsrvd_fix(LOGICAL,34)@17
    excI_y_uid35_block_rsrvd_fix_q <= redist51_expXIsMax_uid32_block_rsrvd_fix_q_4_q and redist50_fracXIsZero_uid33_block_rsrvd_fix_q_4_q;

    -- nanCase1_uid194_block_rsrvd_fix(LOGICAL,193)@17
    nanCase1_uid194_block_rsrvd_fix_q <= redist53_excR_x_uid25_block_rsrvd_fix_q_2_q and redist44_xEQOneAbs_uid48_block_rsrvd_fix_q_9_q and excI_y_uid35_block_rsrvd_fix_q;

    -- excRNaN_uid195_block_rsrvd_fix(LOGICAL,194)@17 + 1
    excRNaN_uid195_block_rsrvd_fix_qi <= nanCase1_uid194_block_rsrvd_fix_q or nanCase2_uid193_block_rsrvd_fix_q or nanCase3_uid192_block_rsrvd_fix_q or nanCase4_uid191_block_rsrvd_fix_q or oneIsNaN_uid189_block_rsrvd_fix_q;
    excRNaN_uid195_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRNaN_uid195_block_rsrvd_fix_qi, xout => excRNaN_uid195_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist18_excRNaN_uid195_block_rsrvd_fix_q_9(DELAY,770)
    redist18_excRNaN_uid195_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRNaN_uid195_block_rsrvd_fix_q, xout => redist18_excRNaN_uid195_block_rsrvd_fix_q_9_q, clk => clk, aclr => areset );

    -- invXIsOne_uid163_block_rsrvd_fix(LOGICAL,162)@17
    invXIsOne_uid163_block_rsrvd_fix_q <= not (redist44_xEQOneAbs_uid48_block_rsrvd_fix_q_9_q);

    -- invSignProd_uid179_block_rsrvd_fix(LOGICAL,178)@17
    invSignProd_uid179_block_rsrvd_fix_q <= not (redist28_signProd_uid105_block_rsrvd_fix_q_2_q);

    -- expOvfInitialExp_uid119_block_rsrvd_fix(BITSELECT,118)@16
    expOvfInitialExp_uid119_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(shiftValuePreSatExp_uid118_block_rsrvd_fix_q(12 downto 12));

    -- redist26_expOvfInitialExp_uid119_block_rsrvd_fix_b_1(DELAY,778)
    redist26_expOvfInitialExp_uid119_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expOvfInitialExp_uid119_block_rsrvd_fix_b, xout => redist26_expOvfInitialExp_uid119_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- invExpXIsMax_uid37_block_rsrvd_fix(LOGICAL,36)@17
    invExpXIsMax_uid37_block_rsrvd_fix_q <= not (redist51_expXIsMax_uid32_block_rsrvd_fix_q_4_q);

    -- InvExpXIsZero_uid38_block_rsrvd_fix(LOGICAL,37)@17
    InvExpXIsZero_uid38_block_rsrvd_fix_q <= not (redist52_excZ_y_uid31_block_rsrvd_fix_q_4_q);

    -- excR_y_uid39_block_rsrvd_fix(LOGICAL,38)@17
    excR_y_uid39_block_rsrvd_fix_q <= InvExpXIsZero_uid38_block_rsrvd_fix_q and invExpXIsMax_uid37_block_rsrvd_fix_q;

    -- infCase5_uid180_block_rsrvd_fix(LOGICAL,179)@17 + 1
    infCase5_uid180_block_rsrvd_fix_qi <= redist53_excR_x_uid25_block_rsrvd_fix_q_2_q and invSignX_uid161_block_rsrvd_fix_q and excR_y_uid39_block_rsrvd_fix_q and redist26_expOvfInitialExp_uid119_block_rsrvd_fix_b_1_q and invSignProd_uid179_block_rsrvd_fix_q and invXIsOne_uid163_block_rsrvd_fix_q;
    infCase5_uid180_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => infCase5_uid180_block_rsrvd_fix_qi, xout => infCase5_uid180_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist19_infCase5_uid180_block_rsrvd_fix_q_8(DELAY,771)
    redist19_infCase5_uid180_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => infCase5_uid180_block_rsrvd_fix_q, xout => redist19_infCase5_uid180_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- expOvf_uid157_block_rsrvd_fix(COMPARE,156)@25
    expOvf_uid157_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => expRPostBiasPreExc_uid152_block_rsrvd_fix_q(12)) & expRPostBiasPreExc_uid152_block_rsrvd_fix_q));
    expOvf_uid157_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000" & cstAllOWE_uid12_block_rsrvd_fix_q));
    expOvf_uid157_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid157_block_rsrvd_fix_a) - SIGNED(expOvf_uid157_block_rsrvd_fix_b));
    expOvf_uid157_block_rsrvd_fix_n(0) <= not (expOvf_uid157_block_rsrvd_fix_o(14));

    -- redist27_expOvfInitialExp_uid119_block_rsrvd_fix_b_9(DELAY,779)
    redist27_expOvfInitialExp_uid119_block_rsrvd_fix_b_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist26_expOvfInitialExp_uid119_block_rsrvd_fix_b_1_q, xout => redist27_expOvfInitialExp_uid119_block_rsrvd_fix_b_9_q, clk => clk, aclr => areset );

    -- invExpOvfInitialExp_uid181_block_rsrvd_fix(LOGICAL,180)@25
    invExpOvfInitialExp_uid181_block_rsrvd_fix_q <= not (redist27_expOvfInitialExp_uid119_block_rsrvd_fix_b_9_q);

    -- redist48_excR_y_uid39_block_rsrvd_fix_q_8(DELAY,800)
    redist48_excR_y_uid39_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => excR_y_uid39_block_rsrvd_fix_q, xout => redist48_excR_y_uid39_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- redist23_invSignX_uid161_block_rsrvd_fix_q_8(DELAY,775)
    redist23_invSignX_uid161_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => invSignX_uid161_block_rsrvd_fix_q, xout => redist23_invSignX_uid161_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- redist54_excR_x_uid25_block_rsrvd_fix_q_10(DELAY,806)
    redist54_excR_x_uid25_block_rsrvd_fix_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist53_excR_x_uid25_block_rsrvd_fix_q_2_q, xout => redist54_excR_x_uid25_block_rsrvd_fix_q_10_q, clk => clk, aclr => areset );

    -- infCase4_uid182_block_rsrvd_fix(LOGICAL,181)@25
    infCase4_uid182_block_rsrvd_fix_q <= redist54_excR_x_uid25_block_rsrvd_fix_q_10_q and redist23_invSignX_uid161_block_rsrvd_fix_q_8_q and redist48_excR_y_uid39_block_rsrvd_fix_q_8_q and invExpOvfInitialExp_uid181_block_rsrvd_fix_q and expOvf_uid157_block_rsrvd_fix_n;

    -- redist46_signY_uid43_block_rsrvd_fix_b_12(DELAY,798)
    redist46_signY_uid43_block_rsrvd_fix_b_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist45_signY_uid43_block_rsrvd_fix_b_2_q, xout => redist46_signY_uid43_block_rsrvd_fix_b_12_q, clk => clk, aclr => areset );

    -- invSignY_uid162_block_rsrvd_fix(LOGICAL,161)@25
    invSignY_uid162_block_rsrvd_fix_q <= not (redist46_signY_uid43_block_rsrvd_fix_b_12_q);

    -- redist49_excI_y_uid35_block_rsrvd_fix_q_8(DELAY,801)
    redist49_excI_y_uid35_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_y_uid35_block_rsrvd_fix_q, xout => redist49_excI_y_uid35_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- yRegOrInf_uid169_block_rsrvd_fix(LOGICAL,168)@25
    yRegOrInf_uid169_block_rsrvd_fix_q <= redist48_excR_y_uid39_block_rsrvd_fix_q_8_q or redist49_excI_y_uid35_block_rsrvd_fix_q_8_q;

    -- redist55_excI_x_uid21_block_rsrvd_fix_q_8(DELAY,807)
    redist55_excI_x_uid21_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_x_uid21_block_rsrvd_fix_q, xout => redist55_excI_x_uid21_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- infCase3_uid184_block_rsrvd_fix(LOGICAL,183)@25
    infCase3_uid184_block_rsrvd_fix_q <= redist55_excI_x_uid21_block_rsrvd_fix_q_8_q and redist23_invSignX_uid161_block_rsrvd_fix_q_8_q and yRegOrInf_uid169_block_rsrvd_fix_q and invSignY_uid162_block_rsrvd_fix_q;

    -- xInZO_uid167_block_rsrvd_fix(COMPARE,166)@10 + 1
    xInZO_uid167_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & redist65_exp_x_uid15_block_rsrvd_fix_b_10_q);
    xInZO_uid167_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & cstBias_uid8_block_rsrvd_fix_q);
    xInZO_uid167_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            xInZO_uid167_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            xInZO_uid167_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(xInZO_uid167_block_rsrvd_fix_a) - UNSIGNED(xInZO_uid167_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    xInZO_uid167_block_rsrvd_fix_c(0) <= xInZO_uid167_block_rsrvd_fix_o(9);

    -- redist21_xInZO_uid167_block_rsrvd_fix_c_15(DELAY,773)
    redist21_xInZO_uid167_block_rsrvd_fix_c_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC" )
    PORT MAP ( xin => xInZO_uid167_block_rsrvd_fix_c, xout => redist21_xInZO_uid167_block_rsrvd_fix_c_15_q, clk => clk, aclr => areset );

    -- xInZOZPos_uid168_block_rsrvd_fix(LOGICAL,167)@25
    xInZOZPos_uid168_block_rsrvd_fix_q <= redist23_invSignX_uid161_block_rsrvd_fix_q_8_q and redist21_xInZO_uid167_block_rsrvd_fix_c_15_q;

    -- infCase2_uid185_block_rsrvd_fix(LOGICAL,184)@25
    infCase2_uid185_block_rsrvd_fix_q <= redist54_excR_x_uid25_block_rsrvd_fix_q_10_q and xInZOZPos_uid168_block_rsrvd_fix_q and redist49_excI_y_uid35_block_rsrvd_fix_q_8_q and redist46_signY_uid43_block_rsrvd_fix_b_12_q;

    -- expFracXGTExpFracOne_uid164_block_rsrvd_fix(COMPARE,163)@8 + 1
    expFracXGTExpFracOne_uid164_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & cstOneFPExpFrac_uid46_block_rsrvd_fix_q);
    expFracXGTExpFracOne_uid164_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expFracX_uid47_block_rsrvd_fix_q);
    expFracXGTExpFracOne_uid164_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expFracXGTExpFracOne_uid164_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            expFracXGTExpFracOne_uid164_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expFracXGTExpFracOne_uid164_block_rsrvd_fix_a) - UNSIGNED(expFracXGTExpFracOne_uid164_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expFracXGTExpFracOne_uid164_block_rsrvd_fix_c(0) <= expFracXGTExpFracOne_uid164_block_rsrvd_fix_o(32);

    -- redist22_expFracXGTExpFracOne_uid164_block_rsrvd_fix_c_17(DELAY,774)
    redist22_expFracXGTExpFracOne_uid164_block_rsrvd_fix_c_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => expFracXGTExpFracOne_uid164_block_rsrvd_fix_c, xout => redist22_expFracXGTExpFracOne_uid164_block_rsrvd_fix_c_17_q, clk => clk, aclr => areset );

    -- xGTOne_uid165_block_rsrvd_fix(LOGICAL,164)@25
    xGTOne_uid165_block_rsrvd_fix_q <= redist23_invSignX_uid161_block_rsrvd_fix_q_8_q and redist22_expFracXGTExpFracOne_uid164_block_rsrvd_fix_c_17_q;

    -- infCase1_uid186_block_rsrvd_fix(LOGICAL,185)@25
    infCase1_uid186_block_rsrvd_fix_q <= redist54_excR_x_uid25_block_rsrvd_fix_q_10_q and xGTOne_uid165_block_rsrvd_fix_q and redist49_excI_y_uid35_block_rsrvd_fix_q_8_q and invSignY_uid162_block_rsrvd_fix_q;

    -- redist61_excZ_x_uid17_block_rsrvd_fix_q_15(DELAY,813)
    redist61_excZ_x_uid17_block_rsrvd_fix_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist60_excZ_x_uid17_block_rsrvd_fix_q_7_q, xout => redist61_excZ_x_uid17_block_rsrvd_fix_q_15_q, clk => clk, aclr => areset );

    -- infCase0_uid187_block_rsrvd_fix(LOGICAL,186)@25
    infCase0_uid187_block_rsrvd_fix_q <= redist61_excZ_x_uid17_block_rsrvd_fix_q_15_q and yRegOrInf_uid169_block_rsrvd_fix_q and redist46_signY_uid43_block_rsrvd_fix_b_12_q;

    -- excRInf_uid188_block_rsrvd_fix(LOGICAL,187)@25 + 1
    excRInf_uid188_block_rsrvd_fix_qi <= infCase0_uid187_block_rsrvd_fix_q or infCase1_uid186_block_rsrvd_fix_q or infCase2_uid185_block_rsrvd_fix_q or infCase3_uid184_block_rsrvd_fix_q or infCase4_uid182_block_rsrvd_fix_q or redist19_infCase5_uid180_block_rsrvd_fix_q_8_q;
    excRInf_uid188_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRInf_uid188_block_rsrvd_fix_qi, xout => excRInf_uid188_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- zeroCase6_uid170_block_rsrvd_fix(LOGICAL,169)@17 + 1
    zeroCase6_uid170_block_rsrvd_fix_qi <= redist53_excR_x_uid25_block_rsrvd_fix_q_2_q and invSignX_uid161_block_rsrvd_fix_q and excR_y_uid39_block_rsrvd_fix_q and redist26_expOvfInitialExp_uid119_block_rsrvd_fix_b_1_q and redist28_signProd_uid105_block_rsrvd_fix_q_2_q and invXIsOne_uid163_block_rsrvd_fix_q;
    zeroCase6_uid170_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => zeroCase6_uid170_block_rsrvd_fix_qi, xout => zeroCase6_uid170_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist20_zeroCase6_uid170_block_rsrvd_fix_q_9(DELAY,772)
    redist20_zeroCase6_uid170_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => zeroCase6_uid170_block_rsrvd_fix_q, xout => redist20_zeroCase6_uid170_block_rsrvd_fix_q_9_q, clk => clk, aclr => areset );

    -- expUdf_uid155_block_rsrvd_fix(COMPARE,154)@25
    expUdf_uid155_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000" & GND_q));
    expUdf_uid155_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 13 => expRPostBiasPreExc_uid152_block_rsrvd_fix_q(12)) & expRPostBiasPreExc_uid152_block_rsrvd_fix_q));
    expUdf_uid155_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid155_block_rsrvd_fix_a) - SIGNED(expUdf_uid155_block_rsrvd_fix_b));
    expUdf_uid155_block_rsrvd_fix_n(0) <= not (expUdf_uid155_block_rsrvd_fix_o(14));

    -- zeroCase5_uid171_block_rsrvd_fix(LOGICAL,170)@25 + 1
    zeroCase5_uid171_block_rsrvd_fix_qi <= redist54_excR_x_uid25_block_rsrvd_fix_q_10_q and redist23_invSignX_uid161_block_rsrvd_fix_q_8_q and redist48_excR_y_uid39_block_rsrvd_fix_q_8_q and expUdf_uid155_block_rsrvd_fix_n;
    zeroCase5_uid171_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => zeroCase5_uid171_block_rsrvd_fix_qi, xout => zeroCase5_uid171_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- zeroCase4_uid173_block_rsrvd_fix(LOGICAL,172)@25 + 1
    zeroCase4_uid173_block_rsrvd_fix_qi <= redist55_excI_x_uid21_block_rsrvd_fix_q_8_q and redist23_invSignX_uid161_block_rsrvd_fix_q_8_q and yRegOrInf_uid169_block_rsrvd_fix_q and redist46_signY_uid43_block_rsrvd_fix_b_12_q;
    zeroCase4_uid173_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => zeroCase4_uid173_block_rsrvd_fix_qi, xout => zeroCase4_uid173_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- zeroCase3_uid174_block_rsrvd_fix(LOGICAL,173)@25 + 1
    zeroCase3_uid174_block_rsrvd_fix_qi <= redist49_excI_y_uid35_block_rsrvd_fix_q_8_q and redist46_signY_uid43_block_rsrvd_fix_b_12_q and redist54_excR_x_uid25_block_rsrvd_fix_q_10_q and xGTOne_uid165_block_rsrvd_fix_q and redist23_invSignX_uid161_block_rsrvd_fix_q_8_q;
    zeroCase3_uid174_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => zeroCase3_uid174_block_rsrvd_fix_qi, xout => zeroCase3_uid174_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- zeroCase2_uid175_block_rsrvd_fix(LOGICAL,174)@25 + 1
    zeroCase2_uid175_block_rsrvd_fix_qi <= redist49_excI_y_uid35_block_rsrvd_fix_q_8_q and invSignY_uid162_block_rsrvd_fix_q and redist54_excR_x_uid25_block_rsrvd_fix_q_10_q and xInZOZPos_uid168_block_rsrvd_fix_q;
    zeroCase2_uid175_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => zeroCase2_uid175_block_rsrvd_fix_qi, xout => zeroCase2_uid175_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- zeroCase1_uid176_block_rsrvd_fix(LOGICAL,175)@25 + 1
    zeroCase1_uid176_block_rsrvd_fix_qi <= redist61_excZ_x_uid17_block_rsrvd_fix_q_15_q and redist23_invSignX_uid161_block_rsrvd_fix_q_8_q and redist49_excI_y_uid35_block_rsrvd_fix_q_8_q and invSignY_uid162_block_rsrvd_fix_q;
    zeroCase1_uid176_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => zeroCase1_uid176_block_rsrvd_fix_qi, xout => zeroCase1_uid176_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- zeroCase0_uid177_block_rsrvd_fix(LOGICAL,176)@25 + 1
    zeroCase0_uid177_block_rsrvd_fix_qi <= redist61_excZ_x_uid17_block_rsrvd_fix_q_15_q and yRegOrInf_uid169_block_rsrvd_fix_q and invSignY_uid162_block_rsrvd_fix_q;
    zeroCase0_uid177_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => zeroCase0_uid177_block_rsrvd_fix_qi, xout => zeroCase0_uid177_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- excRZero_uid178_block_rsrvd_fix(LOGICAL,177)@26
    excRZero_uid178_block_rsrvd_fix_q <= zeroCase0_uid177_block_rsrvd_fix_q or zeroCase1_uid176_block_rsrvd_fix_q or zeroCase2_uid175_block_rsrvd_fix_q or zeroCase3_uid174_block_rsrvd_fix_q or zeroCase4_uid173_block_rsrvd_fix_q or zeroCase5_uid171_block_rsrvd_fix_q or redist20_zeroCase6_uid170_block_rsrvd_fix_q_9_q;

    -- concExc_uid199_block_rsrvd_fix(BITJOIN,198)@26
    concExc_uid199_block_rsrvd_fix_q <= redist18_excRNaN_uid195_block_rsrvd_fix_q_9_q & excRInf_uid188_block_rsrvd_fix_q & excRZero_uid178_block_rsrvd_fix_q;

    -- excREnc_uid200_block_rsrvd_fix(LOOKUP,199)@26
    excREnc_uid200_block_rsrvd_fix_combproc: PROCESS (concExc_uid199_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid199_block_rsrvd_fix_q) IS
            WHEN "000" => excREnc_uid200_block_rsrvd_fix_q <= "01";
            WHEN "001" => excREnc_uid200_block_rsrvd_fix_q <= "00";
            WHEN "010" => excREnc_uid200_block_rsrvd_fix_q <= "10";
            WHEN "011" => excREnc_uid200_block_rsrvd_fix_q <= "00";
            WHEN "100" => excREnc_uid200_block_rsrvd_fix_q <= "11";
            WHEN "101" => excREnc_uid200_block_rsrvd_fix_q <= "00";
            WHEN "110" => excREnc_uid200_block_rsrvd_fix_q <= "00";
            WHEN "111" => excREnc_uid200_block_rsrvd_fix_q <= "00";
            WHEN OTHERS => -- unreachable
                           excREnc_uid200_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- expRPostExc_uid208_block_rsrvd_fix(MUX,207)@26
    expRPostExc_uid208_block_rsrvd_fix_s <= excREnc_uid200_block_rsrvd_fix_q;
    expRPostExc_uid208_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid208_block_rsrvd_fix_s, cstAllZWE_uid14_block_rsrvd_fix_q, expRPostOne_uid198_block_rsrvd_fix_q, cstAllOWE_uid12_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid208_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid208_block_rsrvd_fix_q <= cstAllZWE_uid14_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid208_block_rsrvd_fix_q <= expRPostOne_uid198_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid208_block_rsrvd_fix_q <= cstAllOWE_uid12_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid208_block_rsrvd_fix_q <= cstAllOWE_uid12_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid208_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid201_block_rsrvd_fix(CONSTANT,200)
    oneFracRPostExc2_uid201_block_rsrvd_fix_q <= "00000000000000000000001";

    -- peORExp_uid149_block_rsrvd_fix(BITSELECT,148)@25
    peORExp_uid149_block_rsrvd_fix_in <= s3_uid482_invPolyEval_q(40 downto 0);
    peORExp_uid149_block_rsrvd_fix_b <= peORExp_uid149_block_rsrvd_fix_in(40 downto 17);

    -- fracR_uid153_block_rsrvd_fix(BITSELECT,152)@25
    fracR_uid153_block_rsrvd_fix_in <= peORExp_uid149_block_rsrvd_fix_b(22 downto 0);
    fracR_uid153_block_rsrvd_fix_b <= fracR_uid153_block_rsrvd_fix_in(22 downto 0);

    -- fracRPostOne_uid197_block_rsrvd_fix(MUX,196)@25 + 1
    fracRPostOne_uid197_block_rsrvd_fix_s <= redist17_excROne_uid196_block_rsrvd_fix_q_8_q;
    fracRPostOne_uid197_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            fracRPostOne_uid197_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (fracRPostOne_uid197_block_rsrvd_fix_s) IS
                WHEN "0" => fracRPostOne_uid197_block_rsrvd_fix_q <= fracR_uid153_block_rsrvd_fix_b;
                WHEN "1" => fracRPostOne_uid197_block_rsrvd_fix_q <= cstAllZWF_uid7_block_rsrvd_fix_q;
                WHEN OTHERS => fracRPostOne_uid197_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- fracRPostExc_uid204_block_rsrvd_fix(MUX,203)@26
    fracRPostExc_uid204_block_rsrvd_fix_s <= excREnc_uid200_block_rsrvd_fix_q;
    fracRPostExc_uid204_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid204_block_rsrvd_fix_s, cstAllZWF_uid7_block_rsrvd_fix_q, fracRPostOne_uid197_block_rsrvd_fix_q, oneFracRPostExc2_uid201_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid204_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid204_block_rsrvd_fix_q <= cstAllZWF_uid7_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid204_block_rsrvd_fix_q <= fracRPostOne_uid197_block_rsrvd_fix_q;
            WHEN "10" => fracRPostExc_uid204_block_rsrvd_fix_q <= cstAllZWF_uid7_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid204_block_rsrvd_fix_q <= oneFracRPostExc2_uid201_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid204_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- RPowr_uid209_block_rsrvd_fix(BITJOIN,208)@26
    RPowr_uid209_block_rsrvd_fix_q <= GND_q & expRPostExc_uid208_block_rsrvd_fix_q & fracRPostExc_uid204_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@26
    out_primWireOut <= RPowr_uid209_block_rsrvd_fix_q;

END normal;
