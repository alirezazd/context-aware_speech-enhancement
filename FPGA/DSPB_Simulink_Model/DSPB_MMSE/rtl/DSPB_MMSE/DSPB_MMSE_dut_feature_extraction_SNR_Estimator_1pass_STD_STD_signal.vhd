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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal
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
entity DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal is
    port (
        in_1_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_input_data : in std_logic_vector(15 downto 0);  -- ufix16_en15
        in_4_reset : in std_logic_vector(0 downto 0);  -- ufix1
        in_3_count : in std_logic_vector(15 downto 0);  -- ufix16
        out_1_valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_std : out std_logic_vector(15 downto 0);  -- ufix16_en16
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal;

architecture normal of DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_sel_x_b : STD_LOGIC_VECTOR (25 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_sel_x_b : STD_LOGIC_VECTOR (25 downto 0);
    signal Convert1_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal Convert3_sel_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal Sub1_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal Sub_a : STD_LOGIC_VECTOR (25 downto 0);
    signal Sub_b : STD_LOGIC_VECTOR (25 downto 0);
    signal Sub_o : STD_LOGIC_VECTOR (25 downto 0);
    signal Sub_q : STD_LOGIC_VECTOR (25 downto 0);
    signal Sub1_a : STD_LOGIC_VECTOR (16 downto 0);
    signal Sub1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal Sub1_o : STD_LOGIC_VECTOR (16 downto 0);
    signal Sub1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_PreShift_0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_PreShift_0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_PreShift_0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_PreShift_0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_PreShift_0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_PreShift_0_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_PreShift_0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_PreShift_0_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal normYNoLeadOne_uid54_Divide_in : STD_LOGIC_VECTOR (14 downto 0);
    signal normYNoLeadOne_uid54_Divide_b : STD_LOGIC_VECTOR (14 downto 0);
    signal paddingY_uid55_Divide_q : STD_LOGIC_VECTOR (14 downto 0);
    signal updatedY_uid56_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal normYIsOneC2_uid55_Divide_a : STD_LOGIC_VECTOR (15 downto 0);
    signal normYIsOneC2_uid55_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid58_Divide_b : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid59_Divide_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid59_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid60_Divide_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yIsZero_uid60_Divide_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid60_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fxpInverseRes_uid65_Divide_in : STD_LOGIC_VECTOR (48 downto 0);
    signal fxpInverseRes_uid65_Divide_b : STD_LOGIC_VECTOR (42 downto 0);
    signal oneInvRes_uid66_Divide_q : STD_LOGIC_VECTOR (42 downto 0);
    signal invResPostOneHandling2_uid67_Divide_s : STD_LOGIC_VECTOR (0 downto 0);
    signal invResPostOneHandling2_uid67_Divide_q : STD_LOGIC_VECTOR (42 downto 0);
    signal cWOut_uid68_Divide_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rShiftCount_uid69_Divide_a : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid69_Divide_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid69_Divide_o : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid69_Divide_q : STD_LOGIC_VECTOR (5 downto 0);
    signal prodPostRightShiftPost_uid72_Divide_in : STD_LOGIC_VECTOR (83 downto 0);
    signal prodPostRightShiftPost_uid72_Divide_b : STD_LOGIC_VECTOR (42 downto 0);
    signal allOnes_uid73_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invAllOnes_uid75_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal addOp2_uid76_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal prodPostRightShiftPostRnd_uid77_Divide_a : STD_LOGIC_VECTOR (43 downto 0);
    signal prodPostRightShiftPostRnd_uid77_Divide_b : STD_LOGIC_VECTOR (43 downto 0);
    signal prodPostRightShiftPostRnd_uid77_Divide_o : STD_LOGIC_VECTOR (43 downto 0);
    signal prodPostRightShiftPostRnd_uid77_Divide_q : STD_LOGIC_VECTOR (43 downto 0);
    signal prodPostRightShiftPostRndRange_uid78_Divide_in : STD_LOGIC_VECTOR (42 downto 0);
    signal prodPostRightShiftPostRndRange_uid78_Divide_b : STD_LOGIC_VECTOR (41 downto 0);
    signal cstValOvf_uid79_Divide_q : STD_LOGIC_VECTOR (41 downto 0);
    signal resFinal_uid80_Divide_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinal_uid80_Divide_q : STD_LOGIC_VECTOR (41 downto 0);
    signal normYNoLeadOne_uid86_Divide1_in : STD_LOGIC_VECTOR (14 downto 0);
    signal normYNoLeadOne_uid86_Divide1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal normYIsOneC2_uid87_Divide1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal normYIsOneC2_uid87_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOneC2_uid90_Divide1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid91_Divide1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal normYIsOne_uid91_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid92_Divide1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal yIsZero_uid92_Divide1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsZero_uid92_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fxpInverseRes_uid97_Divide1_in : STD_LOGIC_VECTOR (38 downto 0);
    signal fxpInverseRes_uid97_Divide1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal oneInvRes_uid98_Divide1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal invResPostOneHandling2_uid99_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal invResPostOneHandling2_uid99_Divide1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal rShiftCount_uid101_Divide1_a : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid101_Divide1_b : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid101_Divide1_o : STD_LOGIC_VECTOR (5 downto 0);
    signal rShiftCount_uid101_Divide1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal prodPostRightShiftPost_uid104_Divide1_in : STD_LOGIC_VECTOR (57 downto 0);
    signal prodPostRightShiftPost_uid104_Divide1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal allOnes_uid105_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invAllOnes_uid107_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal addOp2_uid108_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal prodPostRightShiftPostRnd_uid109_Divide1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid109_Divide1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid109_Divide1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRnd_uid109_Divide1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodPostRightShiftPostRndRange_uid110_Divide1_in : STD_LOGIC_VECTOR (32 downto 0);
    signal prodPostRightShiftPostRndRange_uid110_Divide1_b : STD_LOGIC_VECTOR (31 downto 0);
    signal cstValOvf_uid111_Divide1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal resFinal_uid112_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal resFinal_uid112_Divide1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal shiftConstant_uid115_Sqrt1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal inExponent_uid116_Sqrt1_a : STD_LOGIC_VECTOR (7 downto 0);
    signal inExponent_uid116_Sqrt1_b : STD_LOGIC_VECTOR (7 downto 0);
    signal inExponent_uid116_Sqrt1_o : STD_LOGIC_VECTOR (7 downto 0);
    signal inExponent_uid116_Sqrt1_q : STD_LOGIC_VECTOR (6 downto 0);
    signal parityOddOriginal_uid119_Sqrt1_in : STD_LOGIC_VECTOR (0 downto 0);
    signal parityOddOriginal_uid119_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal parityOddOriginalInv_uid120_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal outExponentOdd_uid124_Sqrt1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal outExponentOdd_uid124_Sqrt1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal outExponentOdd_uid124_Sqrt1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal outExponentOdd_uid124_Sqrt1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal outExponentOdd_uid125_Sqrt1_in : STD_LOGIC_VECTOR (6 downto 0);
    signal outExponentOdd_uid125_Sqrt1_b : STD_LOGIC_VECTOR (5 downto 0);
    signal outExponentEven_uid126_Sqrt1_b : STD_LOGIC_VECTOR (5 downto 0);
    signal outputExponent_uid127_Sqrt1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal outputExponent_uid127_Sqrt1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal msbo_uid128_Sqrt1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal shiftOutVal_uid129_Sqrt1_a : STD_LOGIC_VECTOR (6 downto 0);
    signal shiftOutVal_uid129_Sqrt1_b : STD_LOGIC_VECTOR (6 downto 0);
    signal shiftOutVal_uid129_Sqrt1_o : STD_LOGIC_VECTOR (6 downto 0);
    signal shiftOutVal_uid129_Sqrt1_q : STD_LOGIC_VECTOR (6 downto 0);
    signal a0Addr_uid135_Sqrt1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal x2_msb_uid136_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal x2_short_uid137_Sqrt1_in : STD_LOGIC_VECTOR (2 downto 0);
    signal x2_short_uid137_Sqrt1_b : STD_LOGIC_VECTOR (2 downto 0);
    signal x2_xored_uid138_Sqrt1_b : STD_LOGIC_VECTOR (2 downto 0);
    signal x2_xored_uid138_Sqrt1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal a1Addr_uid139_Sqrt1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal os_uid144_Sqrt1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal inv_x2_msb_uid149_Sqrt1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal inv_x2_msb_uid149_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal a1TableOutSxt_uid150_Sqrt1_q : STD_LOGIC_VECTOR (6 downto 0);
    signal a1TableOut_xored_uid151_Sqrt1_b : STD_LOGIC_VECTOR (6 downto 0);
    signal a1TableOut_xored_uid151_Sqrt1_q : STD_LOGIC_VECTOR (6 downto 0);
    signal a1TableOut_xored_rintrpr_uid152_Sqrt1_in : STD_LOGIC_VECTOR (5 downto 0);
    signal a1TableOut_xored_rintrpr_uid152_Sqrt1_b : STD_LOGIC_VECTOR (5 downto 0);
    signal a0AddA1Xored_uid153_Sqrt1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal a0AddA1Xored_uid153_Sqrt1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal a0AddA1Xored_uid153_Sqrt1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal a0AddA1Xored_uid153_Sqrt1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal roundConstant_uid154_Sqrt1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal resultInt_uid155_Sqrt1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal resultInt_uid155_Sqrt1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal resultInt_uid155_Sqrt1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal resultInt_uid155_Sqrt1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal resultPreZero_uid156_Sqrt1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal resultPreZero_uid156_Sqrt1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal inNotAllZero_uid157_Sqrt1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal inNotAllZero_uid157_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal resPreZeroBottom_uid158_Sqrt1_in : STD_LOGIC_VECTOR (15 downto 0);
    signal resPreZeroBottom_uid158_Sqrt1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal resPreZeroMSB_uid159_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal msbResultPreZero_uid160_Sqrt1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal msbResultPreZero_uid160_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal result_uid161_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal finalMultLSBRange_uid163_Sqrt1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal invNegShiftEven_uid164_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal negShiftEven_uid165_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal negShiftOdd_uid166_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal negShiftOdd_uid167_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal EvenBranchAndNegUpdate_uid169_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal OddBranchAndNegUpdate_uid170_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftUpdateValue_uid171_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal negShiftEvenParityOdd_uid172_Sqrt1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal finalMultBottomBits_uid173_Sqrt1_in : STD_LOGIC_VECTOR (16 downto 0);
    signal finalMultBottomBits_uid173_Sqrt1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal resultBottomBits_bottomRange_uid175_Sqrt1_in : STD_LOGIC_VECTOR (15 downto 0);
    signal resultBottomBits_bottomRange_uid175_Sqrt1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal resultBottomBits_mergedSignalTM_uid176_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal shifterInData_uid180_Sqrt1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal shifterInData_uid180_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal shiftOutValUpdated_uid181_Sqrt1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftOutValUpdated_uid181_Sqrt1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftOutValUpdated_uid181_Sqrt1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftOutValUpdated_uid181_Sqrt1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal sat_uid182_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal resultFinalPostRnd_uid188_Sqrt1_a : STD_LOGIC_VECTOR (17 downto 0);
    signal resultFinalPostRnd_uid188_Sqrt1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal resultFinalPostRnd_uid188_Sqrt1_o : STD_LOGIC_VECTOR (17 downto 0);
    signal resultFinalPostRnd_uid188_Sqrt1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal satOrOvfPostRnd_uid191_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal resultFinalPostOvf_uid192_Sqrt1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal resultFinalPostOvf_uid192_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal cstW_uid193_Sqrt1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal inputAllZeros_uid194_Sqrt1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal inputAllZeros_uid194_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal inputNotAllZeros_uid195_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal resultFinal_uid196_Sqrt1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal resultFinal_uid196_Sqrt1_qi : STD_LOGIC_VECTOR (15 downto 0);
    signal resultFinal_uid196_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid198_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid200_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid201_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid203_zCount_uid52_Divide_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid203_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid204_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid206_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid209_zCount_uid52_Divide_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid209_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid210_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid212_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid215_zCount_uid52_Divide_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid215_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid216_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid218_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid221_zCount_uid52_Divide_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid221_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid223_zCount_uid52_Divide_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid224_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid225_zCount_uid52_Divide_q : STD_LOGIC_VECTOR (4 downto 0);
    signal os_uid229_invTabGen_q : STD_LOGIC_VECTOR (47 downto 0);
    signal lowRangeB_uid250_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid250_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid251_invPolyEval_b : STD_LOGIC_VECTOR (15 downto 0);
    signal s1sumAHighB_uid252_invPolyEval_a : STD_LOGIC_VECTOR (24 downto 0);
    signal s1sumAHighB_uid252_invPolyEval_b : STD_LOGIC_VECTOR (24 downto 0);
    signal s1sumAHighB_uid252_invPolyEval_o : STD_LOGIC_VECTOR (24 downto 0);
    signal s1sumAHighB_uid252_invPolyEval_q : STD_LOGIC_VECTOR (24 downto 0);
    signal s1_uid253_invPolyEval_q : STD_LOGIC_VECTOR (25 downto 0);
    signal lowRangeB_uid256_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid256_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid257_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal s2sumAHighB_uid258_invPolyEval_a : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid258_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid258_invPolyEval_o : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid258_invPolyEval_q : STD_LOGIC_VECTOR (31 downto 0);
    signal s2_uid259_invPolyEval_q : STD_LOGIC_VECTOR (32 downto 0);
    signal lowRangeB_uid262_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid262_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid263_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal s3sumAHighB_uid264_invPolyEval_a : STD_LOGIC_VECTOR (39 downto 0);
    signal s3sumAHighB_uid264_invPolyEval_b : STD_LOGIC_VECTOR (39 downto 0);
    signal s3sumAHighB_uid264_invPolyEval_o : STD_LOGIC_VECTOR (39 downto 0);
    signal s3sumAHighB_uid264_invPolyEval_q : STD_LOGIC_VECTOR (39 downto 0);
    signal s3_uid265_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal lowRangeB_uid268_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid268_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid269_invPolyEval_b : STD_LOGIC_VECTOR (39 downto 0);
    signal s4sumAHighB_uid270_invPolyEval_a : STD_LOGIC_VECTOR (48 downto 0);
    signal s4sumAHighB_uid270_invPolyEval_b : STD_LOGIC_VECTOR (48 downto 0);
    signal s4sumAHighB_uid270_invPolyEval_o : STD_LOGIC_VECTOR (48 downto 0);
    signal s4sumAHighB_uid270_invPolyEval_q : STD_LOGIC_VECTOR (48 downto 0);
    signal s4_uid271_invPolyEval_q : STD_LOGIC_VECTOR (50 downto 0);
    signal vCount_uid275_zCount_uid84_Divide1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid275_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid278_zCount_uid84_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid278_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid281_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid284_zCount_uid84_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid284_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid287_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid290_zCount_uid84_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid290_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid293_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid296_zCount_uid84_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid296_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid298_zCount_uid84_Divide1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid299_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid300_zCount_uid84_Divide1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal lowRangeB_uid320_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid320_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid321_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid322_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid322_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid322_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid322_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid323_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid326_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid326_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid327_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid328_invPolyEval_a : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid328_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid328_invPolyEval_o : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid328_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal s2_uid329_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal lowRangeB_uid332_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid332_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid333_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s3sumAHighB_uid334_invPolyEval_a : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid334_invPolyEval_b : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid334_invPolyEval_o : STD_LOGIC_VECTOR (38 downto 0);
    signal s3sumAHighB_uid334_invPolyEval_q : STD_LOGIC_VECTOR (38 downto 0);
    signal s3_uid335_invPolyEval_q : STD_LOGIC_VECTOR (40 downto 0);
    signal vCount_uid339_leadingZeros_uid114_Sqrt1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid339_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid342_leadingZeros_uid114_Sqrt1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid342_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid345_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid348_leadingZeros_uid114_Sqrt1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid348_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid351_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid354_leadingZeros_uid114_Sqrt1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid354_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid357_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid360_leadingZeros_uid114_Sqrt1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid360_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid362_leadingZeros_uid114_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid363_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid364_leadingZeros_uid114_Sqrt1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal xv0_uid366_finalMult_uid162_Sqrt1_in : STD_LOGIC_VECTOR (5 downto 0);
    signal xv0_uid366_finalMult_uid162_Sqrt1_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv1_uid367_finalMult_uid162_Sqrt1_in : STD_LOGIC_VECTOR (11 downto 0);
    signal xv1_uid367_finalMult_uid162_Sqrt1_b : STD_LOGIC_VECTOR (5 downto 0);
    signal xv2_uid368_finalMult_uid162_Sqrt1_b : STD_LOGIC_VECTOR (4 downto 0);
    signal p2_uid369_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal p1_uid370_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal p0_uid371_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal lev1_a0_uid375_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lev2_a0_uid376_finalMult_uid162_Sqrt1_a : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid376_finalMult_uid162_Sqrt1_b : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid376_finalMult_uid162_Sqrt1_o : STD_LOGIC_VECTOR (23 downto 0);
    signal lev2_a0_uid376_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal maxValInOutFormat_uid377_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal minValueInFormat_uid378_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal paddingX_uid379_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal updatedX_uid380_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal ovf_uid379_finalMult_uid162_Sqrt1_a : STD_LOGIC_VECTOR (25 downto 0);
    signal ovf_uid379_finalMult_uid162_Sqrt1_b : STD_LOGIC_VECTOR (25 downto 0);
    signal ovf_uid379_finalMult_uid162_Sqrt1_o : STD_LOGIC_VECTOR (25 downto 0);
    signal ovf_uid379_finalMult_uid162_Sqrt1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal updatedY_uid383_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal udf_uid382_finalMult_uid162_Sqrt1_a : STD_LOGIC_VECTOR (25 downto 0);
    signal udf_uid382_finalMult_uid162_Sqrt1_b : STD_LOGIC_VECTOR (25 downto 0);
    signal udf_uid382_finalMult_uid162_Sqrt1_o : STD_LOGIC_VECTOR (25 downto 0);
    signal udf_uid382_finalMult_uid162_Sqrt1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal ovfudfcond_uid385_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sR_uid386_finalMult_uid162_Sqrt1_in : STD_LOGIC_VECTOR (20 downto 0);
    signal sR_uid386_finalMult_uid162_Sqrt1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal sRA0_uid387_finalMult_uid162_Sqrt1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal sRA0_uid387_finalMult_uid162_Sqrt1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal osig_uid407_pT1_uid249_invPolyEval_b : STD_LOGIC_VECTOR (16 downto 0);
    signal osig_uid410_pT2_uid255_invPolyEval_in : STD_LOGIC_VECTOR (32 downto 0);
    signal osig_uid410_pT2_uid255_invPolyEval_b : STD_LOGIC_VECTOR (24 downto 0);
    signal nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal topRangeX_bottomExtension_uid431_pT3_uid261_invPolyEval_q : STD_LOGIC_VECTOR (9 downto 0);
    signal topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftY_mergedSignalTM_uid442_pT3_uid261_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid449_pT3_uid261_invPolyEval_in : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid449_pT3_uid261_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal highBBits_uid450_pT3_uid261_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0_uid452_pT3_uid261_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid453_pT3_uid261_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid453_pT3_uid261_invPolyEval_b : STD_LOGIC_VECTOR (32 downto 0);
    signal topRangeX_bottomExtension_uid474_pT4_uid267_invPolyEval_q : STD_LOGIC_VECTOR (18 downto 0);
    signal topRangeX_mergedSignalTM_uid476_pT4_uid267_invPolyEval_q : STD_LOGIC_VECTOR (26 downto 0);
    signal aboveLeftY_mergedSignalTM_uid485_pT4_uid267_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid492_pT4_uid267_invPolyEval_in : STD_LOGIC_VECTOR (8 downto 0);
    signal lowRangeB_uid492_pT4_uid267_invPolyEval_b : STD_LOGIC_VECTOR (8 downto 0);
    signal highBBits_uid493_pT4_uid267_invPolyEval_b : STD_LOGIC_VECTOR (26 downto 0);
    signal lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_a : STD_LOGIC_VECTOR (54 downto 0);
    signal lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_b : STD_LOGIC_VECTOR (54 downto 0);
    signal lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_o : STD_LOGIC_VECTOR (54 downto 0);
    signal lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal lev1_a0_uid495_pT4_uid267_invPolyEval_q : STD_LOGIC_VECTOR (63 downto 0);
    signal os_uid496_pT4_uid267_invPolyEval_in : STD_LOGIC_VECTOR (61 downto 0);
    signal os_uid496_pT4_uid267_invPolyEval_b : STD_LOGIC_VECTOR (41 downto 0);
    signal osig_uid499_pT1_uid319_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid502_pT2_uid325_invPolyEval_in : STD_LOGIC_VECTOR (29 downto 0);
    signal osig_uid502_pT2_uid325_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal nx_mergedSignalTM_uid521_pT3_uid331_invPolyEval_q : STD_LOGIC_VECTOR (7 downto 0);
    signal topRangeX_mergedSignalTM_uid525_pT3_uid331_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal aboveLeftY_bottomExtension_uid532_pT3_uid331_invPolyEval_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aboveLeftY_mergedSignalTM_uid534_pT3_uid331_invPolyEval_q : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid541_pT3_uid331_invPolyEval_in : STD_LOGIC_VECTOR (17 downto 0);
    signal lowRangeB_uid541_pT3_uid331_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal highBBits_uid542_pT3_uid331_invPolyEval_b : STD_LOGIC_VECTOR (17 downto 0);
    signal lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_a : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_b : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_o : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_q : STD_LOGIC_VECTOR (36 downto 0);
    signal lev1_a0_uid544_pT3_uid331_invPolyEval_q : STD_LOGIC_VECTOR (54 downto 0);
    signal os_uid545_pT3_uid331_invPolyEval_in : STD_LOGIC_VECTOR (52 downto 0);
    signal os_uid545_pT3_uid331_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_a : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_b : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_i : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_o : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_q : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_a : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_b : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_i : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_o : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_q : STD_LOGIC_VECTOR (30 downto 0);
    signal Mult1_PostCast_primWireOut_rnd_sel_b : STD_LOGIC_VECTOR (41 downto 0);
    signal Mult_PostCast_primWireOut_rnd_sel_b : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage0Idx1Rng8_uid557_normY_uid53_Divide_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng8_uid557_normY_uid53_Divide_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1_uid558_normY_uid53_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0_uid562_normY_uid53_Divide_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid562_normY_uid53_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx1Rng2_uid564_normY_uid53_Divide_in : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1Rng2_uid564_normY_uid53_Divide_b : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1_uid565_normY_uid53_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx2Rng4_uid567_normY_uid53_Divide_in : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx2Rng4_uid567_normY_uid53_Divide_b : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx2_uid568_normY_uid53_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx3Pad6_uid569_normY_uid53_Divide_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx3Rng6_uid570_normY_uid53_Divide_in : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage1Idx3Rng6_uid570_normY_uid53_Divide_b : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage1Idx3_uid571_normY_uid53_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1_uid573_normY_uid53_Divide_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid573_normY_uid53_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage2Idx1Rng1_uid575_normY_uid53_Divide_in : STD_LOGIC_VECTOR (14 downto 0);
    signal leftShiftStage2Idx1Rng1_uid575_normY_uid53_Divide_b : STD_LOGIC_VECTOR (14 downto 0);
    signal leftShiftStage2Idx1_uid576_normY_uid53_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage2_uid578_normY_uid53_Divide_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid578_normY_uid53_Divide_q : STD_LOGIC_VECTOR (15 downto 0);
    signal prodXInvY_uid70_Divide_join_11_q : STD_LOGIC_VECTOR (84 downto 0);
    signal prodXInvY_uid70_Divide_align_12_q : STD_LOGIC_VECTOR (70 downto 0);
    signal prodXInvY_uid70_Divide_align_12_qint : STD_LOGIC_VECTOR (70 downto 0);
    signal prodXInvY_uid70_Divide_result_add_0_0_a : STD_LOGIC_VECTOR (85 downto 0);
    signal prodXInvY_uid70_Divide_result_add_0_0_b : STD_LOGIC_VECTOR (85 downto 0);
    signal prodXInvY_uid70_Divide_result_add_0_0_o : STD_LOGIC_VECTOR (85 downto 0);
    signal prodXInvY_uid70_Divide_result_add_0_0_q : STD_LOGIC_VECTOR (85 downto 0);
    signal rightShiftStage0Idx1Rng16_uid597_prodPostRightShift_uid71_Divide_in : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage0Idx1Rng16_uid597_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (68 downto 0);
    signal rightShiftStage0Idx1_uid599_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage0Idx2Rng32_uid600_prodPostRightShift_uid71_Divide_in : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage0Idx2Rng32_uid600_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (52 downto 0);
    signal rightShiftStage0Idx2Pad32_uid601_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2_uid602_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage0Idx3Rng48_uid603_prodPostRightShift_uid71_Divide_in : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage0Idx3Rng48_uid603_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (36 downto 0);
    signal rightShiftStage0Idx3Pad48_uid604_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx3_uid605_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage1Idx1Rng4_uid608_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (80 downto 0);
    signal rightShiftStage1Idx1_uid610_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage1Idx2Rng8_uid611_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (76 downto 0);
    signal rightShiftStage1Idx2_uid613_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage1Idx3Rng12_uid614_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (72 downto 0);
    signal rightShiftStage1Idx3Pad12_uid615_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage1Idx3_uid616_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage2Idx1Rng1_uid619_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (83 downto 0);
    signal rightShiftStage2Idx1_uid621_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage2Idx2Rng2_uid622_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (82 downto 0);
    signal rightShiftStage2Idx2_uid624_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage2Idx3Rng3_uid625_prodPostRightShift_uid71_Divide_b : STD_LOGIC_VECTOR (81 downto 0);
    signal rightShiftStage2Idx3_uid627_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_q : STD_LOGIC_VECTOR (84 downto 0);
    signal leftShiftStage0Idx1Rng8_uid634_normY_uid85_Divide1_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng8_uid634_normY_uid85_Divide1_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1_uid635_normY_uid85_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0_uid639_normY_uid85_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid639_normY_uid85_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx1Rng2_uid641_normY_uid85_Divide1_in : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1Rng2_uid641_normY_uid85_Divide1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1_uid642_normY_uid85_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx2Rng4_uid644_normY_uid85_Divide1_in : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx2Rng4_uid644_normY_uid85_Divide1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx2_uid645_normY_uid85_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx3Rng6_uid647_normY_uid85_Divide1_in : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage1Idx3Rng6_uid647_normY_uid85_Divide1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage1Idx3_uid648_normY_uid85_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1_uid650_normY_uid85_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid650_normY_uid85_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage2Idx1Rng1_uid652_normY_uid85_Divide1_in : STD_LOGIC_VECTOR (14 downto 0);
    signal leftShiftStage2Idx1Rng1_uid652_normY_uid85_Divide1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal leftShiftStage2Idx1_uid653_normY_uid85_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage2_uid655_normY_uid85_Divide1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid655_normY_uid85_Divide1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal prodXInvY_uid102_Divide1_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid102_Divide1_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid102_Divide1_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid102_Divide1_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid102_Divide1_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal prodXInvY_uid102_Divide1_bs7_b : STD_LOGIC_VECTOR (7 downto 0);
    signal prodXInvY_uid102_Divide1_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal prodXInvY_uid102_Divide1_bs11_b : STD_LOGIC_VECTOR (7 downto 0);
    signal prodXInvY_uid102_Divide1_join_13_q : STD_LOGIC_VECTOR (58 downto 0);
    signal prodXInvY_uid102_Divide1_align_14_q : STD_LOGIC_VECTOR (52 downto 0);
    signal prodXInvY_uid102_Divide1_align_14_qint : STD_LOGIC_VECTOR (52 downto 0);
    signal prodXInvY_uid102_Divide1_result_add_0_0_a : STD_LOGIC_VECTOR (61 downto 0);
    signal prodXInvY_uid102_Divide1_result_add_0_0_b : STD_LOGIC_VECTOR (61 downto 0);
    signal prodXInvY_uid102_Divide1_result_add_0_0_o : STD_LOGIC_VECTOR (61 downto 0);
    signal prodXInvY_uid102_Divide1_result_add_0_0_q : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage0Idx1Rng16_uid676_prodPostRightShift_uid103_Divide1_in : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage0Idx1Rng16_uid676_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (42 downto 0);
    signal rightShiftStage0Idx1_uid678_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage0Idx2Rng32_uid679_prodPostRightShift_uid103_Divide1_in : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage0Idx2Rng32_uid679_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (26 downto 0);
    signal rightShiftStage0Idx2_uid681_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage0Idx3Rng48_uid682_prodPostRightShift_uid103_Divide1_in : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage0Idx3Rng48_uid682_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (10 downto 0);
    signal rightShiftStage0Idx3_uid684_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage1Idx1Rng4_uid687_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (54 downto 0);
    signal rightShiftStage1Idx1_uid689_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage1Idx2Rng8_uid690_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (50 downto 0);
    signal rightShiftStage1Idx2_uid692_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage1Idx3Rng12_uid693_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage1Idx3_uid695_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2Idx1Rng1_uid698_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (57 downto 0);
    signal rightShiftStage2Idx1_uid700_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2Idx2Rng2_uid701_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (56 downto 0);
    signal rightShiftStage2Idx2_uid703_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2Idx3Rng3_uid704_prodPostRightShift_uid103_Divide1_b : STD_LOGIC_VECTOR (55 downto 0);
    signal rightShiftStage2Idx3_uid706_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_q : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage0Idx1Rng8_uid713_xLeftShift_uid130_Sqrt1_in : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng8_uid713_xLeftShift_uid130_Sqrt1_b : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1_uid714_xLeftShift_uid130_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStageSel4Dto3_uid717_xLeftShift_uid130_Sqrt1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx1Rng2_uid720_xLeftShift_uid130_Sqrt1_in : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1Rng2_uid720_xLeftShift_uid130_Sqrt1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal leftShiftStage1Idx1_uid721_xLeftShift_uid130_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx2Rng4_uid723_xLeftShift_uid130_Sqrt1_in : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx2Rng4_uid723_xLeftShift_uid130_Sqrt1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx2_uid724_xLeftShift_uid130_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage1Idx3Rng6_uid726_xLeftShift_uid130_Sqrt1_in : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage1Idx3Rng6_uid726_xLeftShift_uid130_Sqrt1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal leftShiftStage1Idx3_uid727_xLeftShift_uid130_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStageSel2Dto1_uid728_xLeftShift_uid130_Sqrt1_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStageSel2Dto1_uid728_xLeftShift_uid130_Sqrt1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage2Idx1Rng1_uid731_xLeftShift_uid130_Sqrt1_in : STD_LOGIC_VECTOR (14 downto 0);
    signal leftShiftStage2Idx1Rng1_uid731_xLeftShift_uid130_Sqrt1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal leftShiftStage2Idx1_uid732_xLeftShift_uid130_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStageSel0Dto0_uid733_xLeftShift_uid130_Sqrt1_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid733_xLeftShift_uid130_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal a0Table_uid140_Sqrt1_lutmem_reset0 : std_logic;
    signal a0Table_uid140_Sqrt1_lutmem_ia : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid140_Sqrt1_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal a0Table_uid140_Sqrt1_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal a0Table_uid140_Sqrt1_lutmem_ir : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid140_Sqrt1_lutmem_r : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid141_Sqrt1_lutmem_reset0 : std_logic;
    signal a0Table_uid141_Sqrt1_lutmem_ia : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid141_Sqrt1_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal a0Table_uid141_Sqrt1_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal a0Table_uid141_Sqrt1_lutmem_ir : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid141_Sqrt1_lutmem_r : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid142_Sqrt1_lutmem_reset0 : std_logic;
    signal a0Table_uid142_Sqrt1_lutmem_ia : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid142_Sqrt1_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal a0Table_uid142_Sqrt1_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal a0Table_uid142_Sqrt1_lutmem_ir : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid142_Sqrt1_lutmem_r : STD_LOGIC_VECTOR (4 downto 0);
    signal a0Table_uid143_Sqrt1_lutmem_reset0 : std_logic;
    signal a0Table_uid143_Sqrt1_lutmem_ia : STD_LOGIC_VECTOR (2 downto 0);
    signal a0Table_uid143_Sqrt1_lutmem_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal a0Table_uid143_Sqrt1_lutmem_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal a0Table_uid143_Sqrt1_lutmem_ir : STD_LOGIC_VECTOR (2 downto 0);
    signal a0Table_uid143_Sqrt1_lutmem_r : STD_LOGIC_VECTOR (2 downto 0);
    signal a1Table_uid146_Sqrt1_lutmem_reset0 : std_logic;
    signal a1Table_uid146_Sqrt1_lutmem_ia : STD_LOGIC_VECTOR (5 downto 0);
    signal a1Table_uid146_Sqrt1_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal a1Table_uid146_Sqrt1_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal a1Table_uid146_Sqrt1_lutmem_ir : STD_LOGIC_VECTOR (5 downto 0);
    signal a1Table_uid146_Sqrt1_lutmem_r : STD_LOGIC_VECTOR (5 downto 0);
    signal wIntCst_uid743_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_n : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng8_uid745_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage0Idx1_uid747_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage0Idx2Rng16_uid748_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx2_uid750_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage0Idx3_uid751_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStageSel4Dto3_uid752_xRightShiftFinal_uid184_Sqrt1_in : STD_LOGIC_VECTOR (4 downto 0);
    signal rightShiftStageSel4Dto3_uid752_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage1Idx1Rng2_uid754_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal rightShiftStage1Idx1_uid756_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage1Idx2Rng4_uid757_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (12 downto 0);
    signal rightShiftStage1Idx2_uid759_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage1Idx3Rng6_uid760_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (10 downto 0);
    signal rightShiftStage1Idx3_uid762_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStageSel2Dto1_uid763_xRightShiftFinal_uid184_Sqrt1_in : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStageSel2Dto1_uid763_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage2Idx1Rng1_uid765_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage2Idx1_uid767_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStageSel0Dto0_uid768_xRightShiftFinal_uid184_Sqrt1_in : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStageSel0Dto0_uid768_xRightShiftFinal_uid184_Sqrt1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal r_uid771_xRightShiftFinal_uid184_Sqrt1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid771_xRightShiftFinal_uid184_Sqrt1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal memoryC0_uid227_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC0_uid227_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (39 downto 0);
    signal memoryC0_uid227_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid227_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid227_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (39 downto 0);
    signal memoryC0_uid227_invTabGen_lutmem_r : STD_LOGIC_VECTOR (39 downto 0);
    signal memoryC0_uid228_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC0_uid228_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid228_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid228_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid228_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid228_invTabGen_lutmem_r : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid231_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC1_uid231_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (38 downto 0);
    signal memoryC1_uid231_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid231_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid231_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (38 downto 0);
    signal memoryC1_uid231_invTabGen_lutmem_r : STD_LOGIC_VECTOR (38 downto 0);
    signal memoryC2_uid234_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC2_uid234_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (30 downto 0);
    signal memoryC2_uid234_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid234_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid234_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (30 downto 0);
    signal memoryC2_uid234_invTabGen_lutmem_r : STD_LOGIC_VECTOR (30 downto 0);
    signal memoryC3_uid237_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC3_uid237_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC3_uid237_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid237_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid237_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC3_uid237_invTabGen_lutmem_r : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC4_uid240_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC4_uid240_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (14 downto 0);
    signal memoryC4_uid240_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC4_uid240_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC4_uid240_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (14 downto 0);
    signal memoryC4_uid240_invTabGen_lutmem_r : STD_LOGIC_VECTOR (14 downto 0);
    signal memoryC0_uid302_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC0_uid302_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid302_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid302_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid302_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC0_uid302_invTabGen_lutmem_r : STD_LOGIC_VECTOR (37 downto 0);
    signal memoryC1_uid305_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC1_uid305_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid305_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid305_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid305_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid305_invTabGen_lutmem_r : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC2_uid308_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC2_uid308_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid308_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid308_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid308_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid308_invTabGen_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC3_uid311_invTabGen_lutmem_reset0 : std_logic;
    signal memoryC3_uid311_invTabGen_lutmem_ia : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid311_invTabGen_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid311_invTabGen_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC3_uid311_invTabGen_lutmem_ir : STD_LOGIC_VECTOR (13 downto 0);
    signal memoryC3_uid311_invTabGen_lutmem_r : STD_LOGIC_VECTOR (13 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im3_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im3_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im3_s1 : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im3_pr : SIGNED (15 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im3_q : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_bs5_b : STD_LOGIC_VECTOR (7 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_align_7_q : STD_LOGIC_VECTOR (32 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_align_7_qint : STD_LOGIC_VECTOR (32 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_a : STD_LOGIC_VECTOR (34 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_b : STD_LOGIC_VECTOR (34 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_o : STD_LOGIC_VECTOR (34 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im3_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im3_b0 : STD_LOGIC_VECTOR (4 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im3_s1 : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im3_pr : SIGNED (12 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_bs5_b : STD_LOGIC_VECTOR (4 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_align_7_q : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_align_7_qint : STD_LOGIC_VECTOR (29 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal Mult_cma_reset : std_logic;
    type Mult_cma_a0type is array(NATURAL range <>) of UNSIGNED(15 downto 0);
    signal Mult_cma_a0 : Mult_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of Mult_cma_a0 : signal is true;
    signal Mult_cma_c0 : Mult_cma_a0type(0 to 0);
    attribute preserve of Mult_cma_c0 : signal is true;
    type Mult_cma_ptype is array(NATURAL range <>) of UNSIGNED(31 downto 0);
    signal Mult_cma_p : Mult_cma_ptype(0 to 0);
    signal Mult_cma_u : Mult_cma_ptype(0 to 0);
    signal Mult_cma_w : Mult_cma_ptype(0 to 0);
    signal Mult_cma_x : Mult_cma_ptype(0 to 0);
    signal Mult_cma_y : Mult_cma_ptype(0 to 0);
    signal Mult_cma_s : Mult_cma_ptype(0 to 0);
    signal Mult_cma_qq : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult_cma_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult_cma_ena0 : std_logic;
    signal Mult_cma_ena1 : std_logic;
    signal Mult1_cma_reset : std_logic;
    type Mult1_cma_a0type is array(NATURAL range <>) of UNSIGNED(25 downto 0);
    signal Mult1_cma_a0 : Mult1_cma_a0type(0 to 0);
    attribute preserve of Mult1_cma_a0 : signal is true;
    signal Mult1_cma_c0 : Mult1_cma_a0type(0 to 0);
    attribute preserve of Mult1_cma_c0 : signal is true;
    type Mult1_cma_ptype is array(NATURAL range <>) of UNSIGNED(51 downto 0);
    signal Mult1_cma_p : Mult1_cma_ptype(0 to 0);
    signal Mult1_cma_u : Mult1_cma_ptype(0 to 0);
    signal Mult1_cma_w : Mult1_cma_ptype(0 to 0);
    signal Mult1_cma_x : Mult1_cma_ptype(0 to 0);
    signal Mult1_cma_y : Mult1_cma_ptype(0 to 0);
    signal Mult1_cma_s : Mult1_cma_ptype(0 to 0);
    signal Mult1_cma_qq : STD_LOGIC_VECTOR (51 downto 0);
    signal Mult1_cma_q : STD_LOGIC_VECTOR (51 downto 0);
    signal Mult1_cma_ena0 : std_logic;
    signal Mult1_cma_ena1 : std_logic;
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_reset : std_logic;
    type prodXY_uid406_pT1_uid249_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(6 downto 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_a0 : prodXY_uid406_pT1_uid249_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid406_pT1_uid249_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid406_pT1_uid249_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_c0 : prodXY_uid406_pT1_uid249_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid406_pT1_uid249_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid406_pT1_uid249_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(7 downto 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_l : prodXY_uid406_pT1_uid249_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid406_pT1_uid249_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_p : prodXY_uid406_pT1_uid249_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_u : prodXY_uid406_pT1_uid249_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_w : prodXY_uid406_pT1_uid249_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_x : prodXY_uid406_pT1_uid249_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_y : prodXY_uid406_pT1_uid249_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_s : prodXY_uid406_pT1_uid249_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_qq : STD_LOGIC_VECTOR (21 downto 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_q : STD_LOGIC_VECTOR (21 downto 0);
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid406_pT1_uid249_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_reset : std_logic;
    type sm0_uid447_pT3_uid261_invPolyEval_cma_a0type is array(NATURAL range <>) of SIGNED(17 downto 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_a0 : sm0_uid447_pT3_uid261_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid447_pT3_uid261_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_c0 : sm0_uid447_pT3_uid261_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid447_pT3_uid261_invPolyEval_cma_c0 : signal is true;
    type sm0_uid447_pT3_uid261_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(35 downto 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_p : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_u : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_w : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_x : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_y : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_s : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid447_pT3_uid261_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_reset : std_logic;
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_a0 : sm0_uid447_pT3_uid261_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid448_pT3_uid261_invPolyEval_cma_a0 : signal is true;
    type sm0_uid448_pT3_uid261_invPolyEval_cma_c0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_c0 : sm0_uid448_pT3_uid261_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of sm0_uid448_pT3_uid261_invPolyEval_cma_c0 : signal is true;
    type sm0_uid448_pT3_uid261_invPolyEval_cma_rtype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_r : sm0_uid448_pT3_uid261_invPolyEval_cma_rtype(0 to 0);
    type sm0_uid448_pT3_uid261_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(36 downto 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_p : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_u : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_w : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_x : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_y : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_s : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid448_pT3_uid261_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_reset : std_logic;
    type sm0_uid490_pT4_uid267_invPolyEval_cma_a0type is array(NATURAL range <>) of SIGNED(26 downto 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_a0 : sm0_uid490_pT4_uid267_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid490_pT4_uid267_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_c0 : sm0_uid490_pT4_uid267_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid490_pT4_uid267_invPolyEval_cma_c0 : signal is true;
    type sm0_uid490_pT4_uid267_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(53 downto 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_p : sm0_uid490_pT4_uid267_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_u : sm0_uid490_pT4_uid267_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_w : sm0_uid490_pT4_uid267_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_x : sm0_uid490_pT4_uid267_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_y : sm0_uid490_pT4_uid267_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_s : sm0_uid490_pT4_uid267_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_qq : STD_LOGIC_VECTOR (53 downto 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_q : STD_LOGIC_VECTOR (53 downto 0);
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid490_pT4_uid267_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_reset : std_logic;
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_a0 : sm0_uid447_pT3_uid261_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid491_pT4_uid267_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_c0 : sm0_uid448_pT3_uid261_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of sm0_uid491_pT4_uid267_invPolyEval_cma_c0 : signal is true;
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_r : sm0_uid448_pT3_uid261_invPolyEval_cma_rtype(0 to 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_p : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_u : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_w : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_x : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_y : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_s : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid491_pT4_uid267_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_reset : std_logic;
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_a0 : prodXY_uid406_pT1_uid249_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid498_pT1_uid319_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid498_pT1_uid319_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_c0 : prodXY_uid498_pT1_uid319_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid498_pT1_uid319_invPolyEval_cma_c0 : signal is true;
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_l : prodXY_uid406_pT1_uid249_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid498_pT1_uid319_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(21 downto 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_p : prodXY_uid498_pT1_uid319_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_u : prodXY_uid498_pT1_uid319_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_w : prodXY_uid498_pT1_uid319_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_x : prodXY_uid498_pT1_uid319_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_y : prodXY_uid498_pT1_uid319_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_s : prodXY_uid498_pT1_uid319_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_qq : STD_LOGIC_VECTOR (20 downto 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_q : STD_LOGIC_VECTOR (20 downto 0);
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid498_pT1_uid319_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_reset : std_logic;
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_a0 : sm0_uid447_pT3_uid261_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid539_pT3_uid331_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_c0 : sm0_uid447_pT3_uid261_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid539_pT3_uid331_invPolyEval_cma_c0 : signal is true;
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_p : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_u : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_w : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_x : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_y : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_s : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid539_pT3_uid331_invPolyEval_cma_ena1 : std_logic;
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_reset : std_logic;
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_a0 : sm0_uid447_pT3_uid261_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of sm0_uid540_pT3_uid331_invPolyEval_cma_a0 : signal is true;
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_c0 : sm0_uid448_pT3_uid261_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of sm0_uid540_pT3_uid331_invPolyEval_cma_c0 : signal is true;
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_r : sm0_uid448_pT3_uid261_invPolyEval_cma_rtype(0 to 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_p : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_u : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_w : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_x : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_y : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_s : sm0_uid448_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_ena0 : std_logic;
    signal sm0_uid540_pT3_uid331_invPolyEval_cma_ena1 : std_logic;
    signal prodXInvY_uid70_Divide_im0_cma_reset : std_logic;
    type prodXInvY_uid70_Divide_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(26 downto 0);
    signal prodXInvY_uid70_Divide_im0_cma_a0 : prodXInvY_uid70_Divide_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid70_Divide_im0_cma_a0 : signal is true;
    signal prodXInvY_uid70_Divide_im0_cma_c0 : prodXInvY_uid70_Divide_im0_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid70_Divide_im0_cma_c0 : signal is true;
    type prodXInvY_uid70_Divide_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(53 downto 0);
    signal prodXInvY_uid70_Divide_im0_cma_p : prodXInvY_uid70_Divide_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im0_cma_u : prodXInvY_uid70_Divide_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im0_cma_w : prodXInvY_uid70_Divide_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im0_cma_x : prodXInvY_uid70_Divide_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im0_cma_y : prodXInvY_uid70_Divide_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im0_cma_s : prodXInvY_uid70_Divide_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im0_cma_qq : STD_LOGIC_VECTOR (53 downto 0);
    signal prodXInvY_uid70_Divide_im0_cma_q : STD_LOGIC_VECTOR (53 downto 0);
    signal prodXInvY_uid70_Divide_im0_cma_ena0 : std_logic;
    signal prodXInvY_uid70_Divide_im0_cma_ena1 : std_logic;
    signal prodXInvY_uid70_Divide_im3_cma_reset : std_logic;
    signal prodXInvY_uid70_Divide_im3_cma_a0 : Mult_cma_a0type(0 to 0);
    attribute preserve of prodXInvY_uid70_Divide_im3_cma_a0 : signal is true;
    type prodXInvY_uid70_Divide_im3_cma_c0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXInvY_uid70_Divide_im3_cma_c0 : prodXInvY_uid70_Divide_im3_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid70_Divide_im3_cma_c0 : signal is true;
    type prodXInvY_uid70_Divide_im3_cma_ptype is array(NATURAL range <>) of UNSIGNED(30 downto 0);
    signal prodXInvY_uid70_Divide_im3_cma_p : prodXInvY_uid70_Divide_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im3_cma_u : prodXInvY_uid70_Divide_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im3_cma_w : prodXInvY_uid70_Divide_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im3_cma_x : prodXInvY_uid70_Divide_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im3_cma_y : prodXInvY_uid70_Divide_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im3_cma_s : prodXInvY_uid70_Divide_im3_cma_ptype(0 to 0);
    signal prodXInvY_uid70_Divide_im3_cma_qq : STD_LOGIC_VECTOR (30 downto 0);
    signal prodXInvY_uid70_Divide_im3_cma_q : STD_LOGIC_VECTOR (30 downto 0);
    signal prodXInvY_uid70_Divide_im3_cma_ena0 : std_logic;
    signal prodXInvY_uid70_Divide_im3_cma_ena1 : std_logic;
    signal prodXInvY_uid102_Divide1_im0_cma_reset : std_logic;
    signal prodXInvY_uid102_Divide1_im0_cma_a0 : sm0_uid448_pT3_uid261_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid102_Divide1_im0_cma_a0 : signal is true;
    signal prodXInvY_uid102_Divide1_im0_cma_c0 : sm0_uid448_pT3_uid261_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid102_Divide1_im0_cma_c0 : signal is true;
    type prodXInvY_uid102_Divide1_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal prodXInvY_uid102_Divide1_im0_cma_p : prodXInvY_uid102_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im0_cma_u : prodXInvY_uid102_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im0_cma_w : prodXInvY_uid102_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im0_cma_x : prodXInvY_uid102_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im0_cma_y : prodXInvY_uid102_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im0_cma_s : prodXInvY_uid102_Divide1_im0_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid102_Divide1_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal prodXInvY_uid102_Divide1_im0_cma_ena0 : std_logic;
    signal prodXInvY_uid102_Divide1_im0_cma_ena1 : std_logic;
    signal prodXInvY_uid102_Divide1_im10_cma_reset : std_logic;
    signal prodXInvY_uid102_Divide1_im10_cma_a0 : prodXInvY_uid70_Divide_im3_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid102_Divide1_im10_cma_a0 : signal is true;
    type prodXInvY_uid102_Divide1_im10_cma_c0type is array(NATURAL range <>) of UNSIGNED(9 downto 0);
    signal prodXInvY_uid102_Divide1_im10_cma_c0 : prodXInvY_uid102_Divide1_im10_cma_c0type(0 to 0);
    attribute preserve of prodXInvY_uid102_Divide1_im10_cma_c0 : signal is true;
    type prodXInvY_uid102_Divide1_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(24 downto 0);
    signal prodXInvY_uid102_Divide1_im10_cma_p : prodXInvY_uid102_Divide1_im10_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im10_cma_u : prodXInvY_uid102_Divide1_im10_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im10_cma_w : prodXInvY_uid102_Divide1_im10_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im10_cma_x : prodXInvY_uid102_Divide1_im10_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im10_cma_y : prodXInvY_uid102_Divide1_im10_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im10_cma_s : prodXInvY_uid102_Divide1_im10_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_im10_cma_qq : STD_LOGIC_VECTOR (24 downto 0);
    signal prodXInvY_uid102_Divide1_im10_cma_q : STD_LOGIC_VECTOR (22 downto 0);
    signal prodXInvY_uid102_Divide1_im10_cma_ena0 : std_logic;
    signal prodXInvY_uid102_Divide1_im10_cma_ena1 : std_logic;
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_reset : std_logic;
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_a0 : sm0_uid448_pT3_uid261_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_a0 : signal is true;
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_c0 : prodXInvY_uid102_Divide1_im10_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_c0 : signal is true;
    type prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_p : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_u : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_w : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_x : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_y : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_s : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_q : STD_LOGIC_VECTOR (24 downto 0);
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ena0 : std_logic;
    signal prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ena1 : std_logic;
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_reset : std_logic;
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_a0 : sm0_uid448_pT3_uid261_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_a0 : signal is true;
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_c0 : prodXInvY_uid102_Divide1_im10_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_c0 : signal is true;
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_p : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_u : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_w : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_x : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_y : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_s : prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ptype(0 to 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_q : STD_LOGIC_VECTOR (24 downto 0);
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_ena0 : std_logic;
    signal prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_ena1 : std_logic;
    signal prodXInvY_uid70_Divide_ma6_cma_reset : std_logic;
    signal prodXInvY_uid70_Divide_ma6_cma_a0 : Mult_cma_a0type(0 to 1);
    attribute preserve of prodXInvY_uid70_Divide_ma6_cma_a0 : signal is true;
    signal prodXInvY_uid70_Divide_ma6_cma_c0 : prodXInvY_uid70_Divide_im0_cma_a0type(0 to 1);
    attribute preserve of prodXInvY_uid70_Divide_ma6_cma_c0 : signal is true;
    type prodXInvY_uid70_Divide_ma6_cma_ptype is array(NATURAL range <>) of UNSIGNED(42 downto 0);
    signal prodXInvY_uid70_Divide_ma6_cma_p : prodXInvY_uid70_Divide_ma6_cma_ptype(0 to 1);
    type prodXInvY_uid70_Divide_ma6_cma_utype is array(NATURAL range <>) of UNSIGNED(43 downto 0);
    signal prodXInvY_uid70_Divide_ma6_cma_u : prodXInvY_uid70_Divide_ma6_cma_utype(0 to 1);
    signal prodXInvY_uid70_Divide_ma6_cma_w : prodXInvY_uid70_Divide_ma6_cma_utype(0 to 0);
    signal prodXInvY_uid70_Divide_ma6_cma_x : prodXInvY_uid70_Divide_ma6_cma_utype(0 to 0);
    signal prodXInvY_uid70_Divide_ma6_cma_y : prodXInvY_uid70_Divide_ma6_cma_utype(0 to 0);
    signal prodXInvY_uid70_Divide_ma6_cma_s : prodXInvY_uid70_Divide_ma6_cma_utype(0 to 0);
    signal prodXInvY_uid70_Divide_ma6_cma_qq : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXInvY_uid70_Divide_ma6_cma_q : STD_LOGIC_VECTOR (43 downto 0);
    signal prodXInvY_uid70_Divide_ma6_cma_ena0 : std_logic;
    signal prodXInvY_uid70_Divide_ma6_cma_ena1 : std_logic;
    signal prodXInvY_uid102_Divide1_ma3_cma_reset : std_logic;
    signal prodXInvY_uid102_Divide1_ma3_cma_a0 : prodXInvY_uid70_Divide_im3_cma_c0type(0 to 1);
    attribute preserve of prodXInvY_uid102_Divide1_ma3_cma_a0 : signal is true;
    signal prodXInvY_uid102_Divide1_ma3_cma_c0 : sm0_uid448_pT3_uid261_invPolyEval_cma_rtype(0 to 1);
    attribute preserve of prodXInvY_uid102_Divide1_ma3_cma_c0 : signal is true;
    type prodXInvY_uid102_Divide1_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal prodXInvY_uid102_Divide1_ma3_cma_l : prodXInvY_uid102_Divide1_ma3_cma_ltype(0 to 1);
    type prodXInvY_uid102_Divide1_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal prodXInvY_uid102_Divide1_ma3_cma_p : prodXInvY_uid102_Divide1_ma3_cma_ptype(0 to 1);
    signal prodXInvY_uid102_Divide1_ma3_cma_u : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 1);
    signal prodXInvY_uid102_Divide1_ma3_cma_w : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_ma3_cma_x : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_ma3_cma_y : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_ma3_cma_s : sm0_uid447_pT3_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXInvY_uid102_Divide1_ma3_cma_qq : STD_LOGIC_VECTOR (34 downto 0);
    signal prodXInvY_uid102_Divide1_ma3_cma_q : STD_LOGIC_VECTOR (34 downto 0);
    signal prodXInvY_uid102_Divide1_ma3_cma_ena0 : std_logic;
    signal prodXInvY_uid102_Divide1_ma3_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bias_q : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_trunc_q : STD_LOGIC_VECTOR (26 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_trunc_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_a : STD_LOGIC_VECTOR (29 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_b : STD_LOGIC_VECTOR (29 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_o : STD_LOGIC_VECTOR (29 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_q : STD_LOGIC_VECTOR (28 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_shift_q : STD_LOGIC_VECTOR (27 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_shift_qint : STD_LOGIC_VECTOR (28 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bs_in : STD_LOGIC_VECTOR (26 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bs_b : STD_LOGIC_VECTOR (26 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_trunc_q : STD_LOGIC_VECTOR (26 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_trunc_qint : STD_LOGIC_VECTOR (30 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_a : STD_LOGIC_VECTOR (29 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_b : STD_LOGIC_VECTOR (29 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_o : STD_LOGIC_VECTOR (29 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_q : STD_LOGIC_VECTOR (28 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_shift_q : STD_LOGIC_VECTOR (27 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_shift_qint : STD_LOGIC_VECTOR (28 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_bs_in : STD_LOGIC_VECTOR (26 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_bs_b : STD_LOGIC_VECTOR (26 downto 0);
    signal yAddr_uid62_Divide_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid62_Divide_merged_bit_select_c : STD_LOGIC_VECTOR (6 downto 0);
    signal prodXInvY_uid70_Divide_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (26 downto 0);
    signal prodXInvY_uid70_Divide_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal yAddr_uid94_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid94_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (6 downto 0);
    signal prodXInvY_uid102_Divide1_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal prodXInvY_uid102_Divide1_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (14 downto 0);
    signal rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal resultFinalPreSat_uid189_Sqrt1_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal resultFinalPreSat_uid189_Sqrt1_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid205_zCount_uid52_Divide_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid205_zCount_uid52_Divide_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid211_zCount_uid52_Divide_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid211_zCount_uid52_Divide_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid217_zCount_uid52_Divide_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid217_zCount_uid52_Divide_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal topRangeY_uid435_pT3_uid261_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid435_pT3_uid261_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (14 downto 0);
    signal topRangeY_uid478_pT4_uid267_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (26 downto 0);
    signal topRangeY_uid478_pT4_uid267_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal topRangeY_uid527_pT3_uid331_invPolyEval_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal topRangeY_uid527_pT3_uid331_invPolyEval_merged_bit_select_c : STD_LOGIC_VECTOR (12 downto 0);
    signal rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid372_finalMult_uid162_Sqrt1_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid372_finalMult_uid162_Sqrt1_merged_bit_select_c : STD_LOGIC_VECTOR (14 downto 0);
    signal prodXInvY_uid70_Divide_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (26 downto 0);
    signal prodXInvY_uid70_Divide_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (14 downto 0);
    signal x0_uid132_Sqrt1_merged_bit_select_in : STD_LOGIC_VECTOR (14 downto 0);
    signal x0_uid132_Sqrt1_merged_bit_select_b : STD_LOGIC_VECTOR (5 downto 0);
    signal x0_uid132_Sqrt1_merged_bit_select_c : STD_LOGIC_VECTOR (4 downto 0);
    signal x0_uid132_Sqrt1_merged_bit_select_d : STD_LOGIC_VECTOR (3 downto 0);
    signal redist0_yAddr_uid94_Divide1_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist1_yAddr_uid94_Divide1_merged_bit_select_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_yAddr_uid94_Divide1_merged_bit_select_b_6_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist3_yAddr_uid94_Divide1_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist4_yAddr_uid94_Divide1_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist5_yAddr_uid94_Divide1_merged_bit_select_c_6_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist6_yAddr_uid62_Divide_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_yAddr_uid62_Divide_merged_bit_select_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist8_yAddr_uid62_Divide_merged_bit_select_b_6_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_yAddr_uid62_Divide_merged_bit_select_b_8_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist10_yAddr_uid62_Divide_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist11_yAddr_uid62_Divide_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist12_yAddr_uid62_Divide_merged_bit_select_c_6_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist13_topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q_2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist14_nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist15_r_uid364_leadingZeros_uid114_Sqrt1_q_3_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist18_shiftUpdateValue_uid171_Sqrt1_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_resPreZeroBottom_uid158_Sqrt1_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist20_inNotAllZero_uid157_Sqrt1_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_inv_x2_msb_uid149_Sqrt1_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_yIsZero_uid92_Divide1_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_normYIsOne_uid91_Divide1_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_prodPostRightShiftPostRndRange_uid78_Divide_b_1_q : STD_LOGIC_VECTOR (41 downto 0);
    signal redist26_yIsZero_uid60_Divide_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_normYIsOne_uid59_Divide_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_normYIsOneC2_uid58_Divide_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_normYNoLeadOne_uid54_Divide_b_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist30_GPIn3_in_1_valid_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_GPIn3_in_1_valid_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_GPIn3_in_4_reset_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_GPIn3_in_4_reset_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_GPIn3_in_4_reset_22_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_Sub1_PostCast_primWireOut_sel_x_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist38_Convert1_sel_x_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist39_Convert1_sel_x_b_2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_outputreg_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_reset0 : std_logic;
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_ia : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_iq : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i : signal is true;
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_eq : std_logic;
    attribute preserve of redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_eq : signal is true;
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist16_r_uid300_zCount_uid84_Divide1_q_14_sticky_ena_q : signal is true;
    signal redist16_r_uid300_zCount_uid84_Divide1_q_14_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_outputreg_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_mem_reset0 : std_logic;
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_mem_ia : STD_LOGIC_VECTOR (4 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_mem_iq : STD_LOGIC_VECTOR (4 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_mem_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i : signal is true;
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_eq : std_logic;
    attribute preserve of redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_eq : signal is true;
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist17_r_uid225_zCount_uid52_Divide_q_12_sticky_ena_q : signal is true;
    signal redist17_r_uid225_zCount_uid52_Divide_q_12_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_inputreg_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_reset0 : std_logic;
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_ia : STD_LOGIC_VECTOR (14 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_iq : STD_LOGIC_VECTOR (14 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_i : signal is true;
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist24_normYNoLeadOne_uid86_Divide1_b_4_sticky_ena_q : signal is true;
    signal redist24_normYNoLeadOne_uid86_Divide1_b_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_mem_reset0 : std_logic;
    signal redist32_GPIn3_in_2_input_data_7_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist32_GPIn3_in_2_input_data_7_rdcnt_i : signal is true;
    signal redist32_GPIn3_in_2_input_data_7_rdcnt_eq : std_logic;
    attribute preserve of redist32_GPIn3_in_2_input_data_7_rdcnt_eq : signal is true;
    signal redist32_GPIn3_in_2_input_data_7_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_GPIn3_in_2_input_data_7_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist32_GPIn3_in_2_input_data_7_sticky_ena_q : signal is true;
    signal redist32_GPIn3_in_2_input_data_7_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_mem_reset0 : std_logic;
    signal redist33_GPIn3_in_2_input_data_10_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist33_GPIn3_in_2_input_data_10_rdcnt_i : signal is true;
    signal redist33_GPIn3_in_2_input_data_10_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_GPIn3_in_2_input_data_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist33_GPIn3_in_2_input_data_10_sticky_ena_q : signal is true;
    signal redist33_GPIn3_in_2_input_data_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- cstW_uid193_Sqrt1(CONSTANT,192)
    cstW_uid193_Sqrt1_q <= "10000";

    -- zs_uid198_zCount_uid52_Divide(CONSTANT,197)
    zs_uid198_zCount_uid52_Divide_q <= "0000000000000000";

    -- cstValOvf_uid111_Divide1(CONSTANT,110)
    cstValOvf_uid111_Divide1_q <= "11111111111111111111111111111111";

    -- allOnes_uid105_Divide1(LOGICAL,104)@15
    allOnes_uid105_Divide1_q <= "1" WHEN prodPostRightShiftPost_uid104_Divide1_b = "111111111111111111111111111111111" ELSE "0";

    -- invAllOnes_uid107_Divide1(LOGICAL,106)@15
    invAllOnes_uid107_Divide1_q <= not (allOnes_uid105_Divide1_q);

    -- addOp2_uid108_Divide1(LOGICAL,107)@15
    addOp2_uid108_Divide1_q <= invAllOnes_uid107_Divide1_q and VCC_q;

    -- paddingX_uid379_finalMult_uid162_Sqrt1(CONSTANT,378)
    paddingX_uid379_finalMult_uid162_Sqrt1_q <= "000";

    -- rightShiftStage2Idx3Rng3_uid704_prodPostRightShift_uid103_Divide1(BITSELECT,703)@15
    rightShiftStage2Idx3Rng3_uid704_prodPostRightShift_uid103_Divide1_b <= rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q(58 downto 3);

    -- rightShiftStage2Idx3_uid706_prodPostRightShift_uid103_Divide1(BITJOIN,705)@15
    rightShiftStage2Idx3_uid706_prodPostRightShift_uid103_Divide1_q <= paddingX_uid379_finalMult_uid162_Sqrt1_q & rightShiftStage2Idx3Rng3_uid704_prodPostRightShift_uid103_Divide1_b;

    -- zs_uid216_zCount_uid52_Divide(CONSTANT,215)
    zs_uid216_zCount_uid52_Divide_q <= "00";

    -- rightShiftStage2Idx2Rng2_uid701_prodPostRightShift_uid103_Divide1(BITSELECT,700)@15
    rightShiftStage2Idx2Rng2_uid701_prodPostRightShift_uid103_Divide1_b <= rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q(58 downto 2);

    -- rightShiftStage2Idx2_uid703_prodPostRightShift_uid103_Divide1(BITJOIN,702)@15
    rightShiftStage2Idx2_uid703_prodPostRightShift_uid103_Divide1_q <= zs_uid216_zCount_uid52_Divide_q & rightShiftStage2Idx2Rng2_uid701_prodPostRightShift_uid103_Divide1_b;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- rightShiftStage2Idx1Rng1_uid698_prodPostRightShift_uid103_Divide1(BITSELECT,697)@15
    rightShiftStage2Idx1Rng1_uid698_prodPostRightShift_uid103_Divide1_b <= rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q(58 downto 1);

    -- rightShiftStage2Idx1_uid700_prodPostRightShift_uid103_Divide1(BITJOIN,699)@15
    rightShiftStage2Idx1_uid700_prodPostRightShift_uid103_Divide1_q <= GND_q & rightShiftStage2Idx1Rng1_uid698_prodPostRightShift_uid103_Divide1_b;

    -- rightShiftStage1Idx3Pad12_uid615_prodPostRightShift_uid71_Divide(CONSTANT,614)
    rightShiftStage1Idx3Pad12_uid615_prodPostRightShift_uid71_Divide_q <= "000000000000";

    -- rightShiftStage1Idx3Rng12_uid693_prodPostRightShift_uid103_Divide1(BITSELECT,692)@15
    rightShiftStage1Idx3Rng12_uid693_prodPostRightShift_uid103_Divide1_b <= rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q(58 downto 12);

    -- rightShiftStage1Idx3_uid695_prodPostRightShift_uid103_Divide1(BITJOIN,694)@15
    rightShiftStage1Idx3_uid695_prodPostRightShift_uid103_Divide1_q <= rightShiftStage1Idx3Pad12_uid615_prodPostRightShift_uid71_Divide_q & rightShiftStage1Idx3Rng12_uid693_prodPostRightShift_uid103_Divide1_b;

    -- zs_uid204_zCount_uid52_Divide(CONSTANT,203)
    zs_uid204_zCount_uid52_Divide_q <= "00000000";

    -- rightShiftStage1Idx2Rng8_uid690_prodPostRightShift_uid103_Divide1(BITSELECT,689)@15
    rightShiftStage1Idx2Rng8_uid690_prodPostRightShift_uid103_Divide1_b <= rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q(58 downto 8);

    -- rightShiftStage1Idx2_uid692_prodPostRightShift_uid103_Divide1(BITJOIN,691)@15
    rightShiftStage1Idx2_uid692_prodPostRightShift_uid103_Divide1_q <= zs_uid204_zCount_uid52_Divide_q & rightShiftStage1Idx2Rng8_uid690_prodPostRightShift_uid103_Divide1_b;

    -- zs_uid210_zCount_uid52_Divide(CONSTANT,209)
    zs_uid210_zCount_uid52_Divide_q <= "0000";

    -- rightShiftStage1Idx1Rng4_uid687_prodPostRightShift_uid103_Divide1(BITSELECT,686)@15
    rightShiftStage1Idx1Rng4_uid687_prodPostRightShift_uid103_Divide1_b <= rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q(58 downto 4);

    -- rightShiftStage1Idx1_uid689_prodPostRightShift_uid103_Divide1(BITJOIN,688)@15
    rightShiftStage1Idx1_uid689_prodPostRightShift_uid103_Divide1_q <= zs_uid210_zCount_uid52_Divide_q & rightShiftStage1Idx1Rng4_uid687_prodPostRightShift_uid103_Divide1_b;

    -- rightShiftStage0Idx3Pad48_uid604_prodPostRightShift_uid71_Divide(CONSTANT,603)
    rightShiftStage0Idx3Pad48_uid604_prodPostRightShift_uid71_Divide_q <= "000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx3Rng48_uid682_prodPostRightShift_uid103_Divide1(BITSELECT,681)@15
    rightShiftStage0Idx3Rng48_uid682_prodPostRightShift_uid103_Divide1_in <= prodXInvY_uid102_Divide1_result_add_0_0_q(58 downto 0);
    rightShiftStage0Idx3Rng48_uid682_prodPostRightShift_uid103_Divide1_b <= rightShiftStage0Idx3Rng48_uid682_prodPostRightShift_uid103_Divide1_in(58 downto 48);

    -- rightShiftStage0Idx3_uid684_prodPostRightShift_uid103_Divide1(BITJOIN,683)@15
    rightShiftStage0Idx3_uid684_prodPostRightShift_uid103_Divide1_q <= rightShiftStage0Idx3Pad48_uid604_prodPostRightShift_uid71_Divide_q & rightShiftStage0Idx3Rng48_uid682_prodPostRightShift_uid103_Divide1_b;

    -- rightShiftStage0Idx2Pad32_uid601_prodPostRightShift_uid71_Divide(CONSTANT,600)
    rightShiftStage0Idx2Pad32_uid601_prodPostRightShift_uid71_Divide_q <= "00000000000000000000000000000000";

    -- rightShiftStage0Idx2Rng32_uid679_prodPostRightShift_uid103_Divide1(BITSELECT,678)@15
    rightShiftStage0Idx2Rng32_uid679_prodPostRightShift_uid103_Divide1_in <= prodXInvY_uid102_Divide1_result_add_0_0_q(58 downto 0);
    rightShiftStage0Idx2Rng32_uid679_prodPostRightShift_uid103_Divide1_b <= rightShiftStage0Idx2Rng32_uid679_prodPostRightShift_uid103_Divide1_in(58 downto 32);

    -- rightShiftStage0Idx2_uid681_prodPostRightShift_uid103_Divide1(BITJOIN,680)@15
    rightShiftStage0Idx2_uid681_prodPostRightShift_uid103_Divide1_q <= rightShiftStage0Idx2Pad32_uid601_prodPostRightShift_uid71_Divide_q & rightShiftStage0Idx2Rng32_uid679_prodPostRightShift_uid103_Divide1_b;

    -- rightShiftStage0Idx1Rng16_uid676_prodPostRightShift_uid103_Divide1(BITSELECT,675)@15
    rightShiftStage0Idx1Rng16_uid676_prodPostRightShift_uid103_Divide1_in <= prodXInvY_uid102_Divide1_result_add_0_0_q(58 downto 0);
    rightShiftStage0Idx1Rng16_uid676_prodPostRightShift_uid103_Divide1_b <= rightShiftStage0Idx1Rng16_uid676_prodPostRightShift_uid103_Divide1_in(58 downto 16);

    -- rightShiftStage0Idx1_uid678_prodPostRightShift_uid103_Divide1(BITJOIN,677)@15
    rightShiftStage0Idx1_uid678_prodPostRightShift_uid103_Divide1_q <= zs_uid198_zCount_uid52_Divide_q & rightShiftStage0Idx1Rng16_uid676_prodPostRightShift_uid103_Divide1_b;

    -- cstValOvf_uid79_Divide(CONSTANT,78)
    cstValOvf_uid79_Divide_q <= "111111111111111111111111111111111111111111";

    -- allOnes_uid73_Divide(LOGICAL,72)@12
    allOnes_uid73_Divide_q <= "1" WHEN prodPostRightShiftPost_uid72_Divide_b = "1111111111111111111111111111111111111111111" ELSE "0";

    -- invAllOnes_uid75_Divide(LOGICAL,74)@12
    invAllOnes_uid75_Divide_q <= not (allOnes_uid73_Divide_q);

    -- addOp2_uid76_Divide(LOGICAL,75)@12
    addOp2_uid76_Divide_q <= invAllOnes_uid75_Divide_q and VCC_q;

    -- rightShiftStage2Idx3Rng3_uid625_prodPostRightShift_uid71_Divide(BITSELECT,624)@12
    rightShiftStage2Idx3Rng3_uid625_prodPostRightShift_uid71_Divide_b <= rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q(84 downto 3);

    -- rightShiftStage2Idx3_uid627_prodPostRightShift_uid71_Divide(BITJOIN,626)@12
    rightShiftStage2Idx3_uid627_prodPostRightShift_uid71_Divide_q <= paddingX_uid379_finalMult_uid162_Sqrt1_q & rightShiftStage2Idx3Rng3_uid625_prodPostRightShift_uid71_Divide_b;

    -- rightShiftStage2Idx2Rng2_uid622_prodPostRightShift_uid71_Divide(BITSELECT,621)@12
    rightShiftStage2Idx2Rng2_uid622_prodPostRightShift_uid71_Divide_b <= rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q(84 downto 2);

    -- rightShiftStage2Idx2_uid624_prodPostRightShift_uid71_Divide(BITJOIN,623)@12
    rightShiftStage2Idx2_uid624_prodPostRightShift_uid71_Divide_q <= zs_uid216_zCount_uid52_Divide_q & rightShiftStage2Idx2Rng2_uid622_prodPostRightShift_uid71_Divide_b;

    -- rightShiftStage2Idx1Rng1_uid619_prodPostRightShift_uid71_Divide(BITSELECT,618)@12
    rightShiftStage2Idx1Rng1_uid619_prodPostRightShift_uid71_Divide_b <= rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q(84 downto 1);

    -- rightShiftStage2Idx1_uid621_prodPostRightShift_uid71_Divide(BITJOIN,620)@12
    rightShiftStage2Idx1_uid621_prodPostRightShift_uid71_Divide_q <= GND_q & rightShiftStage2Idx1Rng1_uid619_prodPostRightShift_uid71_Divide_b;

    -- rightShiftStage1Idx3Rng12_uid614_prodPostRightShift_uid71_Divide(BITSELECT,613)@12
    rightShiftStage1Idx3Rng12_uid614_prodPostRightShift_uid71_Divide_b <= rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q(84 downto 12);

    -- rightShiftStage1Idx3_uid616_prodPostRightShift_uid71_Divide(BITJOIN,615)@12
    rightShiftStage1Idx3_uid616_prodPostRightShift_uid71_Divide_q <= rightShiftStage1Idx3Pad12_uid615_prodPostRightShift_uid71_Divide_q & rightShiftStage1Idx3Rng12_uid614_prodPostRightShift_uid71_Divide_b;

    -- rightShiftStage1Idx2Rng8_uid611_prodPostRightShift_uid71_Divide(BITSELECT,610)@12
    rightShiftStage1Idx2Rng8_uid611_prodPostRightShift_uid71_Divide_b <= rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q(84 downto 8);

    -- rightShiftStage1Idx2_uid613_prodPostRightShift_uid71_Divide(BITJOIN,612)@12
    rightShiftStage1Idx2_uid613_prodPostRightShift_uid71_Divide_q <= zs_uid204_zCount_uid52_Divide_q & rightShiftStage1Idx2Rng8_uid611_prodPostRightShift_uid71_Divide_b;

    -- rightShiftStage1Idx1Rng4_uid608_prodPostRightShift_uid71_Divide(BITSELECT,607)@12
    rightShiftStage1Idx1Rng4_uid608_prodPostRightShift_uid71_Divide_b <= rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q(84 downto 4);

    -- rightShiftStage1Idx1_uid610_prodPostRightShift_uid71_Divide(BITJOIN,609)@12
    rightShiftStage1Idx1_uid610_prodPostRightShift_uid71_Divide_q <= zs_uid210_zCount_uid52_Divide_q & rightShiftStage1Idx1Rng4_uid608_prodPostRightShift_uid71_Divide_b;

    -- rightShiftStage0Idx3Rng48_uid603_prodPostRightShift_uid71_Divide(BITSELECT,602)@12
    rightShiftStage0Idx3Rng48_uid603_prodPostRightShift_uid71_Divide_in <= prodXInvY_uid70_Divide_result_add_0_0_q(84 downto 0);
    rightShiftStage0Idx3Rng48_uid603_prodPostRightShift_uid71_Divide_b <= rightShiftStage0Idx3Rng48_uid603_prodPostRightShift_uid71_Divide_in(84 downto 48);

    -- rightShiftStage0Idx3_uid605_prodPostRightShift_uid71_Divide(BITJOIN,604)@12
    rightShiftStage0Idx3_uid605_prodPostRightShift_uid71_Divide_q <= rightShiftStage0Idx3Pad48_uid604_prodPostRightShift_uid71_Divide_q & rightShiftStage0Idx3Rng48_uid603_prodPostRightShift_uid71_Divide_b;

    -- rightShiftStage0Idx2Rng32_uid600_prodPostRightShift_uid71_Divide(BITSELECT,599)@12
    rightShiftStage0Idx2Rng32_uid600_prodPostRightShift_uid71_Divide_in <= prodXInvY_uid70_Divide_result_add_0_0_q(84 downto 0);
    rightShiftStage0Idx2Rng32_uid600_prodPostRightShift_uid71_Divide_b <= rightShiftStage0Idx2Rng32_uid600_prodPostRightShift_uid71_Divide_in(84 downto 32);

    -- rightShiftStage0Idx2_uid602_prodPostRightShift_uid71_Divide(BITJOIN,601)@12
    rightShiftStage0Idx2_uid602_prodPostRightShift_uid71_Divide_q <= rightShiftStage0Idx2Pad32_uid601_prodPostRightShift_uid71_Divide_q & rightShiftStage0Idx2Rng32_uid600_prodPostRightShift_uid71_Divide_b;

    -- rightShiftStage0Idx1Rng16_uid597_prodPostRightShift_uid71_Divide(BITSELECT,596)@12
    rightShiftStage0Idx1Rng16_uid597_prodPostRightShift_uid71_Divide_in <= prodXInvY_uid70_Divide_result_add_0_0_q(84 downto 0);
    rightShiftStage0Idx1Rng16_uid597_prodPostRightShift_uid71_Divide_b <= rightShiftStage0Idx1Rng16_uid597_prodPostRightShift_uid71_Divide_in(84 downto 16);

    -- rightShiftStage0Idx1_uid599_prodPostRightShift_uid71_Divide(BITJOIN,598)@12
    rightShiftStage0Idx1_uid599_prodPostRightShift_uid71_Divide_q <= zs_uid198_zCount_uid52_Divide_q & rightShiftStage0Idx1Rng16_uid597_prodPostRightShift_uid71_Divide_b;

    -- oneInvRes_uid66_Divide(CONSTANT,65)
    oneInvRes_uid66_Divide_q <= "1000000000000000000000000000000000000000000";

    -- leftShiftStage2Idx1Rng1_uid575_normY_uid53_Divide(BITSELECT,574)@0
    leftShiftStage2Idx1Rng1_uid575_normY_uid53_Divide_in <= leftShiftStage1_uid573_normY_uid53_Divide_q(14 downto 0);
    leftShiftStage2Idx1Rng1_uid575_normY_uid53_Divide_b <= leftShiftStage2Idx1Rng1_uid575_normY_uid53_Divide_in(14 downto 0);

    -- leftShiftStage2Idx1_uid576_normY_uid53_Divide(BITJOIN,575)@0
    leftShiftStage2Idx1_uid576_normY_uid53_Divide_q <= leftShiftStage2Idx1Rng1_uid575_normY_uid53_Divide_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid570_normY_uid53_Divide(BITSELECT,569)@0
    leftShiftStage1Idx3Rng6_uid570_normY_uid53_Divide_in <= leftShiftStage0_uid562_normY_uid53_Divide_q(9 downto 0);
    leftShiftStage1Idx3Rng6_uid570_normY_uid53_Divide_b <= leftShiftStage1Idx3Rng6_uid570_normY_uid53_Divide_in(9 downto 0);

    -- leftShiftStage1Idx3Pad6_uid569_normY_uid53_Divide(CONSTANT,568)
    leftShiftStage1Idx3Pad6_uid569_normY_uid53_Divide_q <= "000000";

    -- leftShiftStage1Idx3_uid571_normY_uid53_Divide(BITJOIN,570)@0
    leftShiftStage1Idx3_uid571_normY_uid53_Divide_q <= leftShiftStage1Idx3Rng6_uid570_normY_uid53_Divide_b & leftShiftStage1Idx3Pad6_uid569_normY_uid53_Divide_q;

    -- leftShiftStage1Idx2Rng4_uid567_normY_uid53_Divide(BITSELECT,566)@0
    leftShiftStage1Idx2Rng4_uid567_normY_uid53_Divide_in <= leftShiftStage0_uid562_normY_uid53_Divide_q(11 downto 0);
    leftShiftStage1Idx2Rng4_uid567_normY_uid53_Divide_b <= leftShiftStage1Idx2Rng4_uid567_normY_uid53_Divide_in(11 downto 0);

    -- leftShiftStage1Idx2_uid568_normY_uid53_Divide(BITJOIN,567)@0
    leftShiftStage1Idx2_uid568_normY_uid53_Divide_q <= leftShiftStage1Idx2Rng4_uid567_normY_uid53_Divide_b & zs_uid210_zCount_uid52_Divide_q;

    -- leftShiftStage1Idx1Rng2_uid564_normY_uid53_Divide(BITSELECT,563)@0
    leftShiftStage1Idx1Rng2_uid564_normY_uid53_Divide_in <= leftShiftStage0_uid562_normY_uid53_Divide_q(13 downto 0);
    leftShiftStage1Idx1Rng2_uid564_normY_uid53_Divide_b <= leftShiftStage1Idx1Rng2_uid564_normY_uid53_Divide_in(13 downto 0);

    -- leftShiftStage1Idx1_uid565_normY_uid53_Divide(BITJOIN,564)@0
    leftShiftStage1Idx1_uid565_normY_uid53_Divide_q <= leftShiftStage1Idx1Rng2_uid564_normY_uid53_Divide_b & zs_uid216_zCount_uid52_Divide_q;

    -- leftShiftStage0Idx1Rng8_uid557_normY_uid53_Divide(BITSELECT,556)@0
    leftShiftStage0Idx1Rng8_uid557_normY_uid53_Divide_in <= in_3_count(7 downto 0);
    leftShiftStage0Idx1Rng8_uid557_normY_uid53_Divide_b <= leftShiftStage0Idx1Rng8_uid557_normY_uid53_Divide_in(7 downto 0);

    -- leftShiftStage0Idx1_uid558_normY_uid53_Divide(BITJOIN,557)@0
    leftShiftStage0Idx1_uid558_normY_uid53_Divide_q <= leftShiftStage0Idx1Rng8_uid557_normY_uid53_Divide_b & zs_uid204_zCount_uid52_Divide_q;

    -- leftShiftStage0_uid562_normY_uid53_Divide(MUX,561)@0
    leftShiftStage0_uid562_normY_uid53_Divide_s <= leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_b;
    leftShiftStage0_uid562_normY_uid53_Divide_combproc: PROCESS (leftShiftStage0_uid562_normY_uid53_Divide_s, in_3_count, leftShiftStage0Idx1_uid558_normY_uid53_Divide_q, zs_uid198_zCount_uid52_Divide_q)
    BEGIN
        CASE (leftShiftStage0_uid562_normY_uid53_Divide_s) IS
            WHEN "00" => leftShiftStage0_uid562_normY_uid53_Divide_q <= in_3_count;
            WHEN "01" => leftShiftStage0_uid562_normY_uid53_Divide_q <= leftShiftStage0Idx1_uid558_normY_uid53_Divide_q;
            WHEN "10" => leftShiftStage0_uid562_normY_uid53_Divide_q <= zs_uid198_zCount_uid52_Divide_q;
            WHEN "11" => leftShiftStage0_uid562_normY_uid53_Divide_q <= zs_uid198_zCount_uid52_Divide_q;
            WHEN OTHERS => leftShiftStage0_uid562_normY_uid53_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid573_normY_uid53_Divide(MUX,572)@0
    leftShiftStage1_uid573_normY_uid53_Divide_s <= leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_c;
    leftShiftStage1_uid573_normY_uid53_Divide_combproc: PROCESS (leftShiftStage1_uid573_normY_uid53_Divide_s, leftShiftStage0_uid562_normY_uid53_Divide_q, leftShiftStage1Idx1_uid565_normY_uid53_Divide_q, leftShiftStage1Idx2_uid568_normY_uid53_Divide_q, leftShiftStage1Idx3_uid571_normY_uid53_Divide_q)
    BEGIN
        CASE (leftShiftStage1_uid573_normY_uid53_Divide_s) IS
            WHEN "00" => leftShiftStage1_uid573_normY_uid53_Divide_q <= leftShiftStage0_uid562_normY_uid53_Divide_q;
            WHEN "01" => leftShiftStage1_uid573_normY_uid53_Divide_q <= leftShiftStage1Idx1_uid565_normY_uid53_Divide_q;
            WHEN "10" => leftShiftStage1_uid573_normY_uid53_Divide_q <= leftShiftStage1Idx2_uid568_normY_uid53_Divide_q;
            WHEN "11" => leftShiftStage1_uid573_normY_uid53_Divide_q <= leftShiftStage1Idx3_uid571_normY_uid53_Divide_q;
            WHEN OTHERS => leftShiftStage1_uid573_normY_uid53_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid200_zCount_uid52_Divide(LOGICAL,199)@0
    vCount_uid200_zCount_uid52_Divide_q <= "1" WHEN in_3_count = zs_uid198_zCount_uid52_Divide_q ELSE "0";

    -- mO_uid201_zCount_uid52_Divide(CONSTANT,200)
    mO_uid201_zCount_uid52_Divide_q <= "1111111111111111";

    -- vStagei_uid203_zCount_uid52_Divide(MUX,202)@0
    vStagei_uid203_zCount_uid52_Divide_s <= vCount_uid200_zCount_uid52_Divide_q;
    vStagei_uid203_zCount_uid52_Divide_combproc: PROCESS (vStagei_uid203_zCount_uid52_Divide_s, in_3_count, mO_uid201_zCount_uid52_Divide_q)
    BEGIN
        CASE (vStagei_uid203_zCount_uid52_Divide_s) IS
            WHEN "0" => vStagei_uid203_zCount_uid52_Divide_q <= in_3_count;
            WHEN "1" => vStagei_uid203_zCount_uid52_Divide_q <= mO_uid201_zCount_uid52_Divide_q;
            WHEN OTHERS => vStagei_uid203_zCount_uid52_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid205_zCount_uid52_Divide_merged_bit_select(BITSELECT,839)@0
    rVStage_uid205_zCount_uid52_Divide_merged_bit_select_b <= vStagei_uid203_zCount_uid52_Divide_q(15 downto 8);
    rVStage_uid205_zCount_uid52_Divide_merged_bit_select_c <= vStagei_uid203_zCount_uid52_Divide_q(7 downto 0);

    -- vCount_uid206_zCount_uid52_Divide(LOGICAL,205)@0
    vCount_uid206_zCount_uid52_Divide_q <= "1" WHEN rVStage_uid205_zCount_uid52_Divide_merged_bit_select_b = zs_uid204_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid209_zCount_uid52_Divide(MUX,208)@0
    vStagei_uid209_zCount_uid52_Divide_s <= vCount_uid206_zCount_uid52_Divide_q;
    vStagei_uid209_zCount_uid52_Divide_combproc: PROCESS (vStagei_uid209_zCount_uid52_Divide_s, rVStage_uid205_zCount_uid52_Divide_merged_bit_select_b, rVStage_uid205_zCount_uid52_Divide_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid209_zCount_uid52_Divide_s) IS
            WHEN "0" => vStagei_uid209_zCount_uid52_Divide_q <= rVStage_uid205_zCount_uid52_Divide_merged_bit_select_b;
            WHEN "1" => vStagei_uid209_zCount_uid52_Divide_q <= rVStage_uid205_zCount_uid52_Divide_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid209_zCount_uid52_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid211_zCount_uid52_Divide_merged_bit_select(BITSELECT,840)@0
    rVStage_uid211_zCount_uid52_Divide_merged_bit_select_b <= vStagei_uid209_zCount_uid52_Divide_q(7 downto 4);
    rVStage_uid211_zCount_uid52_Divide_merged_bit_select_c <= vStagei_uid209_zCount_uid52_Divide_q(3 downto 0);

    -- vCount_uid212_zCount_uid52_Divide(LOGICAL,211)@0
    vCount_uid212_zCount_uid52_Divide_q <= "1" WHEN rVStage_uid211_zCount_uid52_Divide_merged_bit_select_b = zs_uid210_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid215_zCount_uid52_Divide(MUX,214)@0
    vStagei_uid215_zCount_uid52_Divide_s <= vCount_uid212_zCount_uid52_Divide_q;
    vStagei_uid215_zCount_uid52_Divide_combproc: PROCESS (vStagei_uid215_zCount_uid52_Divide_s, rVStage_uid211_zCount_uid52_Divide_merged_bit_select_b, rVStage_uid211_zCount_uid52_Divide_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid215_zCount_uid52_Divide_s) IS
            WHEN "0" => vStagei_uid215_zCount_uid52_Divide_q <= rVStage_uid211_zCount_uid52_Divide_merged_bit_select_b;
            WHEN "1" => vStagei_uid215_zCount_uid52_Divide_q <= rVStage_uid211_zCount_uid52_Divide_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid215_zCount_uid52_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid217_zCount_uid52_Divide_merged_bit_select(BITSELECT,841)@0
    rVStage_uid217_zCount_uid52_Divide_merged_bit_select_b <= vStagei_uid215_zCount_uid52_Divide_q(3 downto 2);
    rVStage_uid217_zCount_uid52_Divide_merged_bit_select_c <= vStagei_uid215_zCount_uid52_Divide_q(1 downto 0);

    -- vCount_uid218_zCount_uid52_Divide(LOGICAL,217)@0
    vCount_uid218_zCount_uid52_Divide_q <= "1" WHEN rVStage_uid217_zCount_uid52_Divide_merged_bit_select_b = zs_uid216_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid221_zCount_uid52_Divide(MUX,220)@0
    vStagei_uid221_zCount_uid52_Divide_s <= vCount_uid218_zCount_uid52_Divide_q;
    vStagei_uid221_zCount_uid52_Divide_combproc: PROCESS (vStagei_uid221_zCount_uid52_Divide_s, rVStage_uid217_zCount_uid52_Divide_merged_bit_select_b, rVStage_uid217_zCount_uid52_Divide_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid221_zCount_uid52_Divide_s) IS
            WHEN "0" => vStagei_uid221_zCount_uid52_Divide_q <= rVStage_uid217_zCount_uid52_Divide_merged_bit_select_b;
            WHEN "1" => vStagei_uid221_zCount_uid52_Divide_q <= rVStage_uid217_zCount_uid52_Divide_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid221_zCount_uid52_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid223_zCount_uid52_Divide(BITSELECT,222)@0
    rVStage_uid223_zCount_uid52_Divide_b <= vStagei_uid221_zCount_uid52_Divide_q(1 downto 1);

    -- vCount_uid224_zCount_uid52_Divide(LOGICAL,223)@0
    vCount_uid224_zCount_uid52_Divide_q <= "1" WHEN rVStage_uid223_zCount_uid52_Divide_b = GND_q ELSE "0";

    -- r_uid225_zCount_uid52_Divide(BITJOIN,224)@0
    r_uid225_zCount_uid52_Divide_q <= vCount_uid200_zCount_uid52_Divide_q & vCount_uid206_zCount_uid52_Divide_q & vCount_uid212_zCount_uid52_Divide_q & vCount_uid218_zCount_uid52_Divide_q & vCount_uid224_zCount_uid52_Divide_q;

    -- leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select(BITSELECT,842)@0
    leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_b <= r_uid225_zCount_uid52_Divide_q(4 downto 3);
    leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_c <= r_uid225_zCount_uid52_Divide_q(2 downto 1);
    leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_d <= r_uid225_zCount_uid52_Divide_q(0 downto 0);

    -- leftShiftStage2_uid578_normY_uid53_Divide(MUX,577)@0
    leftShiftStage2_uid578_normY_uid53_Divide_s <= leftShiftStageSel4Dto3_uid561_normY_uid53_Divide_merged_bit_select_d;
    leftShiftStage2_uid578_normY_uid53_Divide_combproc: PROCESS (leftShiftStage2_uid578_normY_uid53_Divide_s, leftShiftStage1_uid573_normY_uid53_Divide_q, leftShiftStage2Idx1_uid576_normY_uid53_Divide_q)
    BEGIN
        CASE (leftShiftStage2_uid578_normY_uid53_Divide_s) IS
            WHEN "0" => leftShiftStage2_uid578_normY_uid53_Divide_q <= leftShiftStage1_uid573_normY_uid53_Divide_q;
            WHEN "1" => leftShiftStage2_uid578_normY_uid53_Divide_q <= leftShiftStage2Idx1_uid576_normY_uid53_Divide_q;
            WHEN OTHERS => leftShiftStage2_uid578_normY_uid53_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- normYNoLeadOne_uid54_Divide(BITSELECT,53)@0
    normYNoLeadOne_uid54_Divide_in <= leftShiftStage2_uid578_normY_uid53_Divide_q(14 downto 0);
    normYNoLeadOne_uid54_Divide_b <= normYNoLeadOne_uid54_Divide_in(14 downto 0);

    -- yAddr_uid62_Divide_merged_bit_select(BITSELECT,832)@0
    yAddr_uid62_Divide_merged_bit_select_b <= normYNoLeadOne_uid54_Divide_b(14 downto 7);
    yAddr_uid62_Divide_merged_bit_select_c <= normYNoLeadOne_uid54_Divide_b(6 downto 0);

    -- memoryC4_uid240_invTabGen_lutmem(DUALMEM,777)@0 + 2
    -- in j@20000000
    memoryC4_uid240_invTabGen_lutmem_aa <= yAddr_uid62_Divide_merged_bit_select_b;
    memoryC4_uid240_invTabGen_lutmem_reset0 <= areset;
    memoryC4_uid240_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC4_uidA0ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC4_uid240_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC4_uid240_invTabGen_lutmem_aa,
        q_a => memoryC4_uid240_invTabGen_lutmem_ir
    );
    memoryC4_uid240_invTabGen_lutmem_r <= memoryC4_uid240_invTabGen_lutmem_ir(14 downto 0);

    -- redist10_yAddr_uid62_Divide_merged_bit_select_c_2(DELAY,866)
    redist10_yAddr_uid62_Divide_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid62_Divide_merged_bit_select_c, xout => redist10_yAddr_uid62_Divide_merged_bit_select_c_2_q, clk => clk, aclr => areset );

    -- prodXY_uid406_pT1_uid249_invPolyEval_cma(CHAINMULTADD,806)@2 + 2
    prodXY_uid406_pT1_uid249_invPolyEval_cma_reset <= areset;
    prodXY_uid406_pT1_uid249_invPolyEval_cma_ena0 <= '1';
    prodXY_uid406_pT1_uid249_invPolyEval_cma_ena1 <= prodXY_uid406_pT1_uid249_invPolyEval_cma_ena0;
    prodXY_uid406_pT1_uid249_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid406_pT1_uid249_invPolyEval_cma_a0(0),8));
    prodXY_uid406_pT1_uid249_invPolyEval_cma_p(0) <= prodXY_uid406_pT1_uid249_invPolyEval_cma_l(0) * prodXY_uid406_pT1_uid249_invPolyEval_cma_c0(0);
    prodXY_uid406_pT1_uid249_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid406_pT1_uid249_invPolyEval_cma_p(0),23);
    prodXY_uid406_pT1_uid249_invPolyEval_cma_w(0) <= prodXY_uid406_pT1_uid249_invPolyEval_cma_u(0);
    prodXY_uid406_pT1_uid249_invPolyEval_cma_x(0) <= prodXY_uid406_pT1_uid249_invPolyEval_cma_w(0);
    prodXY_uid406_pT1_uid249_invPolyEval_cma_y(0) <= prodXY_uid406_pT1_uid249_invPolyEval_cma_x(0);
    prodXY_uid406_pT1_uid249_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid406_pT1_uid249_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid406_pT1_uid249_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid406_pT1_uid249_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid406_pT1_uid249_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist10_yAddr_uid62_Divide_merged_bit_select_c_2_q),7);
                prodXY_uid406_pT1_uid249_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC4_uid240_invTabGen_lutmem_r),15);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid406_pT1_uid249_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid406_pT1_uid249_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid406_pT1_uid249_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid406_pT1_uid249_invPolyEval_cma_s(0) <= prodXY_uid406_pT1_uid249_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid406_pT1_uid249_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 22, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid406_pT1_uid249_invPolyEval_cma_s(0)(21 downto 0)), xout => prodXY_uid406_pT1_uid249_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid406_pT1_uid249_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid406_pT1_uid249_invPolyEval_cma_qq(21 downto 0));

    -- osig_uid407_pT1_uid249_invPolyEval(BITSELECT,406)@4
    osig_uid407_pT1_uid249_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid406_pT1_uid249_invPolyEval_cma_q(21 downto 5));

    -- highBBits_uid251_invPolyEval(BITSELECT,250)@4
    highBBits_uid251_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid407_pT1_uid249_invPolyEval_b(16 downto 1));

    -- redist6_yAddr_uid62_Divide_merged_bit_select_b_2(DELAY,862)
    redist6_yAddr_uid62_Divide_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid62_Divide_merged_bit_select_b, xout => redist6_yAddr_uid62_Divide_merged_bit_select_b_2_q, clk => clk, aclr => areset );

    -- memoryC3_uid237_invTabGen_lutmem(DUALMEM,776)@2 + 2
    -- in j@20000000
    memoryC3_uid237_invTabGen_lutmem_aa <= redist6_yAddr_uid62_Divide_merged_bit_select_b_2_q;
    memoryC3_uid237_invTabGen_lutmem_reset0 <= areset;
    memoryC3_uid237_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC3_uidA0ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid237_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC3_uid237_invTabGen_lutmem_aa,
        q_a => memoryC3_uid237_invTabGen_lutmem_ir
    );
    memoryC3_uid237_invTabGen_lutmem_r <= memoryC3_uid237_invTabGen_lutmem_ir(23 downto 0);

    -- s1sumAHighB_uid252_invPolyEval(ADD,251)@4
    s1sumAHighB_uid252_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => memoryC3_uid237_invTabGen_lutmem_r(23)) & memoryC3_uid237_invTabGen_lutmem_r));
    s1sumAHighB_uid252_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 16 => highBBits_uid251_invPolyEval_b(15)) & highBBits_uid251_invPolyEval_b));
    s1sumAHighB_uid252_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid252_invPolyEval_a) + SIGNED(s1sumAHighB_uid252_invPolyEval_b));
    s1sumAHighB_uid252_invPolyEval_q <= s1sumAHighB_uid252_invPolyEval_o(24 downto 0);

    -- lowRangeB_uid250_invPolyEval(BITSELECT,249)@4
    lowRangeB_uid250_invPolyEval_in <= osig_uid407_pT1_uid249_invPolyEval_b(0 downto 0);
    lowRangeB_uid250_invPolyEval_b <= lowRangeB_uid250_invPolyEval_in(0 downto 0);

    -- s1_uid253_invPolyEval(BITJOIN,252)@4
    s1_uid253_invPolyEval_q <= s1sumAHighB_uid252_invPolyEval_q & lowRangeB_uid250_invPolyEval_b;

    -- prodXY_uid409_pT2_uid255_invPolyEval_bs5(BITSELECT,787)@4
    prodXY_uid409_pT2_uid255_invPolyEval_bs5_b <= STD_LOGIC_VECTOR(s1_uid253_invPolyEval_q(25 downto 18));

    -- redist11_yAddr_uid62_Divide_merged_bit_select_c_4(DELAY,867)
    redist11_yAddr_uid62_Divide_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist10_yAddr_uid62_Divide_merged_bit_select_c_2_q, xout => redist11_yAddr_uid62_Divide_merged_bit_select_c_4_q, clk => clk, aclr => areset );

    -- prodXY_uid409_pT2_uid255_invPolyEval_im3(MULT,785)@4 + 2
    prodXY_uid409_pT2_uid255_invPolyEval_im3_pr <= SIGNED(signed(resize(UNSIGNED(prodXY_uid409_pT2_uid255_invPolyEval_im3_a0),8)) * SIGNED(prodXY_uid409_pT2_uid255_invPolyEval_im3_b0));
    prodXY_uid409_pT2_uid255_invPolyEval_im3_component: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid409_pT2_uid255_invPolyEval_im3_a0 <= (others => '0');
            prodXY_uid409_pT2_uid255_invPolyEval_im3_b0 <= (others => '0');
            prodXY_uid409_pT2_uid255_invPolyEval_im3_s1 <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            prodXY_uid409_pT2_uid255_invPolyEval_im3_a0 <= redist11_yAddr_uid62_Divide_merged_bit_select_c_4_q;
            prodXY_uid409_pT2_uid255_invPolyEval_im3_b0 <= STD_LOGIC_VECTOR(prodXY_uid409_pT2_uid255_invPolyEval_bs5_b);
            prodXY_uid409_pT2_uid255_invPolyEval_im3_s1 <= STD_LOGIC_VECTOR(resize(prodXY_uid409_pT2_uid255_invPolyEval_im3_pr,15));
        END IF;
    END PROCESS;
    prodXY_uid409_pT2_uid255_invPolyEval_im3_q <= prodXY_uid409_pT2_uid255_invPolyEval_im3_s1;

    -- prodXY_uid409_pT2_uid255_invPolyEval_align_7(BITSHIFT,789)@6
    prodXY_uid409_pT2_uid255_invPolyEval_align_7_qint <= prodXY_uid409_pT2_uid255_invPolyEval_im3_q & "000000000000000000";
    prodXY_uid409_pT2_uid255_invPolyEval_align_7_q <= prodXY_uid409_pT2_uid255_invPolyEval_align_7_qint(32 downto 0);

    -- prodXY_uid409_pT2_uid255_invPolyEval_bs2(BITSELECT,784)@4
    prodXY_uid409_pT2_uid255_invPolyEval_bs2_in <= s1_uid253_invPolyEval_q(17 downto 0);
    prodXY_uid409_pT2_uid255_invPolyEval_bs2_b <= prodXY_uid409_pT2_uid255_invPolyEval_bs2_in(17 downto 0);

    -- prodXY_uid409_pT2_uid255_invPolyEval_im0_cma(CHAINMULTADD,818)@4 + 2
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_reset <= areset;
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ena0 <= '1';
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ena1 <= prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ena0;
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_p(0) <= prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_a0(0) * prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_c0(0);
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_u(0) <= RESIZE(prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_p(0),28);
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_w(0) <= prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_u(0);
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_x(0) <= prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_w(0);
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_y(0) <= prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_x(0);
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_a0 <= (others => (others => '0'));
            prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ena0 = '1') THEN
                prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXY_uid409_pT2_uid255_invPolyEval_bs2_b),18);
                prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_c0(0) <= RESIZE(UNSIGNED(redist11_yAddr_uid62_Divide_merged_bit_select_c_4_q),10);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_ena1 = '1') THEN
                prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_s(0) <= prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_s(0)(27 downto 0)), xout => prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_qq, clk => clk, aclr => areset );
    prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_q <= STD_LOGIC_VECTOR(prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_qq(24 downto 0));

    -- prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0(ADD,791)@6
    prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000" & prodXY_uid409_pT2_uid255_invPolyEval_im0_cma_q));
    prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => prodXY_uid409_pT2_uid255_invPolyEval_align_7_q(32)) & prodXY_uid409_pT2_uid255_invPolyEval_align_7_q));
    prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_a) + SIGNED(prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_b));
    prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_q <= prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_o(33 downto 0);

    -- osig_uid410_pT2_uid255_invPolyEval(BITSELECT,409)@6
    osig_uid410_pT2_uid255_invPolyEval_in <= STD_LOGIC_VECTOR(prodXY_uid409_pT2_uid255_invPolyEval_result_add_0_0_q(32 downto 0));
    osig_uid410_pT2_uid255_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid410_pT2_uid255_invPolyEval_in(32 downto 8));

    -- highBBits_uid257_invPolyEval(BITSELECT,256)@6
    highBBits_uid257_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid410_pT2_uid255_invPolyEval_b(24 downto 1));

    -- redist7_yAddr_uid62_Divide_merged_bit_select_b_4(DELAY,863)
    redist7_yAddr_uid62_Divide_merged_bit_select_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist6_yAddr_uid62_Divide_merged_bit_select_b_2_q, xout => redist7_yAddr_uid62_Divide_merged_bit_select_b_4_q, clk => clk, aclr => areset );

    -- memoryC2_uid234_invTabGen_lutmem(DUALMEM,775)@4 + 2
    -- in j@20000000
    memoryC2_uid234_invTabGen_lutmem_aa <= redist7_yAddr_uid62_Divide_merged_bit_select_b_4_q;
    memoryC2_uid234_invTabGen_lutmem_reset0 <= areset;
    memoryC2_uid234_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 31,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC2_uidA0ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid234_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid234_invTabGen_lutmem_aa,
        q_a => memoryC2_uid234_invTabGen_lutmem_ir
    );
    memoryC2_uid234_invTabGen_lutmem_r <= memoryC2_uid234_invTabGen_lutmem_ir(30 downto 0);

    -- s2sumAHighB_uid258_invPolyEval(ADD,257)@6
    s2sumAHighB_uid258_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => memoryC2_uid234_invTabGen_lutmem_r(30)) & memoryC2_uid234_invTabGen_lutmem_r));
    s2sumAHighB_uid258_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 24 => highBBits_uid257_invPolyEval_b(23)) & highBBits_uid257_invPolyEval_b));
    s2sumAHighB_uid258_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid258_invPolyEval_a) + SIGNED(s2sumAHighB_uid258_invPolyEval_b));
    s2sumAHighB_uid258_invPolyEval_q <= s2sumAHighB_uid258_invPolyEval_o(31 downto 0);

    -- lowRangeB_uid256_invPolyEval(BITSELECT,255)@6
    lowRangeB_uid256_invPolyEval_in <= osig_uid410_pT2_uid255_invPolyEval_b(0 downto 0);
    lowRangeB_uid256_invPolyEval_b <= lowRangeB_uid256_invPolyEval_in(0 downto 0);

    -- s2_uid259_invPolyEval(BITJOIN,258)@6
    s2_uid259_invPolyEval_q <= s2sumAHighB_uid258_invPolyEval_q & lowRangeB_uid256_invPolyEval_b;

    -- topRangeY_uid435_pT3_uid261_invPolyEval_merged_bit_select(BITSELECT,843)@6
    topRangeY_uid435_pT3_uid261_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s2_uid259_invPolyEval_q(32 downto 15));
    topRangeY_uid435_pT3_uid261_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s2_uid259_invPolyEval_q(14 downto 0));

    -- aboveLeftY_mergedSignalTM_uid442_pT3_uid261_invPolyEval(BITJOIN,441)@6
    aboveLeftY_mergedSignalTM_uid442_pT3_uid261_invPolyEval_q <= topRangeY_uid435_pT3_uid261_invPolyEval_merged_bit_select_c & paddingX_uid379_finalMult_uid162_Sqrt1_q;

    -- redist12_yAddr_uid62_Divide_merged_bit_select_c_6(DELAY,868)
    redist12_yAddr_uid62_Divide_merged_bit_select_c_6 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist11_yAddr_uid62_Divide_merged_bit_select_c_4_q, xout => redist12_yAddr_uid62_Divide_merged_bit_select_c_6_q, clk => clk, aclr => areset );

    -- nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval(BITJOIN,428)@6
    nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q <= GND_q & redist12_yAddr_uid62_Divide_merged_bit_select_c_6_q;

    -- topRangeX_bottomExtension_uid431_pT3_uid261_invPolyEval(CONSTANT,430)
    topRangeX_bottomExtension_uid431_pT3_uid261_invPolyEval_q <= "0000000000";

    -- topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval(BITJOIN,432)@6
    topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q <= nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q & topRangeX_bottomExtension_uid431_pT3_uid261_invPolyEval_q;

    -- sm0_uid448_pT3_uid261_invPolyEval_cma(CHAINMULTADD,808)@6 + 2
    sm0_uid448_pT3_uid261_invPolyEval_cma_reset <= areset;
    sm0_uid448_pT3_uid261_invPolyEval_cma_ena0 <= '1';
    sm0_uid448_pT3_uid261_invPolyEval_cma_ena1 <= sm0_uid448_pT3_uid261_invPolyEval_cma_ena0;
    sm0_uid448_pT3_uid261_invPolyEval_cma_r(0) <= SIGNED(RESIZE(sm0_uid448_pT3_uid261_invPolyEval_cma_c0(0),19));
    sm0_uid448_pT3_uid261_invPolyEval_cma_p(0) <= sm0_uid448_pT3_uid261_invPolyEval_cma_a0(0) * sm0_uid448_pT3_uid261_invPolyEval_cma_r(0);
    sm0_uid448_pT3_uid261_invPolyEval_cma_u(0) <= RESIZE(sm0_uid448_pT3_uid261_invPolyEval_cma_p(0),37);
    sm0_uid448_pT3_uid261_invPolyEval_cma_w(0) <= sm0_uid448_pT3_uid261_invPolyEval_cma_u(0);
    sm0_uid448_pT3_uid261_invPolyEval_cma_x(0) <= sm0_uid448_pT3_uid261_invPolyEval_cma_w(0);
    sm0_uid448_pT3_uid261_invPolyEval_cma_y(0) <= sm0_uid448_pT3_uid261_invPolyEval_cma_x(0);
    sm0_uid448_pT3_uid261_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid448_pT3_uid261_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid448_pT3_uid261_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid448_pT3_uid261_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid448_pT3_uid261_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q),18);
                sm0_uid448_pT3_uid261_invPolyEval_cma_c0(0) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid442_pT3_uid261_invPolyEval_q),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid448_pT3_uid261_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid448_pT3_uid261_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid448_pT3_uid261_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid448_pT3_uid261_invPolyEval_cma_s(0) <= sm0_uid448_pT3_uid261_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid448_pT3_uid261_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid448_pT3_uid261_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid448_pT3_uid261_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid448_pT3_uid261_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid448_pT3_uid261_invPolyEval_cma_qq(35 downto 0));

    -- highBBits_uid450_pT3_uid261_invPolyEval(BITSELECT,449)@8
    highBBits_uid450_pT3_uid261_invPolyEval_b <= STD_LOGIC_VECTOR(sm0_uid448_pT3_uid261_invPolyEval_cma_q(35 downto 18));

    -- sm0_uid447_pT3_uid261_invPolyEval_cma(CHAINMULTADD,807)@6 + 2
    sm0_uid447_pT3_uid261_invPolyEval_cma_reset <= areset;
    sm0_uid447_pT3_uid261_invPolyEval_cma_ena0 <= '1';
    sm0_uid447_pT3_uid261_invPolyEval_cma_ena1 <= sm0_uid447_pT3_uid261_invPolyEval_cma_ena0;
    sm0_uid447_pT3_uid261_invPolyEval_cma_p(0) <= sm0_uid447_pT3_uid261_invPolyEval_cma_a0(0) * sm0_uid447_pT3_uid261_invPolyEval_cma_c0(0);
    sm0_uid447_pT3_uid261_invPolyEval_cma_u(0) <= RESIZE(sm0_uid447_pT3_uid261_invPolyEval_cma_p(0),36);
    sm0_uid447_pT3_uid261_invPolyEval_cma_w(0) <= sm0_uid447_pT3_uid261_invPolyEval_cma_u(0);
    sm0_uid447_pT3_uid261_invPolyEval_cma_x(0) <= sm0_uid447_pT3_uid261_invPolyEval_cma_w(0);
    sm0_uid447_pT3_uid261_invPolyEval_cma_y(0) <= sm0_uid447_pT3_uid261_invPolyEval_cma_x(0);
    sm0_uid447_pT3_uid261_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid447_pT3_uid261_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid447_pT3_uid261_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid447_pT3_uid261_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid447_pT3_uid261_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q),18);
                sm0_uid447_pT3_uid261_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid435_pT3_uid261_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid447_pT3_uid261_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid447_pT3_uid261_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid447_pT3_uid261_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid447_pT3_uid261_invPolyEval_cma_s(0) <= sm0_uid447_pT3_uid261_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid447_pT3_uid261_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid447_pT3_uid261_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid447_pT3_uid261_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid447_pT3_uid261_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid447_pT3_uid261_invPolyEval_cma_qq(35 downto 0));

    -- lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval(ADD,450)@8
    lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => sm0_uid447_pT3_uid261_invPolyEval_cma_q(35)) & sm0_uid447_pT3_uid261_invPolyEval_cma_q));
    lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 18 => highBBits_uid450_pT3_uid261_invPolyEval_b(17)) & highBBits_uid450_pT3_uid261_invPolyEval_b));
    lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_b));
    lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_q <= lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_o(36 downto 0);

    -- lowRangeB_uid449_pT3_uid261_invPolyEval(BITSELECT,448)@8
    lowRangeB_uid449_pT3_uid261_invPolyEval_in <= sm0_uid448_pT3_uid261_invPolyEval_cma_q(17 downto 0);
    lowRangeB_uid449_pT3_uid261_invPolyEval_b <= lowRangeB_uid449_pT3_uid261_invPolyEval_in(17 downto 0);

    -- lev1_a0_uid452_pT3_uid261_invPolyEval(BITJOIN,451)@8
    lev1_a0_uid452_pT3_uid261_invPolyEval_q <= lev1_a0sumAHighB_uid451_pT3_uid261_invPolyEval_q & lowRangeB_uid449_pT3_uid261_invPolyEval_b;

    -- os_uid453_pT3_uid261_invPolyEval(BITSELECT,452)@8
    os_uid453_pT3_uid261_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid452_pT3_uid261_invPolyEval_q(52 downto 0));
    os_uid453_pT3_uid261_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid453_pT3_uid261_invPolyEval_in(52 downto 20));

    -- highBBits_uid263_invPolyEval(BITSELECT,262)@8
    highBBits_uid263_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid453_pT3_uid261_invPolyEval_b(32 downto 1));

    -- redist8_yAddr_uid62_Divide_merged_bit_select_b_6(DELAY,864)
    redist8_yAddr_uid62_Divide_merged_bit_select_b_6 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist7_yAddr_uid62_Divide_merged_bit_select_b_4_q, xout => redist8_yAddr_uid62_Divide_merged_bit_select_b_6_q, clk => clk, aclr => areset );

    -- memoryC1_uid231_invTabGen_lutmem(DUALMEM,774)@6 + 2
    -- in j@20000000
    memoryC1_uid231_invTabGen_lutmem_aa <= redist8_yAddr_uid62_Divide_merged_bit_select_b_6_q;
    memoryC1_uid231_invTabGen_lutmem_reset0 <= areset;
    memoryC1_uid231_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 39,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC1_uidA0ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid231_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid231_invTabGen_lutmem_aa,
        q_a => memoryC1_uid231_invTabGen_lutmem_ir
    );
    memoryC1_uid231_invTabGen_lutmem_r <= memoryC1_uid231_invTabGen_lutmem_ir(38 downto 0);

    -- s3sumAHighB_uid264_invPolyEval(ADD,263)@8
    s3sumAHighB_uid264_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 39 => memoryC1_uid231_invTabGen_lutmem_r(38)) & memoryC1_uid231_invTabGen_lutmem_r));
    s3sumAHighB_uid264_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 32 => highBBits_uid263_invPolyEval_b(31)) & highBBits_uid263_invPolyEval_b));
    s3sumAHighB_uid264_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid264_invPolyEval_a) + SIGNED(s3sumAHighB_uid264_invPolyEval_b));
    s3sumAHighB_uid264_invPolyEval_q <= s3sumAHighB_uid264_invPolyEval_o(39 downto 0);

    -- lowRangeB_uid262_invPolyEval(BITSELECT,261)@8
    lowRangeB_uid262_invPolyEval_in <= os_uid453_pT3_uid261_invPolyEval_b(0 downto 0);
    lowRangeB_uid262_invPolyEval_b <= lowRangeB_uid262_invPolyEval_in(0 downto 0);

    -- s3_uid265_invPolyEval(BITJOIN,264)@8
    s3_uid265_invPolyEval_q <= s3sumAHighB_uid264_invPolyEval_q & lowRangeB_uid262_invPolyEval_b;

    -- topRangeY_uid478_pT4_uid267_invPolyEval_merged_bit_select(BITSELECT,844)@8
    topRangeY_uid478_pT4_uid267_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s3_uid265_invPolyEval_q(40 downto 14));
    topRangeY_uid478_pT4_uid267_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s3_uid265_invPolyEval_q(13 downto 0));

    -- aboveLeftY_mergedSignalTM_uid485_pT4_uid267_invPolyEval(BITJOIN,484)@8
    aboveLeftY_mergedSignalTM_uid485_pT4_uid267_invPolyEval_q <= topRangeY_uid478_pT4_uid267_invPolyEval_merged_bit_select_c & zs_uid210_zCount_uid52_Divide_q;

    -- redist13_topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q_2(DELAY,869)
    redist13_topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q_2 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q, xout => redist13_topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q_2_q, clk => clk, aclr => areset );

    -- sm0_uid491_pT4_uid267_invPolyEval_cma(CHAINMULTADD,810)@8 + 2
    sm0_uid491_pT4_uid267_invPolyEval_cma_reset <= areset;
    sm0_uid491_pT4_uid267_invPolyEval_cma_ena0 <= '1';
    sm0_uid491_pT4_uid267_invPolyEval_cma_ena1 <= sm0_uid491_pT4_uid267_invPolyEval_cma_ena0;
    sm0_uid491_pT4_uid267_invPolyEval_cma_r(0) <= SIGNED(RESIZE(sm0_uid491_pT4_uid267_invPolyEval_cma_c0(0),19));
    sm0_uid491_pT4_uid267_invPolyEval_cma_p(0) <= sm0_uid491_pT4_uid267_invPolyEval_cma_a0(0) * sm0_uid491_pT4_uid267_invPolyEval_cma_r(0);
    sm0_uid491_pT4_uid267_invPolyEval_cma_u(0) <= RESIZE(sm0_uid491_pT4_uid267_invPolyEval_cma_p(0),37);
    sm0_uid491_pT4_uid267_invPolyEval_cma_w(0) <= sm0_uid491_pT4_uid267_invPolyEval_cma_u(0);
    sm0_uid491_pT4_uid267_invPolyEval_cma_x(0) <= sm0_uid491_pT4_uid267_invPolyEval_cma_w(0);
    sm0_uid491_pT4_uid267_invPolyEval_cma_y(0) <= sm0_uid491_pT4_uid267_invPolyEval_cma_x(0);
    sm0_uid491_pT4_uid267_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid491_pT4_uid267_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid491_pT4_uid267_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid491_pT4_uid267_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid491_pT4_uid267_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(redist13_topRangeX_mergedSignalTM_uid433_pT3_uid261_invPolyEval_q_2_q),18);
                sm0_uid491_pT4_uid267_invPolyEval_cma_c0(0) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid485_pT4_uid267_invPolyEval_q),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid491_pT4_uid267_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid491_pT4_uid267_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid491_pT4_uid267_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid491_pT4_uid267_invPolyEval_cma_s(0) <= sm0_uid491_pT4_uid267_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid491_pT4_uid267_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid491_pT4_uid267_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid491_pT4_uid267_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid491_pT4_uid267_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid491_pT4_uid267_invPolyEval_cma_qq(35 downto 0));

    -- highBBits_uid493_pT4_uid267_invPolyEval(BITSELECT,492)@10
    highBBits_uid493_pT4_uid267_invPolyEval_b <= STD_LOGIC_VECTOR(sm0_uid491_pT4_uid267_invPolyEval_cma_q(35 downto 9));

    -- redist14_nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q_2(DELAY,870)
    redist14_nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q, xout => redist14_nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q_2_q, clk => clk, aclr => areset );

    -- topRangeX_bottomExtension_uid474_pT4_uid267_invPolyEval(CONSTANT,473)
    topRangeX_bottomExtension_uid474_pT4_uid267_invPolyEval_q <= "0000000000000000000";

    -- topRangeX_mergedSignalTM_uid476_pT4_uid267_invPolyEval(BITJOIN,475)@8
    topRangeX_mergedSignalTM_uid476_pT4_uid267_invPolyEval_q <= redist14_nx_mergedSignalTM_uid429_pT3_uid261_invPolyEval_q_2_q & topRangeX_bottomExtension_uid474_pT4_uid267_invPolyEval_q;

    -- sm0_uid490_pT4_uid267_invPolyEval_cma(CHAINMULTADD,809)@8 + 2
    sm0_uid490_pT4_uid267_invPolyEval_cma_reset <= areset;
    sm0_uid490_pT4_uid267_invPolyEval_cma_ena0 <= '1';
    sm0_uid490_pT4_uid267_invPolyEval_cma_ena1 <= sm0_uid490_pT4_uid267_invPolyEval_cma_ena0;
    sm0_uid490_pT4_uid267_invPolyEval_cma_p(0) <= sm0_uid490_pT4_uid267_invPolyEval_cma_a0(0) * sm0_uid490_pT4_uid267_invPolyEval_cma_c0(0);
    sm0_uid490_pT4_uid267_invPolyEval_cma_u(0) <= RESIZE(sm0_uid490_pT4_uid267_invPolyEval_cma_p(0),54);
    sm0_uid490_pT4_uid267_invPolyEval_cma_w(0) <= sm0_uid490_pT4_uid267_invPolyEval_cma_u(0);
    sm0_uid490_pT4_uid267_invPolyEval_cma_x(0) <= sm0_uid490_pT4_uid267_invPolyEval_cma_w(0);
    sm0_uid490_pT4_uid267_invPolyEval_cma_y(0) <= sm0_uid490_pT4_uid267_invPolyEval_cma_x(0);
    sm0_uid490_pT4_uid267_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid490_pT4_uid267_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid490_pT4_uid267_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid490_pT4_uid267_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid490_pT4_uid267_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid476_pT4_uid267_invPolyEval_q),27);
                sm0_uid490_pT4_uid267_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid478_pT4_uid267_invPolyEval_merged_bit_select_b),27);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid490_pT4_uid267_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid490_pT4_uid267_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid490_pT4_uid267_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid490_pT4_uid267_invPolyEval_cma_s(0) <= sm0_uid490_pT4_uid267_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid490_pT4_uid267_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 54, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid490_pT4_uid267_invPolyEval_cma_s(0)(53 downto 0)), xout => sm0_uid490_pT4_uid267_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid490_pT4_uid267_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid490_pT4_uid267_invPolyEval_cma_qq(53 downto 0));

    -- lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval(ADD,493)@10
    lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((54 downto 54 => sm0_uid490_pT4_uid267_invPolyEval_cma_q(53)) & sm0_uid490_pT4_uid267_invPolyEval_cma_q));
    lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((54 downto 27 => highBBits_uid493_pT4_uid267_invPolyEval_b(26)) & highBBits_uid493_pT4_uid267_invPolyEval_b));
    lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_b));
    lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_q <= lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_o(54 downto 0);

    -- lowRangeB_uid492_pT4_uid267_invPolyEval(BITSELECT,491)@10
    lowRangeB_uid492_pT4_uid267_invPolyEval_in <= sm0_uid491_pT4_uid267_invPolyEval_cma_q(8 downto 0);
    lowRangeB_uid492_pT4_uid267_invPolyEval_b <= lowRangeB_uid492_pT4_uid267_invPolyEval_in(8 downto 0);

    -- lev1_a0_uid495_pT4_uid267_invPolyEval(BITJOIN,494)@10
    lev1_a0_uid495_pT4_uid267_invPolyEval_q <= lev1_a0sumAHighB_uid494_pT4_uid267_invPolyEval_q & lowRangeB_uid492_pT4_uid267_invPolyEval_b;

    -- os_uid496_pT4_uid267_invPolyEval(BITSELECT,495)@10
    os_uid496_pT4_uid267_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid495_pT4_uid267_invPolyEval_q(61 downto 0));
    os_uid496_pT4_uid267_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid496_pT4_uid267_invPolyEval_in(61 downto 20));

    -- highBBits_uid269_invPolyEval(BITSELECT,268)@10
    highBBits_uid269_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid496_pT4_uid267_invPolyEval_b(41 downto 2));

    -- redist9_yAddr_uid62_Divide_merged_bit_select_b_8(DELAY,865)
    redist9_yAddr_uid62_Divide_merged_bit_select_b_8 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist8_yAddr_uid62_Divide_merged_bit_select_b_6_q, xout => redist9_yAddr_uid62_Divide_merged_bit_select_b_8_q, clk => clk, aclr => areset );

    -- memoryC0_uid228_invTabGen_lutmem(DUALMEM,773)@8 + 2
    -- in j@20000000
    memoryC0_uid228_invTabGen_lutmem_aa <= redist9_yAddr_uid62_Divide_merged_bit_select_b_8_q;
    memoryC0_uid228_invTabGen_lutmem_reset0 <= areset;
    memoryC0_uid228_invTabGen_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 8,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC0_uidA1ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid228_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid228_invTabGen_lutmem_aa,
        q_a => memoryC0_uid228_invTabGen_lutmem_ir
    );
    memoryC0_uid228_invTabGen_lutmem_r <= memoryC0_uid228_invTabGen_lutmem_ir(7 downto 0);

    -- memoryC0_uid227_invTabGen_lutmem(DUALMEM,772)@8 + 2
    -- in j@20000000
    memoryC0_uid227_invTabGen_lutmem_aa <= redist9_yAddr_uid62_Divide_merged_bit_select_b_8_q;
    memoryC0_uid227_invTabGen_lutmem_reset0 <= areset;
    memoryC0_uid227_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC0_uidA0ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid227_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid227_invTabGen_lutmem_aa,
        q_a => memoryC0_uid227_invTabGen_lutmem_ir
    );
    memoryC0_uid227_invTabGen_lutmem_r <= memoryC0_uid227_invTabGen_lutmem_ir(39 downto 0);

    -- os_uid229_invTabGen(BITJOIN,228)@10
    os_uid229_invTabGen_q <= memoryC0_uid228_invTabGen_lutmem_r & memoryC0_uid227_invTabGen_lutmem_r;

    -- s4sumAHighB_uid270_invPolyEval(ADD,269)@10
    s4sumAHighB_uid270_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => os_uid229_invTabGen_q(47)) & os_uid229_invTabGen_q));
    s4sumAHighB_uid270_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 40 => highBBits_uid269_invPolyEval_b(39)) & highBBits_uid269_invPolyEval_b));
    s4sumAHighB_uid270_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s4sumAHighB_uid270_invPolyEval_a) + SIGNED(s4sumAHighB_uid270_invPolyEval_b));
    s4sumAHighB_uid270_invPolyEval_q <= s4sumAHighB_uid270_invPolyEval_o(48 downto 0);

    -- lowRangeB_uid268_invPolyEval(BITSELECT,267)@10
    lowRangeB_uid268_invPolyEval_in <= os_uid496_pT4_uid267_invPolyEval_b(1 downto 0);
    lowRangeB_uid268_invPolyEval_b <= lowRangeB_uid268_invPolyEval_in(1 downto 0);

    -- s4_uid271_invPolyEval(BITJOIN,270)@10
    s4_uid271_invPolyEval_q <= s4sumAHighB_uid270_invPolyEval_q & lowRangeB_uid268_invPolyEval_b;

    -- fxpInverseRes_uid65_Divide(BITSELECT,64)@10
    fxpInverseRes_uid65_Divide_in <= s4_uid271_invPolyEval_q(48 downto 0);
    fxpInverseRes_uid65_Divide_b <= fxpInverseRes_uid65_Divide_in(48 downto 6);

    -- paddingY_uid55_Divide(CONSTANT,54)
    paddingY_uid55_Divide_q <= "000000000000000";

    -- updatedY_uid56_Divide(BITJOIN,55)@1
    updatedY_uid56_Divide_q <= GND_q & paddingY_uid55_Divide_q;

    -- redist29_normYNoLeadOne_uid54_Divide_b_1(DELAY,885)
    redist29_normYNoLeadOne_uid54_Divide_b_1 : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYNoLeadOne_uid54_Divide_b, xout => redist29_normYNoLeadOne_uid54_Divide_b_1_q, clk => clk, aclr => areset );

    -- normYIsOneC2_uid55_Divide(LOGICAL,56)@1
    normYIsOneC2_uid55_Divide_a <= STD_LOGIC_VECTOR("0" & redist29_normYNoLeadOne_uid54_Divide_b_1_q);
    normYIsOneC2_uid55_Divide_q <= "1" WHEN normYIsOneC2_uid55_Divide_a = updatedY_uid56_Divide_q ELSE "0";

    -- normYIsOneC2_uid58_Divide(BITSELECT,57)@0
    normYIsOneC2_uid58_Divide_b <= STD_LOGIC_VECTOR(leftShiftStage2_uid578_normY_uid53_Divide_q(15 downto 15));

    -- redist28_normYIsOneC2_uid58_Divide_b_1(DELAY,884)
    redist28_normYIsOneC2_uid58_Divide_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYIsOneC2_uid58_Divide_b, xout => redist28_normYIsOneC2_uid58_Divide_b_1_q, clk => clk, aclr => areset );

    -- normYIsOne_uid59_Divide(LOGICAL,58)@1 + 1
    normYIsOne_uid59_Divide_qi <= redist28_normYIsOneC2_uid58_Divide_b_1_q and normYIsOneC2_uid55_Divide_q;
    normYIsOne_uid59_Divide_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYIsOne_uid59_Divide_qi, xout => normYIsOne_uid59_Divide_q, clk => clk, aclr => areset );

    -- redist27_normYIsOne_uid59_Divide_q_9(DELAY,883)
    redist27_normYIsOne_uid59_Divide_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYIsOne_uid59_Divide_q, xout => redist27_normYIsOne_uid59_Divide_q_9_q, clk => clk, aclr => areset );

    -- invResPostOneHandling2_uid67_Divide(MUX,66)@10
    invResPostOneHandling2_uid67_Divide_s <= redist27_normYIsOne_uid59_Divide_q_9_q;
    invResPostOneHandling2_uid67_Divide_combproc: PROCESS (invResPostOneHandling2_uid67_Divide_s, fxpInverseRes_uid65_Divide_b, oneInvRes_uid66_Divide_q)
    BEGIN
        CASE (invResPostOneHandling2_uid67_Divide_s) IS
            WHEN "0" => invResPostOneHandling2_uid67_Divide_q <= fxpInverseRes_uid65_Divide_b;
            WHEN "1" => invResPostOneHandling2_uid67_Divide_q <= oneInvRes_uid66_Divide_q;
            WHEN OTHERS => invResPostOneHandling2_uid67_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodXInvY_uid70_Divide_bs2_merged_bit_select(BITSELECT,833)@10
    prodXInvY_uid70_Divide_bs2_merged_bit_select_b <= invResPostOneHandling2_uid67_Divide_q(26 downto 0);
    prodXInvY_uid70_Divide_bs2_merged_bit_select_c <= invResPostOneHandling2_uid67_Divide_q(42 downto 27);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bias(CONSTANT,822)
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bias_q <= "01";

    -- redist32_GPIn3_in_2_input_data_7_notEnable(LOGICAL,933)
    redist32_GPIn3_in_2_input_data_7_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist32_GPIn3_in_2_input_data_7_nor(LOGICAL,934)
    redist32_GPIn3_in_2_input_data_7_nor_q <= not (redist32_GPIn3_in_2_input_data_7_notEnable_q or redist32_GPIn3_in_2_input_data_7_sticky_ena_q);

    -- redist32_GPIn3_in_2_input_data_7_mem_last(CONSTANT,930)
    redist32_GPIn3_in_2_input_data_7_mem_last_q <= "0100";

    -- redist32_GPIn3_in_2_input_data_7_cmp(LOGICAL,931)
    redist32_GPIn3_in_2_input_data_7_cmp_b <= STD_LOGIC_VECTOR("0" & redist32_GPIn3_in_2_input_data_7_rdcnt_q);
    redist32_GPIn3_in_2_input_data_7_cmp_q <= "1" WHEN redist32_GPIn3_in_2_input_data_7_mem_last_q = redist32_GPIn3_in_2_input_data_7_cmp_b ELSE "0";

    -- redist32_GPIn3_in_2_input_data_7_cmpReg(REG,932)
    redist32_GPIn3_in_2_input_data_7_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist32_GPIn3_in_2_input_data_7_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist32_GPIn3_in_2_input_data_7_cmpReg_q <= STD_LOGIC_VECTOR(redist32_GPIn3_in_2_input_data_7_cmp_q);
        END IF;
    END PROCESS;

    -- redist32_GPIn3_in_2_input_data_7_sticky_ena(REG,935)
    redist32_GPIn3_in_2_input_data_7_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist32_GPIn3_in_2_input_data_7_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist32_GPIn3_in_2_input_data_7_nor_q = "1") THEN
                redist32_GPIn3_in_2_input_data_7_sticky_ena_q <= STD_LOGIC_VECTOR(redist32_GPIn3_in_2_input_data_7_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist32_GPIn3_in_2_input_data_7_enaAnd(LOGICAL,936)
    redist32_GPIn3_in_2_input_data_7_enaAnd_q <= redist32_GPIn3_in_2_input_data_7_sticky_ena_q and VCC_q;

    -- redist32_GPIn3_in_2_input_data_7_rdcnt(COUNTER,928)
    -- low=0, high=5, step=1, init=0
    redist32_GPIn3_in_2_input_data_7_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist32_GPIn3_in_2_input_data_7_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist32_GPIn3_in_2_input_data_7_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist32_GPIn3_in_2_input_data_7_rdcnt_i = TO_UNSIGNED(4, 3)) THEN
                redist32_GPIn3_in_2_input_data_7_rdcnt_eq <= '1';
            ELSE
                redist32_GPIn3_in_2_input_data_7_rdcnt_eq <= '0';
            END IF;
            IF (redist32_GPIn3_in_2_input_data_7_rdcnt_eq = '1') THEN
                redist32_GPIn3_in_2_input_data_7_rdcnt_i <= redist32_GPIn3_in_2_input_data_7_rdcnt_i + 3;
            ELSE
                redist32_GPIn3_in_2_input_data_7_rdcnt_i <= redist32_GPIn3_in_2_input_data_7_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist32_GPIn3_in_2_input_data_7_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist32_GPIn3_in_2_input_data_7_rdcnt_i, 3)));

    -- redist32_GPIn3_in_2_input_data_7_wraddr(REG,929)
    redist32_GPIn3_in_2_input_data_7_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist32_GPIn3_in_2_input_data_7_wraddr_q <= "101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist32_GPIn3_in_2_input_data_7_wraddr_q <= STD_LOGIC_VECTOR(redist32_GPIn3_in_2_input_data_7_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist32_GPIn3_in_2_input_data_7_mem(DUALMEM,927)
    redist32_GPIn3_in_2_input_data_7_mem_ia <= STD_LOGIC_VECTOR(in_2_input_data);
    redist32_GPIn3_in_2_input_data_7_mem_aa <= redist32_GPIn3_in_2_input_data_7_wraddr_q;
    redist32_GPIn3_in_2_input_data_7_mem_ab <= redist32_GPIn3_in_2_input_data_7_rdcnt_q;
    redist32_GPIn3_in_2_input_data_7_mem_reset0 <= areset;
    redist32_GPIn3_in_2_input_data_7_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 3,
        numwords_a => 6,
        width_b => 16,
        widthad_b => 3,
        numwords_b => 6,
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
        clocken1 => redist32_GPIn3_in_2_input_data_7_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist32_GPIn3_in_2_input_data_7_mem_reset0,
        clock1 => clk,
        address_a => redist32_GPIn3_in_2_input_data_7_mem_aa,
        data_a => redist32_GPIn3_in_2_input_data_7_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist32_GPIn3_in_2_input_data_7_mem_ab,
        q_b => redist32_GPIn3_in_2_input_data_7_mem_iq
    );
    redist32_GPIn3_in_2_input_data_7_mem_q <= redist32_GPIn3_in_2_input_data_7_mem_iq(15 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_PreShift_0(BITSHIFT,48)@7
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_PreShift_0_qint <= GND_q & "000000000000000";
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_PreShift_0_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_PreShift_0_qint(15 downto 0);

    -- redist30_GPIn3_in_1_valid_7(DELAY,886)
    redist30_GPIn3_in_1_valid_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_valid, xout => redist30_GPIn3_in_1_valid_7_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x(MUX,17)@7
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_s <= redist30_GPIn3_in_1_valid_7_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_combproc: PROCESS (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_s, DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_PreShift_0_q, redist32_GPIn3_in_2_input_data_7_mem_q)
    BEGIN
        CASE (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_PreShift_0_q;
            WHEN "1" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_q <= redist32_GPIn3_in_2_input_data_7_mem_q;
            WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist34_GPIn3_in_4_reset_8(DELAY,890)
    redist34_GPIn3_in_4_reset_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_4_reset, xout => redist34_GPIn3_in_4_reset_8_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_PreShift_0(BITSHIFT,47)@7
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_PreShift_0_qint <= GND_q & "000000000000000";
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_PreShift_0_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_PreShift_0_qint(15 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x(MUX,16)@7
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_s <= redist30_GPIn3_in_1_valid_7_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_combproc: PROCESS (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_s, DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_PreShift_0_q, redist32_GPIn3_in_2_input_data_7_mem_q)
    BEGIN
        CASE (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_PreShift_0_q;
            WHEN "1" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_q <= redist32_GPIn3_in_2_input_data_7_mem_q;
            WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged(ADD,547)@7 + 1
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_a <= STD_LOGIC_VECTOR("0000000000000000" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux2_x_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_i <= "0" & STD_LOGIC_VECTOR("000000000000000" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux3_x_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist34_GPIn3_in_4_reset_8_q = "1") THEN
                DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_o <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_i;
            ELSE
                DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_a) + UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_o(30 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_trunc(BITSHIFT,828)@8
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_trunc_qint <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Mux1_x_merged_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_trunc_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_trunc_qint(30 downto 4);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add(ADD,829)@8
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_trunc_q));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 2 => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bias_q(1)) & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bias_q));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_a) + SIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_b));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_o(28 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_shift(BITSHIFT,830)@8
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_shift_qint <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_add_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_shift_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_shift_qint(28 downto 1);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_bs(BITSELECT,831)@8
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_bs_in <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_shift_q(26 downto 0);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_bs_b <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_bs_in(26 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_sel_x(BITSELECT,3)@8
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_sel_x_b <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_rnd_x_bs_b(25 downto 0);

    -- Mult1_cma(CHAINMULTADD,805)@8 + 2
    Mult1_cma_reset <= areset;
    Mult1_cma_ena0 <= '1';
    Mult1_cma_ena1 <= Mult1_cma_ena0;
    Mult1_cma_p(0) <= Mult1_cma_a0(0) * Mult1_cma_c0(0);
    Mult1_cma_u(0) <= RESIZE(Mult1_cma_p(0),52);
    Mult1_cma_w(0) <= Mult1_cma_u(0);
    Mult1_cma_x(0) <= Mult1_cma_w(0);
    Mult1_cma_y(0) <= Mult1_cma_x(0);
    Mult1_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult1_cma_a0 <= (others => (others => '0'));
            Mult1_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult1_cma_ena0 = '1') THEN
                Mult1_cma_a0(0) <= RESIZE(UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_sel_x_b),26);
                Mult1_cma_c0(0) <= RESIZE(UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc1_Convert3_sel_x_b),26);
            END IF;
        END IF;
    END PROCESS;
    Mult1_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult1_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult1_cma_ena1 = '1') THEN
                Mult1_cma_s(0) <= Mult1_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    Mult1_cma_delay : dspba_delay
    GENERIC MAP ( width => 52, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(Mult1_cma_s(0)(51 downto 0)), xout => Mult1_cma_qq, clk => clk, aclr => areset );
    Mult1_cma_q <= STD_LOGIC_VECTOR(Mult1_cma_qq(51 downto 0));

    -- Mult1_PostCast_primWireOut_rnd_sel(BITSELECT,550)@10
    Mult1_PostCast_primWireOut_rnd_sel_b <= Mult1_cma_q(51 downto 10);

    -- prodXInvY_uid70_Divide_bs1_merged_bit_select(BITSELECT,854)@10
    prodXInvY_uid70_Divide_bs1_merged_bit_select_b <= Mult1_PostCast_primWireOut_rnd_sel_b(26 downto 0);
    prodXInvY_uid70_Divide_bs1_merged_bit_select_c <= Mult1_PostCast_primWireOut_rnd_sel_b(41 downto 27);

    -- prodXInvY_uid70_Divide_ma6_cma(CHAINMULTADD,820)@10 + 2
    prodXInvY_uid70_Divide_ma6_cma_reset <= areset;
    prodXInvY_uid70_Divide_ma6_cma_ena0 <= '1';
    prodXInvY_uid70_Divide_ma6_cma_ena1 <= prodXInvY_uid70_Divide_ma6_cma_ena0;
    prodXInvY_uid70_Divide_ma6_cma_p(0) <= prodXInvY_uid70_Divide_ma6_cma_a0(0) * prodXInvY_uid70_Divide_ma6_cma_c0(0);
    prodXInvY_uid70_Divide_ma6_cma_p(1) <= prodXInvY_uid70_Divide_ma6_cma_a0(1) * prodXInvY_uid70_Divide_ma6_cma_c0(1);
    prodXInvY_uid70_Divide_ma6_cma_u(0) <= RESIZE(prodXInvY_uid70_Divide_ma6_cma_p(0),44);
    prodXInvY_uid70_Divide_ma6_cma_u(1) <= RESIZE(prodXInvY_uid70_Divide_ma6_cma_p(1),44);
    prodXInvY_uid70_Divide_ma6_cma_w(0) <= prodXInvY_uid70_Divide_ma6_cma_u(0) + prodXInvY_uid70_Divide_ma6_cma_u(1);
    prodXInvY_uid70_Divide_ma6_cma_x(0) <= prodXInvY_uid70_Divide_ma6_cma_w(0);
    prodXInvY_uid70_Divide_ma6_cma_y(0) <= prodXInvY_uid70_Divide_ma6_cma_x(0);
    prodXInvY_uid70_Divide_ma6_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid70_Divide_ma6_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid70_Divide_ma6_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid70_Divide_ma6_cma_ena0 = '1') THEN
                prodXInvY_uid70_Divide_ma6_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid70_Divide_bs1_merged_bit_select_c),16);
                prodXInvY_uid70_Divide_ma6_cma_a0(1) <= RESIZE(UNSIGNED(prodXInvY_uid70_Divide_bs2_merged_bit_select_c),16);
                prodXInvY_uid70_Divide_ma6_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid70_Divide_bs2_merged_bit_select_b),27);
                prodXInvY_uid70_Divide_ma6_cma_c0(1) <= RESIZE(UNSIGNED(prodXInvY_uid70_Divide_bs1_merged_bit_select_b),27);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid70_Divide_ma6_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid70_Divide_ma6_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid70_Divide_ma6_cma_ena1 = '1') THEN
                prodXInvY_uid70_Divide_ma6_cma_s(0) <= prodXInvY_uid70_Divide_ma6_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid70_Divide_ma6_cma_delay : dspba_delay
    GENERIC MAP ( width => 44, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid70_Divide_ma6_cma_s(0)(43 downto 0)), xout => prodXInvY_uid70_Divide_ma6_cma_qq, clk => clk, aclr => areset );
    prodXInvY_uid70_Divide_ma6_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid70_Divide_ma6_cma_qq(43 downto 0));

    -- prodXInvY_uid70_Divide_align_12(BITSHIFT,591)@12
    prodXInvY_uid70_Divide_align_12_qint <= prodXInvY_uid70_Divide_ma6_cma_q & "000000000000000000000000000";
    prodXInvY_uid70_Divide_align_12_q <= prodXInvY_uid70_Divide_align_12_qint(70 downto 0);

    -- prodXInvY_uid70_Divide_im3_cma(CHAINMULTADD,815)@10 + 2
    prodXInvY_uid70_Divide_im3_cma_reset <= areset;
    prodXInvY_uid70_Divide_im3_cma_ena0 <= '1';
    prodXInvY_uid70_Divide_im3_cma_ena1 <= prodXInvY_uid70_Divide_im3_cma_ena0;
    prodXInvY_uid70_Divide_im3_cma_p(0) <= prodXInvY_uid70_Divide_im3_cma_a0(0) * prodXInvY_uid70_Divide_im3_cma_c0(0);
    prodXInvY_uid70_Divide_im3_cma_u(0) <= RESIZE(prodXInvY_uid70_Divide_im3_cma_p(0),31);
    prodXInvY_uid70_Divide_im3_cma_w(0) <= prodXInvY_uid70_Divide_im3_cma_u(0);
    prodXInvY_uid70_Divide_im3_cma_x(0) <= prodXInvY_uid70_Divide_im3_cma_w(0);
    prodXInvY_uid70_Divide_im3_cma_y(0) <= prodXInvY_uid70_Divide_im3_cma_x(0);
    prodXInvY_uid70_Divide_im3_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid70_Divide_im3_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid70_Divide_im3_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid70_Divide_im3_cma_ena0 = '1') THEN
                prodXInvY_uid70_Divide_im3_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid70_Divide_bs2_merged_bit_select_c),16);
                prodXInvY_uid70_Divide_im3_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid70_Divide_bs1_merged_bit_select_c),15);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid70_Divide_im3_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid70_Divide_im3_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid70_Divide_im3_cma_ena1 = '1') THEN
                prodXInvY_uid70_Divide_im3_cma_s(0) <= prodXInvY_uid70_Divide_im3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid70_Divide_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 31, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid70_Divide_im3_cma_s(0)(30 downto 0)), xout => prodXInvY_uid70_Divide_im3_cma_qq, clk => clk, aclr => areset );
    prodXInvY_uid70_Divide_im3_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid70_Divide_im3_cma_qq(30 downto 0));

    -- prodXInvY_uid70_Divide_im0_cma(CHAINMULTADD,814)@10 + 2
    prodXInvY_uid70_Divide_im0_cma_reset <= areset;
    prodXInvY_uid70_Divide_im0_cma_ena0 <= '1';
    prodXInvY_uid70_Divide_im0_cma_ena1 <= prodXInvY_uid70_Divide_im0_cma_ena0;
    prodXInvY_uid70_Divide_im0_cma_p(0) <= prodXInvY_uid70_Divide_im0_cma_a0(0) * prodXInvY_uid70_Divide_im0_cma_c0(0);
    prodXInvY_uid70_Divide_im0_cma_u(0) <= RESIZE(prodXInvY_uid70_Divide_im0_cma_p(0),54);
    prodXInvY_uid70_Divide_im0_cma_w(0) <= prodXInvY_uid70_Divide_im0_cma_u(0);
    prodXInvY_uid70_Divide_im0_cma_x(0) <= prodXInvY_uid70_Divide_im0_cma_w(0);
    prodXInvY_uid70_Divide_im0_cma_y(0) <= prodXInvY_uid70_Divide_im0_cma_x(0);
    prodXInvY_uid70_Divide_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid70_Divide_im0_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid70_Divide_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid70_Divide_im0_cma_ena0 = '1') THEN
                prodXInvY_uid70_Divide_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid70_Divide_bs1_merged_bit_select_b),27);
                prodXInvY_uid70_Divide_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid70_Divide_bs2_merged_bit_select_b),27);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid70_Divide_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid70_Divide_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid70_Divide_im0_cma_ena1 = '1') THEN
                prodXInvY_uid70_Divide_im0_cma_s(0) <= prodXInvY_uid70_Divide_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid70_Divide_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 54, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid70_Divide_im0_cma_s(0)(53 downto 0)), xout => prodXInvY_uid70_Divide_im0_cma_qq, clk => clk, aclr => areset );
    prodXInvY_uid70_Divide_im0_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid70_Divide_im0_cma_qq(53 downto 0));

    -- prodXInvY_uid70_Divide_join_11(BITJOIN,590)@12
    prodXInvY_uid70_Divide_join_11_q <= prodXInvY_uid70_Divide_im3_cma_q & prodXInvY_uid70_Divide_im0_cma_q;

    -- prodXInvY_uid70_Divide_result_add_0_0(ADD,593)@12
    prodXInvY_uid70_Divide_result_add_0_0_a <= STD_LOGIC_VECTOR("0" & prodXInvY_uid70_Divide_join_11_q);
    prodXInvY_uid70_Divide_result_add_0_0_b <= STD_LOGIC_VECTOR("000000000000000" & prodXInvY_uid70_Divide_align_12_q);
    prodXInvY_uid70_Divide_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(prodXInvY_uid70_Divide_result_add_0_0_a) + UNSIGNED(prodXInvY_uid70_Divide_result_add_0_0_b));
    prodXInvY_uid70_Divide_result_add_0_0_q <= prodXInvY_uid70_Divide_result_add_0_0_o(85 downto 0);

    -- rightShiftStage0_uid607_prodPostRightShift_uid71_Divide(MUX,606)@12
    rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_s <= rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_b;
    rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_combproc: PROCESS (rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_s, prodXInvY_uid70_Divide_result_add_0_0_q, rightShiftStage0Idx1_uid599_prodPostRightShift_uid71_Divide_q, rightShiftStage0Idx2_uid602_prodPostRightShift_uid71_Divide_q, rightShiftStage0Idx3_uid605_prodPostRightShift_uid71_Divide_q)
    BEGIN
        CASE (rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_s) IS
            WHEN "00" => rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q <= prodXInvY_uid70_Divide_result_add_0_0_q(84 downto 0);
            WHEN "01" => rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q <= rightShiftStage0Idx1_uid599_prodPostRightShift_uid71_Divide_q;
            WHEN "10" => rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q <= rightShiftStage0Idx2_uid602_prodPostRightShift_uid71_Divide_q;
            WHEN "11" => rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q <= rightShiftStage0Idx3_uid605_prodPostRightShift_uid71_Divide_q;
            WHEN OTHERS => rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid618_prodPostRightShift_uid71_Divide(MUX,617)@12
    rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_s <= rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_c;
    rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_combproc: PROCESS (rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_s, rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q, rightShiftStage1Idx1_uid610_prodPostRightShift_uid71_Divide_q, rightShiftStage1Idx2_uid613_prodPostRightShift_uid71_Divide_q, rightShiftStage1Idx3_uid616_prodPostRightShift_uid71_Divide_q)
    BEGIN
        CASE (rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_s) IS
            WHEN "00" => rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q <= rightShiftStage0_uid607_prodPostRightShift_uid71_Divide_q;
            WHEN "01" => rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q <= rightShiftStage1Idx1_uid610_prodPostRightShift_uid71_Divide_q;
            WHEN "10" => rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q <= rightShiftStage1Idx2_uid613_prodPostRightShift_uid71_Divide_q;
            WHEN "11" => rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q <= rightShiftStage1Idx3_uid616_prodPostRightShift_uid71_Divide_q;
            WHEN OTHERS => rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_notEnable(LOGICAL,914)
    redist17_r_uid225_zCount_uid52_Divide_q_12_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_nor(LOGICAL,915)
    redist17_r_uid225_zCount_uid52_Divide_q_12_nor_q <= not (redist17_r_uid225_zCount_uid52_Divide_q_12_notEnable_q or redist17_r_uid225_zCount_uid52_Divide_q_12_sticky_ena_q);

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_mem_last(CONSTANT,911)
    redist17_r_uid225_zCount_uid52_Divide_q_12_mem_last_q <= "01000";

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_cmp(LOGICAL,912)
    redist17_r_uid225_zCount_uid52_Divide_q_12_cmp_b <= STD_LOGIC_VECTOR("0" & redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_q);
    redist17_r_uid225_zCount_uid52_Divide_q_12_cmp_q <= "1" WHEN redist17_r_uid225_zCount_uid52_Divide_q_12_mem_last_q = redist17_r_uid225_zCount_uid52_Divide_q_12_cmp_b ELSE "0";

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_cmpReg(REG,913)
    redist17_r_uid225_zCount_uid52_Divide_q_12_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_r_uid225_zCount_uid52_Divide_q_12_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist17_r_uid225_zCount_uid52_Divide_q_12_cmpReg_q <= STD_LOGIC_VECTOR(redist17_r_uid225_zCount_uid52_Divide_q_12_cmp_q);
        END IF;
    END PROCESS;

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_sticky_ena(REG,916)
    redist17_r_uid225_zCount_uid52_Divide_q_12_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_r_uid225_zCount_uid52_Divide_q_12_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist17_r_uid225_zCount_uid52_Divide_q_12_nor_q = "1") THEN
                redist17_r_uid225_zCount_uid52_Divide_q_12_sticky_ena_q <= STD_LOGIC_VECTOR(redist17_r_uid225_zCount_uid52_Divide_q_12_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_enaAnd(LOGICAL,917)
    redist17_r_uid225_zCount_uid52_Divide_q_12_enaAnd_q <= redist17_r_uid225_zCount_uid52_Divide_q_12_sticky_ena_q and VCC_q;

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt(COUNTER,909)
    -- low=0, high=9, step=1, init=0
    redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i = TO_UNSIGNED(8, 4)) THEN
                redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_eq <= '1';
            ELSE
                redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_eq <= '0';
            END IF;
            IF (redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_eq = '1') THEN
                redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i <= redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i + 7;
            ELSE
                redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i <= redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_i, 4)));

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_wraddr(REG,910)
    redist17_r_uid225_zCount_uid52_Divide_q_12_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_r_uid225_zCount_uid52_Divide_q_12_wraddr_q <= "1001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist17_r_uid225_zCount_uid52_Divide_q_12_wraddr_q <= STD_LOGIC_VECTOR(redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_mem(DUALMEM,908)
    redist17_r_uid225_zCount_uid52_Divide_q_12_mem_ia <= STD_LOGIC_VECTOR(r_uid225_zCount_uid52_Divide_q);
    redist17_r_uid225_zCount_uid52_Divide_q_12_mem_aa <= redist17_r_uid225_zCount_uid52_Divide_q_12_wraddr_q;
    redist17_r_uid225_zCount_uid52_Divide_q_12_mem_ab <= redist17_r_uid225_zCount_uid52_Divide_q_12_rdcnt_q;
    redist17_r_uid225_zCount_uid52_Divide_q_12_mem_reset0 <= areset;
    redist17_r_uid225_zCount_uid52_Divide_q_12_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 5,
        widthad_a => 4,
        numwords_a => 10,
        width_b => 5,
        widthad_b => 4,
        numwords_b => 10,
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
        clocken1 => redist17_r_uid225_zCount_uid52_Divide_q_12_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist17_r_uid225_zCount_uid52_Divide_q_12_mem_reset0,
        clock1 => clk,
        address_a => redist17_r_uid225_zCount_uid52_Divide_q_12_mem_aa,
        data_a => redist17_r_uid225_zCount_uid52_Divide_q_12_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist17_r_uid225_zCount_uid52_Divide_q_12_mem_ab,
        q_b => redist17_r_uid225_zCount_uid52_Divide_q_12_mem_iq
    );
    redist17_r_uid225_zCount_uid52_Divide_q_12_mem_q <= redist17_r_uid225_zCount_uid52_Divide_q_12_mem_iq(4 downto 0);

    -- redist17_r_uid225_zCount_uid52_Divide_q_12_outputreg(DELAY,907)
    redist17_r_uid225_zCount_uid52_Divide_q_12_outputreg : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist17_r_uid225_zCount_uid52_Divide_q_12_mem_q, xout => redist17_r_uid225_zCount_uid52_Divide_q_12_outputreg_q, clk => clk, aclr => areset );

    -- cWOut_uid68_Divide(CONSTANT,67)
    cWOut_uid68_Divide_q <= "1111";

    -- rShiftCount_uid69_Divide(SUB,68)@12
    rShiftCount_uid69_Divide_a <= STD_LOGIC_VECTOR("00" & cWOut_uid68_Divide_q);
    rShiftCount_uid69_Divide_b <= STD_LOGIC_VECTOR("0" & redist17_r_uid225_zCount_uid52_Divide_q_12_outputreg_q);
    rShiftCount_uid69_Divide_o <= STD_LOGIC_VECTOR(UNSIGNED(rShiftCount_uid69_Divide_a) - UNSIGNED(rShiftCount_uid69_Divide_b));
    rShiftCount_uid69_Divide_q <= rShiftCount_uid69_Divide_o(5 downto 0);

    -- rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select(BITSELECT,834)@12
    rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_b <= rShiftCount_uid69_Divide_q(5 downto 4);
    rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_c <= rShiftCount_uid69_Divide_q(3 downto 2);
    rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_d <= rShiftCount_uid69_Divide_q(1 downto 0);

    -- rightShiftStage2_uid629_prodPostRightShift_uid71_Divide(MUX,628)@12
    rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_s <= rightShiftStageSel5Dto4_uid606_prodPostRightShift_uid71_Divide_merged_bit_select_d;
    rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_combproc: PROCESS (rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_s, rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q, rightShiftStage2Idx1_uid621_prodPostRightShift_uid71_Divide_q, rightShiftStage2Idx2_uid624_prodPostRightShift_uid71_Divide_q, rightShiftStage2Idx3_uid627_prodPostRightShift_uid71_Divide_q)
    BEGIN
        CASE (rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_s) IS
            WHEN "00" => rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_q <= rightShiftStage1_uid618_prodPostRightShift_uid71_Divide_q;
            WHEN "01" => rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_q <= rightShiftStage2Idx1_uid621_prodPostRightShift_uid71_Divide_q;
            WHEN "10" => rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_q <= rightShiftStage2Idx2_uid624_prodPostRightShift_uid71_Divide_q;
            WHEN "11" => rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_q <= rightShiftStage2Idx3_uid627_prodPostRightShift_uid71_Divide_q;
            WHEN OTHERS => rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodPostRightShiftPost_uid72_Divide(BITSELECT,71)@12
    prodPostRightShiftPost_uid72_Divide_in <= rightShiftStage2_uid629_prodPostRightShift_uid71_Divide_q(83 downto 0);
    prodPostRightShiftPost_uid72_Divide_b <= prodPostRightShiftPost_uid72_Divide_in(83 downto 41);

    -- prodPostRightShiftPostRnd_uid77_Divide(ADD,76)@12
    prodPostRightShiftPostRnd_uid77_Divide_a <= STD_LOGIC_VECTOR("0" & prodPostRightShiftPost_uid72_Divide_b);
    prodPostRightShiftPostRnd_uid77_Divide_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000000000000" & addOp2_uid76_Divide_q);
    prodPostRightShiftPostRnd_uid77_Divide_o <= STD_LOGIC_VECTOR(UNSIGNED(prodPostRightShiftPostRnd_uid77_Divide_a) + UNSIGNED(prodPostRightShiftPostRnd_uid77_Divide_b));
    prodPostRightShiftPostRnd_uid77_Divide_q <= prodPostRightShiftPostRnd_uid77_Divide_o(43 downto 0);

    -- prodPostRightShiftPostRndRange_uid78_Divide(BITSELECT,77)@12
    prodPostRightShiftPostRndRange_uid78_Divide_in <= prodPostRightShiftPostRnd_uid77_Divide_q(42 downto 0);
    prodPostRightShiftPostRndRange_uid78_Divide_b <= prodPostRightShiftPostRndRange_uid78_Divide_in(42 downto 1);

    -- redist25_prodPostRightShiftPostRndRange_uid78_Divide_b_1(DELAY,881)
    redist25_prodPostRightShiftPostRndRange_uid78_Divide_b_1 : dspba_delay
    GENERIC MAP ( width => 42, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => prodPostRightShiftPostRndRange_uid78_Divide_b, xout => redist25_prodPostRightShiftPostRndRange_uid78_Divide_b_1_q, clk => clk, aclr => areset );

    -- yIsZero_uid60_Divide(LOGICAL,59)@0 + 1
    yIsZero_uid60_Divide_b <= STD_LOGIC_VECTOR("000000000000000" & GND_q);
    yIsZero_uid60_Divide_qi <= "1" WHEN in_3_count = yIsZero_uid60_Divide_b ELSE "0";
    yIsZero_uid60_Divide_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yIsZero_uid60_Divide_qi, xout => yIsZero_uid60_Divide_q, clk => clk, aclr => areset );

    -- redist26_yIsZero_uid60_Divide_q_13(DELAY,882)
    redist26_yIsZero_uid60_Divide_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 12, reset_kind => "ASYNC" )
    PORT MAP ( xin => yIsZero_uid60_Divide_q, xout => redist26_yIsZero_uid60_Divide_q_13_q, clk => clk, aclr => areset );

    -- resFinal_uid80_Divide(MUX,79)@13
    resFinal_uid80_Divide_s <= redist26_yIsZero_uid60_Divide_q_13_q;
    resFinal_uid80_Divide_combproc: PROCESS (resFinal_uid80_Divide_s, redist25_prodPostRightShiftPostRndRange_uid78_Divide_b_1_q, cstValOvf_uid79_Divide_q)
    BEGIN
        CASE (resFinal_uid80_Divide_s) IS
            WHEN "0" => resFinal_uid80_Divide_q <= redist25_prodPostRightShiftPostRndRange_uid78_Divide_b_1_q;
            WHEN "1" => resFinal_uid80_Divide_q <= cstValOvf_uid79_Divide_q;
            WHEN OTHERS => resFinal_uid80_Divide_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- Convert3_sel_x(BITSELECT,5)@13
    Convert3_sel_x_b <= resFinal_uid80_Divide_q(9 downto 0);

    -- redist33_GPIn3_in_2_input_data_10_notEnable(LOGICAL,941)
    redist33_GPIn3_in_2_input_data_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist33_GPIn3_in_2_input_data_10_nor(LOGICAL,942)
    redist33_GPIn3_in_2_input_data_10_nor_q <= not (redist33_GPIn3_in_2_input_data_10_notEnable_q or redist33_GPIn3_in_2_input_data_10_sticky_ena_q);

    -- redist33_GPIn3_in_2_input_data_10_cmpReg(REG,940)
    redist33_GPIn3_in_2_input_data_10_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist33_GPIn3_in_2_input_data_10_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist33_GPIn3_in_2_input_data_10_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist33_GPIn3_in_2_input_data_10_sticky_ena(REG,943)
    redist33_GPIn3_in_2_input_data_10_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist33_GPIn3_in_2_input_data_10_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist33_GPIn3_in_2_input_data_10_nor_q = "1") THEN
                redist33_GPIn3_in_2_input_data_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist33_GPIn3_in_2_input_data_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist33_GPIn3_in_2_input_data_10_enaAnd(LOGICAL,944)
    redist33_GPIn3_in_2_input_data_10_enaAnd_q <= redist33_GPIn3_in_2_input_data_10_sticky_ena_q and VCC_q;

    -- redist33_GPIn3_in_2_input_data_10_rdcnt(COUNTER,938)
    -- low=0, high=1, step=1, init=0
    redist33_GPIn3_in_2_input_data_10_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist33_GPIn3_in_2_input_data_10_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist33_GPIn3_in_2_input_data_10_rdcnt_i <= redist33_GPIn3_in_2_input_data_10_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist33_GPIn3_in_2_input_data_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist33_GPIn3_in_2_input_data_10_rdcnt_i, 1)));

    -- redist33_GPIn3_in_2_input_data_10_wraddr(REG,939)
    redist33_GPIn3_in_2_input_data_10_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist33_GPIn3_in_2_input_data_10_wraddr_q <= "1";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist33_GPIn3_in_2_input_data_10_wraddr_q <= STD_LOGIC_VECTOR(redist33_GPIn3_in_2_input_data_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist33_GPIn3_in_2_input_data_10_mem(DUALMEM,937)
    redist33_GPIn3_in_2_input_data_10_mem_ia <= STD_LOGIC_VECTOR(redist32_GPIn3_in_2_input_data_7_mem_q);
    redist33_GPIn3_in_2_input_data_10_mem_aa <= redist33_GPIn3_in_2_input_data_10_wraddr_q;
    redist33_GPIn3_in_2_input_data_10_mem_ab <= redist33_GPIn3_in_2_input_data_10_rdcnt_q;
    redist33_GPIn3_in_2_input_data_10_mem_reset0 <= areset;
    redist33_GPIn3_in_2_input_data_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 16,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist33_GPIn3_in_2_input_data_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist33_GPIn3_in_2_input_data_10_mem_reset0,
        clock1 => clk,
        address_a => redist33_GPIn3_in_2_input_data_10_mem_aa,
        data_a => redist33_GPIn3_in_2_input_data_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist33_GPIn3_in_2_input_data_10_mem_ab,
        q_b => redist33_GPIn3_in_2_input_data_10_mem_iq
    );
    redist33_GPIn3_in_2_input_data_10_mem_q <= redist33_GPIn3_in_2_input_data_10_mem_iq(15 downto 0);

    -- Mult_cma(CHAINMULTADD,804)@10 + 2
    Mult_cma_reset <= areset;
    Mult_cma_ena0 <= '1';
    Mult_cma_ena1 <= Mult_cma_ena0;
    Mult_cma_p(0) <= Mult_cma_a0(0) * Mult_cma_c0(0);
    Mult_cma_u(0) <= RESIZE(Mult_cma_p(0),32);
    Mult_cma_w(0) <= Mult_cma_u(0);
    Mult_cma_x(0) <= Mult_cma_w(0);
    Mult_cma_y(0) <= Mult_cma_x(0);
    Mult_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult_cma_a0 <= (others => (others => '0'));
            Mult_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult_cma_ena0 = '1') THEN
                Mult_cma_a0(0) <= RESIZE(UNSIGNED(redist33_GPIn3_in_2_input_data_10_mem_q),16);
                Mult_cma_c0(0) <= RESIZE(UNSIGNED(redist33_GPIn3_in_2_input_data_10_mem_q),16);
            END IF;
        END IF;
    END PROCESS;
    Mult_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult_cma_ena1 = '1') THEN
                Mult_cma_s(0) <= Mult_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    Mult_cma_delay : dspba_delay
    GENERIC MAP ( width => 32, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(Mult_cma_s(0)(31 downto 0)), xout => Mult_cma_qq, clk => clk, aclr => areset );
    Mult_cma_q <= STD_LOGIC_VECTOR(Mult_cma_qq(31 downto 0));

    -- Mult_PostCast_primWireOut_rnd_sel(BITSELECT,551)@12
    Mult_PostCast_primWireOut_rnd_sel_b <= Mult_cma_q(31 downto 10);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_PreShift_0(BITSHIFT,46)@12
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_PreShift_0_qint <= GND_q & "00000000000000000000";
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_PreShift_0_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_PreShift_0_qint(20 downto 0);

    -- redist31_GPIn3_in_1_valid_12(DELAY,887)
    redist31_GPIn3_in_1_valid_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist30_GPIn3_in_1_valid_7_q, xout => redist31_GPIn3_in_1_valid_12_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x(MUX,10)@12
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_s <= redist31_GPIn3_in_1_valid_12_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_combproc: PROCESS (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_s, DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_PreShift_0_q, Mult_PostCast_primWireOut_rnd_sel_b)
    BEGIN
        CASE (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_q <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_PreShift_0_q);
            WHEN "1" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_q <= Mult_PostCast_primWireOut_rnd_sel_b;
            WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist35_GPIn3_in_4_reset_13(DELAY,891)
    redist35_GPIn3_in_4_reset_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist34_GPIn3_in_4_reset_8_q, xout => redist35_GPIn3_in_4_reset_13_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_PreShift_0(BITSHIFT,45)@12
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_PreShift_0_qint <= GND_q & "00000000000000000000";
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_PreShift_0_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_PreShift_0_qint(20 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x(MUX,9)@12
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_s <= redist31_GPIn3_in_1_valid_12_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_combproc: PROCESS (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_s, DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_PreShift_0_q, Mult_PostCast_primWireOut_rnd_sel_b)
    BEGIN
        CASE (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_q <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_PreShift_0_q);
            WHEN "1" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_q <= Mult_PostCast_primWireOut_rnd_sel_b;
            WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged(ADD,546)@12 + 1
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_a <= STD_LOGIC_VECTOR("000000000000000" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux2_x_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_i <= "0" & STD_LOGIC_VECTOR("00000000000000" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux3_x_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist35_GPIn3_in_4_reset_13_q = "1") THEN
                DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_o <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_i;
            ELSE
                DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_a) + UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_o(35 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_trunc(BITSHIFT,823)@13
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_trunc_qint <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Add_x_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Mux1_x_merged_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_trunc_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_trunc_qint(35 downto 9);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add(ADD,824)@13
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_trunc_q));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 2 => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bias_q(1)) & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bias_q));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_a) + SIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_b));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_o(28 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_shift(BITSHIFT,825)@13
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_shift_qint <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_add_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_shift_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_shift_qint(28 downto 1);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bs(BITSELECT,826)@13
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bs_in <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_shift_q(26 downto 0);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bs_b <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bs_in(26 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_sel_x(BITSELECT,2)@13
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_sel_x_b <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_rnd_x_bs_b(25 downto 0);

    -- Sub(SUB,42)@13
    Sub_a <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_acc0_Convert3_sel_x_b;
    Sub_b <= STD_LOGIC_VECTOR("0000000000000000" & Convert3_sel_x_b);
    Sub_o <= STD_LOGIC_VECTOR(UNSIGNED(Sub_a) - UNSIGNED(Sub_b));
    Sub_q <= Sub_o(25 downto 0);

    -- prodXInvY_uid102_Divide1_bs4(BITSELECT,660)@13
    prodXInvY_uid102_Divide1_bs4_in <= STD_LOGIC_VECTOR(Sub_q(17 downto 0));
    prodXInvY_uid102_Divide1_bs4_b <= STD_LOGIC_VECTOR(prodXInvY_uid102_Divide1_bs4_in(17 downto 0));

    -- prodXInvY_uid102_Divide1_bjA5(BITJOIN,661)@13
    prodXInvY_uid102_Divide1_bjA5_q <= GND_q & prodXInvY_uid102_Divide1_bs4_b;

    -- oneInvRes_uid98_Divide1(CONSTANT,97)
    oneInvRes_uid98_Divide1_q <= "100000000000000000000000000000000";

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_notEnable(LOGICAL,923)
    redist24_normYNoLeadOne_uid86_Divide1_b_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_nor(LOGICAL,924)
    redist24_normYNoLeadOne_uid86_Divide1_b_4_nor_q <= not (redist24_normYNoLeadOne_uid86_Divide1_b_4_notEnable_q or redist24_normYNoLeadOne_uid86_Divide1_b_4_sticky_ena_q);

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_cmpReg(REG,922)
    redist24_normYNoLeadOne_uid86_Divide1_b_4_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist24_normYNoLeadOne_uid86_Divide1_b_4_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist24_normYNoLeadOne_uid86_Divide1_b_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_sticky_ena(REG,925)
    redist24_normYNoLeadOne_uid86_Divide1_b_4_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist24_normYNoLeadOne_uid86_Divide1_b_4_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist24_normYNoLeadOne_uid86_Divide1_b_4_nor_q = "1") THEN
                redist24_normYNoLeadOne_uid86_Divide1_b_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist24_normYNoLeadOne_uid86_Divide1_b_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_enaAnd(LOGICAL,926)
    redist24_normYNoLeadOne_uid86_Divide1_b_4_enaAnd_q <= redist24_normYNoLeadOne_uid86_Divide1_b_4_sticky_ena_q and VCC_q;

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt(COUNTER,920)
    -- low=0, high=1, step=1, init=0
    redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_i <= redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_i, 1)));

    -- leftShiftStage2Idx1Rng1_uid652_normY_uid85_Divide1(BITSELECT,651)@1
    leftShiftStage2Idx1Rng1_uid652_normY_uid85_Divide1_in <= leftShiftStage1_uid650_normY_uid85_Divide1_q(14 downto 0);
    leftShiftStage2Idx1Rng1_uid652_normY_uid85_Divide1_b <= leftShiftStage2Idx1Rng1_uid652_normY_uid85_Divide1_in(14 downto 0);

    -- leftShiftStage2Idx1_uid653_normY_uid85_Divide1(BITJOIN,652)@1
    leftShiftStage2Idx1_uid653_normY_uid85_Divide1_q <= leftShiftStage2Idx1Rng1_uid652_normY_uid85_Divide1_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid647_normY_uid85_Divide1(BITSELECT,646)@1
    leftShiftStage1Idx3Rng6_uid647_normY_uid85_Divide1_in <= leftShiftStage0_uid639_normY_uid85_Divide1_q(9 downto 0);
    leftShiftStage1Idx3Rng6_uid647_normY_uid85_Divide1_b <= leftShiftStage1Idx3Rng6_uid647_normY_uid85_Divide1_in(9 downto 0);

    -- leftShiftStage1Idx3_uid648_normY_uid85_Divide1(BITJOIN,647)@1
    leftShiftStage1Idx3_uid648_normY_uid85_Divide1_q <= leftShiftStage1Idx3Rng6_uid647_normY_uid85_Divide1_b & leftShiftStage1Idx3Pad6_uid569_normY_uid53_Divide_q;

    -- leftShiftStage1Idx2Rng4_uid644_normY_uid85_Divide1(BITSELECT,643)@1
    leftShiftStage1Idx2Rng4_uid644_normY_uid85_Divide1_in <= leftShiftStage0_uid639_normY_uid85_Divide1_q(11 downto 0);
    leftShiftStage1Idx2Rng4_uid644_normY_uid85_Divide1_b <= leftShiftStage1Idx2Rng4_uid644_normY_uid85_Divide1_in(11 downto 0);

    -- leftShiftStage1Idx2_uid645_normY_uid85_Divide1(BITJOIN,644)@1
    leftShiftStage1Idx2_uid645_normY_uid85_Divide1_q <= leftShiftStage1Idx2Rng4_uid644_normY_uid85_Divide1_b & zs_uid210_zCount_uid52_Divide_q;

    -- leftShiftStage1Idx1Rng2_uid641_normY_uid85_Divide1(BITSELECT,640)@1
    leftShiftStage1Idx1Rng2_uid641_normY_uid85_Divide1_in <= leftShiftStage0_uid639_normY_uid85_Divide1_q(13 downto 0);
    leftShiftStage1Idx1Rng2_uid641_normY_uid85_Divide1_b <= leftShiftStage1Idx1Rng2_uid641_normY_uid85_Divide1_in(13 downto 0);

    -- leftShiftStage1Idx1_uid642_normY_uid85_Divide1(BITJOIN,641)@1
    leftShiftStage1Idx1_uid642_normY_uid85_Divide1_q <= leftShiftStage1Idx1Rng2_uid641_normY_uid85_Divide1_b & zs_uid216_zCount_uid52_Divide_q;

    -- leftShiftStage0Idx1Rng8_uid634_normY_uid85_Divide1(BITSELECT,633)@1
    leftShiftStage0Idx1Rng8_uid634_normY_uid85_Divide1_in <= redist37_Sub1_PostCast_primWireOut_sel_x_b_1_q(7 downto 0);
    leftShiftStage0Idx1Rng8_uid634_normY_uid85_Divide1_b <= leftShiftStage0Idx1Rng8_uid634_normY_uid85_Divide1_in(7 downto 0);

    -- leftShiftStage0Idx1_uid635_normY_uid85_Divide1(BITJOIN,634)@1
    leftShiftStage0Idx1_uid635_normY_uid85_Divide1_q <= leftShiftStage0Idx1Rng8_uid634_normY_uid85_Divide1_b & zs_uid204_zCount_uid52_Divide_q;

    -- Sub1(SUB,43)@0
    Sub1_a <= STD_LOGIC_VECTOR("0" & in_3_count);
    Sub1_b <= STD_LOGIC_VECTOR("0000000000000000" & VCC_q);
    Sub1_o <= STD_LOGIC_VECTOR(UNSIGNED(Sub1_a) - UNSIGNED(Sub1_b));
    Sub1_q <= Sub1_o(16 downto 0);

    -- Sub1_PostCast_primWireOut_sel_x(BITSELECT,24)@0
    Sub1_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(Sub1_q(15 downto 0));

    -- redist37_Sub1_PostCast_primWireOut_sel_x_b_1(DELAY,893)
    redist37_Sub1_PostCast_primWireOut_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Sub1_PostCast_primWireOut_sel_x_b, xout => redist37_Sub1_PostCast_primWireOut_sel_x_b_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0_uid639_normY_uid85_Divide1(MUX,638)@1
    leftShiftStage0_uid639_normY_uid85_Divide1_s <= leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_b;
    leftShiftStage0_uid639_normY_uid85_Divide1_combproc: PROCESS (leftShiftStage0_uid639_normY_uid85_Divide1_s, redist37_Sub1_PostCast_primWireOut_sel_x_b_1_q, leftShiftStage0Idx1_uid635_normY_uid85_Divide1_q, zs_uid198_zCount_uid52_Divide_q)
    BEGIN
        CASE (leftShiftStage0_uid639_normY_uid85_Divide1_s) IS
            WHEN "00" => leftShiftStage0_uid639_normY_uid85_Divide1_q <= redist37_Sub1_PostCast_primWireOut_sel_x_b_1_q;
            WHEN "01" => leftShiftStage0_uid639_normY_uid85_Divide1_q <= leftShiftStage0Idx1_uid635_normY_uid85_Divide1_q;
            WHEN "10" => leftShiftStage0_uid639_normY_uid85_Divide1_q <= zs_uid198_zCount_uid52_Divide_q;
            WHEN "11" => leftShiftStage0_uid639_normY_uid85_Divide1_q <= zs_uid198_zCount_uid52_Divide_q;
            WHEN OTHERS => leftShiftStage0_uid639_normY_uid85_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid650_normY_uid85_Divide1(MUX,649)@1
    leftShiftStage1_uid650_normY_uid85_Divide1_s <= leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_c;
    leftShiftStage1_uid650_normY_uid85_Divide1_combproc: PROCESS (leftShiftStage1_uid650_normY_uid85_Divide1_s, leftShiftStage0_uid639_normY_uid85_Divide1_q, leftShiftStage1Idx1_uid642_normY_uid85_Divide1_q, leftShiftStage1Idx2_uid645_normY_uid85_Divide1_q, leftShiftStage1Idx3_uid648_normY_uid85_Divide1_q)
    BEGIN
        CASE (leftShiftStage1_uid650_normY_uid85_Divide1_s) IS
            WHEN "00" => leftShiftStage1_uid650_normY_uid85_Divide1_q <= leftShiftStage0_uid639_normY_uid85_Divide1_q;
            WHEN "01" => leftShiftStage1_uid650_normY_uid85_Divide1_q <= leftShiftStage1Idx1_uid642_normY_uid85_Divide1_q;
            WHEN "10" => leftShiftStage1_uid650_normY_uid85_Divide1_q <= leftShiftStage1Idx2_uid645_normY_uid85_Divide1_q;
            WHEN "11" => leftShiftStage1_uid650_normY_uid85_Divide1_q <= leftShiftStage1Idx3_uid648_normY_uid85_Divide1_q;
            WHEN OTHERS => leftShiftStage1_uid650_normY_uid85_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid275_zCount_uid84_Divide1(LOGICAL,274)@0 + 1
    vCount_uid275_zCount_uid84_Divide1_qi <= "1" WHEN Sub1_PostCast_primWireOut_sel_x_b = zs_uid198_zCount_uid52_Divide_q ELSE "0";
    vCount_uid275_zCount_uid84_Divide1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid275_zCount_uid84_Divide1_qi, xout => vCount_uid275_zCount_uid84_Divide1_q, clk => clk, aclr => areset );

    -- vStagei_uid278_zCount_uid84_Divide1(MUX,277)@1
    vStagei_uid278_zCount_uid84_Divide1_s <= vCount_uid275_zCount_uid84_Divide1_q;
    vStagei_uid278_zCount_uid84_Divide1_combproc: PROCESS (vStagei_uid278_zCount_uid84_Divide1_s, redist37_Sub1_PostCast_primWireOut_sel_x_b_1_q, mO_uid201_zCount_uid52_Divide_q)
    BEGIN
        CASE (vStagei_uid278_zCount_uid84_Divide1_s) IS
            WHEN "0" => vStagei_uid278_zCount_uid84_Divide1_q <= redist37_Sub1_PostCast_primWireOut_sel_x_b_1_q;
            WHEN "1" => vStagei_uid278_zCount_uid84_Divide1_q <= mO_uid201_zCount_uid52_Divide_q;
            WHEN OTHERS => vStagei_uid278_zCount_uid84_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid280_zCount_uid84_Divide1_merged_bit_select(BITSELECT,845)@1
    rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_b <= vStagei_uid278_zCount_uid84_Divide1_q(15 downto 8);
    rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_c <= vStagei_uid278_zCount_uid84_Divide1_q(7 downto 0);

    -- vCount_uid281_zCount_uid84_Divide1(LOGICAL,280)@1
    vCount_uid281_zCount_uid84_Divide1_q <= "1" WHEN rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_b = zs_uid204_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid284_zCount_uid84_Divide1(MUX,283)@1
    vStagei_uid284_zCount_uid84_Divide1_s <= vCount_uid281_zCount_uid84_Divide1_q;
    vStagei_uid284_zCount_uid84_Divide1_combproc: PROCESS (vStagei_uid284_zCount_uid84_Divide1_s, rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_b, rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid284_zCount_uid84_Divide1_s) IS
            WHEN "0" => vStagei_uid284_zCount_uid84_Divide1_q <= rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_b;
            WHEN "1" => vStagei_uid284_zCount_uid84_Divide1_q <= rVStage_uid280_zCount_uid84_Divide1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid284_zCount_uid84_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid286_zCount_uid84_Divide1_merged_bit_select(BITSELECT,846)@1
    rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_b <= vStagei_uid284_zCount_uid84_Divide1_q(7 downto 4);
    rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_c <= vStagei_uid284_zCount_uid84_Divide1_q(3 downto 0);

    -- vCount_uid287_zCount_uid84_Divide1(LOGICAL,286)@1
    vCount_uid287_zCount_uid84_Divide1_q <= "1" WHEN rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_b = zs_uid210_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid290_zCount_uid84_Divide1(MUX,289)@1
    vStagei_uid290_zCount_uid84_Divide1_s <= vCount_uid287_zCount_uid84_Divide1_q;
    vStagei_uid290_zCount_uid84_Divide1_combproc: PROCESS (vStagei_uid290_zCount_uid84_Divide1_s, rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_b, rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid290_zCount_uid84_Divide1_s) IS
            WHEN "0" => vStagei_uid290_zCount_uid84_Divide1_q <= rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_b;
            WHEN "1" => vStagei_uid290_zCount_uid84_Divide1_q <= rVStage_uid286_zCount_uid84_Divide1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid290_zCount_uid84_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid292_zCount_uid84_Divide1_merged_bit_select(BITSELECT,847)@1
    rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_b <= vStagei_uid290_zCount_uid84_Divide1_q(3 downto 2);
    rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_c <= vStagei_uid290_zCount_uid84_Divide1_q(1 downto 0);

    -- vCount_uid293_zCount_uid84_Divide1(LOGICAL,292)@1
    vCount_uid293_zCount_uid84_Divide1_q <= "1" WHEN rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_b = zs_uid216_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid296_zCount_uid84_Divide1(MUX,295)@1
    vStagei_uid296_zCount_uid84_Divide1_s <= vCount_uid293_zCount_uid84_Divide1_q;
    vStagei_uid296_zCount_uid84_Divide1_combproc: PROCESS (vStagei_uid296_zCount_uid84_Divide1_s, rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_b, rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid296_zCount_uid84_Divide1_s) IS
            WHEN "0" => vStagei_uid296_zCount_uid84_Divide1_q <= rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_b;
            WHEN "1" => vStagei_uid296_zCount_uid84_Divide1_q <= rVStage_uid292_zCount_uid84_Divide1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid296_zCount_uid84_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid298_zCount_uid84_Divide1(BITSELECT,297)@1
    rVStage_uid298_zCount_uid84_Divide1_b <= vStagei_uid296_zCount_uid84_Divide1_q(1 downto 1);

    -- vCount_uid299_zCount_uid84_Divide1(LOGICAL,298)@1
    vCount_uid299_zCount_uid84_Divide1_q <= "1" WHEN rVStage_uid298_zCount_uid84_Divide1_b = GND_q ELSE "0";

    -- r_uid300_zCount_uid84_Divide1(BITJOIN,299)@1
    r_uid300_zCount_uid84_Divide1_q <= vCount_uid275_zCount_uid84_Divide1_q & vCount_uid281_zCount_uid84_Divide1_q & vCount_uid287_zCount_uid84_Divide1_q & vCount_uid293_zCount_uid84_Divide1_q & vCount_uid299_zCount_uid84_Divide1_q;

    -- leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select(BITSELECT,848)@1
    leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_b <= r_uid300_zCount_uid84_Divide1_q(4 downto 3);
    leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_c <= r_uid300_zCount_uid84_Divide1_q(2 downto 1);
    leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_d <= r_uid300_zCount_uid84_Divide1_q(0 downto 0);

    -- leftShiftStage2_uid655_normY_uid85_Divide1(MUX,654)@1
    leftShiftStage2_uid655_normY_uid85_Divide1_s <= leftShiftStageSel4Dto3_uid638_normY_uid85_Divide1_merged_bit_select_d;
    leftShiftStage2_uid655_normY_uid85_Divide1_combproc: PROCESS (leftShiftStage2_uid655_normY_uid85_Divide1_s, leftShiftStage1_uid650_normY_uid85_Divide1_q, leftShiftStage2Idx1_uid653_normY_uid85_Divide1_q)
    BEGIN
        CASE (leftShiftStage2_uid655_normY_uid85_Divide1_s) IS
            WHEN "0" => leftShiftStage2_uid655_normY_uid85_Divide1_q <= leftShiftStage1_uid650_normY_uid85_Divide1_q;
            WHEN "1" => leftShiftStage2_uid655_normY_uid85_Divide1_q <= leftShiftStage2Idx1_uid653_normY_uid85_Divide1_q;
            WHEN OTHERS => leftShiftStage2_uid655_normY_uid85_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- normYNoLeadOne_uid86_Divide1(BITSELECT,85)@1
    normYNoLeadOne_uid86_Divide1_in <= leftShiftStage2_uid655_normY_uid85_Divide1_q(14 downto 0);
    normYNoLeadOne_uid86_Divide1_b <= normYNoLeadOne_uid86_Divide1_in(14 downto 0);

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_inputreg(DELAY,918)
    redist24_normYNoLeadOne_uid86_Divide1_b_4_inputreg : dspba_delay
    GENERIC MAP ( width => 15, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYNoLeadOne_uid86_Divide1_b, xout => redist24_normYNoLeadOne_uid86_Divide1_b_4_inputreg_q, clk => clk, aclr => areset );

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_wraddr(REG,921)
    redist24_normYNoLeadOne_uid86_Divide1_b_4_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist24_normYNoLeadOne_uid86_Divide1_b_4_wraddr_q <= "1";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist24_normYNoLeadOne_uid86_Divide1_b_4_wraddr_q <= STD_LOGIC_VECTOR(redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist24_normYNoLeadOne_uid86_Divide1_b_4_mem(DUALMEM,919)
    redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_ia <= STD_LOGIC_VECTOR(redist24_normYNoLeadOne_uid86_Divide1_b_4_inputreg_q);
    redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_aa <= redist24_normYNoLeadOne_uid86_Divide1_b_4_wraddr_q;
    redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_ab <= redist24_normYNoLeadOne_uid86_Divide1_b_4_rdcnt_q;
    redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_reset0 <= areset;
    redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 15,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 15,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist24_normYNoLeadOne_uid86_Divide1_b_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_reset0,
        clock1 => clk,
        address_a => redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_aa,
        data_a => redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_ab,
        q_b => redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_iq
    );
    redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_q <= redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_iq(14 downto 0);

    -- yAddr_uid94_Divide1_merged_bit_select(BITSELECT,835)@5
    yAddr_uid94_Divide1_merged_bit_select_b <= redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_q(14 downto 7);
    yAddr_uid94_Divide1_merged_bit_select_c <= redist24_normYNoLeadOne_uid86_Divide1_b_4_mem_q(6 downto 0);

    -- memoryC3_uid311_invTabGen_lutmem(DUALMEM,781)@5 + 2
    -- in j@20000000
    memoryC3_uid311_invTabGen_lutmem_aa <= yAddr_uid94_Divide1_merged_bit_select_b;
    memoryC3_uid311_invTabGen_lutmem_reset0 <= areset;
    memoryC3_uid311_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC3_uidA1ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC3_uid311_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC3_uid311_invTabGen_lutmem_aa,
        q_a => memoryC3_uid311_invTabGen_lutmem_ir
    );
    memoryC3_uid311_invTabGen_lutmem_r <= memoryC3_uid311_invTabGen_lutmem_ir(13 downto 0);

    -- redist3_yAddr_uid94_Divide1_merged_bit_select_c_2(DELAY,859)
    redist3_yAddr_uid94_Divide1_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid94_Divide1_merged_bit_select_c, xout => redist3_yAddr_uid94_Divide1_merged_bit_select_c_2_q, clk => clk, aclr => areset );

    -- prodXY_uid498_pT1_uid319_invPolyEval_cma(CHAINMULTADD,811)@7 + 2
    prodXY_uid498_pT1_uid319_invPolyEval_cma_reset <= areset;
    prodXY_uid498_pT1_uid319_invPolyEval_cma_ena0 <= '1';
    prodXY_uid498_pT1_uid319_invPolyEval_cma_ena1 <= prodXY_uid498_pT1_uid319_invPolyEval_cma_ena0;
    prodXY_uid498_pT1_uid319_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid498_pT1_uid319_invPolyEval_cma_a0(0),8));
    prodXY_uid498_pT1_uid319_invPolyEval_cma_p(0) <= prodXY_uid498_pT1_uid319_invPolyEval_cma_l(0) * prodXY_uid498_pT1_uid319_invPolyEval_cma_c0(0);
    prodXY_uid498_pT1_uid319_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid498_pT1_uid319_invPolyEval_cma_p(0),22);
    prodXY_uid498_pT1_uid319_invPolyEval_cma_w(0) <= prodXY_uid498_pT1_uid319_invPolyEval_cma_u(0);
    prodXY_uid498_pT1_uid319_invPolyEval_cma_x(0) <= prodXY_uid498_pT1_uid319_invPolyEval_cma_w(0);
    prodXY_uid498_pT1_uid319_invPolyEval_cma_y(0) <= prodXY_uid498_pT1_uid319_invPolyEval_cma_x(0);
    prodXY_uid498_pT1_uid319_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid498_pT1_uid319_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid498_pT1_uid319_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid498_pT1_uid319_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid498_pT1_uid319_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist3_yAddr_uid94_Divide1_merged_bit_select_c_2_q),7);
                prodXY_uid498_pT1_uid319_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC3_uid311_invTabGen_lutmem_r),14);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid498_pT1_uid319_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid498_pT1_uid319_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid498_pT1_uid319_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid498_pT1_uid319_invPolyEval_cma_s(0) <= prodXY_uid498_pT1_uid319_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid498_pT1_uid319_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 21, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid498_pT1_uid319_invPolyEval_cma_s(0)(20 downto 0)), xout => prodXY_uid498_pT1_uid319_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid498_pT1_uid319_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid498_pT1_uid319_invPolyEval_cma_qq(20 downto 0));

    -- osig_uid499_pT1_uid319_invPolyEval(BITSELECT,498)@9
    osig_uid499_pT1_uid319_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid498_pT1_uid319_invPolyEval_cma_q(20 downto 7));

    -- highBBits_uid321_invPolyEval(BITSELECT,320)@9
    highBBits_uid321_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid499_pT1_uid319_invPolyEval_b(13 downto 1));

    -- redist0_yAddr_uid94_Divide1_merged_bit_select_b_2(DELAY,856)
    redist0_yAddr_uid94_Divide1_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid94_Divide1_merged_bit_select_b, xout => redist0_yAddr_uid94_Divide1_merged_bit_select_b_2_q, clk => clk, aclr => areset );

    -- memoryC2_uid308_invTabGen_lutmem(DUALMEM,780)@7 + 2
    -- in j@20000000
    memoryC2_uid308_invTabGen_lutmem_aa <= redist0_yAddr_uid94_Divide1_merged_bit_select_b_2_q;
    memoryC2_uid308_invTabGen_lutmem_reset0 <= areset;
    memoryC2_uid308_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC2_uidA1ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid308_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid308_invTabGen_lutmem_aa,
        q_a => memoryC2_uid308_invTabGen_lutmem_ir
    );
    memoryC2_uid308_invTabGen_lutmem_r <= memoryC2_uid308_invTabGen_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid322_invPolyEval(ADD,321)@9
    s1sumAHighB_uid322_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC2_uid308_invTabGen_lutmem_r(20)) & memoryC2_uid308_invTabGen_lutmem_r));
    s1sumAHighB_uid322_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid321_invPolyEval_b(12)) & highBBits_uid321_invPolyEval_b));
    s1sumAHighB_uid322_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid322_invPolyEval_a) + SIGNED(s1sumAHighB_uid322_invPolyEval_b));
    s1sumAHighB_uid322_invPolyEval_q <= s1sumAHighB_uid322_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid320_invPolyEval(BITSELECT,319)@9
    lowRangeB_uid320_invPolyEval_in <= osig_uid499_pT1_uid319_invPolyEval_b(0 downto 0);
    lowRangeB_uid320_invPolyEval_b <= lowRangeB_uid320_invPolyEval_in(0 downto 0);

    -- s1_uid323_invPolyEval(BITJOIN,322)@9
    s1_uid323_invPolyEval_q <= s1sumAHighB_uid322_invPolyEval_q & lowRangeB_uid320_invPolyEval_b;

    -- prodXY_uid501_pT2_uid325_invPolyEval_bs5(BITSELECT,797)@9
    prodXY_uid501_pT2_uid325_invPolyEval_bs5_b <= STD_LOGIC_VECTOR(s1_uid323_invPolyEval_q(22 downto 18));

    -- redist4_yAddr_uid94_Divide1_merged_bit_select_c_4(DELAY,860)
    redist4_yAddr_uid94_Divide1_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist3_yAddr_uid94_Divide1_merged_bit_select_c_2_q, xout => redist4_yAddr_uid94_Divide1_merged_bit_select_c_4_q, clk => clk, aclr => areset );

    -- prodXY_uid501_pT2_uid325_invPolyEval_im3(MULT,795)@9 + 2
    prodXY_uid501_pT2_uid325_invPolyEval_im3_pr <= SIGNED(signed(resize(UNSIGNED(prodXY_uid501_pT2_uid325_invPolyEval_im3_a0),8)) * SIGNED(prodXY_uid501_pT2_uid325_invPolyEval_im3_b0));
    prodXY_uid501_pT2_uid325_invPolyEval_im3_component: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid501_pT2_uid325_invPolyEval_im3_a0 <= (others => '0');
            prodXY_uid501_pT2_uid325_invPolyEval_im3_b0 <= (others => '0');
            prodXY_uid501_pT2_uid325_invPolyEval_im3_s1 <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            prodXY_uid501_pT2_uid325_invPolyEval_im3_a0 <= redist4_yAddr_uid94_Divide1_merged_bit_select_c_4_q;
            prodXY_uid501_pT2_uid325_invPolyEval_im3_b0 <= STD_LOGIC_VECTOR(prodXY_uid501_pT2_uid325_invPolyEval_bs5_b);
            prodXY_uid501_pT2_uid325_invPolyEval_im3_s1 <= STD_LOGIC_VECTOR(resize(prodXY_uid501_pT2_uid325_invPolyEval_im3_pr,12));
        END IF;
    END PROCESS;
    prodXY_uid501_pT2_uid325_invPolyEval_im3_q <= prodXY_uid501_pT2_uid325_invPolyEval_im3_s1;

    -- prodXY_uid501_pT2_uid325_invPolyEval_align_7(BITSHIFT,799)@11
    prodXY_uid501_pT2_uid325_invPolyEval_align_7_qint <= prodXY_uid501_pT2_uid325_invPolyEval_im3_q & "000000000000000000";
    prodXY_uid501_pT2_uid325_invPolyEval_align_7_q <= prodXY_uid501_pT2_uid325_invPolyEval_align_7_qint(29 downto 0);

    -- prodXY_uid501_pT2_uid325_invPolyEval_bs2(BITSELECT,794)@9
    prodXY_uid501_pT2_uid325_invPolyEval_bs2_in <= s1_uid323_invPolyEval_q(17 downto 0);
    prodXY_uid501_pT2_uid325_invPolyEval_bs2_b <= prodXY_uid501_pT2_uid325_invPolyEval_bs2_in(17 downto 0);

    -- prodXY_uid501_pT2_uid325_invPolyEval_im0_cma(CHAINMULTADD,819)@9 + 2
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_reset <= areset;
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_ena0 <= '1';
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_ena1 <= prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_ena0;
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_p(0) <= prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_a0(0) * prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_c0(0);
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_u(0) <= RESIZE(prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_p(0),28);
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_w(0) <= prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_u(0);
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_x(0) <= prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_w(0);
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_y(0) <= prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_x(0);
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_a0 <= (others => (others => '0'));
            prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_ena0 = '1') THEN
                prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXY_uid501_pT2_uid325_invPolyEval_bs2_b),18);
                prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_c0(0) <= RESIZE(UNSIGNED(redist4_yAddr_uid94_Divide1_merged_bit_select_c_4_q),10);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_ena1 = '1') THEN
                prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_s(0) <= prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_s(0)(27 downto 0)), xout => prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_qq, clk => clk, aclr => areset );
    prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_q <= STD_LOGIC_VECTOR(prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_qq(24 downto 0));

    -- prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0(ADD,801)@11
    prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000" & prodXY_uid501_pT2_uid325_invPolyEval_im0_cma_q));
    prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => prodXY_uid501_pT2_uid325_invPolyEval_align_7_q(29)) & prodXY_uid501_pT2_uid325_invPolyEval_align_7_q));
    prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_a) + SIGNED(prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_b));
    prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_q <= prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_o(30 downto 0);

    -- osig_uid502_pT2_uid325_invPolyEval(BITSELECT,501)@11
    osig_uid502_pT2_uid325_invPolyEval_in <= STD_LOGIC_VECTOR(prodXY_uid501_pT2_uid325_invPolyEval_result_add_0_0_q(29 downto 0));
    osig_uid502_pT2_uid325_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid502_pT2_uid325_invPolyEval_in(29 downto 7));

    -- highBBits_uid327_invPolyEval(BITSELECT,326)@11
    highBBits_uid327_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid502_pT2_uid325_invPolyEval_b(22 downto 1));

    -- redist1_yAddr_uid94_Divide1_merged_bit_select_b_4(DELAY,857)
    redist1_yAddr_uid94_Divide1_merged_bit_select_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist0_yAddr_uid94_Divide1_merged_bit_select_b_2_q, xout => redist1_yAddr_uid94_Divide1_merged_bit_select_b_4_q, clk => clk, aclr => areset );

    -- memoryC1_uid305_invTabGen_lutmem(DUALMEM,779)@9 + 2
    -- in j@20000000
    memoryC1_uid305_invTabGen_lutmem_aa <= redist1_yAddr_uid94_Divide1_merged_bit_select_b_4_q;
    memoryC1_uid305_invTabGen_lutmem_reset0 <= areset;
    memoryC1_uid305_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC1_uidA1ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid305_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid305_invTabGen_lutmem_aa,
        q_a => memoryC1_uid305_invTabGen_lutmem_ir
    );
    memoryC1_uid305_invTabGen_lutmem_r <= memoryC1_uid305_invTabGen_lutmem_ir(28 downto 0);

    -- s2sumAHighB_uid328_invPolyEval(ADD,327)@11
    s2sumAHighB_uid328_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => memoryC1_uid305_invTabGen_lutmem_r(28)) & memoryC1_uid305_invTabGen_lutmem_r));
    s2sumAHighB_uid328_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => highBBits_uid327_invPolyEval_b(21)) & highBBits_uid327_invPolyEval_b));
    s2sumAHighB_uid328_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid328_invPolyEval_a) + SIGNED(s2sumAHighB_uid328_invPolyEval_b));
    s2sumAHighB_uid328_invPolyEval_q <= s2sumAHighB_uid328_invPolyEval_o(29 downto 0);

    -- lowRangeB_uid326_invPolyEval(BITSELECT,325)@11
    lowRangeB_uid326_invPolyEval_in <= osig_uid502_pT2_uid325_invPolyEval_b(0 downto 0);
    lowRangeB_uid326_invPolyEval_b <= lowRangeB_uid326_invPolyEval_in(0 downto 0);

    -- s2_uid329_invPolyEval(BITJOIN,328)@11
    s2_uid329_invPolyEval_q <= s2sumAHighB_uid328_invPolyEval_q & lowRangeB_uid326_invPolyEval_b;

    -- topRangeY_uid527_pT3_uid331_invPolyEval_merged_bit_select(BITSELECT,849)@11
    topRangeY_uid527_pT3_uid331_invPolyEval_merged_bit_select_b <= STD_LOGIC_VECTOR(s2_uid329_invPolyEval_q(30 downto 13));
    topRangeY_uid527_pT3_uid331_invPolyEval_merged_bit_select_c <= STD_LOGIC_VECTOR(s2_uid329_invPolyEval_q(12 downto 0));

    -- aboveLeftY_bottomExtension_uid532_pT3_uid331_invPolyEval(CONSTANT,531)
    aboveLeftY_bottomExtension_uid532_pT3_uid331_invPolyEval_q <= "00000";

    -- aboveLeftY_mergedSignalTM_uid534_pT3_uid331_invPolyEval(BITJOIN,533)@11
    aboveLeftY_mergedSignalTM_uid534_pT3_uid331_invPolyEval_q <= topRangeY_uid527_pT3_uid331_invPolyEval_merged_bit_select_c & aboveLeftY_bottomExtension_uid532_pT3_uid331_invPolyEval_q;

    -- redist5_yAddr_uid94_Divide1_merged_bit_select_c_6(DELAY,861)
    redist5_yAddr_uid94_Divide1_merged_bit_select_c_6 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist4_yAddr_uid94_Divide1_merged_bit_select_c_4_q, xout => redist5_yAddr_uid94_Divide1_merged_bit_select_c_6_q, clk => clk, aclr => areset );

    -- nx_mergedSignalTM_uid521_pT3_uid331_invPolyEval(BITJOIN,520)@11
    nx_mergedSignalTM_uid521_pT3_uid331_invPolyEval_q <= GND_q & redist5_yAddr_uid94_Divide1_merged_bit_select_c_6_q;

    -- topRangeX_mergedSignalTM_uid525_pT3_uid331_invPolyEval(BITJOIN,524)@11
    topRangeX_mergedSignalTM_uid525_pT3_uid331_invPolyEval_q <= nx_mergedSignalTM_uid521_pT3_uid331_invPolyEval_q & topRangeX_bottomExtension_uid431_pT3_uid261_invPolyEval_q;

    -- sm0_uid540_pT3_uid331_invPolyEval_cma(CHAINMULTADD,813)@11 + 2
    sm0_uid540_pT3_uid331_invPolyEval_cma_reset <= areset;
    sm0_uid540_pT3_uid331_invPolyEval_cma_ena0 <= '1';
    sm0_uid540_pT3_uid331_invPolyEval_cma_ena1 <= sm0_uid540_pT3_uid331_invPolyEval_cma_ena0;
    sm0_uid540_pT3_uid331_invPolyEval_cma_r(0) <= SIGNED(RESIZE(sm0_uid540_pT3_uid331_invPolyEval_cma_c0(0),19));
    sm0_uid540_pT3_uid331_invPolyEval_cma_p(0) <= sm0_uid540_pT3_uid331_invPolyEval_cma_a0(0) * sm0_uid540_pT3_uid331_invPolyEval_cma_r(0);
    sm0_uid540_pT3_uid331_invPolyEval_cma_u(0) <= RESIZE(sm0_uid540_pT3_uid331_invPolyEval_cma_p(0),37);
    sm0_uid540_pT3_uid331_invPolyEval_cma_w(0) <= sm0_uid540_pT3_uid331_invPolyEval_cma_u(0);
    sm0_uid540_pT3_uid331_invPolyEval_cma_x(0) <= sm0_uid540_pT3_uid331_invPolyEval_cma_w(0);
    sm0_uid540_pT3_uid331_invPolyEval_cma_y(0) <= sm0_uid540_pT3_uid331_invPolyEval_cma_x(0);
    sm0_uid540_pT3_uid331_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid540_pT3_uid331_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid540_pT3_uid331_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid540_pT3_uid331_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid540_pT3_uid331_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid525_pT3_uid331_invPolyEval_q),18);
                sm0_uid540_pT3_uid331_invPolyEval_cma_c0(0) <= RESIZE(UNSIGNED(aboveLeftY_mergedSignalTM_uid534_pT3_uid331_invPolyEval_q),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid540_pT3_uid331_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid540_pT3_uid331_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid540_pT3_uid331_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid540_pT3_uid331_invPolyEval_cma_s(0) <= sm0_uid540_pT3_uid331_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid540_pT3_uid331_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid540_pT3_uid331_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid540_pT3_uid331_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid540_pT3_uid331_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid540_pT3_uid331_invPolyEval_cma_qq(35 downto 0));

    -- highBBits_uid542_pT3_uid331_invPolyEval(BITSELECT,541)@13
    highBBits_uid542_pT3_uid331_invPolyEval_b <= STD_LOGIC_VECTOR(sm0_uid540_pT3_uid331_invPolyEval_cma_q(35 downto 18));

    -- sm0_uid539_pT3_uid331_invPolyEval_cma(CHAINMULTADD,812)@11 + 2
    sm0_uid539_pT3_uid331_invPolyEval_cma_reset <= areset;
    sm0_uid539_pT3_uid331_invPolyEval_cma_ena0 <= '1';
    sm0_uid539_pT3_uid331_invPolyEval_cma_ena1 <= sm0_uid539_pT3_uid331_invPolyEval_cma_ena0;
    sm0_uid539_pT3_uid331_invPolyEval_cma_p(0) <= sm0_uid539_pT3_uid331_invPolyEval_cma_a0(0) * sm0_uid539_pT3_uid331_invPolyEval_cma_c0(0);
    sm0_uid539_pT3_uid331_invPolyEval_cma_u(0) <= RESIZE(sm0_uid539_pT3_uid331_invPolyEval_cma_p(0),36);
    sm0_uid539_pT3_uid331_invPolyEval_cma_w(0) <= sm0_uid539_pT3_uid331_invPolyEval_cma_u(0);
    sm0_uid539_pT3_uid331_invPolyEval_cma_x(0) <= sm0_uid539_pT3_uid331_invPolyEval_cma_w(0);
    sm0_uid539_pT3_uid331_invPolyEval_cma_y(0) <= sm0_uid539_pT3_uid331_invPolyEval_cma_x(0);
    sm0_uid539_pT3_uid331_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid539_pT3_uid331_invPolyEval_cma_a0 <= (others => (others => '0'));
            sm0_uid539_pT3_uid331_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid539_pT3_uid331_invPolyEval_cma_ena0 = '1') THEN
                sm0_uid539_pT3_uid331_invPolyEval_cma_a0(0) <= RESIZE(SIGNED(topRangeX_mergedSignalTM_uid525_pT3_uid331_invPolyEval_q),18);
                sm0_uid539_pT3_uid331_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(topRangeY_uid527_pT3_uid331_invPolyEval_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid539_pT3_uid331_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sm0_uid539_pT3_uid331_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sm0_uid539_pT3_uid331_invPolyEval_cma_ena1 = '1') THEN
                sm0_uid539_pT3_uid331_invPolyEval_cma_s(0) <= sm0_uid539_pT3_uid331_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    sm0_uid539_pT3_uid331_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(sm0_uid539_pT3_uid331_invPolyEval_cma_s(0)(35 downto 0)), xout => sm0_uid539_pT3_uid331_invPolyEval_cma_qq, clk => clk, aclr => areset );
    sm0_uid539_pT3_uid331_invPolyEval_cma_q <= STD_LOGIC_VECTOR(sm0_uid539_pT3_uid331_invPolyEval_cma_qq(35 downto 0));

    -- lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval(ADD,542)@13
    lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => sm0_uid539_pT3_uid331_invPolyEval_cma_q(35)) & sm0_uid539_pT3_uid331_invPolyEval_cma_q));
    lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 18 => highBBits_uid542_pT3_uid331_invPolyEval_b(17)) & highBBits_uid542_pT3_uid331_invPolyEval_b));
    lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_a) + SIGNED(lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_b));
    lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_q <= lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_o(36 downto 0);

    -- lowRangeB_uid541_pT3_uid331_invPolyEval(BITSELECT,540)@13
    lowRangeB_uid541_pT3_uid331_invPolyEval_in <= sm0_uid540_pT3_uid331_invPolyEval_cma_q(17 downto 0);
    lowRangeB_uid541_pT3_uid331_invPolyEval_b <= lowRangeB_uid541_pT3_uid331_invPolyEval_in(17 downto 0);

    -- lev1_a0_uid544_pT3_uid331_invPolyEval(BITJOIN,543)@13
    lev1_a0_uid544_pT3_uid331_invPolyEval_q <= lev1_a0sumAHighB_uid543_pT3_uid331_invPolyEval_q & lowRangeB_uid541_pT3_uid331_invPolyEval_b;

    -- os_uid545_pT3_uid331_invPolyEval(BITSELECT,544)@13
    os_uid545_pT3_uid331_invPolyEval_in <= STD_LOGIC_VECTOR(lev1_a0_uid544_pT3_uid331_invPolyEval_q(52 downto 0));
    os_uid545_pT3_uid331_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid545_pT3_uid331_invPolyEval_in(52 downto 21));

    -- highBBits_uid333_invPolyEval(BITSELECT,332)@13
    highBBits_uid333_invPolyEval_b <= STD_LOGIC_VECTOR(os_uid545_pT3_uid331_invPolyEval_b(31 downto 2));

    -- redist2_yAddr_uid94_Divide1_merged_bit_select_b_6(DELAY,858)
    redist2_yAddr_uid94_Divide1_merged_bit_select_b_6 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist1_yAddr_uid94_Divide1_merged_bit_select_b_4_q, xout => redist2_yAddr_uid94_Divide1_merged_bit_select_b_6_q, clk => clk, aclr => areset );

    -- memoryC0_uid302_invTabGen_lutmem(DUALMEM,778)@11 + 2
    -- in j@20000000
    memoryC0_uid302_invTabGen_lutmem_aa <= redist2_yAddr_uid94_Divide1_merged_bit_select_b_6_q;
    memoryC0_uid302_invTabGen_lutmem_reset0 <= areset;
    memoryC0_uid302_invTabGen_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_memoryC0_uidA2ZinvTabGen_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid302_invTabGen_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid302_invTabGen_lutmem_aa,
        q_a => memoryC0_uid302_invTabGen_lutmem_ir
    );
    memoryC0_uid302_invTabGen_lutmem_r <= memoryC0_uid302_invTabGen_lutmem_ir(37 downto 0);

    -- s3sumAHighB_uid334_invPolyEval(ADD,333)@13
    s3sumAHighB_uid334_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 38 => memoryC0_uid302_invTabGen_lutmem_r(37)) & memoryC0_uid302_invTabGen_lutmem_r));
    s3sumAHighB_uid334_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 30 => highBBits_uid333_invPolyEval_b(29)) & highBBits_uid333_invPolyEval_b));
    s3sumAHighB_uid334_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s3sumAHighB_uid334_invPolyEval_a) + SIGNED(s3sumAHighB_uid334_invPolyEval_b));
    s3sumAHighB_uid334_invPolyEval_q <= s3sumAHighB_uid334_invPolyEval_o(38 downto 0);

    -- lowRangeB_uid332_invPolyEval(BITSELECT,331)@13
    lowRangeB_uid332_invPolyEval_in <= os_uid545_pT3_uid331_invPolyEval_b(1 downto 0);
    lowRangeB_uid332_invPolyEval_b <= lowRangeB_uid332_invPolyEval_in(1 downto 0);

    -- s3_uid335_invPolyEval(BITJOIN,334)@13
    s3_uid335_invPolyEval_q <= s3sumAHighB_uid334_invPolyEval_q & lowRangeB_uid332_invPolyEval_b;

    -- fxpInverseRes_uid97_Divide1(BITSELECT,96)@13
    fxpInverseRes_uid97_Divide1_in <= s3_uid335_invPolyEval_q(38 downto 0);
    fxpInverseRes_uid97_Divide1_b <= fxpInverseRes_uid97_Divide1_in(38 downto 6);

    -- normYIsOneC2_uid87_Divide1(LOGICAL,88)@1
    normYIsOneC2_uid87_Divide1_a <= STD_LOGIC_VECTOR("0" & normYNoLeadOne_uid86_Divide1_b);
    normYIsOneC2_uid87_Divide1_q <= "1" WHEN normYIsOneC2_uid87_Divide1_a = updatedY_uid56_Divide_q ELSE "0";

    -- normYIsOneC2_uid90_Divide1(BITSELECT,89)@1
    normYIsOneC2_uid90_Divide1_b <= STD_LOGIC_VECTOR(leftShiftStage2_uid655_normY_uid85_Divide1_q(15 downto 15));

    -- normYIsOne_uid91_Divide1(LOGICAL,90)@1 + 1
    normYIsOne_uid91_Divide1_qi <= normYIsOneC2_uid90_Divide1_b and normYIsOneC2_uid87_Divide1_q;
    normYIsOne_uid91_Divide1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYIsOne_uid91_Divide1_qi, xout => normYIsOne_uid91_Divide1_q, clk => clk, aclr => areset );

    -- redist23_normYIsOne_uid91_Divide1_q_12(DELAY,879)
    redist23_normYIsOne_uid91_Divide1_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 11, reset_kind => "ASYNC" )
    PORT MAP ( xin => normYIsOne_uid91_Divide1_q, xout => redist23_normYIsOne_uid91_Divide1_q_12_q, clk => clk, aclr => areset );

    -- invResPostOneHandling2_uid99_Divide1(MUX,98)@13
    invResPostOneHandling2_uid99_Divide1_s <= redist23_normYIsOne_uid91_Divide1_q_12_q;
    invResPostOneHandling2_uid99_Divide1_combproc: PROCESS (invResPostOneHandling2_uid99_Divide1_s, fxpInverseRes_uid97_Divide1_b, oneInvRes_uid98_Divide1_q)
    BEGIN
        CASE (invResPostOneHandling2_uid99_Divide1_s) IS
            WHEN "0" => invResPostOneHandling2_uid99_Divide1_q <= fxpInverseRes_uid97_Divide1_b;
            WHEN "1" => invResPostOneHandling2_uid99_Divide1_q <= oneInvRes_uid98_Divide1_q;
            WHEN OTHERS => invResPostOneHandling2_uid99_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodXInvY_uid102_Divide1_bs2_merged_bit_select(BITSELECT,836)@13
    prodXInvY_uid102_Divide1_bs2_merged_bit_select_b <= invResPostOneHandling2_uid99_Divide1_q(17 downto 0);
    prodXInvY_uid102_Divide1_bs2_merged_bit_select_c <= invResPostOneHandling2_uid99_Divide1_q(32 downto 18);

    -- prodXInvY_uid102_Divide1_bjB9(BITJOIN,665)@13
    prodXInvY_uid102_Divide1_bjB9_q <= GND_q & prodXInvY_uid102_Divide1_bs2_merged_bit_select_b;

    -- prodXInvY_uid102_Divide1_bs7(BITSELECT,663)@13
    prodXInvY_uid102_Divide1_bs7_b <= STD_LOGIC_VECTOR(Sub_q(25 downto 18));

    -- prodXInvY_uid102_Divide1_ma3_cma(CHAINMULTADD,821)@13 + 2
    prodXInvY_uid102_Divide1_ma3_cma_reset <= areset;
    prodXInvY_uid102_Divide1_ma3_cma_ena0 <= '1';
    prodXInvY_uid102_Divide1_ma3_cma_ena1 <= prodXInvY_uid102_Divide1_ma3_cma_ena0;
    prodXInvY_uid102_Divide1_ma3_cma_l(0) <= SIGNED(RESIZE(prodXInvY_uid102_Divide1_ma3_cma_a0(0),16));
    prodXInvY_uid102_Divide1_ma3_cma_l(1) <= SIGNED(RESIZE(prodXInvY_uid102_Divide1_ma3_cma_a0(1),16));
    prodXInvY_uid102_Divide1_ma3_cma_p(0) <= prodXInvY_uid102_Divide1_ma3_cma_l(0) * prodXInvY_uid102_Divide1_ma3_cma_c0(0);
    prodXInvY_uid102_Divide1_ma3_cma_p(1) <= prodXInvY_uid102_Divide1_ma3_cma_l(1) * prodXInvY_uid102_Divide1_ma3_cma_c0(1);
    prodXInvY_uid102_Divide1_ma3_cma_u(0) <= RESIZE(prodXInvY_uid102_Divide1_ma3_cma_p(0),36);
    prodXInvY_uid102_Divide1_ma3_cma_u(1) <= RESIZE(prodXInvY_uid102_Divide1_ma3_cma_p(1),36);
    prodXInvY_uid102_Divide1_ma3_cma_w(0) <= prodXInvY_uid102_Divide1_ma3_cma_u(0) + prodXInvY_uid102_Divide1_ma3_cma_u(1);
    prodXInvY_uid102_Divide1_ma3_cma_x(0) <= prodXInvY_uid102_Divide1_ma3_cma_w(0);
    prodXInvY_uid102_Divide1_ma3_cma_y(0) <= prodXInvY_uid102_Divide1_ma3_cma_x(0);
    prodXInvY_uid102_Divide1_ma3_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid102_Divide1_ma3_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid102_Divide1_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid102_Divide1_ma3_cma_ena0 = '1') THEN
                prodXInvY_uid102_Divide1_ma3_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid102_Divide1_bs7_b),15);
                prodXInvY_uid102_Divide1_ma3_cma_a0(1) <= RESIZE(UNSIGNED(prodXInvY_uid102_Divide1_bs2_merged_bit_select_c),15);
                prodXInvY_uid102_Divide1_ma3_cma_c0(0) <= RESIZE(SIGNED(prodXInvY_uid102_Divide1_bjB9_q),19);
                prodXInvY_uid102_Divide1_ma3_cma_c0(1) <= RESIZE(SIGNED(prodXInvY_uid102_Divide1_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid102_Divide1_ma3_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid102_Divide1_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid102_Divide1_ma3_cma_ena1 = '1') THEN
                prodXInvY_uid102_Divide1_ma3_cma_s(0) <= prodXInvY_uid102_Divide1_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid102_Divide1_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 35, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid102_Divide1_ma3_cma_s(0)(34 downto 0)), xout => prodXInvY_uid102_Divide1_ma3_cma_qq, clk => clk, aclr => areset );
    prodXInvY_uid102_Divide1_ma3_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid102_Divide1_ma3_cma_qq(34 downto 0));

    -- prodXInvY_uid102_Divide1_align_14(BITSHIFT,670)@15
    prodXInvY_uid102_Divide1_align_14_qint <= prodXInvY_uid102_Divide1_ma3_cma_q & "000000000000000000";
    prodXInvY_uid102_Divide1_align_14_q <= prodXInvY_uid102_Divide1_align_14_qint(52 downto 0);

    -- prodXInvY_uid102_Divide1_bs11(BITSELECT,667)@13
    prodXInvY_uid102_Divide1_bs11_b <= Sub_q(25 downto 18);

    -- prodXInvY_uid102_Divide1_im10_cma(CHAINMULTADD,817)@13 + 2
    prodXInvY_uid102_Divide1_im10_cma_reset <= areset;
    prodXInvY_uid102_Divide1_im10_cma_ena0 <= '1';
    prodXInvY_uid102_Divide1_im10_cma_ena1 <= prodXInvY_uid102_Divide1_im10_cma_ena0;
    prodXInvY_uid102_Divide1_im10_cma_p(0) <= prodXInvY_uid102_Divide1_im10_cma_a0(0) * prodXInvY_uid102_Divide1_im10_cma_c0(0);
    prodXInvY_uid102_Divide1_im10_cma_u(0) <= RESIZE(prodXInvY_uid102_Divide1_im10_cma_p(0),25);
    prodXInvY_uid102_Divide1_im10_cma_w(0) <= prodXInvY_uid102_Divide1_im10_cma_u(0);
    prodXInvY_uid102_Divide1_im10_cma_x(0) <= prodXInvY_uid102_Divide1_im10_cma_w(0);
    prodXInvY_uid102_Divide1_im10_cma_y(0) <= prodXInvY_uid102_Divide1_im10_cma_x(0);
    prodXInvY_uid102_Divide1_im10_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid102_Divide1_im10_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid102_Divide1_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid102_Divide1_im10_cma_ena0 = '1') THEN
                prodXInvY_uid102_Divide1_im10_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid102_Divide1_bs2_merged_bit_select_c),15);
                prodXInvY_uid102_Divide1_im10_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid102_Divide1_bs11_b),10);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid102_Divide1_im10_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid102_Divide1_im10_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid102_Divide1_im10_cma_ena1 = '1') THEN
                prodXInvY_uid102_Divide1_im10_cma_s(0) <= prodXInvY_uid102_Divide1_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid102_Divide1_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 25, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid102_Divide1_im10_cma_s(0)(24 downto 0)), xout => prodXInvY_uid102_Divide1_im10_cma_qq, clk => clk, aclr => areset );
    prodXInvY_uid102_Divide1_im10_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid102_Divide1_im10_cma_qq(22 downto 0));

    -- prodXInvY_uid102_Divide1_bs1(BITSELECT,657)@13
    prodXInvY_uid102_Divide1_bs1_in <= Sub_q(17 downto 0);
    prodXInvY_uid102_Divide1_bs1_b <= prodXInvY_uid102_Divide1_bs1_in(17 downto 0);

    -- prodXInvY_uid102_Divide1_im0_cma(CHAINMULTADD,816)@13 + 2
    prodXInvY_uid102_Divide1_im0_cma_reset <= areset;
    prodXInvY_uid102_Divide1_im0_cma_ena0 <= '1';
    prodXInvY_uid102_Divide1_im0_cma_ena1 <= prodXInvY_uid102_Divide1_im0_cma_ena0;
    prodXInvY_uid102_Divide1_im0_cma_p(0) <= prodXInvY_uid102_Divide1_im0_cma_a0(0) * prodXInvY_uid102_Divide1_im0_cma_c0(0);
    prodXInvY_uid102_Divide1_im0_cma_u(0) <= RESIZE(prodXInvY_uid102_Divide1_im0_cma_p(0),36);
    prodXInvY_uid102_Divide1_im0_cma_w(0) <= prodXInvY_uid102_Divide1_im0_cma_u(0);
    prodXInvY_uid102_Divide1_im0_cma_x(0) <= prodXInvY_uid102_Divide1_im0_cma_w(0);
    prodXInvY_uid102_Divide1_im0_cma_y(0) <= prodXInvY_uid102_Divide1_im0_cma_x(0);
    prodXInvY_uid102_Divide1_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid102_Divide1_im0_cma_a0 <= (others => (others => '0'));
            prodXInvY_uid102_Divide1_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid102_Divide1_im0_cma_ena0 = '1') THEN
                prodXInvY_uid102_Divide1_im0_cma_a0(0) <= RESIZE(UNSIGNED(prodXInvY_uid102_Divide1_bs1_b),18);
                prodXInvY_uid102_Divide1_im0_cma_c0(0) <= RESIZE(UNSIGNED(prodXInvY_uid102_Divide1_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid102_Divide1_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXInvY_uid102_Divide1_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXInvY_uid102_Divide1_im0_cma_ena1 = '1') THEN
                prodXInvY_uid102_Divide1_im0_cma_s(0) <= prodXInvY_uid102_Divide1_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXInvY_uid102_Divide1_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXInvY_uid102_Divide1_im0_cma_s(0)(35 downto 0)), xout => prodXInvY_uid102_Divide1_im0_cma_qq, clk => clk, aclr => areset );
    prodXInvY_uid102_Divide1_im0_cma_q <= STD_LOGIC_VECTOR(prodXInvY_uid102_Divide1_im0_cma_qq(35 downto 0));

    -- prodXInvY_uid102_Divide1_join_13(BITJOIN,669)@15
    prodXInvY_uid102_Divide1_join_13_q <= prodXInvY_uid102_Divide1_im10_cma_q & prodXInvY_uid102_Divide1_im0_cma_q;

    -- prodXInvY_uid102_Divide1_result_add_0_0(ADD,672)@15
    prodXInvY_uid102_Divide1_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & prodXInvY_uid102_Divide1_join_13_q));
    prodXInvY_uid102_Divide1_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((61 downto 53 => prodXInvY_uid102_Divide1_align_14_q(52)) & prodXInvY_uid102_Divide1_align_14_q));
    prodXInvY_uid102_Divide1_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(prodXInvY_uid102_Divide1_result_add_0_0_a) + SIGNED(prodXInvY_uid102_Divide1_result_add_0_0_b));
    prodXInvY_uid102_Divide1_result_add_0_0_q <= prodXInvY_uid102_Divide1_result_add_0_0_o(60 downto 0);

    -- rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1(MUX,685)@15
    rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_s <= rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_b;
    rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_combproc: PROCESS (rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_s, prodXInvY_uid102_Divide1_result_add_0_0_q, rightShiftStage0Idx1_uid678_prodPostRightShift_uid103_Divide1_q, rightShiftStage0Idx2_uid681_prodPostRightShift_uid103_Divide1_q, rightShiftStage0Idx3_uid684_prodPostRightShift_uid103_Divide1_q)
    BEGIN
        CASE (rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_s) IS
            WHEN "00" => rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q <= prodXInvY_uid102_Divide1_result_add_0_0_q(58 downto 0);
            WHEN "01" => rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q <= rightShiftStage0Idx1_uid678_prodPostRightShift_uid103_Divide1_q;
            WHEN "10" => rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q <= rightShiftStage0Idx2_uid681_prodPostRightShift_uid103_Divide1_q;
            WHEN "11" => rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q <= rightShiftStage0Idx3_uid684_prodPostRightShift_uid103_Divide1_q;
            WHEN OTHERS => rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1(MUX,696)@15
    rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_s <= rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_c;
    rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_combproc: PROCESS (rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_s, rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q, rightShiftStage1Idx1_uid689_prodPostRightShift_uid103_Divide1_q, rightShiftStage1Idx2_uid692_prodPostRightShift_uid103_Divide1_q, rightShiftStage1Idx3_uid695_prodPostRightShift_uid103_Divide1_q)
    BEGIN
        CASE (rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_s) IS
            WHEN "00" => rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q <= rightShiftStage0_uid686_prodPostRightShift_uid103_Divide1_q;
            WHEN "01" => rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q <= rightShiftStage1Idx1_uid689_prodPostRightShift_uid103_Divide1_q;
            WHEN "10" => rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q <= rightShiftStage1Idx2_uid692_prodPostRightShift_uid103_Divide1_q;
            WHEN "11" => rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q <= rightShiftStage1Idx3_uid695_prodPostRightShift_uid103_Divide1_q;
            WHEN OTHERS => rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_notEnable(LOGICAL,903)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_nor(LOGICAL,904)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_nor_q <= not (redist16_r_uid300_zCount_uid84_Divide1_q_14_notEnable_q or redist16_r_uid300_zCount_uid84_Divide1_q_14_sticky_ena_q);

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_last(CONSTANT,900)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_last_q <= "01010";

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_cmp(LOGICAL,901)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_cmp_b <= STD_LOGIC_VECTOR("0" & redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_q);
    redist16_r_uid300_zCount_uid84_Divide1_q_14_cmp_q <= "1" WHEN redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_last_q = redist16_r_uid300_zCount_uid84_Divide1_q_14_cmp_b ELSE "0";

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_cmpReg(REG,902)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_r_uid300_zCount_uid84_Divide1_q_14_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist16_r_uid300_zCount_uid84_Divide1_q_14_cmpReg_q <= STD_LOGIC_VECTOR(redist16_r_uid300_zCount_uid84_Divide1_q_14_cmp_q);
        END IF;
    END PROCESS;

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_sticky_ena(REG,905)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_r_uid300_zCount_uid84_Divide1_q_14_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist16_r_uid300_zCount_uid84_Divide1_q_14_nor_q = "1") THEN
                redist16_r_uid300_zCount_uid84_Divide1_q_14_sticky_ena_q <= STD_LOGIC_VECTOR(redist16_r_uid300_zCount_uid84_Divide1_q_14_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_enaAnd(LOGICAL,906)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_enaAnd_q <= redist16_r_uid300_zCount_uid84_Divide1_q_14_sticky_ena_q and VCC_q;

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt(COUNTER,898)
    -- low=0, high=11, step=1, init=0
    redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i = TO_UNSIGNED(10, 4)) THEN
                redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_eq <= '1';
            ELSE
                redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_eq <= '0';
            END IF;
            IF (redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_eq = '1') THEN
                redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i <= redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i + 5;
            ELSE
                redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i <= redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_i, 4)));

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_wraddr(REG,899)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_r_uid300_zCount_uid84_Divide1_q_14_wraddr_q <= "1011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist16_r_uid300_zCount_uid84_Divide1_q_14_wraddr_q <= STD_LOGIC_VECTOR(redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_mem(DUALMEM,897)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_ia <= STD_LOGIC_VECTOR(r_uid300_zCount_uid84_Divide1_q);
    redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_aa <= redist16_r_uid300_zCount_uid84_Divide1_q_14_wraddr_q;
    redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_ab <= redist16_r_uid300_zCount_uid84_Divide1_q_14_rdcnt_q;
    redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_reset0 <= areset;
    redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 5,
        widthad_a => 4,
        numwords_a => 12,
        width_b => 5,
        widthad_b => 4,
        numwords_b => 12,
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
        clocken1 => redist16_r_uid300_zCount_uid84_Divide1_q_14_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_reset0,
        clock1 => clk,
        address_a => redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_aa,
        data_a => redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_ab,
        q_b => redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_iq
    );
    redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_q <= redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_iq(4 downto 0);

    -- redist16_r_uid300_zCount_uid84_Divide1_q_14_outputreg(DELAY,896)
    redist16_r_uid300_zCount_uid84_Divide1_q_14_outputreg : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist16_r_uid300_zCount_uid84_Divide1_q_14_mem_q, xout => redist16_r_uid300_zCount_uid84_Divide1_q_14_outputreg_q, clk => clk, aclr => areset );

    -- rShiftCount_uid101_Divide1(SUB,100)@15
    rShiftCount_uid101_Divide1_a <= STD_LOGIC_VECTOR("00" & cWOut_uid68_Divide_q);
    rShiftCount_uid101_Divide1_b <= STD_LOGIC_VECTOR("0" & redist16_r_uid300_zCount_uid84_Divide1_q_14_outputreg_q);
    rShiftCount_uid101_Divide1_o <= STD_LOGIC_VECTOR(UNSIGNED(rShiftCount_uid101_Divide1_a) - UNSIGNED(rShiftCount_uid101_Divide1_b));
    rShiftCount_uid101_Divide1_q <= rShiftCount_uid101_Divide1_o(5 downto 0);

    -- rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select(BITSELECT,837)@15
    rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_b <= rShiftCount_uid101_Divide1_q(5 downto 4);
    rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_c <= rShiftCount_uid101_Divide1_q(3 downto 2);
    rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_d <= rShiftCount_uid101_Divide1_q(1 downto 0);

    -- rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1(MUX,707)@15
    rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_s <= rightShiftStageSel5Dto4_uid685_prodPostRightShift_uid103_Divide1_merged_bit_select_d;
    rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_combproc: PROCESS (rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_s, rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q, rightShiftStage2Idx1_uid700_prodPostRightShift_uid103_Divide1_q, rightShiftStage2Idx2_uid703_prodPostRightShift_uid103_Divide1_q, rightShiftStage2Idx3_uid706_prodPostRightShift_uid103_Divide1_q)
    BEGIN
        CASE (rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_s) IS
            WHEN "00" => rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_q <= rightShiftStage1_uid697_prodPostRightShift_uid103_Divide1_q;
            WHEN "01" => rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_q <= rightShiftStage2Idx1_uid700_prodPostRightShift_uid103_Divide1_q;
            WHEN "10" => rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_q <= rightShiftStage2Idx2_uid703_prodPostRightShift_uid103_Divide1_q;
            WHEN "11" => rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_q <= rightShiftStage2Idx3_uid706_prodPostRightShift_uid103_Divide1_q;
            WHEN OTHERS => rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- prodPostRightShiftPost_uid104_Divide1(BITSELECT,103)@15
    prodPostRightShiftPost_uid104_Divide1_in <= rightShiftStage2_uid708_prodPostRightShift_uid103_Divide1_q(57 downto 0);
    prodPostRightShiftPost_uid104_Divide1_b <= prodPostRightShiftPost_uid104_Divide1_in(57 downto 25);

    -- prodPostRightShiftPostRnd_uid109_Divide1(ADD,108)@15
    prodPostRightShiftPostRnd_uid109_Divide1_a <= STD_LOGIC_VECTOR("0" & prodPostRightShiftPost_uid104_Divide1_b);
    prodPostRightShiftPostRnd_uid109_Divide1_b <= STD_LOGIC_VECTOR("000000000000000000000000000000000" & addOp2_uid108_Divide1_q);
    prodPostRightShiftPostRnd_uid109_Divide1_o <= STD_LOGIC_VECTOR(UNSIGNED(prodPostRightShiftPostRnd_uid109_Divide1_a) + UNSIGNED(prodPostRightShiftPostRnd_uid109_Divide1_b));
    prodPostRightShiftPostRnd_uid109_Divide1_q <= prodPostRightShiftPostRnd_uid109_Divide1_o(33 downto 0);

    -- prodPostRightShiftPostRndRange_uid110_Divide1(BITSELECT,109)@15
    prodPostRightShiftPostRndRange_uid110_Divide1_in <= prodPostRightShiftPostRnd_uid109_Divide1_q(32 downto 0);
    prodPostRightShiftPostRndRange_uid110_Divide1_b <= prodPostRightShiftPostRndRange_uid110_Divide1_in(32 downto 1);

    -- yIsZero_uid92_Divide1(LOGICAL,91)@1 + 1
    yIsZero_uid92_Divide1_b <= STD_LOGIC_VECTOR("000000000000000" & GND_q);
    yIsZero_uid92_Divide1_qi <= "1" WHEN redist37_Sub1_PostCast_primWireOut_sel_x_b_1_q = yIsZero_uid92_Divide1_b ELSE "0";
    yIsZero_uid92_Divide1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yIsZero_uid92_Divide1_qi, xout => yIsZero_uid92_Divide1_q, clk => clk, aclr => areset );

    -- redist22_yIsZero_uid92_Divide1_q_14(DELAY,878)
    redist22_yIsZero_uid92_Divide1_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 13, reset_kind => "ASYNC" )
    PORT MAP ( xin => yIsZero_uid92_Divide1_q, xout => redist22_yIsZero_uid92_Divide1_q_14_q, clk => clk, aclr => areset );

    -- resFinal_uid112_Divide1(MUX,111)@15
    resFinal_uid112_Divide1_s <= redist22_yIsZero_uid92_Divide1_q_14_q;
    resFinal_uid112_Divide1_combproc: PROCESS (resFinal_uid112_Divide1_s, prodPostRightShiftPostRndRange_uid110_Divide1_b, cstValOvf_uid111_Divide1_q)
    BEGIN
        CASE (resFinal_uid112_Divide1_s) IS
            WHEN "0" => resFinal_uid112_Divide1_q <= prodPostRightShiftPostRndRange_uid110_Divide1_b;
            WHEN "1" => resFinal_uid112_Divide1_q <= cstValOvf_uid111_Divide1_q;
            WHEN OTHERS => resFinal_uid112_Divide1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- Convert1_sel_x(BITSELECT,4)@15
    Convert1_sel_x_b <= resFinal_uid112_Divide1_q(15 downto 0);

    -- redist38_Convert1_sel_x_b_1(DELAY,894)
    redist38_Convert1_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert1_sel_x_b, xout => redist38_Convert1_sel_x_b_1_q, clk => clk, aclr => areset );

    -- vCount_uid339_leadingZeros_uid114_Sqrt1(LOGICAL,338)@16 + 1
    vCount_uid339_leadingZeros_uid114_Sqrt1_qi <= "1" WHEN redist38_Convert1_sel_x_b_1_q = zs_uid198_zCount_uid52_Divide_q ELSE "0";
    vCount_uid339_leadingZeros_uid114_Sqrt1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid339_leadingZeros_uid114_Sqrt1_qi, xout => vCount_uid339_leadingZeros_uid114_Sqrt1_q, clk => clk, aclr => areset );

    -- redist39_Convert1_sel_x_b_2(DELAY,895)
    redist39_Convert1_sel_x_b_2 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist38_Convert1_sel_x_b_1_q, xout => redist39_Convert1_sel_x_b_2_q, clk => clk, aclr => areset );

    -- vStagei_uid342_leadingZeros_uid114_Sqrt1(MUX,341)@17
    vStagei_uid342_leadingZeros_uid114_Sqrt1_s <= vCount_uid339_leadingZeros_uid114_Sqrt1_q;
    vStagei_uid342_leadingZeros_uid114_Sqrt1_combproc: PROCESS (vStagei_uid342_leadingZeros_uid114_Sqrt1_s, redist39_Convert1_sel_x_b_2_q, mO_uid201_zCount_uid52_Divide_q)
    BEGIN
        CASE (vStagei_uid342_leadingZeros_uid114_Sqrt1_s) IS
            WHEN "0" => vStagei_uid342_leadingZeros_uid114_Sqrt1_q <= redist39_Convert1_sel_x_b_2_q;
            WHEN "1" => vStagei_uid342_leadingZeros_uid114_Sqrt1_q <= mO_uid201_zCount_uid52_Divide_q;
            WHEN OTHERS => vStagei_uid342_leadingZeros_uid114_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select(BITSELECT,850)@17
    rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_b <= vStagei_uid342_leadingZeros_uid114_Sqrt1_q(15 downto 8);
    rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_c <= vStagei_uid342_leadingZeros_uid114_Sqrt1_q(7 downto 0);

    -- vCount_uid345_leadingZeros_uid114_Sqrt1(LOGICAL,344)@17
    vCount_uid345_leadingZeros_uid114_Sqrt1_q <= "1" WHEN rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_b = zs_uid204_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid348_leadingZeros_uid114_Sqrt1(MUX,347)@17
    vStagei_uid348_leadingZeros_uid114_Sqrt1_s <= vCount_uid345_leadingZeros_uid114_Sqrt1_q;
    vStagei_uid348_leadingZeros_uid114_Sqrt1_combproc: PROCESS (vStagei_uid348_leadingZeros_uid114_Sqrt1_s, rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_b, rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid348_leadingZeros_uid114_Sqrt1_s) IS
            WHEN "0" => vStagei_uid348_leadingZeros_uid114_Sqrt1_q <= rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_b;
            WHEN "1" => vStagei_uid348_leadingZeros_uid114_Sqrt1_q <= rVStage_uid344_leadingZeros_uid114_Sqrt1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid348_leadingZeros_uid114_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select(BITSELECT,851)@17
    rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_b <= vStagei_uid348_leadingZeros_uid114_Sqrt1_q(7 downto 4);
    rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_c <= vStagei_uid348_leadingZeros_uid114_Sqrt1_q(3 downto 0);

    -- vCount_uid351_leadingZeros_uid114_Sqrt1(LOGICAL,350)@17
    vCount_uid351_leadingZeros_uid114_Sqrt1_q <= "1" WHEN rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_b = zs_uid210_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid354_leadingZeros_uid114_Sqrt1(MUX,353)@17
    vStagei_uid354_leadingZeros_uid114_Sqrt1_s <= vCount_uid351_leadingZeros_uid114_Sqrt1_q;
    vStagei_uid354_leadingZeros_uid114_Sqrt1_combproc: PROCESS (vStagei_uid354_leadingZeros_uid114_Sqrt1_s, rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_b, rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid354_leadingZeros_uid114_Sqrt1_s) IS
            WHEN "0" => vStagei_uid354_leadingZeros_uid114_Sqrt1_q <= rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_b;
            WHEN "1" => vStagei_uid354_leadingZeros_uid114_Sqrt1_q <= rVStage_uid350_leadingZeros_uid114_Sqrt1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid354_leadingZeros_uid114_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select(BITSELECT,852)@17
    rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_b <= vStagei_uid354_leadingZeros_uid114_Sqrt1_q(3 downto 2);
    rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_c <= vStagei_uid354_leadingZeros_uid114_Sqrt1_q(1 downto 0);

    -- vCount_uid357_leadingZeros_uid114_Sqrt1(LOGICAL,356)@17
    vCount_uid357_leadingZeros_uid114_Sqrt1_q <= "1" WHEN rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_b = zs_uid216_zCount_uid52_Divide_q ELSE "0";

    -- vStagei_uid360_leadingZeros_uid114_Sqrt1(MUX,359)@17
    vStagei_uid360_leadingZeros_uid114_Sqrt1_s <= vCount_uid357_leadingZeros_uid114_Sqrt1_q;
    vStagei_uid360_leadingZeros_uid114_Sqrt1_combproc: PROCESS (vStagei_uid360_leadingZeros_uid114_Sqrt1_s, rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_b, rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid360_leadingZeros_uid114_Sqrt1_s) IS
            WHEN "0" => vStagei_uid360_leadingZeros_uid114_Sqrt1_q <= rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_b;
            WHEN "1" => vStagei_uid360_leadingZeros_uid114_Sqrt1_q <= rVStage_uid356_leadingZeros_uid114_Sqrt1_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid360_leadingZeros_uid114_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid362_leadingZeros_uid114_Sqrt1(BITSELECT,361)@17
    rVStage_uid362_leadingZeros_uid114_Sqrt1_b <= vStagei_uid360_leadingZeros_uid114_Sqrt1_q(1 downto 1);

    -- vCount_uid363_leadingZeros_uid114_Sqrt1(LOGICAL,362)@17
    vCount_uid363_leadingZeros_uid114_Sqrt1_q <= "1" WHEN rVStage_uid362_leadingZeros_uid114_Sqrt1_b = GND_q ELSE "0";

    -- r_uid364_leadingZeros_uid114_Sqrt1(BITJOIN,363)@17
    r_uid364_leadingZeros_uid114_Sqrt1_q <= vCount_uid339_leadingZeros_uid114_Sqrt1_q & vCount_uid345_leadingZeros_uid114_Sqrt1_q & vCount_uid351_leadingZeros_uid114_Sqrt1_q & vCount_uid357_leadingZeros_uid114_Sqrt1_q & vCount_uid363_leadingZeros_uid114_Sqrt1_q;

    -- redist15_r_uid364_leadingZeros_uid114_Sqrt1_q_3(DELAY,871)
    redist15_r_uid364_leadingZeros_uid114_Sqrt1_q_3 : dspba_delay
    GENERIC MAP ( width => 5, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => r_uid364_leadingZeros_uid114_Sqrt1_q, xout => redist15_r_uid364_leadingZeros_uid114_Sqrt1_q_3_q, clk => clk, aclr => areset );

    -- inputAllZeros_uid194_Sqrt1(LOGICAL,193)@20 + 1
    inputAllZeros_uid194_Sqrt1_qi <= "1" WHEN redist15_r_uid364_leadingZeros_uid114_Sqrt1_q_3_q = cstW_uid193_Sqrt1_q ELSE "0";
    inputAllZeros_uid194_Sqrt1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => inputAllZeros_uid194_Sqrt1_qi, xout => inputAllZeros_uid194_Sqrt1_q, clk => clk, aclr => areset );

    -- inputNotAllZeros_uid195_Sqrt1(LOGICAL,194)@21
    inputNotAllZeros_uid195_Sqrt1_q <= not (inputAllZeros_uid194_Sqrt1_q);

    -- roundConstant_uid154_Sqrt1(CONSTANT,153)
    roundConstant_uid154_Sqrt1_q <= "000000000000000010";

    -- leftShiftStage2Idx1Rng1_uid731_xLeftShift_uid130_Sqrt1(BITSELECT,730)@17
    leftShiftStage2Idx1Rng1_uid731_xLeftShift_uid130_Sqrt1_in <= leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q(14 downto 0);
    leftShiftStage2Idx1Rng1_uid731_xLeftShift_uid130_Sqrt1_b <= leftShiftStage2Idx1Rng1_uid731_xLeftShift_uid130_Sqrt1_in(14 downto 0);

    -- leftShiftStage2Idx1_uid732_xLeftShift_uid130_Sqrt1(BITJOIN,731)@17
    leftShiftStage2Idx1_uid732_xLeftShift_uid130_Sqrt1_q <= leftShiftStage2Idx1Rng1_uid731_xLeftShift_uid130_Sqrt1_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid726_xLeftShift_uid130_Sqrt1(BITSELECT,725)@17
    leftShiftStage1Idx3Rng6_uid726_xLeftShift_uid130_Sqrt1_in <= leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q(9 downto 0);
    leftShiftStage1Idx3Rng6_uid726_xLeftShift_uid130_Sqrt1_b <= leftShiftStage1Idx3Rng6_uid726_xLeftShift_uid130_Sqrt1_in(9 downto 0);

    -- leftShiftStage1Idx3_uid727_xLeftShift_uid130_Sqrt1(BITJOIN,726)@17
    leftShiftStage1Idx3_uid727_xLeftShift_uid130_Sqrt1_q <= leftShiftStage1Idx3Rng6_uid726_xLeftShift_uid130_Sqrt1_b & leftShiftStage1Idx3Pad6_uid569_normY_uid53_Divide_q;

    -- leftShiftStage1Idx2Rng4_uid723_xLeftShift_uid130_Sqrt1(BITSELECT,722)@17
    leftShiftStage1Idx2Rng4_uid723_xLeftShift_uid130_Sqrt1_in <= leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q(11 downto 0);
    leftShiftStage1Idx2Rng4_uid723_xLeftShift_uid130_Sqrt1_b <= leftShiftStage1Idx2Rng4_uid723_xLeftShift_uid130_Sqrt1_in(11 downto 0);

    -- leftShiftStage1Idx2_uid724_xLeftShift_uid130_Sqrt1(BITJOIN,723)@17
    leftShiftStage1Idx2_uid724_xLeftShift_uid130_Sqrt1_q <= leftShiftStage1Idx2Rng4_uid723_xLeftShift_uid130_Sqrt1_b & zs_uid210_zCount_uid52_Divide_q;

    -- leftShiftStage1Idx1Rng2_uid720_xLeftShift_uid130_Sqrt1(BITSELECT,719)@17
    leftShiftStage1Idx1Rng2_uid720_xLeftShift_uid130_Sqrt1_in <= leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q(13 downto 0);
    leftShiftStage1Idx1Rng2_uid720_xLeftShift_uid130_Sqrt1_b <= leftShiftStage1Idx1Rng2_uid720_xLeftShift_uid130_Sqrt1_in(13 downto 0);

    -- leftShiftStage1Idx1_uid721_xLeftShift_uid130_Sqrt1(BITJOIN,720)@17
    leftShiftStage1Idx1_uid721_xLeftShift_uid130_Sqrt1_q <= leftShiftStage1Idx1Rng2_uid720_xLeftShift_uid130_Sqrt1_b & zs_uid216_zCount_uid52_Divide_q;

    -- leftShiftStage0Idx1Rng8_uid713_xLeftShift_uid130_Sqrt1(BITSELECT,712)@17
    leftShiftStage0Idx1Rng8_uid713_xLeftShift_uid130_Sqrt1_in <= redist39_Convert1_sel_x_b_2_q(7 downto 0);
    leftShiftStage0Idx1Rng8_uid713_xLeftShift_uid130_Sqrt1_b <= leftShiftStage0Idx1Rng8_uid713_xLeftShift_uid130_Sqrt1_in(7 downto 0);

    -- leftShiftStage0Idx1_uid714_xLeftShift_uid130_Sqrt1(BITJOIN,713)@17
    leftShiftStage0Idx1_uid714_xLeftShift_uid130_Sqrt1_q <= leftShiftStage0Idx1Rng8_uid713_xLeftShift_uid130_Sqrt1_b & zs_uid204_zCount_uid52_Divide_q;

    -- leftShiftStageSel4Dto3_uid717_xLeftShift_uid130_Sqrt1(BITSELECT,716)@17
    leftShiftStageSel4Dto3_uid717_xLeftShift_uid130_Sqrt1_b <= r_uid364_leadingZeros_uid114_Sqrt1_q(4 downto 3);

    -- leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1(MUX,717)@17
    leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_s <= leftShiftStageSel4Dto3_uid717_xLeftShift_uid130_Sqrt1_b;
    leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_combproc: PROCESS (leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_s, redist39_Convert1_sel_x_b_2_q, leftShiftStage0Idx1_uid714_xLeftShift_uid130_Sqrt1_q, zs_uid198_zCount_uid52_Divide_q)
    BEGIN
        CASE (leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_s) IS
            WHEN "00" => leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q <= redist39_Convert1_sel_x_b_2_q;
            WHEN "01" => leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q <= leftShiftStage0Idx1_uid714_xLeftShift_uid130_Sqrt1_q;
            WHEN "10" => leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q <= zs_uid198_zCount_uid52_Divide_q;
            WHEN "11" => leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q <= zs_uid198_zCount_uid52_Divide_q;
            WHEN OTHERS => leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel2Dto1_uid728_xLeftShift_uid130_Sqrt1(BITSELECT,727)@17
    leftShiftStageSel2Dto1_uid728_xLeftShift_uid130_Sqrt1_in <= r_uid364_leadingZeros_uid114_Sqrt1_q(2 downto 0);
    leftShiftStageSel2Dto1_uid728_xLeftShift_uid130_Sqrt1_b <= leftShiftStageSel2Dto1_uid728_xLeftShift_uid130_Sqrt1_in(2 downto 1);

    -- leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1(MUX,728)@17
    leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_s <= leftShiftStageSel2Dto1_uid728_xLeftShift_uid130_Sqrt1_b;
    leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_combproc: PROCESS (leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_s, leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q, leftShiftStage1Idx1_uid721_xLeftShift_uid130_Sqrt1_q, leftShiftStage1Idx2_uid724_xLeftShift_uid130_Sqrt1_q, leftShiftStage1Idx3_uid727_xLeftShift_uid130_Sqrt1_q)
    BEGIN
        CASE (leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_s) IS
            WHEN "00" => leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q <= leftShiftStage0_uid718_xLeftShift_uid130_Sqrt1_q;
            WHEN "01" => leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q <= leftShiftStage1Idx1_uid721_xLeftShift_uid130_Sqrt1_q;
            WHEN "10" => leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q <= leftShiftStage1Idx2_uid724_xLeftShift_uid130_Sqrt1_q;
            WHEN "11" => leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q <= leftShiftStage1Idx3_uid727_xLeftShift_uid130_Sqrt1_q;
            WHEN OTHERS => leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel0Dto0_uid733_xLeftShift_uid130_Sqrt1(BITSELECT,732)@17
    leftShiftStageSel0Dto0_uid733_xLeftShift_uid130_Sqrt1_in <= r_uid364_leadingZeros_uid114_Sqrt1_q(0 downto 0);
    leftShiftStageSel0Dto0_uid733_xLeftShift_uid130_Sqrt1_b <= leftShiftStageSel0Dto0_uid733_xLeftShift_uid130_Sqrt1_in(0 downto 0);

    -- leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1(MUX,733)@17
    leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_s <= leftShiftStageSel0Dto0_uid733_xLeftShift_uid130_Sqrt1_b;
    leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_combproc: PROCESS (leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_s, leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q, leftShiftStage2Idx1_uid732_xLeftShift_uid130_Sqrt1_q)
    BEGIN
        CASE (leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_s) IS
            WHEN "0" => leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_q <= leftShiftStage1_uid729_xLeftShift_uid130_Sqrt1_q;
            WHEN "1" => leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_q <= leftShiftStage2Idx1_uid732_xLeftShift_uid130_Sqrt1_q;
            WHEN OTHERS => leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- x0_uid132_Sqrt1_merged_bit_select(BITSELECT,855)@17
    x0_uid132_Sqrt1_merged_bit_select_in <= leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_q(14 downto 0);
    x0_uid132_Sqrt1_merged_bit_select_b <= x0_uid132_Sqrt1_merged_bit_select_in(14 downto 9);
    x0_uid132_Sqrt1_merged_bit_select_c <= x0_uid132_Sqrt1_merged_bit_select_in(8 downto 4);
    x0_uid132_Sqrt1_merged_bit_select_d <= x0_uid132_Sqrt1_merged_bit_select_in(3 downto 0);

    -- x2_msb_uid136_Sqrt1(BITSELECT,135)@17
    x2_msb_uid136_Sqrt1_b <= STD_LOGIC_VECTOR(x0_uid132_Sqrt1_merged_bit_select_d(3 downto 3));

    -- inv_x2_msb_uid149_Sqrt1(LOGICAL,148)@17 + 1
    inv_x2_msb_uid149_Sqrt1_qi <= not (x2_msb_uid136_Sqrt1_b);
    inv_x2_msb_uid149_Sqrt1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => inv_x2_msb_uid149_Sqrt1_qi, xout => inv_x2_msb_uid149_Sqrt1_q, clk => clk, aclr => areset );

    -- redist21_inv_x2_msb_uid149_Sqrt1_q_2(DELAY,877)
    redist21_inv_x2_msb_uid149_Sqrt1_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => inv_x2_msb_uid149_Sqrt1_q, xout => redist21_inv_x2_msb_uid149_Sqrt1_q_2_q, clk => clk, aclr => areset );

    -- x2_short_uid137_Sqrt1(BITSELECT,136)@17
    x2_short_uid137_Sqrt1_in <= x0_uid132_Sqrt1_merged_bit_select_d(2 downto 0);
    x2_short_uid137_Sqrt1_b <= x2_short_uid137_Sqrt1_in(2 downto 0);

    -- x2_xored_uid138_Sqrt1(LOGICAL,137)@17
    x2_xored_uid138_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((2 downto 1 => x2_msb_uid136_Sqrt1_b(0)) & x2_msb_uid136_Sqrt1_b));
    x2_xored_uid138_Sqrt1_q <= x2_short_uid137_Sqrt1_b xor x2_xored_uid138_Sqrt1_b;

    -- a1Addr_uid139_Sqrt1(BITJOIN,138)@17
    a1Addr_uid139_Sqrt1_q <= x0_uid132_Sqrt1_merged_bit_select_b & x2_xored_uid138_Sqrt1_q;

    -- a1Table_uid146_Sqrt1_lutmem(DUALMEM,739)@17 + 2
    -- in j@20000000
    a1Table_uid146_Sqrt1_lutmem_aa <= a1Addr_uid139_Sqrt1_q;
    a1Table_uid146_Sqrt1_lutmem_reset0 <= areset;
    a1Table_uid146_Sqrt1_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 6,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_a1Table_uid146_Sqrt1_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => a1Table_uid146_Sqrt1_lutmem_reset0,
        clock0 => clk,
        address_a => a1Table_uid146_Sqrt1_lutmem_aa,
        q_a => a1Table_uid146_Sqrt1_lutmem_ir
    );
    a1Table_uid146_Sqrt1_lutmem_r <= a1Table_uid146_Sqrt1_lutmem_ir(5 downto 0);

    -- a1TableOutSxt_uid150_Sqrt1(BITJOIN,149)@19
    a1TableOutSxt_uid150_Sqrt1_q <= GND_q & a1Table_uid146_Sqrt1_lutmem_r;

    -- a1TableOut_xored_uid151_Sqrt1(LOGICAL,150)@19
    a1TableOut_xored_uid151_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((6 downto 1 => redist21_inv_x2_msb_uid149_Sqrt1_q_2_q(0)) & redist21_inv_x2_msb_uid149_Sqrt1_q_2_q));
    a1TableOut_xored_uid151_Sqrt1_q <= a1TableOutSxt_uid150_Sqrt1_q xor a1TableOut_xored_uid151_Sqrt1_b;

    -- a1TableOut_xored_rintrpr_uid152_Sqrt1(BITSELECT,151)@19
    a1TableOut_xored_rintrpr_uid152_Sqrt1_in <= STD_LOGIC_VECTOR(a1TableOut_xored_uid151_Sqrt1_q(5 downto 0));
    a1TableOut_xored_rintrpr_uid152_Sqrt1_b <= STD_LOGIC_VECTOR(a1TableOut_xored_rintrpr_uid152_Sqrt1_in(5 downto 0));

    -- a0Addr_uid135_Sqrt1(BITJOIN,134)@17
    a0Addr_uid135_Sqrt1_q <= x0_uid132_Sqrt1_merged_bit_select_b & x0_uid132_Sqrt1_merged_bit_select_c;

    -- a0Table_uid143_Sqrt1_lutmem(DUALMEM,738)@17 + 2
    -- in j@20000000
    a0Table_uid143_Sqrt1_lutmem_aa <= a0Addr_uid135_Sqrt1_q;
    a0Table_uid143_Sqrt1_lutmem_reset0 <= areset;
    a0Table_uid143_Sqrt1_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 3,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_a0Table_uid143_Sqrt1_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => a0Table_uid143_Sqrt1_lutmem_reset0,
        clock0 => clk,
        address_a => a0Table_uid143_Sqrt1_lutmem_aa,
        q_a => a0Table_uid143_Sqrt1_lutmem_ir
    );
    a0Table_uid143_Sqrt1_lutmem_r <= a0Table_uid143_Sqrt1_lutmem_ir(2 downto 0);

    -- a0Table_uid142_Sqrt1_lutmem(DUALMEM,737)@17 + 2
    -- in j@20000000
    a0Table_uid142_Sqrt1_lutmem_aa <= a0Addr_uid135_Sqrt1_q;
    a0Table_uid142_Sqrt1_lutmem_reset0 <= areset;
    a0Table_uid142_Sqrt1_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 5,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_a0Table_uid142_Sqrt1_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => a0Table_uid142_Sqrt1_lutmem_reset0,
        clock0 => clk,
        address_a => a0Table_uid142_Sqrt1_lutmem_aa,
        q_a => a0Table_uid142_Sqrt1_lutmem_ir
    );
    a0Table_uid142_Sqrt1_lutmem_r <= a0Table_uid142_Sqrt1_lutmem_ir(4 downto 0);

    -- a0Table_uid141_Sqrt1_lutmem(DUALMEM,736)@17 + 2
    -- in j@20000000
    a0Table_uid141_Sqrt1_lutmem_aa <= a0Addr_uid135_Sqrt1_q;
    a0Table_uid141_Sqrt1_lutmem_reset0 <= areset;
    a0Table_uid141_Sqrt1_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 5,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_a0Table_uid141_Sqrt1_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => a0Table_uid141_Sqrt1_lutmem_reset0,
        clock0 => clk,
        address_a => a0Table_uid141_Sqrt1_lutmem_aa,
        q_a => a0Table_uid141_Sqrt1_lutmem_ir
    );
    a0Table_uid141_Sqrt1_lutmem_r <= a0Table_uid141_Sqrt1_lutmem_ir(4 downto 0);

    -- a0Table_uid140_Sqrt1_lutmem(DUALMEM,735)@17 + 2
    -- in j@20000000
    a0Table_uid140_Sqrt1_lutmem_aa <= a0Addr_uid135_Sqrt1_q;
    a0Table_uid140_Sqrt1_lutmem_reset0 <= areset;
    a0Table_uid140_Sqrt1_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 5,
        widthad_a => 11,
        numwords_a => 2048,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal_a0Table_uid140_Sqrt1_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => a0Table_uid140_Sqrt1_lutmem_reset0,
        clock0 => clk,
        address_a => a0Table_uid140_Sqrt1_lutmem_aa,
        q_a => a0Table_uid140_Sqrt1_lutmem_ir
    );
    a0Table_uid140_Sqrt1_lutmem_r <= a0Table_uid140_Sqrt1_lutmem_ir(4 downto 0);

    -- os_uid144_Sqrt1(BITJOIN,143)@19
    os_uid144_Sqrt1_q <= a0Table_uid143_Sqrt1_lutmem_r & a0Table_uid142_Sqrt1_lutmem_r & a0Table_uid141_Sqrt1_lutmem_r & a0Table_uid140_Sqrt1_lutmem_r;

    -- a0AddA1Xored_uid153_Sqrt1(ADD,152)@19
    a0AddA1Xored_uid153_Sqrt1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & os_uid144_Sqrt1_q));
    a0AddA1Xored_uid153_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 6 => a1TableOut_xored_rintrpr_uid152_Sqrt1_b(5)) & a1TableOut_xored_rintrpr_uid152_Sqrt1_b));
    a0AddA1Xored_uid153_Sqrt1_o <= STD_LOGIC_VECTOR(SIGNED(a0AddA1Xored_uid153_Sqrt1_a) + SIGNED(a0AddA1Xored_uid153_Sqrt1_b));
    a0AddA1Xored_uid153_Sqrt1_q <= a0AddA1Xored_uid153_Sqrt1_o(19 downto 0);

    -- resultInt_uid155_Sqrt1(ADD,154)@19
    resultInt_uid155_Sqrt1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => a0AddA1Xored_uid153_Sqrt1_q(19)) & a0AddA1Xored_uid153_Sqrt1_q));
    resultInt_uid155_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & roundConstant_uid154_Sqrt1_q));
    resultInt_uid155_Sqrt1_o <= STD_LOGIC_VECTOR(SIGNED(resultInt_uid155_Sqrt1_a) + SIGNED(resultInt_uid155_Sqrt1_b));
    resultInt_uid155_Sqrt1_q <= resultInt_uid155_Sqrt1_o(20 downto 0);

    -- resultPreZero_uid156_Sqrt1(BITSELECT,155)@19
    resultPreZero_uid156_Sqrt1_in <= resultInt_uid155_Sqrt1_q(17 downto 0);
    resultPreZero_uid156_Sqrt1_b <= resultPreZero_uid156_Sqrt1_in(17 downto 1);

    -- resPreZeroMSB_uid159_Sqrt1(BITSELECT,158)@19
    resPreZeroMSB_uid159_Sqrt1_b <= STD_LOGIC_VECTOR(resultPreZero_uid156_Sqrt1_b(16 downto 16));

    -- inNotAllZero_uid157_Sqrt1(LOGICAL,156)@17 + 1
    inNotAllZero_uid157_Sqrt1_qi <= "1" WHEN leftShiftStage2_uid734_xLeftShift_uid130_Sqrt1_q /= "0000000000000000" ELSE "0";
    inNotAllZero_uid157_Sqrt1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => inNotAllZero_uid157_Sqrt1_qi, xout => inNotAllZero_uid157_Sqrt1_q, clk => clk, aclr => areset );

    -- redist20_inNotAllZero_uid157_Sqrt1_q_2(DELAY,876)
    redist20_inNotAllZero_uid157_Sqrt1_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => inNotAllZero_uid157_Sqrt1_q, xout => redist20_inNotAllZero_uid157_Sqrt1_q_2_q, clk => clk, aclr => areset );

    -- msbResultPreZero_uid160_Sqrt1(LOGICAL,159)@19 + 1
    msbResultPreZero_uid160_Sqrt1_qi <= redist20_inNotAllZero_uid157_Sqrt1_q_2_q and resPreZeroMSB_uid159_Sqrt1_b;
    msbResultPreZero_uid160_Sqrt1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => msbResultPreZero_uid160_Sqrt1_qi, xout => msbResultPreZero_uid160_Sqrt1_q, clk => clk, aclr => areset );

    -- resPreZeroBottom_uid158_Sqrt1(BITSELECT,157)@19
    resPreZeroBottom_uid158_Sqrt1_in <= resultPreZero_uid156_Sqrt1_b(15 downto 0);
    resPreZeroBottom_uid158_Sqrt1_b <= resPreZeroBottom_uid158_Sqrt1_in(15 downto 0);

    -- redist19_resPreZeroBottom_uid158_Sqrt1_b_1(DELAY,875)
    redist19_resPreZeroBottom_uid158_Sqrt1_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => resPreZeroBottom_uid158_Sqrt1_b, xout => redist19_resPreZeroBottom_uid158_Sqrt1_b_1_q, clk => clk, aclr => areset );

    -- result_uid161_Sqrt1(BITJOIN,160)@20
    result_uid161_Sqrt1_q <= msbResultPreZero_uid160_Sqrt1_q & redist19_resPreZeroBottom_uid158_Sqrt1_b_1_q;

    -- invNegShiftEven_uid164_Sqrt1(BITSELECT,163)@20
    invNegShiftEven_uid164_Sqrt1_b <= STD_LOGIC_VECTOR(result_uid161_Sqrt1_q(16 downto 16));

    -- negShiftEven_uid165_Sqrt1(LOGICAL,164)@20
    negShiftEven_uid165_Sqrt1_q <= not (invNegShiftEven_uid164_Sqrt1_b);

    -- parityOddOriginal_uid119_Sqrt1(BITSELECT,118)@20
    parityOddOriginal_uid119_Sqrt1_in <= STD_LOGIC_VECTOR(redist15_r_uid364_leadingZeros_uid114_Sqrt1_q_3_q(0 downto 0));
    parityOddOriginal_uid119_Sqrt1_b <= STD_LOGIC_VECTOR(parityOddOriginal_uid119_Sqrt1_in(0 downto 0));

    -- EvenBranchAndNegUpdate_uid169_Sqrt1(LOGICAL,168)@20
    EvenBranchAndNegUpdate_uid169_Sqrt1_q <= parityOddOriginal_uid119_Sqrt1_b and negShiftEven_uid165_Sqrt1_q;

    -- maxValInOutFormat_uid377_finalMult_uid162_Sqrt1(CONSTANT,376)
    maxValInOutFormat_uid377_finalMult_uid162_Sqrt1_q <= "111111111111111111";

    -- minValueInFormat_uid378_finalMult_uid162_Sqrt1(CONSTANT,377)
    minValueInFormat_uid378_finalMult_uid162_Sqrt1_q <= "000000000000000000";

    -- xv0_uid366_finalMult_uid162_Sqrt1(BITSELECT,365)@20
    xv0_uid366_finalMult_uid162_Sqrt1_in <= result_uid161_Sqrt1_q(5 downto 0);
    xv0_uid366_finalMult_uid162_Sqrt1_b <= xv0_uid366_finalMult_uid162_Sqrt1_in(5 downto 0);

    -- p0_uid371_finalMult_uid162_Sqrt1(LOOKUP,370)@20
    p0_uid371_finalMult_uid162_Sqrt1_combproc: PROCESS (xv0_uid366_finalMult_uid162_Sqrt1_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv0_uid366_finalMult_uid162_Sqrt1_b) IS
            WHEN "000000" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0000000000";
            WHEN "000001" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0000001011";
            WHEN "000010" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0000010110";
            WHEN "000011" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0000100001";
            WHEN "000100" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0000101101";
            WHEN "000101" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0000111000";
            WHEN "000110" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0001000011";
            WHEN "000111" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0001001111";
            WHEN "001000" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0001011010";
            WHEN "001001" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0001100101";
            WHEN "001010" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0001110001";
            WHEN "001011" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0001111100";
            WHEN "001100" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0010000111";
            WHEN "001101" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0010010011";
            WHEN "001110" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0010011110";
            WHEN "001111" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0010101001";
            WHEN "010000" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0010110101";
            WHEN "010001" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0011000000";
            WHEN "010010" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0011001011";
            WHEN "010011" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0011010110";
            WHEN "010100" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0011100010";
            WHEN "010101" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0011101101";
            WHEN "010110" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0011111000";
            WHEN "010111" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0100000100";
            WHEN "011000" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0100001111";
            WHEN "011001" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0100011010";
            WHEN "011010" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0100100110";
            WHEN "011011" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0100110001";
            WHEN "011100" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0100111100";
            WHEN "011101" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0101001000";
            WHEN "011110" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0101010011";
            WHEN "011111" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0101011110";
            WHEN "100000" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0101101010";
            WHEN "100001" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0101110101";
            WHEN "100010" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0110000000";
            WHEN "100011" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0110001011";
            WHEN "100100" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0110010111";
            WHEN "100101" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0110100010";
            WHEN "100110" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0110101101";
            WHEN "100111" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0110111001";
            WHEN "101000" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0111000100";
            WHEN "101001" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0111001111";
            WHEN "101010" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0111011011";
            WHEN "101011" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0111100110";
            WHEN "101100" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0111110001";
            WHEN "101101" => p0_uid371_finalMult_uid162_Sqrt1_q <= "0111111101";
            WHEN "101110" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1000001000";
            WHEN "101111" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1000010011";
            WHEN "110000" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1000011111";
            WHEN "110001" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1000101010";
            WHEN "110010" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1000110101";
            WHEN "110011" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1001000000";
            WHEN "110100" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1001001100";
            WHEN "110101" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1001010111";
            WHEN "110110" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1001100010";
            WHEN "110111" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1001101110";
            WHEN "111000" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1001111001";
            WHEN "111001" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1010000100";
            WHEN "111010" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1010010000";
            WHEN "111011" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1010011011";
            WHEN "111100" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1010100110";
            WHEN "111101" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1010110010";
            WHEN "111110" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1010111101";
            WHEN "111111" => p0_uid371_finalMult_uid162_Sqrt1_q <= "1011001000";
            WHEN OTHERS => -- unreachable
                           p0_uid371_finalMult_uid162_Sqrt1_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- xv2_uid368_finalMult_uid162_Sqrt1(BITSELECT,367)@20
    xv2_uid368_finalMult_uid162_Sqrt1_b <= result_uid161_Sqrt1_q(16 downto 12);

    -- p2_uid369_finalMult_uid162_Sqrt1(LOOKUP,368)@20
    p2_uid369_finalMult_uid162_Sqrt1_combproc: PROCESS (xv2_uid368_finalMult_uid162_Sqrt1_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv2_uid368_finalMult_uid162_Sqrt1_b) IS
            WHEN "00000" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000000000000000000010";
            WHEN "00001" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000000101101010000100";
            WHEN "00010" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000001011010100000110";
            WHEN "00011" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000010000111110001001";
            WHEN "00100" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000010110101000001011";
            WHEN "00101" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000011100010010001110";
            WHEN "00110" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000100001111100010000";
            WHEN "00111" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000100111100110010011";
            WHEN "01000" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000101101010000010101";
            WHEN "01001" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000110010111010011000";
            WHEN "01010" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000111000100100011010";
            WHEN "01011" => p2_uid369_finalMult_uid162_Sqrt1_q <= "000111110001110011101";
            WHEN "01100" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001000011111000011111";
            WHEN "01101" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001001001100010100010";
            WHEN "01110" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001001111001100100100";
            WHEN "01111" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001010100110110100111";
            WHEN "10000" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001011010100000101001";
            WHEN "10001" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001100000001010101100";
            WHEN "10010" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001100101110100101110";
            WHEN "10011" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001101011011110110001";
            WHEN "10100" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001110001001000110011";
            WHEN "10101" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001110110110010110101";
            WHEN "10110" => p2_uid369_finalMult_uid162_Sqrt1_q <= "001111100011100111000";
            WHEN "10111" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010000010000110111010";
            WHEN "11000" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010000111110000111101";
            WHEN "11001" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010001101011010111111";
            WHEN "11010" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010010011000101000010";
            WHEN "11011" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010011000101111000100";
            WHEN "11100" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010011110011001000111";
            WHEN "11101" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010100100000011001001";
            WHEN "11110" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010101001101101001100";
            WHEN "11111" => p2_uid369_finalMult_uid162_Sqrt1_q <= "010101111010111001110";
            WHEN OTHERS => -- unreachable
                           p2_uid369_finalMult_uid162_Sqrt1_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1(ADD,373)@20
    lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_a <= STD_LOGIC_VECTOR("0" & p2_uid369_finalMult_uid162_Sqrt1_q);
    lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_b <= STD_LOGIC_VECTOR("0000000" & lowRangeB_uid372_finalMult_uid162_Sqrt1_merged_bit_select_c);
    lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_o <= STD_LOGIC_VECTOR(UNSIGNED(lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_a) + UNSIGNED(lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_b));
    lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_q <= lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_o(21 downto 0);

    -- xv1_uid367_finalMult_uid162_Sqrt1(BITSELECT,366)@20
    xv1_uid367_finalMult_uid162_Sqrt1_in <= result_uid161_Sqrt1_q(11 downto 0);
    xv1_uid367_finalMult_uid162_Sqrt1_b <= xv1_uid367_finalMult_uid162_Sqrt1_in(11 downto 6);

    -- p1_uid370_finalMult_uid162_Sqrt1(LOOKUP,369)@20
    p1_uid370_finalMult_uid162_Sqrt1_combproc: PROCESS (xv1_uid367_finalMult_uid162_Sqrt1_b)
    BEGIN
        -- Begin reserved scope level
        CASE (xv1_uid367_finalMult_uid162_Sqrt1_b) IS
            WHEN "000000" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0000000000000000";
            WHEN "000001" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0000001011010100";
            WHEN "000010" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0000010110101000";
            WHEN "000011" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0000100001111100";
            WHEN "000100" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0000101101010000";
            WHEN "000101" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0000111000100100";
            WHEN "000110" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0001000011111000";
            WHEN "000111" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0001001111001100";
            WHEN "001000" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0001011010100000";
            WHEN "001001" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0001100101110100";
            WHEN "001010" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0001110001001000";
            WHEN "001011" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0001111100011100";
            WHEN "001100" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0010000111110000";
            WHEN "001101" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0010010011000101";
            WHEN "001110" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0010011110011001";
            WHEN "001111" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0010101001101101";
            WHEN "010000" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0010110101000001";
            WHEN "010001" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0011000000010101";
            WHEN "010010" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0011001011101001";
            WHEN "010011" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0011010110111101";
            WHEN "010100" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0011100010010001";
            WHEN "010101" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0011101101100101";
            WHEN "010110" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0011111000111001";
            WHEN "010111" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0100000100001101";
            WHEN "011000" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0100001111100001";
            WHEN "011001" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0100011010110101";
            WHEN "011010" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0100100110001010";
            WHEN "011011" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0100110001011110";
            WHEN "011100" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0100111100110010";
            WHEN "011101" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0101001000000110";
            WHEN "011110" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0101010011011010";
            WHEN "011111" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0101011110101110";
            WHEN "100000" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0101101010000010";
            WHEN "100001" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0101110101010110";
            WHEN "100010" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0110000000101010";
            WHEN "100011" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0110001011111110";
            WHEN "100100" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0110010111010010";
            WHEN "100101" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0110100010100110";
            WHEN "100110" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0110101101111010";
            WHEN "100111" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0110111001001111";
            WHEN "101000" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0111000100100011";
            WHEN "101001" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0111001111110111";
            WHEN "101010" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0111011011001011";
            WHEN "101011" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0111100110011111";
            WHEN "101100" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0111110001110011";
            WHEN "101101" => p1_uid370_finalMult_uid162_Sqrt1_q <= "0111111101000111";
            WHEN "101110" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1000001000011011";
            WHEN "101111" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1000010011101111";
            WHEN "110000" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1000011111000011";
            WHEN "110001" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1000101010010111";
            WHEN "110010" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1000110101101011";
            WHEN "110011" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1001000000111111";
            WHEN "110100" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1001001100010100";
            WHEN "110101" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1001010111101000";
            WHEN "110110" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1001100010111100";
            WHEN "110111" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1001101110010000";
            WHEN "111000" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1001111001100100";
            WHEN "111001" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1010000100111000";
            WHEN "111010" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1010010000001100";
            WHEN "111011" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1010011011100000";
            WHEN "111100" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1010100110110100";
            WHEN "111101" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1010110010001000";
            WHEN "111110" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1010111101011100";
            WHEN "111111" => p1_uid370_finalMult_uid162_Sqrt1_q <= "1011001000110000";
            WHEN OTHERS => -- unreachable
                           p1_uid370_finalMult_uid162_Sqrt1_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- lowRangeB_uid372_finalMult_uid162_Sqrt1_merged_bit_select(BITSELECT,853)@20
    lowRangeB_uid372_finalMult_uid162_Sqrt1_merged_bit_select_b <= p1_uid370_finalMult_uid162_Sqrt1_q(0 downto 0);
    lowRangeB_uid372_finalMult_uid162_Sqrt1_merged_bit_select_c <= p1_uid370_finalMult_uid162_Sqrt1_q(15 downto 1);

    -- lev1_a0_uid375_finalMult_uid162_Sqrt1(BITJOIN,374)@20
    lev1_a0_uid375_finalMult_uid162_Sqrt1_q <= lev1_a0sumAHighB_uid374_finalMult_uid162_Sqrt1_q & lowRangeB_uid372_finalMult_uid162_Sqrt1_merged_bit_select_b;

    -- lev2_a0_uid376_finalMult_uid162_Sqrt1(ADD,375)@20
    lev2_a0_uid376_finalMult_uid162_Sqrt1_a <= STD_LOGIC_VECTOR("0" & lev1_a0_uid375_finalMult_uid162_Sqrt1_q);
    lev2_a0_uid376_finalMult_uid162_Sqrt1_b <= STD_LOGIC_VECTOR("00000000000000" & p0_uid371_finalMult_uid162_Sqrt1_q);
    lev2_a0_uid376_finalMult_uid162_Sqrt1_o <= STD_LOGIC_VECTOR(UNSIGNED(lev2_a0_uid376_finalMult_uid162_Sqrt1_a) + UNSIGNED(lev2_a0_uid376_finalMult_uid162_Sqrt1_b));
    lev2_a0_uid376_finalMult_uid162_Sqrt1_q <= lev2_a0_uid376_finalMult_uid162_Sqrt1_o(23 downto 0);

    -- sR_uid386_finalMult_uid162_Sqrt1(BITSELECT,385)@20
    sR_uid386_finalMult_uid162_Sqrt1_in <= lev2_a0_uid376_finalMult_uid162_Sqrt1_q(20 downto 0);
    sR_uid386_finalMult_uid162_Sqrt1_b <= sR_uid386_finalMult_uid162_Sqrt1_in(20 downto 3);

    -- updatedX_uid380_finalMult_uid162_Sqrt1(BITJOIN,379)@20
    updatedX_uid380_finalMult_uid162_Sqrt1_q <= maxValInOutFormat_uid377_finalMult_uid162_Sqrt1_q & paddingX_uid379_finalMult_uid162_Sqrt1_q;

    -- ovf_uid379_finalMult_uid162_Sqrt1(COMPARE,380)@20
    ovf_uid379_finalMult_uid162_Sqrt1_a <= STD_LOGIC_VECTOR("00000" & updatedX_uid380_finalMult_uid162_Sqrt1_q);
    ovf_uid379_finalMult_uid162_Sqrt1_b <= STD_LOGIC_VECTOR("00" & lev2_a0_uid376_finalMult_uid162_Sqrt1_q);
    ovf_uid379_finalMult_uid162_Sqrt1_o <= STD_LOGIC_VECTOR(UNSIGNED(ovf_uid379_finalMult_uid162_Sqrt1_a) - UNSIGNED(ovf_uid379_finalMult_uid162_Sqrt1_b));
    ovf_uid379_finalMult_uid162_Sqrt1_c(0) <= ovf_uid379_finalMult_uid162_Sqrt1_o(25);

    -- updatedY_uid383_finalMult_uid162_Sqrt1(BITJOIN,382)@20
    updatedY_uid383_finalMult_uid162_Sqrt1_q <= minValueInFormat_uid378_finalMult_uid162_Sqrt1_q & paddingX_uid379_finalMult_uid162_Sqrt1_q;

    -- udf_uid382_finalMult_uid162_Sqrt1(COMPARE,383)@20
    udf_uid382_finalMult_uid162_Sqrt1_a <= STD_LOGIC_VECTOR("00" & lev2_a0_uid376_finalMult_uid162_Sqrt1_q);
    udf_uid382_finalMult_uid162_Sqrt1_b <= STD_LOGIC_VECTOR("00000" & updatedY_uid383_finalMult_uid162_Sqrt1_q);
    udf_uid382_finalMult_uid162_Sqrt1_o <= STD_LOGIC_VECTOR(UNSIGNED(udf_uid382_finalMult_uid162_Sqrt1_a) - UNSIGNED(udf_uid382_finalMult_uid162_Sqrt1_b));
    udf_uid382_finalMult_uid162_Sqrt1_c(0) <= udf_uid382_finalMult_uid162_Sqrt1_o(25);

    -- ovfudfcond_uid385_finalMult_uid162_Sqrt1(BITJOIN,384)@20
    ovfudfcond_uid385_finalMult_uid162_Sqrt1_q <= ovf_uid379_finalMult_uid162_Sqrt1_c & udf_uid382_finalMult_uid162_Sqrt1_c;

    -- sRA0_uid387_finalMult_uid162_Sqrt1(MUX,386)@20
    sRA0_uid387_finalMult_uid162_Sqrt1_s <= ovfudfcond_uid385_finalMult_uid162_Sqrt1_q;
    sRA0_uid387_finalMult_uid162_Sqrt1_combproc: PROCESS (sRA0_uid387_finalMult_uid162_Sqrt1_s, sR_uid386_finalMult_uid162_Sqrt1_b, minValueInFormat_uid378_finalMult_uid162_Sqrt1_q, maxValInOutFormat_uid377_finalMult_uid162_Sqrt1_q)
    BEGIN
        CASE (sRA0_uid387_finalMult_uid162_Sqrt1_s) IS
            WHEN "00" => sRA0_uid387_finalMult_uid162_Sqrt1_q <= sR_uid386_finalMult_uid162_Sqrt1_b;
            WHEN "01" => sRA0_uid387_finalMult_uid162_Sqrt1_q <= minValueInFormat_uid378_finalMult_uid162_Sqrt1_q;
            WHEN "10" => sRA0_uid387_finalMult_uid162_Sqrt1_q <= maxValInOutFormat_uid377_finalMult_uid162_Sqrt1_q;
            WHEN "11" => sRA0_uid387_finalMult_uid162_Sqrt1_q <= maxValInOutFormat_uid377_finalMult_uid162_Sqrt1_q;
            WHEN OTHERS => sRA0_uid387_finalMult_uid162_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- finalMultLSBRange_uid163_Sqrt1(BITSELECT,162)@20
    finalMultLSBRange_uid163_Sqrt1_b <= sRA0_uid387_finalMult_uid162_Sqrt1_q(17 downto 1);

    -- negShiftOdd_uid166_Sqrt1(BITSELECT,165)@20
    negShiftOdd_uid166_Sqrt1_b <= finalMultLSBRange_uid163_Sqrt1_b(16 downto 16);

    -- negShiftOdd_uid167_Sqrt1(LOGICAL,166)@20
    negShiftOdd_uid167_Sqrt1_q <= not (negShiftOdd_uid166_Sqrt1_b);

    -- parityOddOriginalInv_uid120_Sqrt1(LOGICAL,119)@20
    parityOddOriginalInv_uid120_Sqrt1_q <= not (parityOddOriginal_uid119_Sqrt1_b);

    -- OddBranchAndNegUpdate_uid170_Sqrt1(LOGICAL,169)@20
    OddBranchAndNegUpdate_uid170_Sqrt1_q <= parityOddOriginalInv_uid120_Sqrt1_q and negShiftOdd_uid167_Sqrt1_q;

    -- shiftUpdateValue_uid171_Sqrt1(LOGICAL,170)@20
    shiftUpdateValue_uid171_Sqrt1_q <= OddBranchAndNegUpdate_uid170_Sqrt1_q or EvenBranchAndNegUpdate_uid169_Sqrt1_q;

    -- redist18_shiftUpdateValue_uid171_Sqrt1_q_1(DELAY,874)
    redist18_shiftUpdateValue_uid171_Sqrt1_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => shiftUpdateValue_uid171_Sqrt1_q, xout => redist18_shiftUpdateValue_uid171_Sqrt1_q_1_q, clk => clk, aclr => areset );

    -- shiftConstant_uid115_Sqrt1(CONSTANT,114)
    shiftConstant_uid115_Sqrt1_q <= "11";

    -- inExponent_uid116_Sqrt1(SUB,115)@20
    inExponent_uid116_Sqrt1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 2 => shiftConstant_uid115_Sqrt1_q(1)) & shiftConstant_uid115_Sqrt1_q));
    inExponent_uid116_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist15_r_uid364_leadingZeros_uid114_Sqrt1_q_3_q));
    inExponent_uid116_Sqrt1_o <= STD_LOGIC_VECTOR(SIGNED(inExponent_uid116_Sqrt1_a) - SIGNED(inExponent_uid116_Sqrt1_b));
    inExponent_uid116_Sqrt1_q <= inExponent_uid116_Sqrt1_o(6 downto 0);

    -- outExponentOdd_uid124_Sqrt1(ADD,123)@20
    outExponentOdd_uid124_Sqrt1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => inExponent_uid116_Sqrt1_q(6)) & inExponent_uid116_Sqrt1_q));
    outExponentOdd_uid124_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000" & VCC_q));
    outExponentOdd_uid124_Sqrt1_o <= STD_LOGIC_VECTOR(SIGNED(outExponentOdd_uid124_Sqrt1_a) + SIGNED(outExponentOdd_uid124_Sqrt1_b));
    outExponentOdd_uid124_Sqrt1_q <= outExponentOdd_uid124_Sqrt1_o(7 downto 0);

    -- outExponentOdd_uid125_Sqrt1(BITSELECT,124)@20
    outExponentOdd_uid125_Sqrt1_in <= STD_LOGIC_VECTOR(outExponentOdd_uid124_Sqrt1_q(6 downto 0));
    outExponentOdd_uid125_Sqrt1_b <= STD_LOGIC_VECTOR(outExponentOdd_uid125_Sqrt1_in(6 downto 1));

    -- outExponentEven_uid126_Sqrt1(BITSELECT,125)@20
    outExponentEven_uid126_Sqrt1_b <= STD_LOGIC_VECTOR(inExponent_uid116_Sqrt1_q(6 downto 1));

    -- outputExponent_uid127_Sqrt1(MUX,126)@20 + 1
    outputExponent_uid127_Sqrt1_s <= parityOddOriginalInv_uid120_Sqrt1_q;
    outputExponent_uid127_Sqrt1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            outputExponent_uid127_Sqrt1_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (outputExponent_uid127_Sqrt1_s) IS
                WHEN "0" => outputExponent_uid127_Sqrt1_q <= outExponentEven_uid126_Sqrt1_b;
                WHEN "1" => outputExponent_uid127_Sqrt1_q <= outExponentOdd_uid125_Sqrt1_b;
                WHEN OTHERS => outputExponent_uid127_Sqrt1_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- msbo_uid128_Sqrt1(CONSTANT,127)
    msbo_uid128_Sqrt1_q <= "111111";

    -- shiftOutVal_uid129_Sqrt1(SUB,128)@21
    shiftOutVal_uid129_Sqrt1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((6 downto 6 => msbo_uid128_Sqrt1_q(5)) & msbo_uid128_Sqrt1_q));
    shiftOutVal_uid129_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((6 downto 6 => outputExponent_uid127_Sqrt1_q(5)) & outputExponent_uid127_Sqrt1_q));
    shiftOutVal_uid129_Sqrt1_o <= STD_LOGIC_VECTOR(SIGNED(shiftOutVal_uid129_Sqrt1_a) - SIGNED(shiftOutVal_uid129_Sqrt1_b));
    shiftOutVal_uid129_Sqrt1_q <= shiftOutVal_uid129_Sqrt1_o(6 downto 0);

    -- shiftOutValUpdated_uid181_Sqrt1(ADD,180)@21
    shiftOutValUpdated_uid181_Sqrt1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 7 => shiftOutVal_uid129_Sqrt1_q(6)) & shiftOutVal_uid129_Sqrt1_q));
    shiftOutValUpdated_uid181_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000" & redist18_shiftUpdateValue_uid171_Sqrt1_q_1_q));
    shiftOutValUpdated_uid181_Sqrt1_o <= STD_LOGIC_VECTOR(SIGNED(shiftOutValUpdated_uid181_Sqrt1_a) + SIGNED(shiftOutValUpdated_uid181_Sqrt1_b));
    shiftOutValUpdated_uid181_Sqrt1_q <= shiftOutValUpdated_uid181_Sqrt1_o(7 downto 0);

    -- sat_uid182_Sqrt1(BITSELECT,181)@21
    sat_uid182_Sqrt1_b <= STD_LOGIC_VECTOR(shiftOutValUpdated_uid181_Sqrt1_q(7 downto 7));

    -- satOrOvfPostRnd_uid191_Sqrt1(LOGICAL,190)@21
    satOrOvfPostRnd_uid191_Sqrt1_q <= sat_uid182_Sqrt1_b or resultFinalPreSat_uid189_Sqrt1_merged_bit_select_c;

    -- rightShiftStage0Idx3_uid751_xRightShiftFinal_uid184_Sqrt1(CONSTANT,750)
    rightShiftStage0Idx3_uid751_xRightShiftFinal_uid184_Sqrt1_q <= "00000000000000000";

    -- rightShiftStage2Idx1Rng1_uid765_xRightShiftFinal_uid184_Sqrt1(BITSELECT,764)@21
    rightShiftStage2Idx1Rng1_uid765_xRightShiftFinal_uid184_Sqrt1_b <= rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q(16 downto 1);

    -- rightShiftStage2Idx1_uid767_xRightShiftFinal_uid184_Sqrt1(BITJOIN,766)@21
    rightShiftStage2Idx1_uid767_xRightShiftFinal_uid184_Sqrt1_q <= GND_q & rightShiftStage2Idx1Rng1_uid765_xRightShiftFinal_uid184_Sqrt1_b;

    -- rightShiftStage1Idx3Rng6_uid760_xRightShiftFinal_uid184_Sqrt1(BITSELECT,759)@21
    rightShiftStage1Idx3Rng6_uid760_xRightShiftFinal_uid184_Sqrt1_b <= rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q(16 downto 6);

    -- rightShiftStage1Idx3_uid762_xRightShiftFinal_uid184_Sqrt1(BITJOIN,761)@21
    rightShiftStage1Idx3_uid762_xRightShiftFinal_uid184_Sqrt1_q <= leftShiftStage1Idx3Pad6_uid569_normY_uid53_Divide_q & rightShiftStage1Idx3Rng6_uid760_xRightShiftFinal_uid184_Sqrt1_b;

    -- rightShiftStage1Idx2Rng4_uid757_xRightShiftFinal_uid184_Sqrt1(BITSELECT,756)@21
    rightShiftStage1Idx2Rng4_uid757_xRightShiftFinal_uid184_Sqrt1_b <= rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q(16 downto 4);

    -- rightShiftStage1Idx2_uid759_xRightShiftFinal_uid184_Sqrt1(BITJOIN,758)@21
    rightShiftStage1Idx2_uid759_xRightShiftFinal_uid184_Sqrt1_q <= zs_uid210_zCount_uid52_Divide_q & rightShiftStage1Idx2Rng4_uid757_xRightShiftFinal_uid184_Sqrt1_b;

    -- rightShiftStage1Idx1Rng2_uid754_xRightShiftFinal_uid184_Sqrt1(BITSELECT,753)@21
    rightShiftStage1Idx1Rng2_uid754_xRightShiftFinal_uid184_Sqrt1_b <= rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q(16 downto 2);

    -- rightShiftStage1Idx1_uid756_xRightShiftFinal_uid184_Sqrt1(BITJOIN,755)@21
    rightShiftStage1Idx1_uid756_xRightShiftFinal_uid184_Sqrt1_q <= zs_uid216_zCount_uid52_Divide_q & rightShiftStage1Idx1Rng2_uid754_xRightShiftFinal_uid184_Sqrt1_b;

    -- rightShiftStage0Idx2Rng16_uid748_xRightShiftFinal_uid184_Sqrt1(BITSELECT,747)@21
    rightShiftStage0Idx2Rng16_uid748_xRightShiftFinal_uid184_Sqrt1_b <= shifterInData_uid180_Sqrt1_q(16 downto 16);

    -- rightShiftStage0Idx2_uid750_xRightShiftFinal_uid184_Sqrt1(BITJOIN,749)@21
    rightShiftStage0Idx2_uid750_xRightShiftFinal_uid184_Sqrt1_q <= zs_uid198_zCount_uid52_Divide_q & rightShiftStage0Idx2Rng16_uid748_xRightShiftFinal_uid184_Sqrt1_b;

    -- rightShiftStage0Idx1Rng8_uid745_xRightShiftFinal_uid184_Sqrt1(BITSELECT,744)@21
    rightShiftStage0Idx1Rng8_uid745_xRightShiftFinal_uid184_Sqrt1_b <= shifterInData_uid180_Sqrt1_q(16 downto 8);

    -- rightShiftStage0Idx1_uid747_xRightShiftFinal_uid184_Sqrt1(BITJOIN,746)@21
    rightShiftStage0Idx1_uid747_xRightShiftFinal_uid184_Sqrt1_q <= zs_uid204_zCount_uid52_Divide_q & rightShiftStage0Idx1Rng8_uid745_xRightShiftFinal_uid184_Sqrt1_b;

    -- finalMultBottomBits_uid173_Sqrt1(BITSELECT,172)@20
    finalMultBottomBits_uid173_Sqrt1_in <= sRA0_uid387_finalMult_uid162_Sqrt1_q(16 downto 0);
    finalMultBottomBits_uid173_Sqrt1_b <= finalMultBottomBits_uid173_Sqrt1_in(16 downto 0);

    -- resultBottomBits_bottomRange_uid175_Sqrt1(BITSELECT,174)@20
    resultBottomBits_bottomRange_uid175_Sqrt1_in <= result_uid161_Sqrt1_q(15 downto 0);
    resultBottomBits_bottomRange_uid175_Sqrt1_b <= resultBottomBits_bottomRange_uid175_Sqrt1_in(15 downto 0);

    -- resultBottomBits_mergedSignalTM_uid176_Sqrt1(BITJOIN,175)@20
    resultBottomBits_mergedSignalTM_uid176_Sqrt1_q <= resultBottomBits_bottomRange_uid175_Sqrt1_b & GND_q;

    -- negShiftEvenParityOdd_uid172_Sqrt1(BITJOIN,171)@20
    negShiftEvenParityOdd_uid172_Sqrt1_q <= shiftUpdateValue_uid171_Sqrt1_q & parityOddOriginalInv_uid120_Sqrt1_q;

    -- shifterInData_uid180_Sqrt1(MUX,179)@20 + 1
    shifterInData_uid180_Sqrt1_s <= negShiftEvenParityOdd_uid172_Sqrt1_q;
    shifterInData_uid180_Sqrt1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            shifterInData_uid180_Sqrt1_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (shifterInData_uid180_Sqrt1_s) IS
                WHEN "00" => shifterInData_uid180_Sqrt1_q <= result_uid161_Sqrt1_q;
                WHEN "01" => shifterInData_uid180_Sqrt1_q <= finalMultLSBRange_uid163_Sqrt1_b;
                WHEN "10" => shifterInData_uid180_Sqrt1_q <= resultBottomBits_mergedSignalTM_uid176_Sqrt1_q;
                WHEN "11" => shifterInData_uid180_Sqrt1_q <= finalMultBottomBits_uid173_Sqrt1_b;
                WHEN OTHERS => shifterInData_uid180_Sqrt1_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rightShiftStageSel4Dto3_uid752_xRightShiftFinal_uid184_Sqrt1(BITSELECT,751)@21
    rightShiftStageSel4Dto3_uid752_xRightShiftFinal_uid184_Sqrt1_in <= shiftOutValUpdated_uid181_Sqrt1_q(4 downto 0);
    rightShiftStageSel4Dto3_uid752_xRightShiftFinal_uid184_Sqrt1_b <= rightShiftStageSel4Dto3_uid752_xRightShiftFinal_uid184_Sqrt1_in(4 downto 3);

    -- rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1(MUX,752)@21
    rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_s <= rightShiftStageSel4Dto3_uid752_xRightShiftFinal_uid184_Sqrt1_b;
    rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_combproc: PROCESS (rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_s, shifterInData_uid180_Sqrt1_q, rightShiftStage0Idx1_uid747_xRightShiftFinal_uid184_Sqrt1_q, rightShiftStage0Idx2_uid750_xRightShiftFinal_uid184_Sqrt1_q, rightShiftStage0Idx3_uid751_xRightShiftFinal_uid184_Sqrt1_q)
    BEGIN
        CASE (rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_s) IS
            WHEN "00" => rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q <= shifterInData_uid180_Sqrt1_q;
            WHEN "01" => rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage0Idx1_uid747_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN "10" => rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage0Idx2_uid750_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN "11" => rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage0Idx3_uid751_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN OTHERS => rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel2Dto1_uid763_xRightShiftFinal_uid184_Sqrt1(BITSELECT,762)@21
    rightShiftStageSel2Dto1_uid763_xRightShiftFinal_uid184_Sqrt1_in <= shiftOutValUpdated_uid181_Sqrt1_q(2 downto 0);
    rightShiftStageSel2Dto1_uid763_xRightShiftFinal_uid184_Sqrt1_b <= rightShiftStageSel2Dto1_uid763_xRightShiftFinal_uid184_Sqrt1_in(2 downto 1);

    -- rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1(MUX,763)@21
    rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_s <= rightShiftStageSel2Dto1_uid763_xRightShiftFinal_uid184_Sqrt1_b;
    rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_combproc: PROCESS (rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_s, rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q, rightShiftStage1Idx1_uid756_xRightShiftFinal_uid184_Sqrt1_q, rightShiftStage1Idx2_uid759_xRightShiftFinal_uid184_Sqrt1_q, rightShiftStage1Idx3_uid762_xRightShiftFinal_uid184_Sqrt1_q)
    BEGIN
        CASE (rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_s) IS
            WHEN "00" => rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage0_uid753_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN "01" => rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage1Idx1_uid756_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN "10" => rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage1Idx2_uid759_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN "11" => rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage1Idx3_uid762_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN OTHERS => rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel0Dto0_uid768_xRightShiftFinal_uid184_Sqrt1(BITSELECT,767)@21
    rightShiftStageSel0Dto0_uid768_xRightShiftFinal_uid184_Sqrt1_in <= shiftOutValUpdated_uid181_Sqrt1_q(0 downto 0);
    rightShiftStageSel0Dto0_uid768_xRightShiftFinal_uid184_Sqrt1_b <= rightShiftStageSel0Dto0_uid768_xRightShiftFinal_uid184_Sqrt1_in(0 downto 0);

    -- rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1(MUX,768)@21
    rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_s <= rightShiftStageSel0Dto0_uid768_xRightShiftFinal_uid184_Sqrt1_b;
    rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_combproc: PROCESS (rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_s, rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q, rightShiftStage2Idx1_uid767_xRightShiftFinal_uid184_Sqrt1_q)
    BEGIN
        CASE (rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_s) IS
            WHEN "0" => rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage1_uid764_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN "1" => rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage2Idx1_uid767_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN OTHERS => rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- wIntCst_uid743_xRightShiftFinal_uid184_Sqrt1(CONSTANT,742)
    wIntCst_uid743_xRightShiftFinal_uid184_Sqrt1_q <= "10001";

    -- shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1(COMPARE,743)@21
    shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_a <= STD_LOGIC_VECTOR("00" & shiftOutValUpdated_uid181_Sqrt1_q);
    shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_b <= STD_LOGIC_VECTOR("00000" & wIntCst_uid743_xRightShiftFinal_uid184_Sqrt1_q);
    shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_a) - UNSIGNED(shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_b));
    shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_n(0) <= not (shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_o(9));

    -- r_uid771_xRightShiftFinal_uid184_Sqrt1(MUX,770)@21
    r_uid771_xRightShiftFinal_uid184_Sqrt1_s <= shiftedOut_uid744_xRightShiftFinal_uid184_Sqrt1_n;
    r_uid771_xRightShiftFinal_uid184_Sqrt1_combproc: PROCESS (r_uid771_xRightShiftFinal_uid184_Sqrt1_s, rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_q, rightShiftStage0Idx3_uid751_xRightShiftFinal_uid184_Sqrt1_q)
    BEGIN
        CASE (r_uid771_xRightShiftFinal_uid184_Sqrt1_s) IS
            WHEN "0" => r_uid771_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage2_uid769_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN "1" => r_uid771_xRightShiftFinal_uid184_Sqrt1_q <= rightShiftStage0Idx3_uid751_xRightShiftFinal_uid184_Sqrt1_q;
            WHEN OTHERS => r_uid771_xRightShiftFinal_uid184_Sqrt1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- resultFinalPostRnd_uid188_Sqrt1(ADD,187)@21
    resultFinalPostRnd_uid188_Sqrt1_a <= STD_LOGIC_VECTOR("0" & r_uid771_xRightShiftFinal_uid184_Sqrt1_q);
    resultFinalPostRnd_uid188_Sqrt1_b <= STD_LOGIC_VECTOR("00000000000000000" & VCC_q);
    resultFinalPostRnd_uid188_Sqrt1_o <= STD_LOGIC_VECTOR(UNSIGNED(resultFinalPostRnd_uid188_Sqrt1_a) + UNSIGNED(resultFinalPostRnd_uid188_Sqrt1_b));
    resultFinalPostRnd_uid188_Sqrt1_q <= resultFinalPostRnd_uid188_Sqrt1_o(17 downto 0);

    -- resultFinalPreSat_uid189_Sqrt1_merged_bit_select(BITSELECT,838)@21
    resultFinalPreSat_uid189_Sqrt1_merged_bit_select_b <= resultFinalPostRnd_uid188_Sqrt1_q(16 downto 1);
    resultFinalPreSat_uid189_Sqrt1_merged_bit_select_c <= resultFinalPostRnd_uid188_Sqrt1_q(17 downto 17);

    -- resultFinalPostOvf_uid192_Sqrt1(LOGICAL,191)@21
    resultFinalPostOvf_uid192_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => satOrOvfPostRnd_uid191_Sqrt1_q(0)) & satOrOvfPostRnd_uid191_Sqrt1_q));
    resultFinalPostOvf_uid192_Sqrt1_q <= resultFinalPreSat_uid189_Sqrt1_merged_bit_select_b or resultFinalPostOvf_uid192_Sqrt1_b;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- resultFinal_uid196_Sqrt1(LOGICAL,195)@21 + 1
    resultFinal_uid196_Sqrt1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => inputNotAllZeros_uid195_Sqrt1_q(0)) & inputNotAllZeros_uid195_Sqrt1_q));
    resultFinal_uid196_Sqrt1_qi <= resultFinalPostOvf_uid192_Sqrt1_q and resultFinal_uid196_Sqrt1_b;
    resultFinal_uid196_Sqrt1_delay : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => resultFinal_uid196_Sqrt1_qi, xout => resultFinal_uid196_Sqrt1_q, clk => clk, aclr => areset );

    -- redist36_GPIn3_in_4_reset_22(DELAY,892)
    redist36_GPIn3_in_4_reset_22 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist35_GPIn3_in_4_reset_13_q, xout => redist36_GPIn3_in_4_reset_22_q, clk => clk, aclr => areset );

    -- GPOut4(GPOUT,35)@22
    out_1_valid_x <= redist36_GPIn3_in_4_reset_22_q;
    out_2_std <= resultFinal_uid196_Sqrt1_q;

END normal;
