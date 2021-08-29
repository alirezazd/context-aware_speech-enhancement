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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB
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
entity DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB is
    port (
        in_1_signal_STD_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_signal_STD : in std_logic_vector(15 downto 0);  -- ufix16_en16
        in_3_noise_STD_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_4_noise_STD : in std_logic_vector(15 downto 0);  -- ufix16_en16
        out_1_estimated_SNR_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_estimated_SNR_dB : out std_logic_vector(15 downto 0);  -- sfix16_en8
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB;

architecture normal of DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_castA0Zd6oq3cd16oe0cp36hj0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_castA1Zd6oq3cd16oe0cp36hj0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A0Z0dd6oq3cd16oe0cp3doz is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_multA0Z742c246j22644ck2975u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal And_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal And_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Const7_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Convert1_out_primWireOut : STD_LOGIC_VECTOR (15 downto 0);
    signal Convert5_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Math4_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult2_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal normYNoLeadOne_uid16_Divide1_in : STD_LOGIC_VECTOR (14 downto 0);
    signal normYNoLeadOne_uid16_Divide1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal paddingY_uid17_Divide1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal updatedY_uid18_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal normYIsOneC2_uid17_Divide1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal normYIsOneC2_uid17_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid20_Divide1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid21_Divide1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid21_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal paddingY_uid22_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal updatedY_uid23_Divide1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal yIsZero_uid22_Divide1_a : STD_LOGIC_VECTOR (16 downto 0);
    signal yIsZero_uid22_Divide1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid22_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fxpInverseRes_uid29_Divide1_in : STD_LOGIC_VECTOR (38 downto 0);
    signal fxpInverseRes_uid29_Divide1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal oneInvRes_uid30_Divide1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal invResPostOneHandling2_uid31_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal invResPostOneHandling2_uid31_Divide1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal cWOut_uid32_Divide1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rShiftCount_uid33_Divide1_a : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid33_Divide1_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid33_Divide1_o : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid33_Divide1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal prodPostRightShiftPost_uid36_Divide1_in : STD_LOGIC_VECTOR (47 downto 0);
    signal prodPostRightShiftPost_uid36_Divide1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal allOnes_uid37_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invAllOnes_uid39_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal addOp2_uid40_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal prodPostRightShiftPostRnd_uid41_Divide1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid41_Divide1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid41_Divide1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid41_Divide1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRndRange_uid42_Divide1_in : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRndRange_uid42_Divide1_b : STD_LOGIC_VECTOR (31 downto 0);
    signal cstValOvf_uid43_Divide1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinal_uid44_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinal_uid44_Divide1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid48_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid49_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid51_zCount_uid14_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid51_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid52_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid54_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid57_zCount_uid14_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid57_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid58_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid60_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid63_zCount_uid14_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid63_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid64_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid66_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid69_zCount_uid14_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid69_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid71_zCount_uid14_Divide1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid72_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid73_zCount_uid14_Divide1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal lowRangeB_uid93_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid93_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid94_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid95_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid95_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid95_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid95_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid96_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid99_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid99_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid100_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid101_invPolyEval_a : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid101_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid101_invPolyEval_o : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid101_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal s2_uid102_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal lowRangeB_uid105_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid105_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid106_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s3sumAHighB_uid107_invPolyEval_a : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid107_invPolyEval_b : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid107_invPolyEval_o : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid107_invPolyEval_q : STD_LOGIC_VECTOR (38 downto 0);
    signal s3_uid108_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal osig_uid111_pT1_uid92_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid114_pT2_uid98_invPolyEval_in : STD_LOGIC_VECTOR (29 downto 0);
    signal osig_uid114_pT2_uid98_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal nx_mergedSignalTM_uid133_pT3_uid104_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal topRangeX_bottomExtension_uid135_pT3_uid104_invPolyEval_q : STD_LOGIC_VECTOR (9 downto 0);
    signal topRangeX_mergedSignalTM_uid137_pT3_uid104_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftY_bottomExtension_uid144_pT3_uid104_invPolyEval_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftY_mergedSignalTM_uid146_pT3_uid104_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid153_pT3_uid104_invPolyEval_in : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid153_pT3_uid104_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal highBBits_uid154_pT3_uid104_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0_uid156_pT3_uid104_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid157_pT3_uid104_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid157_pT3_uid104_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng8_uid162_normY_uid15_Divide1_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng8_uid162_normY_uid15_Divide1_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1_uid163_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0_uid167_normY_uid15_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid167_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx1Rng2_uid169_normY_uid15_Divide1_in : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1Rng2_uid169_normY_uid15_Divide1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1_uid170_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx2Rng4_uid172_normY_uid15_Divide1_in : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx2Rng4_uid172_normY_uid15_Divide1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx2_uid173_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx3Pad6_uid174_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx3Rng6_uid175_normY_uid15_Divide1_in : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage1Idx3Rng6_uid175_normY_uid15_Divide1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage1Idx3_uid176_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1_uid178_normY_uid15_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid178_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage2Idx1Rng1_uid180_normY_uid15_Divide1_in : STD_LOGIC_VECTOR (14 downto 0);
    signal leftShiftStage2Idx1Rng1_uid180_normY_uid15_Divide1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal leftShiftStage2Idx1_uid181_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage2_uid183_normY_uid15_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid183_normY_uid15_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal prodXInvY_uid34_Divide1_align_7_q : STD_LOGIC_VECTOR (48 downto 0);
    signal prodXInvY_uid34_Divide1_align_7_qint : STD_LOGIC_VECTOR (48 downto 0);
    signal prodXInvY_uid34_Divide1_result_add_0_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal prodXInvY_uid34_Divide1_result_add_0_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal prodXInvY_uid34_Divide1_result_add_0_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal prodXInvY_uid34_Divide1_result_add_0_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal rightShiftStage0Idx1Rng16_uid197_prodPostRightShift_uid35_Divide1_in : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx1Rng16_uid197_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx1_uid199_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx2Rng32_uid200_prodPostRightShift_uid35_Divide1_in : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx2Rng32_uid200_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage0Idx2Pad32_uid201_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2_uid202_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx3Rng48_uid203_prodPostRightShift_uid35_Divide1_in : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx3Rng48_uid203_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx3Pad48_uid204_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx3_uid205_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx1Rng4_uid208_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (44 downto 0);
    signal rightShiftStage1Idx1_uid210_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx2Rng8_uid211_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage1Idx2_uid213_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx3Rng12_uid214_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (36 downto 0);
    signal rightShiftStage1Idx3Pad12_uid215_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage1Idx3_uid216_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx1Rng1_uid219_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage2Idx1_uid221_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx2Rng2_uid222_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage2Idx2_uid224_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx3Rng3_uid225_prodPostRightShift_uid35_Divide1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage2Idx3Pad3_uid226_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage2Idx3_uid227_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal memoryC0_uid75_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC0_uid75_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid75_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid75_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid75_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid75_invTabGen_lutmem_r : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC1_uid78_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC1_uid78_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid78_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid78_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid78_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid78_invTabGen_lutmem_r : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC2_uid81_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC2_uid81_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid81_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid81_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid81_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid81_invTabGen_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC3_uid84_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC3_uid84_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid84_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid84_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid84_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid84_invTabGen_lutmem_r : STD_LOGIC_VECTOR (13 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im3_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im3_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im3_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im3_pr : SIGNED (12 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_bs5_b : STD_LOGIC_VECTOR (4 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_align_7_q : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_align_7_qint : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_reset : std_logic;
    type prodXY_uid110_pT1_uid92_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(6 downto 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_a0 : prodXY_uid110_pT1_uid92_invPolyEval_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid110_pT1_uid92_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid110_pT1_uid92_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_c0 : prodXY_uid110_pT1_uid92_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid110_pT1_uid92_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid110_pT1_uid92_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(7 downto 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_l : prodXY_uid110_pT1_uid92_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid110_pT1_uid92_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(21 downto 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_p : prodXY_uid110_pT1_uid92_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_u : prodXY_uid110_pT1_uid92_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_w : prodXY_uid110_pT1_uid92_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_x : prodXY_uid110_pT1_uid92_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_y : prodXY_uid110_pT1_uid92_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_s : prodXY_uid110_pT1_uid92_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_qq : STD_LOGIC_VECTOR (20 downto 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_q : STD_LOGIC_VECTOR (20 downto 0);
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid110_pT1_uid92_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_reset : std_logic;
    type sm0_uid151_pT3_uid104_invPolyEval_cma_a0type is array(NATURAL range <>) of SIGNED(17 downto 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_a0 : sm0_uid151_pT3_uid104_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid151_pT3_uid104_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_c0 : sm0_uid151_pT3_uid104_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid151_pT3_uid104_invPolyEval_cma_c0 : signal is true;
    type sm0_uid151_pT3_uid104_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(35 downto 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_p : sm0_uid151_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_u : sm0_uid151_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_w : sm0_uid151_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_x : sm0_uid151_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_y : sm0_uid151_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_s : sm0_uid151_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid151_pT3_uid104_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_reset : std_logic;
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_a0 : sm0_uid151_pT3_uid104_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid152_pT3_uid104_invPolyEval_cma_a0 : signal is true;
    type sm0_uid152_pT3_uid104_invPolyEval_cma_c0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_c0 : sm0_uid152_pT3_uid104_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of sm0_uid152_pT3_uid104_invPolyEval_cma_c0 : signal is true;
    type sm0_uid152_pT3_uid104_invPolyEval_cma_rtype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_r : sm0_uid152_pT3_uid104_invPolyEval_cma_rtype(0 to 0);
    type sm0_uid152_pT3_uid104_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(36 downto 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_p : sm0_uid152_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_u : sm0_uid152_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_w : sm0_uid152_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_x : sm0_uid152_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_y : sm0_uid152_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_s : sm0_uid152_pT3_uid104_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid152_pT3_uid104_invPolyEval_cma_ena1 : std_logic;
    signal prodXInvY_uid34_Divide1_im0_cma_reset : std_logic;
    signal prodXInvY_uid34_Divide1_im0_cma_a0 : sm0_uid152_pT3_uid104_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid34_Divide1_im0_cma_a0 : signal is true;
    type prodXInvY_uid34_Divide1_im0_cma_c0type is array(NATURAL range <>) of UNSIGNED(15 downto 0);
    signal prodXInvY_uid34_Divide1_im0_cma_c0 : prodXInvY_uid34_Divide1_im0_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid34_Divide1_im0_cma_c0 : signal is true;
    type prodXInvY_uid34_Divide1_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(33 downto 0);
    signal prodXInvY_uid34_Divide1_im0_cma_p : prodXInvY_uid34_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im0_cma_u : prodXInvY_uid34_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im0_cma_w : prodXInvY_uid34_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im0_cma_x : prodXInvY_uid34_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im0_cma_y : prodXInvY_uid34_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im0_cma_s : prodXInvY_uid34_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im0_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal prodXInvY_uid34_Divide1_im0_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodXInvY_uid34_Divide1_im0_cma_ena0 : std_logic;
    signal prodXInvY_uid34_Divide1_im0_cma_ena1 : std_logic;
    signal prodXInvY_uid34_Divide1_im3_cma_reset : std_logic;
    signal prodXInvY_uid34_Divide1_im3_cma_a0 : prodXInvY_uid34_Divide1_im0_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid34_Divide1_im3_cma_a0 : signal is true;
    type prodXInvY_uid34_Divide1_im3_cma_c0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXInvY_uid34_Divide1_im3_cma_c0 : prodXInvY_uid34_Divide1_im3_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid34_Divide1_im3_cma_c0 : signal is true;
    type prodXInvY_uid34_Divide1_im3_cma_ptype is array(NATURAL range <>) of UNSIGNED(30 downto 0);
    signal prodXInvY_uid34_Divide1_im3_cma_p : prodXInvY_uid34_Divide1_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im3_cma_u : prodXInvY_uid34_Divide1_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im3_cma_w : prodXInvY_uid34_Divide1_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im3_cma_x : prodXInvY_uid34_Divide1_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im3_cma_y : prodXInvY_uid34_Divide1_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im3_cma_s : prodXInvY_uid34_Divide1_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid34_Divide1_im3_cma_qq : STD_LOGIC_VECTOR (30 downto 0);
    signal prodXInvY_uid34_Divide1_im3_cma_q : STD_LOGIC_VECTOR (30 downto 0);
    signal prodXInvY_uid34_Divide1_im3_cma_ena0 : std_logic;
    signal prodXInvY_uid34_Divide1_im3_cma_ena1 : std_logic;
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_reset : std_logic;
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_a0 : sm0_uid152_pT3_uid104_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_a0 : signal is true;
    type prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_c0type is array(NATURAL range <>) of UNSIGNED(9 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_c0 : prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_c0 : signal is true;
    type prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_p : prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_u : prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_w : prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_x : prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_y : prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_s : prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_q : STD_LOGIC_VECTOR (24 downto 0);
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ena0 : std_logic;
    signal prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ena1 : std_logic;
    signal yAddr_uid26_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid26_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (6 downto 0);
    signal prodXInvY_uid34_Divide1_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid34_Divide1_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (14 downto 0);
    signal rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal topRangeY_uid139_pT3_uid104_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid139_pT3_uid104_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (12 downto 0);
    signal redist0_yAddr_uid26_Divide1_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_yAddr_uid26_Divide1_merged_bit_select_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_yAddr_uid26_Divide1_merged_bit_select_b_6_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist3_yAddr_uid26_Divide1_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist4_yAddr_uid26_Divide1_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist5_yAddr_uid26_Divide1_merged_bit_select_c_6_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist7_yIsZero_uid22_Divide1_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_normYIsOne_uid21_Divide1_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_normYIsOneC2_uid20_Divide1_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_normYNoLeadOne_uid16_Divide1_b_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist11_Mult2_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_Math4_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_Convert5_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_Convert1_out_primWireOut_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist16_And_rsrvd_fix_q_30_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_outputreg_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_reset0 : std_logic;
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_ia : STD_LOGIC_VECTOR (4 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_iq : STD_LOGIC_VECTOR (4 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_i : signal is true;
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist6_r_uid73_zCount_uid14_Divide1_q_10_sticky_ena_q : signal is true;
    signal redist6_r_uid73_zCount_uid14_Divide1_q_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_mem_reset0 : std_logic;
    signal redist13_GPIn4_in_2_signal_STD_8_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist13_GPIn4_in_2_signal_STD_8_rdcnt_i : signal is true;
    signal redist13_GPIn4_in_2_signal_STD_8_rdcnt_eq : std_logic;
    attribute preserve of redist13_GPIn4_in_2_signal_STD_8_rdcnt_eq : signal is true;
    signal redist13_GPIn4_in_2_signal_STD_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_GPIn4_in_2_signal_STD_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist13_GPIn4_in_2_signal_STD_8_sticky_ena_q : signal is true;
    signal redist13_GPIn4_in_2_signal_STD_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- cstValOvf_uid43_Divide1(CONSTANT,42)
    cstValOvf_uid43_Divide1_q <= "11111111111111111111111111111111";

    -- allOnes_uid37_Divide1(LOGICAL,36)@10
    allOnes_uid37_Divide1_q <= "1" WHEN prodPostRightShiftPost_uid36_Divide1_b = "111111111111111111111111111111111" ELSE "0";

    -- invAllOnes_uid39_Divide1(LOGICAL,38)@10
    invAllOnes_uid39_Divide1_q <= not (allOnes_uid37_Divide1_q);

    -- addOp2_uid40_Divide1(LOGICAL,39)@10
    addOp2_uid40_Divide1_q <= invAllOnes_uid39_Divide1_q and VCC_q;

    -- rightShiftStage2Idx3Pad3_uid226_prodPostRightShift_uid35_Divide1(CONSTANT,225)
    rightShiftStage2Idx3Pad3_uid226_prodPostRightShift_uid35_Divide1_q <= "000";

    -- rightShiftStage2Idx3Rng3_uid225_prodPostRightShift_uid35_Divide1(BITSELECT,224)@10
    rightShiftStage2Idx3Rng3_uid225_prodPostRightShift_uid35_Divide1_b <= rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q(48 downto 3);

    -- rightShiftStage2Idx3_uid227_prodPostRightShift_uid35_Divide1(BITJOIN,226)@10
    rightShiftStage2Idx3_uid227_prodPostRightShift_uid35_Divide1_q <= rightShiftStage2Idx3Pad3_uid226_prodPostRightShift_uid35_Divide1_q & rightShiftStage2Idx3Rng3_uid225_prodPostRightShift_uid35_Divide1_b;

    -- zs_uid64_zCount_uid14_Divide1(CONSTANT,63)
    zs_uid64_zCount_uid14_Divide1_q <= "00";

    -- rightShiftStage2Idx2Rng2_uid222_prodPostRightShift_uid35_Divide1(BITSELECT,221)@10
    rightShiftStage2Idx2Rng2_uid222_prodPostRightShift_uid35_Divide1_b <= rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q(48 downto 2);

    -- rightShiftStage2Idx2_uid224_prodPostRightShift_uid35_Divide1(BITJOIN,223)@10
    rightShiftStage2Idx2_uid224_prodPostRightShift_uid35_Divide1_q <= zs_uid64_zCount_uid14_Divide1_q & rightShiftStage2Idx2Rng2_uid222_prodPostRightShift_uid35_Divide1_b;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- rightShiftStage2Idx1Rng1_uid219_prodPostRightShift_uid35_Divide1(BITSELECT,218)@10
    rightShiftStage2Idx1Rng1_uid219_prodPostRightShift_uid35_Divide1_b <= rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q(48 downto 1);

    -- rightShiftStage2Idx1_uid221_prodPostRightShift_uid35_Divide1(BITJOIN,220)@10
    rightShiftStage2Idx1_uid221_prodPostRightShift_uid35_Divide1_q <= GND_q & rightShiftStage2Idx1Rng1_uid219_prodPostRightShift_uid35_Divide1_b;

    -- rightShiftStage1Idx3Pad12_uid215_prodPostRightShift_uid35_Divide1(CONSTANT,214)
    rightShiftStage1Idx3Pad12_uid215_prodPostRightShift_uid35_Divide1_q <= "000000000000";

    -- rightShiftStage1Idx3Rng12_uid214_prodPostRightShift_uid35_Divide1(BITSELECT,213)@10
    rightShiftStage1Idx3Rng12_uid214_prodPostRightShift_uid35_Divide1_b <= rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q(48 downto 12);

    -- rightShiftStage1Idx3_uid216_prodPostRightShift_uid35_Divide1(BITJOIN,215)@10
    rightShiftStage1Idx3_uid216_prodPostRightShift_uid35_Divide1_q <= rightShiftStage1Idx3Pad12_uid215_prodPostRightShift_uid35_Divide1_q & rightShiftStage1Idx3Rng12_uid214_prodPostRightShift_uid35_Divide1_b;

    -- zs_uid52_zCount_uid14_Divide1(CONSTANT,51)
    zs_uid52_zCount_uid14_Divide1_q <= "00000000";

    -- rightShiftStage1Idx2Rng8_uid211_prodPostRightShift_uid35_Divide1(BITSELECT,210)@10
    rightShiftStage1Idx2Rng8_uid211_prodPostRightShift_uid35_Divide1_b <= rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q(48 downto 8);

    -- rightShiftStage1Idx2_uid213_prodPostRightShift_uid35_Divide1(BITJOIN,212)@10
    rightShiftStage1Idx2_uid213_prodPostRightShift_uid35_Divide1_q <= zs_uid52_zCount_uid14_Divide1_q & rightShiftStage1Idx2Rng8_uid211_prodPostRightShift_uid35_Divide1_b;

    -- zs_uid58_zCount_uid14_Divide1(CONSTANT,57)
    zs_uid58_zCount_uid14_Divide1_q <= "0000";

    -- rightShiftStage1Idx1Rng4_uid208_prodPostRightShift_uid35_Divide1(BITSELECT,207)@10
    rightShiftStage1Idx1Rng4_uid208_prodPostRightShift_uid35_Divide1_b <= rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q(48 downto 4);

    -- rightShiftStage1Idx1_uid210_prodPostRightShift_uid35_Divide1(BITJOIN,209)@10
    rightShiftStage1Idx1_uid210_prodPostRightShift_uid35_Divide1_q <= zs_uid58_zCount_uid14_Divide1_q & rightShiftStage1Idx1Rng4_uid208_prodPostRightShift_uid35_Divide1_b;

    -- rightShiftStage0Idx3Pad48_uid204_prodPostRightShift_uid35_Divide1(CONSTANT,203)
    rightShiftStage0Idx3Pad48_uid204_prodPostRightShift_uid35_Divide1_q <= "000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx3Rng48_uid203_prodPostRightShift_uid35_Divide1(BITSELECT,202)@10
    rightShiftStage0Idx3Rng48_uid203_prodPostRightShift_uid35_Divide1_in <= prodXInvY_uid34_Divide1_result_add_0_0_q(48 downto 0);
    rightShiftStage0Idx3Rng48_uid203_prodPostRightShift_uid35_Divide1_b <= rightShiftStage0Idx3Rng48_uid203_prodPostRightShift_uid35_Divide1_in(48 downto 48);

    -- rightShiftStage0Idx3_uid205_prodPostRightShift_uid35_Divide1(BITJOIN,204)@10
    rightShiftStage0Idx3_uid205_prodPostRightShift_uid35_Divide1_q <= rightShiftStage0Idx3Pad48_uid204_prodPostRightShift_uid35_Divide1_q & rightShiftStage0Idx3Rng48_uid203_prodPostRightShift_uid35_Divide1_b;

    -- rightShiftStage0Idx2Pad32_uid201_prodPostRightShift_uid35_Divide1(CONSTANT,200)
    rightShiftStage0Idx2Pad32_uid201_prodPostRightShift_uid35_Divide1_q <= "00000000000000000000000000000000";

    -- rightShiftStage0Idx2Rng32_uid200_prodPostRightShift_uid35_Divide1(BITSELECT,199)@10
    rightShiftStage0Idx2Rng32_uid200_prodPostRightShift_uid35_Divide1_in <= prodXInvY_uid34_Divide1_result_add_0_0_q(48 downto 0);
    rightShiftStage0Idx2Rng32_uid200_prodPostRightShift_uid35_Divide1_b <= rightShiftStage0Idx2Rng32_uid200_prodPostRightShift_uid35_Divide1_in(48 downto 32);

    -- rightShiftStage0Idx2_uid202_prodPostRightShift_uid35_Divide1(BITJOIN,201)@10
    rightShiftStage0Idx2_uid202_prodPostRightShift_uid35_Divide1_q <= rightShiftStage0Idx2Pad32_uid201_prodPostRightShift_uid35_Divide1_q & rightShiftStage0Idx2Rng32_uid200_prodPostRightShift_uid35_Divide1_b;

    -- paddingY_uid22_Divide1(CONSTANT,21)
    paddingY_uid22_Divide1_q <= "0000000000000000";

    -- rightShiftStage0Idx1Rng16_uid197_prodPostRightShift_uid35_Divide1(BITSELECT,196)@10
    rightShiftStage0Idx1Rng16_uid197_prodPostRightShift_uid35_Divide1_in <= prodXInvY_uid34_Divide1_result_add_0_0_q(48 downto 0);
    rightShiftStage0Idx1Rng16_uid197_prodPostRightShift_uid35_Divide1_b <= rightShiftStage0Idx1Rng16_uid197_prodPostRightShift_uid35_Divide1_in(48 downto 16);

    -- rightShiftStage0Idx1_uid199_prodPostRightShift_uid35_Divide1(BITJOIN,198)@10
    rightShiftStage0Idx1_uid199_prodPostRightShift_uid35_Divide1_q <= paddingY_uid22_Divide1_q & rightShiftStage0Idx1Rng16_uid197_prodPostRightShift_uid35_Divide1_b;

    -- oneInvRes_uid30_Divide1(CONSTANT,29)
    oneInvRes_uid30_Divide1_q <= "100000000000000000000000000000000";

    -- leftShiftStage2Idx1Rng1_uid180_normY_uid15_Divide1(BITSELECT,179)@0
    leftShiftStage2Idx1Rng1_uid180_normY_uid15_Divide1_in <= leftShiftStage1_uid178_normY_uid15_Divide1_q(14 downto 0);
    leftShiftStage2Idx1Rng1_uid180_normY_uid15_Divide1_b <= leftShiftStage2Idx1Rng1_uid180_normY_uid15_Divide1_in(14 downto 0);

    -- leftShiftStage2Idx1_uid181_normY_uid15_Divide1(BITJOIN,180)@0
    leftShiftStage2Idx1_uid181_normY_uid15_Divide1_q <= leftShiftStage2Idx1Rng1_uid180_normY_uid15_Divide1_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid175_normY_uid15_Divide1(BITSELECT,174)@0
    leftShiftStage1Idx3Rng6_uid175_normY_uid15_Divide1_in <= leftShiftStage0_uid167_normY_uid15_Divide1_q(9 downto 0);
    leftShiftStage1Idx3Rng6_uid175_normY_uid15_Divide1_b <= leftShiftStage1Idx3Rng6_uid175_normY_uid15_Divide1_in(9 downto 0);

    -- leftShiftStage1Idx3Pad6_uid174_normY_uid15_Divide1(CONSTANT,173)
    leftShiftStage1Idx3Pad6_uid174_normY_uid15_Divide1_q <= "000000";

    -- leftShiftStage1Idx3_uid176_normY_uid15_Divide1(BITJOIN,175)@0
    leftShiftStage1Idx3_uid176_normY_uid15_Divide1_q <= leftShiftStage1Idx3Rng6_uid175_normY_uid15_Divide1_b & leftShiftStage1Idx3Pad6_uid174_normY_uid15_Divide1_q;

    -- leftShiftStage1Idx2Rng4_uid172_normY_uid15_Divide1(BITSELECT,171)@0
    leftShiftStage1Idx2Rng4_uid172_normY_uid15_Divide1_in <= leftShiftStage0_uid167_normY_uid15_Divide1_q(11 downto 0);
    leftShiftStage1Idx2Rng4_uid172_normY_uid15_Divide1_b <= leftShiftStage1Idx2Rng4_uid172_normY_uid15_Divide1_in(11 downto 0);

    -- leftShiftStage1Idx2_uid173_normY_uid15_Divide1(BITJOIN,172)@0
    leftShiftStage1Idx2_uid173_normY_uid15_Divide1_q <= leftShiftStage1Idx2Rng4_uid172_normY_uid15_Divide1_b & zs_uid58_zCount_uid14_Divide1_q;

    -- leftShiftStage1Idx1Rng2_uid169_normY_uid15_Divide1(BITSELECT,168)@0
    leftShiftStage1Idx1Rng2_uid169_normY_uid15_Divide1_in <= leftShiftStage0_uid167_normY_uid15_Divide1_q(13 downto 0);
    leftShiftStage1Idx1Rng2_uid169_normY_uid15_Divide1_b <= leftShiftStage1Idx1Rng2_uid169_normY_uid15_Divide1_in(13 downto 0);

    -- leftShiftStage1Idx1_uid170_normY_uid15_Divide1(BITJOIN,169)@0
    leftShiftStage1Idx1_uid170_normY_uid15_Divide1_q <= leftShiftStage1Idx1Rng2_uid169_normY_uid15_Divide1_b & zs_uid64_zCount_uid14_Divide1_q;

    -- leftShiftStage0Idx1Rng8_uid162_normY_uid15_Divide1(BITSELECT,161)@0
    leftShiftStage0Idx1Rng8_uid162_normY_uid15_Divide1_in <= in_4_noise_STD(7 downto 0);
    leftShiftStage0Idx1Rng8_uid162_normY_uid15_Divide1_b <= leftShiftStage0Idx1Rng8_uid162_normY_uid15_Divide1_in(7 downto 0);

    -- leftShiftStage0Idx1_uid163_normY_uid15_Divide1(BITJOIN,162)@0
    leftShiftStage0Idx1_uid163_normY_uid15_Divide1_q <= leftShiftStage0Idx1Rng8_uid162_normY_uid15_Divide1_b & zs_uid52_zCount_uid14_Divide1_q;

    -- leftShiftStage0_uid167_normY_uid15_Divide1(MUX,166)@0
    leftShiftStage0_uid167_normY_uid15_Divide1_s <= leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_b;
    leftShiftStage0_uid167_normY_uid15_Divide1_combproc: PROCESS (leftShiftStage0_uid167_normY_uid15_Divide1_s, in_4_noise_STD, leftShiftStage0Idx1_uid163_normY_uid15_Divide1_q, paddingY_uid22_Divide1_q)
    BEGIN
        CASE (leftShiftStage0_uid167_normY_uid15_Divide1_s) IS
            WHEN "00" => leftShiftStage0_uid167_normY_uid15_Divide1_q <= in_4_noise_STD;
            WHEN "01" => leftShiftStage0_uid167_normY_uid15_Divide1_q <= leftShiftStage0Idx1_uid163_normY_uid15_Divide1_q;
            WHEN "10" => leftShiftStage0_uid167_normY_uid15_Divide1_q <= paddingY_uid22_Divide1_q;
            WHEN "11" => leftShiftStage0_uid167_normY_uid15_Divide1_q <= paddingY_uid22_Divide1_q;
            WHEN OTHERS => leftShiftStage0_uid167_normY_uid15_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid178_normY_uid15_Divide1(MUX,177)@0
    leftShiftStage1_uid178_normY_uid15_Divide1_s <= leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_c;
    leftShiftStage1_uid178_normY_uid15_Divide1_combproc: PROCESS (leftShiftStage1_uid178_normY_uid15_Divide1_s, leftShiftStage0_uid167_normY_uid15_Divide1_q, leftShiftStage1Idx1_uid170_normY_uid15_Divide1_q, leftShiftStage1Idx2_uid173_normY_uid15_Divide1_q, leftShiftStage1Idx3_uid176_normY_uid15_Divide1_q)
    BEGIN
        CASE (leftShiftStage1_uid178_normY_uid15_Divide1_s) IS
            WHEN "00" => leftShiftStage1_uid178_normY_uid15_Divide1_q <= leftShiftStage0_uid167_normY_uid15_Divide1_q;
            WHEN "01" => leftShiftStage1_uid178_normY_uid15_Divide1_q <= leftShiftStage1Idx1_uid170_normY_uid15_Divide1_q;
            WHEN "10" => leftShiftStage1_uid178_normY_uid15_Divide1_q <= leftShiftStage1Idx2_uid173_normY_uid15_Divide1_q;
            WHEN "11" => leftShiftStage1_uid178_normY_uid15_Divide1_q <= leftShiftStage1Idx3_uid176_normY_uid15_Divide1_q;
            WHEN OTHERS => leftShiftStage1_uid178_normY_uid15_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid48_zCount_uid14_Divide1(LOGICAL,47)@0
    vCount_uid48_zCount_uid14_Divide1_q <= "1" WHEN in_4_noise_STD = paddingY_uid22_Divide1_q ELSE "0";

    -- mO_uid49_zCount_uid14_Divide1(CONSTANT,48)
    mO_uid49_zCount_uid14_Divide1_q <= "1111111111111111";

    -- vStagei_uid51_zCount_uid14_Divide1(MUX,50)@0
    vStagei_uid51_zCount_uid14_Divide1_s <= vCount_uid48_zCount_uid14_Divide1_q;
    vStagei_uid51_zCount_uid14_Divide1_combproc: PROCESS (vStagei_uid51_zCount_uid14_Divide1_s, in_4_noise_STD, mO_uid49_zCount_uid14_Divide1_q)
    BEGIN
        CASE (vStagei_uid51_zCount_uid14_Divide1_s) IS
            WHEN "0" => vStagei_uid51_zCount_uid14_Divide1_q <= in_4_noise_STD;
            WHEN "1" => vStagei_uid51_zCount_uid14_Divide1_q <= mO_uid49_zCount_uid14_Divide1_q;
            WHEN OTHERS => vStagei_uid51_zCount_uid14_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid53_zCount_uid14_Divide1_merged_bit_select(BITSELECT,253)@0
    rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_b <= vStagei_uid51_zCount_uid14_Divide1_q(15 downto 8);
    rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_c <= vStagei_uid51_zCount_uid14_Divide1_q(7 downto 0);

    -- vCount_uid54_zCount_uid14_Divide1(LOGICAL,53)@0
    vCount_uid54_zCount_uid14_Divide1_q <= "1" WHEN rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_b = zs_uid52_zCount_uid14_Divide1_q ELSE "0";

    -- vStagei_uid57_zCount_uid14_Divide1(MUX,56)@0
    vStagei_uid57_zCount_uid14_Divide1_s <= vCount_uid54_zCount_uid14_Divide1_q;
    vStagei_uid57_zCount_uid14_Divide1_combproc: PROCESS (vStagei_uid57_zCount_uid14_Divide1_s, rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_b, rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid57_zCount_uid14_Divide1_s) IS
            WHEN "0" => vStagei_uid57_zCount_uid14_Divide1_q <= rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_b;
            WHEN "1" => vStagei_uid57_zCount_uid14_Divide1_q <= rVStage_uid53_zCount_uid14_Divide1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid57_zCount_uid14_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid59_zCount_uid14_Divide1_merged_bit_select(BITSELECT,254)@0
    rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_b <= vStagei_uid57_zCount_uid14_Divide1_q(7 downto 4);
    rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_c <= vStagei_uid57_zCount_uid14_Divide1_q(3 downto 0);

    -- vCount_uid60_zCount_uid14_Divide1(LOGICAL,59)@0
    vCount_uid60_zCount_uid14_Divide1_q <= "1" WHEN rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_b = zs_uid58_zCount_uid14_Divide1_q ELSE "0";

    -- vStagei_uid63_zCount_uid14_Divide1(MUX,62)@0
    vStagei_uid63_zCount_uid14_Divide1_s <= vCount_uid60_zCount_uid14_Divide1_q;
    vStagei_uid63_zCount_uid14_Divide1_combproc: PROCESS (vStagei_uid63_zCount_uid14_Divide1_s, rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_b, rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid63_zCount_uid14_Divide1_s) IS
            WHEN "0" => vStagei_uid63_zCount_uid14_Divide1_q <= rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_b;
            WHEN "1" => vStagei_uid63_zCount_uid14_Divide1_q <= rVStage_uid59_zCount_uid14_Divide1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid63_zCount_uid14_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid65_zCount_uid14_Divide1_merged_bit_select(BITSELECT,255)@0
    rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_b <= vStagei_uid63_zCount_uid14_Divide1_q(3 downto 2);
    rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_c <= vStagei_uid63_zCount_uid14_Divide1_q(1 downto 0);

    -- vCount_uid66_zCount_uid14_Divide1(LOGICAL,65)@0
    vCount_uid66_zCount_uid14_Divide1_q <= "1" WHEN rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_b = zs_uid64_zCount_uid14_Divide1_q ELSE "0";

    -- vStagei_uid69_zCount_uid14_Divide1(MUX,68)@0
    vStagei_uid69_zCount_uid14_Divide1_s <= vCount_uid66_zCount_uid14_Divide1_q;
    vStagei_uid69_zCount_uid14_Divide1_combproc: PROCESS (vStagei_uid69_zCount_uid14_Divide1_s, rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_b, rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid69_zCount_uid14_Divide1_s) IS
            WHEN "0" => vStagei_uid69_zCount_uid14_Divide1_q <= rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_b;
            WHEN "1" => vStagei_uid69_zCount_uid14_Divide1_q <= rVStage_uid65_zCount_uid14_Divide1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid69_zCount_uid14_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid71_zCount_uid14_Divide1(BITSELECT,70)@0
    rVStage_uid71_zCount_uid14_Divide1_b <= vStagei_uid69_zCount_uid14_Divide1_q(1 downto 1);

    -- vCount_uid72_zCount_uid14_Divide1(LOGICAL,71)@0
    vCount_uid72_zCount_uid14_Divide1_q <= "1" WHEN rVStage_uid71_zCount_uid14_Divide1_b = GND_q ELSE "0";

    -- r_uid73_zCount_uid14_Divide1(BITJOIN,72)@0
    r_uid73_zCount_uid14_Divide1_q <= vCount_uid48_zCount_uid14_Divide1_q & vCount_uid54_zCount_uid14_Divide1_q & vCount_uid60_zCount_uid14_Divide1_q & vCount_uid66_zCount_uid14_Divide1_q & vCount_uid72_zCount_uid14_Divide1_q;

    -- leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select(BITSELECT,256)@0
    leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_b <= r_uid73_zCount_uid14_Divide1_q(4 downto 3);
    leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_c <= r_uid73_zCount_uid14_Divide1_q(2 downto 1);
    leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_d <= r_uid73_zCount_uid14_Divide1_q(0 downto 0);

    -- leftShiftStage2_uid183_normY_uid15_Divide1(MUX,182)@0
    leftShiftStage2_uid183_normY_uid15_Divide1_s <= leftShiftStageSel4Dto3_uid166_normY_uid15_Divide1_merged_bit_select_d;
    leftShiftStage2_uid183_normY_uid15_Divide1_combproc: PROCESS (leftShiftStage2_uid183_normY_uid15_Divide1_s, leftShiftStage1_uid178_normY_uid15_Divide1_q, leftShiftStage2Idx1_uid181_normY_uid15_Divide1_q)
    BEGIN
        CASE (leftShiftStage2_uid183_normY_uid15_Divide1_s) IS
            WHEN "0" => leftShiftStage2_uid183_normY_uid15_Divide1_q <= leftShiftStage1_uid178_normY_uid15_Divide1_q;
            WHEN "1" => leftShiftStage2_uid183_normY_uid15_Divide1_q <= leftShiftStage2Idx1_uid181_normY_uid15_Divide1_q;
            WHEN OTHERS => leftShiftStage2_uid183_normY_uid15_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- normYNoLeadOne_uid16_Divide1(BITSELECT,15)@0
    normYNoLeadOne_uid16_Divide1_in <= leftShiftStage2_uid183_normY_uid15_Divide1_q(14 downto 0);
    normYNoLeadOne_uid16_Divide1_b <= normYNoLeadOne_uid16_Divide1_in(14 downto 0);

    -- yAddr_uid26_Divide1_merged_bit_select(BITSELECT,250)@0
    yAddr_uid26_Divide1_merged_bit_select_b <= normYNoLeadOne_uid16_Divide1_b(14 downto 7);
    yAddr_uid26_Divide1_merged_bit_select_c <= normYNoLeadOne_uid16_Divide1_b(6 downto 0);

    -- memoryC3_uid84_invTabGen_lutmem(DUALMEM,233)@0 + 2
    -- in j@20000000
    memoryC3_uid84_invTabGen_lutmem_aa <= yAddr_uid26_Divide1_merged_bit_select_b;
    memoryC3_uid84_invTabGen_lutmem_reset0 <= areset;
    memoryC3_uid84_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 14,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_memoryC3_uid84_invTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid84_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC3_uid84_invTabGen_lutmem_aa,
        q_a => memoryC3_uid84_invTabGen_lutmem_ir
    );
    memoryC3_uid84_invTabGen_lutmem_r <= memoryC3_uid84_invTabGen_lutmem_ir(13 downto 0);

    -- redist3_yAddr_uid26_Divide1_merged_bit_select_c_2(DELAY,261)
    redist3_yAddr_uid26_Divide1_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid26_Divide1_merged_bit_select_c, xout => redist3_yAddr_uid26_Divide1_merged_bit_select_c_2_q, clk => clk, aclr => areset );

    -- prodXY_uid110_pT1_uid92_invPolyEval_cma(CHAINMULTADD,244)@2 + 2
    prodXY_uid110_pT1_uid92_invPolyEval_cma_reset <= areset;
    prodXY_uid110_pT1_uid92_invPolyEval_cma_ena0 <= '1';
    prodXY_uid110_pT1_uid92_invPolyEval_cma_ena1 <= prodXY_uid110_pT1_uid92_invPolyEval_cma_ena0;
    prodXY_uid110_pT1_uid92_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid110_pT1_uid92_invPolyEval_cma_a0(0),8));
    prodXY_uid110_pT1_uid92_invPolyEval_cma_p(0) <= prodXY_uid110_pT1_uid92_invPolyEval_cma_l(0) * prodXY_uid110_pT1_uid92_invPolyEval_cma_c0(0);
    prodXY_uid110_pT1_uid92_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid110_pT1_uid92_invPolyEval_cma_p(0),22);
    prodXY_uid110_pT1_uid92_invPolyEval_cma_w(0) <= prodXY_uid110_pT1_uid92_invPolyEval_cma_u(0);
    prodXY_uid110_pT1_uid92_invPolyEval_cma_x(0) <= prodXY_uid110_pT1_uid92_invPolyEval_cma_w(0);
    prodXY_uid110_pT1_uid92_invPolyEval_cma_y(0) <= prodXY_uid110_pT1_uid92_invPolyEval_cma_x(0);
    prodXY_uid110_pT1_uid92_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid110_pT1_uid92_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid110_pT1_uid92_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid110_pT1_uid92_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid110_pT1_uid92_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist3_yAddr_uid26_Divide1_merged_bit_select_c_2_q),7);
                prodXY_uid110_pT1_uid92_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC3_uid84_invTabGen_lutmem_r),14);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid110_pT1_uid92_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid110_pT1_uid92_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid110_pT1_uid92_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid110_pT1_uid92_invPolyEval_cma_s(0) <= prodXY_uid110_pT1_uid92_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid110_pT1_uid92_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 21, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid110_pT1_uid92_invPolyEval_cma_s(0)(20 downto 0)), xout => prodXY_uid110_pT1_uid92_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid110_pT1_uid92_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid110_pT1_uid92_invPolyEval_cma_qq(20 downto 0));

    -- osig_uid111_pT1_uid92_invPolyEval(BITSELECT,110)@4
    osig_uid111_pT1_uid92_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid110_pT1_uid92_invPolyEval_cma_q(20 downto 7));

    -- highBBits_uid94_invPolyEval(BITSELECT,93)@4
    highBBits_uid94_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid111_pT1_uid92_invPolyEval_b(13 downto 1));

    -- redist0_yAddr_uid26_Divide1_merged_bit_select_b_2(DELAY,258)
    redist0_yAddr_uid26_Divide1_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid26_Divide1_merged_bit_select_b, xout => redist0_yAddr_uid26_Divide1_merged_bit_select_b_2_q, clk => clk, aclr => areset );

    -- memoryC2_uid81_invTabGen_lutmem(DUALMEM,232)@2 + 2
    -- in j@20000000
    memoryC2_uid81_invTabGen_lutmem_aa <= redist0_yAddr_uid26_Divide1_merged_bit_select_b_2_q;
    memoryC2_uid81_invTabGen_lutmem_reset0 <= areset;
    memoryC2_uid81_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_memoryC2_uid81_invTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid81_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid81_invTabGen_lutmem_aa,
        q_a => memoryC2_uid81_invTabGen_lutmem_ir
    );
    memoryC2_uid81_invTabGen_lutmem_r <= memoryC2_uid81_invTabGen_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid95_invPolyEval(ADD,94)@4
    s1sumAHighB_uid95_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC2_uid81_invTabGen_lutmem_r(20)) & memoryC2_uid81_invTabGen_lutmem_r));
    s1sumAHighB_uid95_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid94_invPolyEval_b(12)) & highBBits_uid94_invPolyEval_b));
    s1sumAHighB_uid95_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid95_invPolyEval_a) + SIGNED(s1sumAHighB_uid95_invPolyEval_b));
    s1sumAHighB_uid95_invPolyEval_q <= s1sumAHighB_uid95_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid93_invPolyEval(BITSELECT,92)@4
    lowRangeB_uid93_invPolyEval_in <= osig_uid111_pT1_uid92_invPolyEval_b(0 downto 0);
    lowRangeB_uid93_invPolyEval_b <= lowRangeB_uid93_invPolyEval_in(0 downto 0);

    -- s1_uid96_invPolyEval(BITJOIN,95)@4
    s1_uid96_invPolyEval_q <= s1sumAHighB_uid95_invPolyEval_q & lowRangeB_uid93_invPolyEval_b;

    -- prodXY_uid113_pT2_uid98_invPolyEval_bs5(BITSELECT,239)@4
    prodXY_uid113_pT2_uid98_invPolyEval_bs5_b <= STD_LOGIC_VECTOR(s1_uid96_invPolyEval_q(22 downto 18));

    -- redist4_yAddr_uid26_Divide1_merged_bit_select_c_4(DELAY,262)
    redist4_yAddr_uid26_Divide1_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist3_yAddr_uid26_Divide1_merged_bit_select_c_2_q, xout => redist4_yAddr_uid26_Divide1_merged_bit_select_c_4_q, clk => clk, aclr => areset );

    -- prodXY_uid113_pT2_uid98_invPolyEval_im3(MULT,237)@4 + 2
    prodXY_uid113_pT2_uid98_invPolyEval_im3_pr <= SIGNED(signed(resize(UNSIGNED(prodXY_uid113_pT2_uid98_invPolyEval_im3_a0),8)) * SIGNED(prodXY_uid113_pT2_uid98_invPolyEval_im3_b0));
    prodXY_uid113_pT2_uid98_invPolyEval_im3_component: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid113_pT2_uid98_invPolyEval_im3_a0 <= (others => '0');
            prodXY_uid113_pT2_uid98_invPolyEval_im3_b0 <= (others => '0');
            prodXY_uid113_pT2_uid98_invPolyEval_im3_s1 <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            prodXY_uid113_pT2_uid98_invPolyEval_im3_a0 <= redist4_yAddr_uid26_Divide1_merged_bit_select_c_4_q;
            prodXY_uid113_pT2_uid98_invPolyEval_im3_b0 <= STD_LOGIC_VECTOR(prodXY_uid113_pT2_uid98_invPolyEval_bs5_b);
            prodXY_uid113_pT2_uid98_invPolyEval_im3_s1 <= STD_LOGIC_VECTOR(resize(prodXY_uid113_pT2_uid98_invPolyEval_im3_pr,12));
        END IF;
    END PROCESS;
    prodXY_uid113_pT2_uid98_invPolyEval_im3_q <= prodXY_uid113_pT2_uid98_invPolyEval_im3_s1;

    -- prodXY_uid113_pT2_uid98_invPolyEval_align_7(BITSHIFT,241)@6
    prodXY_uid113_pT2_uid98_invPolyEval_align_7_qint <= prodXY_uid113_pT2_uid98_invPolyEval_im3_q & "000000000000000000";
    prodXY_uid113_pT2_uid98_invPolyEval_align_7_q <= prodXY_uid113_pT2_uid98_invPolyEval_align_7_qint(29 downto 0);

    -- prodXY_uid113_pT2_uid98_invPolyEval_bs2(BITSELECT,236)@4
    prodXY_uid113_pT2_uid98_invPolyEval_bs2_in <= s1_uid96_invPolyEval_q(17 downto 0);
    prodXY_uid113_pT2_uid98_invPolyEval_bs2_b <= prodXY_uid113_pT2_uid98_invPolyEval_bs2_in(17 downto 0);

    -- prodXY_uid113_pT2_uid98_invPolyEval_im0_cma(CHAINMULTADD,249)@4 + 2
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_reset <= areset;
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ena0 <= '1';
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ena1 <= prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ena0;
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_p(0) <= prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_a0(0) * prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_c0(0);
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_u(0) <= RESIZE(prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_p(0),28);
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_w(0) <= prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_u(0);
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_x(0) <= prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_w(0);
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_y(0) <= prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_x(0);
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_a0 <= (others => (others => '0'));
            prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ena0 = '1') THEN
                prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXY_uid113_pT2_uid98_invPolyEval_bs2_b),18);
                prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_c0(0) <= RESIZE(UNSIGNED(redist4_yAddr_uid26_Divide1_merged_bit_select_c_4_q),10);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_ena1 = '1') THEN
                prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_s(0) <= prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_s(0)(27 downto 0)), xout => prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_qq, clk => clk, aclr => areset );
    prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_q <= STD_LOGIC_VECTOR(prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_qq(24 downto 0));

    -- prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0(ADD,243)@6
    prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000" & prodXY_uid113_pT2_uid98_invPolyEval_im0_cma_q));
    prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => prodXY_uid113_pT2_uid98_invPolyEval_align_7_q(29)) & prodXY_uid113_pT2_uid98_invPolyEval_align_7_q));
    prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_a) + SIGNED(prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_b));
    prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_q <= prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_o(30 downto 0);

    -- osig_uid114_pT2_uid98_invPolyEval(BITSELECT,113)@6
    osig_uid114_pT2_uid98_invPolyEval_in <= STD_LOGIC_VECTOR(prodXY_uid113_pT2_uid98_invPolyEval_result_add_0_0_q(29 downto 0));
    osig_uid114_pT2_uid98_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid114_pT2_uid98_invPolyEval_in(29 downto 7));

    -- highBBits_uid100_invPolyEval(BITSELECT,99)@6
    highBBits_uid100_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid114_pT2_uid98_invPolyEval_b(22 downto 1));

    -- redist1_yAddr_uid26_Divide1_merged_bit_select_b_4(DELAY,259)
    redist1_yAddr_uid26_Divide1_merged_bit_select_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist0_yAddr_uid26_Divide1_merged_bit_select_b_2_q, xout => redist1_yAddr_uid26_Divide1_merged_bit_select_b_4_q, clk => clk, aclr => areset );

    -- memoryC1_uid78_invTabGen_lutmem(DUALMEM,231)@4 + 2
    -- in j@20000000
    memoryC1_uid78_invTabGen_lutmem_aa <= redist1_yAddr_uid26_Divide1_merged_bit_select_b_4_q;
    memoryC1_uid78_invTabGen_lutmem_reset0 <= areset;
    memoryC1_uid78_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_memoryC1_uid78_invTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid78_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid78_invTabGen_lutmem_aa,
        q_a => memoryC1_uid78_invTabGen_lutmem_ir
    );
    memoryC1_uid78_invTabGen_lutmem_r <= memoryC1_uid78_invTabGen_lutmem_ir(28 downto 0);

    -- s2sumAHighB_uid101_invPolyEval(ADD,100)@6
    s2sumAHighB_uid101_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => memoryC1_uid78_invTabGen_lutmem_r(28)) & memoryC1_uid78_invTabGen_lutmem_r));
    s2sumAHighB_uid101_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => highBBits_uid100_invPolyEval_b(21)) & highBBits_uid100_invPolyEval_b));
    s2sumAHighB_uid101_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid101_invPolyEval_a) + SIGNED(s2sumAHighB_uid101_invPolyEval_b));
    s2sumAHighB_uid101_invPolyEval_q <= s2sumAHighB_uid101_invPolyEval_o(29 downto 0);

    -- lowRangeB_uid99_invPolyEval(BITSELECT,98)@6
    lowRangeB_uid99_invPolyEval_in <= osig_uid114_pT2_uid98_invPolyEval_b(0 downto 0);
    lowRangeB_uid99_invPolyEval_b <= lowRangeB_uid99_invPolyEval_in(0 downto 0);

    -- s2_uid102_invPolyEval(BITJOIN,101)@6
    s2_uid102_invPolyEval_q <= s2sumAHighB_uid101_invPolyEval_q & lowRangeB_uid99_invPolyEval_b;

    -- topRangeY_uid139_pT3_uid104_invPolyEval_merged_bit_select(BITSELECT,257)@6
    topRangeY_uid139_pT3_uid104_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s2_uid102_invPolyEval_q(30 downto 13));
    topRangeY_uid139_pT3_uid104_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s2_uid102_invPolyEval_q(12 downto 0));

    -- aboveLeftY_bottomExtension_uid144_pT3_uid104_invPolyEval(CONSTANT,143)
    aboveLeftY_bottomExtension_uid144_pT3_uid104_invPolyEval_q <= "00000";

    -- aboveLeftY_mergedSignalTM_uid146_pT3_uid104_invPolyEval(BITJOIN,145)@6
    aboveLeftY_mergedSignalTM_uid146_pT3_uid104_invPolyEval_q <= topRangeY_uid139_pT3_uid104_invPolyEval_merged_bit_select_c & aboveLeftY_bottomExtension_uid144_pT3_uid104_invPolyEval_q;

    -- redist5_yAddr_uid26_Divide1_merged_bit_select_c_6(DELAY,263)
    redist5_yAddr_uid26_Divide1_merged_bit_select_c_6 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist4_yAddr_uid26_Divide1_merged_bit_select_c_4_q, xout => redist5_yAddr_uid26_Divide1_merged_bit_select_c_6_q, clk => clk, aclr => areset );

    -- nx_mergedSignalTM_uid133_pT3_uid104_invPolyEval(BITJOIN,132)@6
    nx_mergedSignalTM_uid133_pT3_uid104_invPolyEval_q <= GND_q & redist5_yAddr_uid26_Divide1_merged_bit_select_c_6_q;

    -- topRangeX_bottomExtension_uid135_pT3_uid104_invPolyEval(CONSTANT,134)
    topRangeX_bottomExtension_uid135_pT3_uid104_invPolyEval_q <= "0000000000";

    -- topRangeX_mergedSignalTM_uid137_pT3_uid104_invPolyEval(BITJOIN,136)@6
    topRangeX_mergedSignalTM_uid137_pT3_uid104_invPolyEval_q <= nx_mergedSignalTM_uid133_pT3_uid104_invPolyEval_q & topRangeX_bottomExtension_uid135_pT3_uid104_invPolyEval_q;

    -- sm0_uid152_pT3_uid104_invPolyEval_cma(CHAINMULTADD,246)@6 + 2
    sm0_uid152_pT3_uid104_invPolyEval_cma_reset <= areset;
    sm0_uid152_pT3_uid104_invPolyEval_cma_ena0 <= '1';
    sm0_uid152_pT3_uid104_invPolyEval_cma_ena1 <= sm0_uid152_pT3_uid104_invPolyEval_cma_ena0;
    sm0_uid152_pT3_uid104_invPolyEval_cma_r(0) <= SIGNED(RESIZE(sm0_uid152_pT3_uid104_invPolyEval_cma_c0(0),19));
    sm0_uid152_pT3_uid104_invPolyEval_cma_p(0) <= sm0_uid152_pT3_uid104_invPolyEval_cma_a0(0) * sm0_uid152_pT3_uid104_invPolyEval_cma_r(0);
    sm0_uid152_pT3_uid104_invPolyEval_cma_u(0) <= RESIZE(sm0_uid152_pT3_uid104_invPolyEval_cma_p(0),37);
    sm0_uid152_pT3_uid104_invPolyEval_cma_w(0) <= sm0_uid152_pT3_uid104_invPolyEval_cma_u(0);
    sm0_uid152_pT3_uid104_invPolyEval_cma_x(0) <= sm0_uid152_pT3_uid104_invPolyEval_cma_w(0);
    sm0_uid152_pT3_uid104_invPolyEval_cma_y(0) <= sm0_uid152_pT3_uid104_invPolyEval_cma_x(0);
    sm0_uid152_pT3_uid104_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid152_pT3_uid104_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid152_pT3_uid104_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid152_pT3_uid104_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid152_pT3_uid104_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid137_pT3_uid104_invPolyEval_q),18);
                sm0_uid152_pT3_uid104_invPolyEval_cma_c0(0) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid146_pT3_uid104_invPolyEval_q),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid152_pT3_uid104_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid152_pT3_uid104_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid152_pT3_uid104_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid152_pT3_uid104_invPolyEval_cma_s(0) <= sm0_uid152_pT3_uid104_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid152_pT3_uid104_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid152_pT3_uid104_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid152_pT3_uid104_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid152_pT3_uid104_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid152_pT3_uid104_invPolyEval_cma_qq(35 downto 0));

    -- highBBits_uid154_pT3_uid104_invPolyEval(BITSELECT,153)@8
    highBBits_uid154_pT3_uid104_invPolyEval_b <= STD_LOGIC_VECTOR(sm0_uid152_pT3_uid104_invPolyEval_cma_q(35 downto 18));

    -- sm0_uid151_pT3_uid104_invPolyEval_cma(CHAINMULTADD,245)@6 + 2
    sm0_uid151_pT3_uid104_invPolyEval_cma_reset <= areset;
    sm0_uid151_pT3_uid104_invPolyEval_cma_ena0 <= '1';
    sm0_uid151_pT3_uid104_invPolyEval_cma_ena1 <= sm0_uid151_pT3_uid104_invPolyEval_cma_ena0;
    sm0_uid151_pT3_uid104_invPolyEval_cma_p(0) <= sm0_uid151_pT3_uid104_invPolyEval_cma_a0(0) * sm0_uid151_pT3_uid104_invPolyEval_cma_c0(0);
    sm0_uid151_pT3_uid104_invPolyEval_cma_u(0) <= RESIZE(sm0_uid151_pT3_uid104_invPolyEval_cma_p(0),36);
    sm0_uid151_pT3_uid104_invPolyEval_cma_w(0) <= sm0_uid151_pT3_uid104_invPolyEval_cma_u(0);
    sm0_uid151_pT3_uid104_invPolyEval_cma_x(0) <= sm0_uid151_pT3_uid104_invPolyEval_cma_w(0);
    sm0_uid151_pT3_uid104_invPolyEval_cma_y(0) <= sm0_uid151_pT3_uid104_invPolyEval_cma_x(0);
    sm0_uid151_pT3_uid104_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid151_pT3_uid104_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid151_pT3_uid104_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid151_pT3_uid104_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid151_pT3_uid104_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid137_pT3_uid104_invPolyEval_q),18);
                sm0_uid151_pT3_uid104_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid139_pT3_uid104_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid151_pT3_uid104_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid151_pT3_uid104_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid151_pT3_uid104_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid151_pT3_uid104_invPolyEval_cma_s(0) <= sm0_uid151_pT3_uid104_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid151_pT3_uid104_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid151_pT3_uid104_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid151_pT3_uid104_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid151_pT3_uid104_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid151_pT3_uid104_invPolyEval_cma_qq(35 downto 0));

    -- lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval(ADD,154)@8
    lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => sm0_uid151_pT3_uid104_invPolyEval_cma_q(35)) & sm0_uid151_pT3_uid104_invPolyEval_cma_q));
    lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 18 => highBBits_uid154_pT3_uid104_invPolyEval_b(17)) & highBBits_uid154_pT3_uid104_invPolyEval_b));
    lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_b));
    lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_q <= lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_o(36 downto 0);

    -- lowRangeB_uid153_pT3_uid104_invPolyEval(BITSELECT,152)@8
    lowRangeB_uid153_pT3_uid104_invPolyEval_in <= sm0_uid152_pT3_uid104_invPolyEval_cma_q(17 downto 0);
    lowRangeB_uid153_pT3_uid104_invPolyEval_b <= lowRangeB_uid153_pT3_uid104_invPolyEval_in(17 downto 0);

    -- lev1_a0_uid156_pT3_uid104_invPolyEval(BITJOIN,155)@8
    lev1_a0_uid156_pT3_uid104_invPolyEval_q <= lev1_a0sumAHighB_uid155_pT3_uid104_invPolyEval_q & lowRangeB_uid153_pT3_uid104_invPolyEval_b;

    -- os_uid157_pT3_uid104_invPolyEval(BITSELECT,156)@8
    os_uid157_pT3_uid104_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid156_pT3_uid104_invPolyEval_q(52 downto 0));
    os_uid157_pT3_uid104_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid157_pT3_uid104_invPolyEval_in(52 downto 21));

    -- highBBits_uid106_invPolyEval(BITSELECT,105)@8
    highBBits_uid106_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid157_pT3_uid104_invPolyEval_b(31 downto 2));

    -- redist2_yAddr_uid26_Divide1_merged_bit_select_b_6(DELAY,260)
    redist2_yAddr_uid26_Divide1_merged_bit_select_b_6 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist1_yAddr_uid26_Divide1_merged_bit_select_b_4_q, xout => redist2_yAddr_uid26_Divide1_merged_bit_select_b_6_q, clk => clk, aclr => areset );

    -- memoryC0_uid75_invTabGen_lutmem(DUALMEM,230)@6 + 2
    -- in j@20000000
    memoryC0_uid75_invTabGen_lutmem_aa <= redist2_yAddr_uid26_Divide1_merged_bit_select_b_6_q;
    memoryC0_uid75_invTabGen_lutmem_reset0 <= areset;
    memoryC0_uid75_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 38,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_memoryC0_uid75_invTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid75_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid75_invTabGen_lutmem_aa,
        q_a => memoryC0_uid75_invTabGen_lutmem_ir
    );
    memoryC0_uid75_invTabGen_lutmem_r <= memoryC0_uid75_invTabGen_lutmem_ir(37 downto 0);

    -- s3sumAHighB_uid107_invPolyEval(ADD,106)@8
    s3sumAHighB_uid107_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 38 => memoryC0_uid75_invTabGen_lutmem_r(37)) & memoryC0_uid75_invTabGen_lutmem_r));
    s3sumAHighB_uid107_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 30 => highBBits_uid106_invPolyEval_b(29)) & highBBits_uid106_invPolyEval_b));
    s3sumAHighB_uid107_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid107_invPolyEval_a) + SIGNED(s3sumAHighB_uid107_invPolyEval_b));
    s3sumAHighB_uid107_invPolyEval_q <= s3sumAHighB_uid107_invPolyEval_o(38 downto 0);

    -- lowRangeB_uid105_invPolyEval(BITSELECT,104)@8
    lowRangeB_uid105_invPolyEval_in <= os_uid157_pT3_uid104_invPolyEval_b(1 downto 0);
    lowRangeB_uid105_invPolyEval_b <= lowRangeB_uid105_invPolyEval_in(1 downto 0);

    -- s3_uid108_invPolyEval(BITJOIN,107)@8
    s3_uid108_invPolyEval_q <= s3sumAHighB_uid107_invPolyEval_q & lowRangeB_uid105_invPolyEval_b;

    -- fxpInverseRes_uid29_Divide1(BITSELECT,28)@8
    fxpInverseRes_uid29_Divide1_in <= s3_uid108_invPolyEval_q(38 downto 0);
    fxpInverseRes_uid29_Divide1_b <= fxpInverseRes_uid29_Divide1_in(38 downto 6);

    -- paddingY_uid17_Divide1(CONSTANT,16)
    paddingY_uid17_Divide1_q <= "000000000000000";

    -- updatedY_uid18_Divide1(BITJOIN,17)@1
    updatedY_uid18_Divide1_q <= GND_q & paddingY_uid17_Divide1_q;

    -- redist10_normYNoLeadOne_uid16_Divide1_b_1(DELAY,268)
    redist10_normYNoLeadOne_uid16_Divide1_b_1 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYNoLeadOne_uid16_Divide1_b, xout => redist10_normYNoLeadOne_uid16_Divide1_b_1_q, clk => clk, aclr => areset );

    -- normYIsOneC2_uid17_Divide1(LOGICAL,18)@1
    normYIsOneC2_uid17_Divide1_a <= STD_LOGIC_VECTOR("0" & redist10_normYNoLeadOne_uid16_Divide1_b_1_q);
    normYIsOneC2_uid17_Divide1_q <= "1" WHEN normYIsOneC2_uid17_Divide1_a = updatedY_uid18_Divide1_q ELSE "0";

    -- normYIsOneC2_uid20_Divide1(BITSELECT,19)@0
    normYIsOneC2_uid20_Divide1_b <= STD_LOGIC_VECTOR(leftShiftStage2_uid183_normY_uid15_Divide1_q(15 downto 15));

    -- redist9_normYIsOneC2_uid20_Divide1_b_1(DELAY,267)
    redist9_normYIsOneC2_uid20_Divide1_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYIsOneC2_uid20_Divide1_b, xout => redist9_normYIsOneC2_uid20_Divide1_b_1_q, clk => clk, aclr => areset );

    -- normYIsOne_uid21_Divide1(LOGICAL,20)@1 + 1
    normYIsOne_uid21_Divide1_qi <= redist9_normYIsOneC2_uid20_Divide1_b_1_q and normYIsOneC2_uid17_Divide1_q;
    normYIsOne_uid21_Divide1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYIsOne_uid21_Divide1_qi, xout => normYIsOne_uid21_Divide1_q, clk => clk, aclr => areset );

    -- redist8_normYIsOne_uid21_Divide1_q_7(DELAY,266)
    redist8_normYIsOne_uid21_Divide1_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYIsOne_uid21_Divide1_q, xout => redist8_normYIsOne_uid21_Divide1_q_7_q, clk => clk, aclr => areset );

    -- invResPostOneHandling2_uid31_Divide1(MUX,30)@8
    invResPostOneHandling2_uid31_Divide1_s <= redist8_normYIsOne_uid21_Divide1_q_7_q;
    invResPostOneHandling2_uid31_Divide1_combproc: PROCESS (invResPostOneHandling2_uid31_Divide1_s, fxpInverseRes_uid29_Divide1_b, oneInvRes_uid30_Divide1_q)
    BEGIN
        CASE (invResPostOneHandling2_uid31_Divide1_s) IS
            WHEN "0" => invResPostOneHandling2_uid31_Divide1_q <= fxpInverseRes_uid29_Divide1_b;
            WHEN "1" => invResPostOneHandling2_uid31_Divide1_q <= oneInvRes_uid30_Divide1_q;
            WHEN OTHERS => invResPostOneHandling2_uid31_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodXInvY_uid34_Divide1_bs2_merged_bit_select(BITSELECT,251)@8
    prodXInvY_uid34_Divide1_bs2_merged_bit_select_b <= invResPostOneHandling2_uid31_Divide1_q(17 downto 0);
    prodXInvY_uid34_Divide1_bs2_merged_bit_select_c <= invResPostOneHandling2_uid31_Divide1_q(32 downto 18);

    -- redist13_GPIn4_in_2_signal_STD_8_notEnable(LOGICAL,292)
    redist13_GPIn4_in_2_signal_STD_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist13_GPIn4_in_2_signal_STD_8_nor(LOGICAL,293)
    redist13_GPIn4_in_2_signal_STD_8_nor_q <= not (redist13_GPIn4_in_2_signal_STD_8_notEnable_q or redist13_GPIn4_in_2_signal_STD_8_sticky_ena_q);

    -- redist13_GPIn4_in_2_signal_STD_8_mem_last(CONSTANT,289)
    redist13_GPIn4_in_2_signal_STD_8_mem_last_q <= "0101";

    -- redist13_GPIn4_in_2_signal_STD_8_cmp(LOGICAL,290)
    redist13_GPIn4_in_2_signal_STD_8_cmp_b <= STD_LOGIC_VECTOR("0" & redist13_GPIn4_in_2_signal_STD_8_rdcnt_q);
    redist13_GPIn4_in_2_signal_STD_8_cmp_q <= "1" WHEN redist13_GPIn4_in_2_signal_STD_8_mem_last_q = redist13_GPIn4_in_2_signal_STD_8_cmp_b ELSE "0";

    -- redist13_GPIn4_in_2_signal_STD_8_cmpReg(REG,291)
    redist13_GPIn4_in_2_signal_STD_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist13_GPIn4_in_2_signal_STD_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist13_GPIn4_in_2_signal_STD_8_cmpReg_q <= STD_LOGIC_VECTOR(redist13_GPIn4_in_2_signal_STD_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist13_GPIn4_in_2_signal_STD_8_sticky_ena(REG,294)
    redist13_GPIn4_in_2_signal_STD_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist13_GPIn4_in_2_signal_STD_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist13_GPIn4_in_2_signal_STD_8_nor_q = "1") THEN
                redist13_GPIn4_in_2_signal_STD_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist13_GPIn4_in_2_signal_STD_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist13_GPIn4_in_2_signal_STD_8_enaAnd(LOGICAL,295)
    redist13_GPIn4_in_2_signal_STD_8_enaAnd_q <= redist13_GPIn4_in_2_signal_STD_8_sticky_ena_q and VCC_q;

    -- redist13_GPIn4_in_2_signal_STD_8_rdcnt(COUNTER,287)
    -- low=0, high=6, step=1, init=0
    redist13_GPIn4_in_2_signal_STD_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist13_GPIn4_in_2_signal_STD_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist13_GPIn4_in_2_signal_STD_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist13_GPIn4_in_2_signal_STD_8_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist13_GPIn4_in_2_signal_STD_8_rdcnt_eq <= '1';
            ELSE
                redist13_GPIn4_in_2_signal_STD_8_rdcnt_eq <= '0';
            END IF;
            IF (redist13_GPIn4_in_2_signal_STD_8_rdcnt_eq = '1') THEN
                redist13_GPIn4_in_2_signal_STD_8_rdcnt_i <= redist13_GPIn4_in_2_signal_STD_8_rdcnt_i + 2;
            ELSE
                redist13_GPIn4_in_2_signal_STD_8_rdcnt_i <= redist13_GPIn4_in_2_signal_STD_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist13_GPIn4_in_2_signal_STD_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist13_GPIn4_in_2_signal_STD_8_rdcnt_i, 3)));

    -- redist13_GPIn4_in_2_signal_STD_8_wraddr(REG,288)
    redist13_GPIn4_in_2_signal_STD_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist13_GPIn4_in_2_signal_STD_8_wraddr_q <= "110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist13_GPIn4_in_2_signal_STD_8_wraddr_q <= STD_LOGIC_VECTOR(redist13_GPIn4_in_2_signal_STD_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist13_GPIn4_in_2_signal_STD_8_mem(DUALMEM,286)
    redist13_GPIn4_in_2_signal_STD_8_mem_ia <= STD_LOGIC_VECTOR(in_2_signal_STD);
    redist13_GPIn4_in_2_signal_STD_8_mem_aa <= redist13_GPIn4_in_2_signal_STD_8_wraddr_q;
    redist13_GPIn4_in_2_signal_STD_8_mem_ab <= redist13_GPIn4_in_2_signal_STD_8_rdcnt_q;
    redist13_GPIn4_in_2_signal_STD_8_mem_reset0 <= areset;
    redist13_GPIn4_in_2_signal_STD_8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 16,
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
        clocken1 => redist13_GPIn4_in_2_signal_STD_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist13_GPIn4_in_2_signal_STD_8_mem_reset0,
        clock1 => clk,
        address_a => redist13_GPIn4_in_2_signal_STD_8_mem_aa,
        data_a => redist13_GPIn4_in_2_signal_STD_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist13_GPIn4_in_2_signal_STD_8_mem_ab,
        q_b => redist13_GPIn4_in_2_signal_STD_8_mem_iq
    );
    redist13_GPIn4_in_2_signal_STD_8_mem_q <= redist13_GPIn4_in_2_signal_STD_8_mem_iq(15 downto 0);

    -- prodXInvY_uid34_Divide1_im3_cma(CHAINMULTADD,248)@8 + 2
    prodXInvY_uid34_Divide1_im3_cma_reset <= areset;
    prodXInvY_uid34_Divide1_im3_cma_ena0 <= '1';
    prodXInvY_uid34_Divide1_im3_cma_ena1 <= prodXInvY_uid34_Divide1_im3_cma_ena0;
    prodXInvY_uid34_Divide1_im3_cma_p(0) <= prodXInvY_uid34_Divide1_im3_cma_a0(0) * prodXInvY_uid34_Divide1_im3_cma_c0(0);
    prodXInvY_uid34_Divide1_im3_cma_u(0) <= RESIZE(prodXInvY_uid34_Divide1_im3_cma_p(0),31);
    prodXInvY_uid34_Divide1_im3_cma_w(0) <= prodXInvY_uid34_Divide1_im3_cma_u(0);
    prodXInvY_uid34_Divide1_im3_cma_x(0) <= prodXInvY_uid34_Divide1_im3_cma_w(0);
    prodXInvY_uid34_Divide1_im3_cma_y(0) <= prodXInvY_uid34_Divide1_im3_cma_x(0);
    prodXInvY_uid34_Divide1_im3_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid34_Divide1_im3_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid34_Divide1_im3_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid34_Divide1_im3_cma_ena0 = '1') THEN
                prodXInvY_uid34_Divide1_im3_cma_a0(0) <= RESIZE(UNSIGNED(redist13_GPIn4_in_2_signal_STD_8_mem_q),16);
                prodXInvY_uid34_Divide1_im3_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid34_Divide1_bs2_merged_bit_select_c),15);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid34_Divide1_im3_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid34_Divide1_im3_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid34_Divide1_im3_cma_ena1 = '1') THEN
                prodXInvY_uid34_Divide1_im3_cma_s(0) <= prodXInvY_uid34_Divide1_im3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid34_Divide1_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 31, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid34_Divide1_im3_cma_s(0)(30 downto 0)), xout => prodXInvY_uid34_Divide1_im3_cma_qq, clk => clk, aclr => areset );
    prodXInvY_uid34_Divide1_im3_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid34_Divide1_im3_cma_qq(30 downto 0));

    -- prodXInvY_uid34_Divide1_align_7(BITSHIFT,191)@10
    prodXInvY_uid34_Divide1_align_7_qint <= prodXInvY_uid34_Divide1_im3_cma_q & "000000000000000000";
    prodXInvY_uid34_Divide1_align_7_q <= prodXInvY_uid34_Divide1_align_7_qint(48 downto 0);

    -- prodXInvY_uid34_Divide1_im0_cma(CHAINMULTADD,247)@8 + 2
    prodXInvY_uid34_Divide1_im0_cma_reset <= areset;
    prodXInvY_uid34_Divide1_im0_cma_ena0 <= '1';
    prodXInvY_uid34_Divide1_im0_cma_ena1 <= prodXInvY_uid34_Divide1_im0_cma_ena0;
    prodXInvY_uid34_Divide1_im0_cma_p(0) <= prodXInvY_uid34_Divide1_im0_cma_a0(0) * prodXInvY_uid34_Divide1_im0_cma_c0(0);
    prodXInvY_uid34_Divide1_im0_cma_u(0) <= RESIZE(prodXInvY_uid34_Divide1_im0_cma_p(0),34);
    prodXInvY_uid34_Divide1_im0_cma_w(0) <= prodXInvY_uid34_Divide1_im0_cma_u(0);
    prodXInvY_uid34_Divide1_im0_cma_x(0) <= prodXInvY_uid34_Divide1_im0_cma_w(0);
    prodXInvY_uid34_Divide1_im0_cma_y(0) <= prodXInvY_uid34_Divide1_im0_cma_x(0);
    prodXInvY_uid34_Divide1_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid34_Divide1_im0_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid34_Divide1_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid34_Divide1_im0_cma_ena0 = '1') THEN
                prodXInvY_uid34_Divide1_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid34_Divide1_bs2_merged_bit_select_b),18);
                prodXInvY_uid34_Divide1_im0_cma_c0(0) <= RESIZE(UNSIGNED(redist13_GPIn4_in_2_signal_STD_8_mem_q),16);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid34_Divide1_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid34_Divide1_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid34_Divide1_im0_cma_ena1 = '1') THEN
                prodXInvY_uid34_Divide1_im0_cma_s(0) <= prodXInvY_uid34_Divide1_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid34_Divide1_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid34_Divide1_im0_cma_s(0)(33 downto 0)), xout => prodXInvY_uid34_Divide1_im0_cma_qq, clk => clk, aclr => areset );
    prodXInvY_uid34_Divide1_im0_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid34_Divide1_im0_cma_qq(33 downto 0));

    -- prodXInvY_uid34_Divide1_result_add_0_0(ADD,193)@10
    prodXInvY_uid34_Divide1_result_add_0_0_a <= STD_LOGIC_VECTOR("0000000000000000" & prodXInvY_uid34_Divide1_im0_cma_q);
    prodXInvY_uid34_Divide1_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & prodXInvY_uid34_Divide1_align_7_q);
    prodXInvY_uid34_Divide1_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(prodXInvY_uid34_Divide1_result_add_0_0_a) + UNSIGNED(prodXInvY_uid34_Divide1_result_add_0_0_b));
    prodXInvY_uid34_Divide1_result_add_0_0_q <= prodXInvY_uid34_Divide1_result_add_0_0_o(49 downto 0);

    -- rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1(MUX,206)@10
    rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_s <= rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_b;
    rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_combproc: PROCESS (rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_s, prodXInvY_uid34_Divide1_result_add_0_0_q, rightShiftStage0Idx1_uid199_prodPostRightShift_uid35_Divide1_q, rightShiftStage0Idx2_uid202_prodPostRightShift_uid35_Divide1_q, rightShiftStage0Idx3_uid205_prodPostRightShift_uid35_Divide1_q)
    BEGIN
        CASE (rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_s) IS
            WHEN "00" => rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q <= prodXInvY_uid34_Divide1_result_add_0_0_q(48 downto 0);
            WHEN "01" => rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q <= rightShiftStage0Idx1_uid199_prodPostRightShift_uid35_Divide1_q;
            WHEN "10" => rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q <= rightShiftStage0Idx2_uid202_prodPostRightShift_uid35_Divide1_q;
            WHEN "11" => rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q <= rightShiftStage0Idx3_uid205_prodPostRightShift_uid35_Divide1_q;
            WHEN OTHERS => rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1(MUX,217)@10
    rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_s <= rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_c;
    rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_combproc: PROCESS (rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_s, rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q, rightShiftStage1Idx1_uid210_prodPostRightShift_uid35_Divide1_q, rightShiftStage1Idx2_uid213_prodPostRightShift_uid35_Divide1_q, rightShiftStage1Idx3_uid216_prodPostRightShift_uid35_Divide1_q)
    BEGIN
        CASE (rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_s) IS
            WHEN "00" => rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q <= rightShiftStage0_uid207_prodPostRightShift_uid35_Divide1_q;
            WHEN "01" => rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q <= rightShiftStage1Idx1_uid210_prodPostRightShift_uid35_Divide1_q;
            WHEN "10" => rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q <= rightShiftStage1Idx2_uid213_prodPostRightShift_uid35_Divide1_q;
            WHEN "11" => rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q <= rightShiftStage1Idx3_uid216_prodPostRightShift_uid35_Divide1_q;
            WHEN OTHERS => rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_notEnable(LOGICAL,282)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_nor(LOGICAL,283)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_nor_q <= not (redist6_r_uid73_zCount_uid14_Divide1_q_10_notEnable_q or redist6_r_uid73_zCount_uid14_Divide1_q_10_sticky_ena_q);

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_last(CONSTANT,279)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_last_q <= "0110";

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_cmp(LOGICAL,280)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_cmp_b <= STD_LOGIC_VECTOR("0" & redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_q);
    redist6_r_uid73_zCount_uid14_Divide1_q_10_cmp_q <= "1" WHEN redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_last_q = redist6_r_uid73_zCount_uid14_Divide1_q_10_cmp_b ELSE "0";

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_cmpReg(REG,281)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist6_r_uid73_zCount_uid14_Divide1_q_10_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist6_r_uid73_zCount_uid14_Divide1_q_10_cmpReg_q <= STD_LOGIC_VECTOR(redist6_r_uid73_zCount_uid14_Divide1_q_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_sticky_ena(REG,284)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist6_r_uid73_zCount_uid14_Divide1_q_10_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist6_r_uid73_zCount_uid14_Divide1_q_10_nor_q = "1") THEN
                redist6_r_uid73_zCount_uid14_Divide1_q_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist6_r_uid73_zCount_uid14_Divide1_q_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_enaAnd(LOGICAL,285)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_enaAnd_q <= redist6_r_uid73_zCount_uid14_Divide1_q_10_sticky_ena_q and VCC_q;

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt(COUNTER,277)
    -- low=0, high=7, step=1, init=0
    redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_i <= TO_UNSIGNED(0, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_i <= redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_i, 3)));

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_wraddr(REG,278)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist6_r_uid73_zCount_uid14_Divide1_q_10_wraddr_q <= "111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist6_r_uid73_zCount_uid14_Divide1_q_10_wraddr_q <= STD_LOGIC_VECTOR(redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_mem(DUALMEM,276)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_ia <= STD_LOGIC_VECTOR(r_uid73_zCount_uid14_Divide1_q);
    redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_aa <= redist6_r_uid73_zCount_uid14_Divide1_q_10_wraddr_q;
    redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_ab <= redist6_r_uid73_zCount_uid14_Divide1_q_10_rdcnt_q;
    redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_reset0 <= areset;
    redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 5,
        widthad_a => 3,
        numwords_a => 8,
        width_b => 5,
        widthad_b => 3,
        numwords_b => 8,
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
        clocken1 => redist6_r_uid73_zCount_uid14_Divide1_q_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_reset0,
        clock1 => clk,
        address_a => redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_aa,
        data_a => redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_ab,
        q_b => redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_iq
    );
    redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_q <= redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_iq(4 downto 0);

    -- redist6_r_uid73_zCount_uid14_Divide1_q_10_outputreg(DELAY,275)
    redist6_r_uid73_zCount_uid14_Divide1_q_10_outputreg : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist6_r_uid73_zCount_uid14_Divide1_q_10_mem_q, xout => redist6_r_uid73_zCount_uid14_Divide1_q_10_outputreg_q, clk => clk, aclr => areset );

    -- cWOut_uid32_Divide1(CONSTANT,31)
    cWOut_uid32_Divide1_q <= "1111";

    -- rShiftCount_uid33_Divide1(SUB,32)@10
    rShiftCount_uid33_Divide1_a <= STD_LOGIC_VECTOR("00" & cWOut_uid32_Divide1_q);
    rShiftCount_uid33_Divide1_b <= STD_LOGIC_VECTOR("0" & redist6_r_uid73_zCount_uid14_Divide1_q_10_outputreg_q);
    rShiftCount_uid33_Divide1_o <= STD_LOGIC_VECTOR(UNSIGNED(rShiftCount_uid33_Divide1_a) - UNSIGNED(rShiftCount_uid33_Divide1_b));
    rShiftCount_uid33_Divide1_q <= rShiftCount_uid33_Divide1_o(5 downto 0);

    -- rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select(BITSELECT,252)@10
    rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_b <= rShiftCount_uid33_Divide1_q(5 downto 4);
    rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_c <= rShiftCount_uid33_Divide1_q(3 downto 2);
    rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_d <= rShiftCount_uid33_Divide1_q(1 downto 0);

    -- rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1(MUX,228)@10
    rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_s <= rightShiftStageSel5Dto4_uid206_prodPostRightShift_uid35_Divide1_merged_bit_select_d;
    rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_combproc: PROCESS (rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_s, rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q, rightShiftStage2Idx1_uid221_prodPostRightShift_uid35_Divide1_q, rightShiftStage2Idx2_uid224_prodPostRightShift_uid35_Divide1_q, rightShiftStage2Idx3_uid227_prodPostRightShift_uid35_Divide1_q)
    BEGIN
        CASE (rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_s) IS
            WHEN "00" => rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_q <= rightShiftStage1_uid218_prodPostRightShift_uid35_Divide1_q;
            WHEN "01" => rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_q <= rightShiftStage2Idx1_uid221_prodPostRightShift_uid35_Divide1_q;
            WHEN "10" => rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_q <= rightShiftStage2Idx2_uid224_prodPostRightShift_uid35_Divide1_q;
            WHEN "11" => rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_q <= rightShiftStage2Idx3_uid227_prodPostRightShift_uid35_Divide1_q;
            WHEN OTHERS => rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodPostRightShiftPost_uid36_Divide1(BITSELECT,35)@10
    prodPostRightShiftPost_uid36_Divide1_in <= rightShiftStage2_uid229_prodPostRightShift_uid35_Divide1_q(47 downto 0);
    prodPostRightShiftPost_uid36_Divide1_b <= prodPostRightShiftPost_uid36_Divide1_in(47 downto 15);

    -- prodPostRightShiftPostRnd_uid41_Divide1(ADD,40)@10
    prodPostRightShiftPostRnd_uid41_Divide1_a <= STD_LOGIC_VECTOR("0" & prodPostRightShiftPost_uid36_Divide1_b);
    prodPostRightShiftPostRnd_uid41_Divide1_b <= STD_LOGIC_VECTOR("000000000000000000000000000000000" & addOp2_uid40_Divide1_q);
    prodPostRightShiftPostRnd_uid41_Divide1_o <= STD_LOGIC_VECTOR(UNSIGNED(prodPostRightShiftPostRnd_uid41_Divide1_a) + UNSIGNED(prodPostRightShiftPostRnd_uid41_Divide1_b));
    prodPostRightShiftPostRnd_uid41_Divide1_q <= prodPostRightShiftPostRnd_uid41_Divide1_o(33 downto 0);

    -- prodPostRightShiftPostRndRange_uid42_Divide1(BITSELECT,41)@10
    prodPostRightShiftPostRndRange_uid42_Divide1_in <= prodPostRightShiftPostRnd_uid41_Divide1_q(32 downto 0);
    prodPostRightShiftPostRndRange_uid42_Divide1_b <= prodPostRightShiftPostRndRange_uid42_Divide1_in(32 downto 1);

    -- updatedY_uid23_Divide1(BITJOIN,22)@0
    updatedY_uid23_Divide1_q <= GND_q & paddingY_uid22_Divide1_q;

    -- yIsZero_uid22_Divide1(LOGICAL,23)@0 + 1
    yIsZero_uid22_Divide1_a <= STD_LOGIC_VECTOR("0" & in_4_noise_STD);
    yIsZero_uid22_Divide1_qi <= "1" WHEN yIsZero_uid22_Divide1_a = updatedY_uid23_Divide1_q ELSE "0";
    yIsZero_uid22_Divide1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yIsZero_uid22_Divide1_qi, xout => yIsZero_uid22_Divide1_q, clk => clk, aclr => areset );

    -- redist7_yIsZero_uid22_Divide1_q_10(DELAY,265)
    redist7_yIsZero_uid22_Divide1_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => yIsZero_uid22_Divide1_q, xout => redist7_yIsZero_uid22_Divide1_q_10_q, clk => clk, aclr => areset );

    -- resFinal_uid44_Divide1(MUX,43)@10 + 1
    resFinal_uid44_Divide1_s <= redist7_yIsZero_uid22_Divide1_q_10_q;
    resFinal_uid44_Divide1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            resFinal_uid44_Divide1_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (resFinal_uid44_Divide1_s) IS
                WHEN "0" => resFinal_uid44_Divide1_q <= prodPostRightShiftPostRndRange_uid42_Divide1_b;
                WHEN "1" => resFinal_uid44_Divide1_q <= cstValOvf_uid43_Divide1_q;
                WHEN OTHERS => resFinal_uid44_Divide1_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- Convert5(BLACKBOX,5)@11
    -- out out_primWireOut@13
    theConvert5 : floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_castA1Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => resFinal_uid44_Divide1_q,
        out_primWireOut => Convert5_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist14_Convert5_out_primWireOut_1(DELAY,272)
    redist14_Convert5_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert5_out_primWireOut, xout => redist14_Convert5_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Math4(BLACKBOX,9)@14
    -- out out_primWireOut@24
    theMath4 : floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_log1A0Z0dd6oq3cd16oe0cp3doz
    PORT MAP (
        in_0 => redist14_Convert5_out_primWireOut_1_q,
        out_primWireOut => Math4_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist12_Math4_out_primWireOut_1(DELAY,270)
    redist12_Math4_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Math4_out_primWireOut, xout => redist12_Math4_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Const7(FLOATCONSTANT,3)
    Const7_q <= "01000001011001001001001001001001";

    -- Mult2(BLACKBOX,10)@25
    -- out out_primWireOut@27
    theMult2 : floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_multA0Z742c246j22644ck2975u
    PORT MAP (
        in_0 => Const7_q,
        in_1 => redist12_Math4_out_primWireOut_1_q,
        out_primWireOut => Mult2_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist11_Mult2_out_primWireOut_1(DELAY,269)
    redist11_Mult2_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult2_out_primWireOut, xout => redist11_Mult2_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Convert1(BLACKBOX,4)@28
    -- out out_primWireOut@29
    theConvert1 : floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_castA0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist11_Mult2_out_primWireOut_1_q,
        out_primWireOut => Convert1_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist15_Convert1_out_primWireOut_1(DELAY,273)
    redist15_Convert1_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert1_out_primWireOut, xout => redist15_Convert1_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- And_rsrvd_fix(LOGICAL,2)@0 + 1
    And_rsrvd_fix_qi <= in_1_signal_STD_valid and in_3_noise_STD_valid;
    And_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => And_rsrvd_fix_qi, xout => And_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist16_And_rsrvd_fix_q_30(DELAY,274)
    redist16_And_rsrvd_fix_q_30 : dspba_delay
    GENERIC MAP ( width => 1, depth => 29, reset_kind => "ASYNC" )
    PORT MAP ( xin => And_rsrvd_fix_q, xout => redist16_And_rsrvd_fix_q_30_q, clk => clk, aclr => areset );

    -- GPOut1(GPOUT,8)@30
    out_1_estimated_SNR_valid <= redist16_And_rsrvd_fix_q_30_q;
    out_2_estimated_SNR_dB <= redist15_Convert1_out_primWireOut_1_q;

END normal;
