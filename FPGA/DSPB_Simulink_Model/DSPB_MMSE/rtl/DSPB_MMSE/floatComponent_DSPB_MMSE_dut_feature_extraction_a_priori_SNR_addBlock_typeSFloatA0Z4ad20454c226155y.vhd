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

-- VHDL created from floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_addBlock_typeSFloatA0Z50g24ad20454c226155y
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
entity floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_addBlock_typeSFloatA0Z50g24ad20454c226155y is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_addBlock_typeSFloatA0Z50g24ad20454c226155y;

architecture normal of floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_addBlock_typeSFloatA0Z50g24ad20454c226155y is

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
    signal excZ_aSig_uid17_uid24_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_aSig_uid17_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid25_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
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
    signal effSub_uid53_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal effSub_uid53_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid57_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracBz_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal oFracB_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expAmExpB_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal cWFP2_uid62_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal shiftedOut_uid64_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid64_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid64_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid64_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal padConst_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightPaddedIn_uid66_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal iShiftedOut_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal alignFracBPostShiftOut_uid69_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal alignFracBPostShiftOut_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal effSubInvSticky_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal zocst_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracAAddOp_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOp_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOpPostXor_uid82_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracBAddOpPostXor_uid82_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal fracAddResult_uid83_block_rsrvd_fix_a : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid83_block_rsrvd_fix_b : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid83_block_rsrvd_fix_o : STD_LOGIC_VECTOR (27 downto 0);
    signal fracAddResult_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in : STD_LOGIC_VECTOR (26 downto 0);
    signal rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal fracGRS_uid85_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal cAmA_uid87_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal aMinusA_uid88_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostNorm_uid90_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal oneCST_uid91_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expInc_uid92_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid92_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expInc_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expPostNorm_uid93_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid93_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid93_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expPostNorm_uid93_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal Sticky0_uid94_block_rsrvd_fix_in : STD_LOGIC_VECTOR (0 downto 0);
    signal Sticky0_uid94_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Sticky1_uid95_block_rsrvd_fix_in : STD_LOGIC_VECTOR (1 downto 0);
    signal Sticky1_uid95_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Round_uid96_block_rsrvd_fix_in : STD_LOGIC_VECTOR (2 downto 0);
    signal Round_uid96_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Guard_uid97_block_rsrvd_fix_in : STD_LOGIC_VECTOR (3 downto 0);
    signal Guard_uid97_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal LSB_uid98_block_rsrvd_fix_in : STD_LOGIC_VECTOR (4 downto 0);
    signal LSB_uid98_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rndBitCond_uid99_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal cRBit_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal rBi_uid101_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal roundBit_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostNormRndRange_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (25 downto 0);
    signal fracPostNormRndRange_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracR_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExpFrac_uid105_block_rsrvd_fix_a : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid105_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid105_block_rsrvd_fix_o : STD_LOGIC_VECTOR (34 downto 0);
    signal rndExpFrac_uid105_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal wEP2AllOwE_uid106_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rndExp_uid107_block_rsrvd_fix_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExp_uid107_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal rOvfEQMax_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rndExpFracOvfBits_uid110_block_rsrvd_fix_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rndExpFracOvfBits_uid110_block_rsrvd_fix_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rOvfExtraBits_uid111_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rOvf_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal wEP2AllZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal rUdfEQMin_uid114_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdfExtraBit_uid115_block_rsrvd_fix_in : STD_LOGIC_VECTOR (33 downto 0);
    signal rUdfExtraBit_uid115_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rUdf_uid116_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreExc_uid117_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid117_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPreExc_uid118_block_rsrvd_fix_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expRPreExc_uid118_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal regInputs_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZeroVInC_uid120_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal excRZero_uid121_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rInfOvf_uid122_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInfVInC_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal excRInf_uid124_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN2_uid125_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAIBISub_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid127_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid128_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid129_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal invAMinusA_uid130_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRReg_uid131_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigBBInf_uid132_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sigAAInf_uid133_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInf_uid134_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excAZBZSigASigB_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excBZARSigA_uid136_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRZero_uid137_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRInfRZRReg_uid138_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcRNaN_uid139_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRPostExc_uid140_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneFracRPostExc2_uid141_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid144_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid144_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid148_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid148_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal R_uid149_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in : STD_LOGIC_VECTOR (11 downto 0);
    signal vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid180_lzCountVal_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng16_uid186_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx2Rng32_uid189_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage0Idx2Pad32_uid190_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0Idx3Rng48_uid192_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx3Pad48_uid193_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx1Rng4_uid197_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (44 downto 0);
    signal rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx2Rng8_uid200_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (40 downto 0);
    signal rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1Idx3Rng12_uid203_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (36 downto 0);
    signal rightShiftStage1Idx3Pad12_uid204_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx1Rng1_uid208_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx2Rng2_uid211_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2Idx3Rng3_uid214_alignmentShifter_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage2Idx3Pad3_uid215_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage2Idx3_uid216_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal zeroOutCst_uid219_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal r_uid220_alignmentShifter_uid65_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid220_alignmentShifter_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage0Idx1Rng8_uid225_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx1Rng8_uid225_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (19 downto 0);
    signal leftShiftStage0Idx1_uid226_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx2_uid229_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0Idx3Pad24_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage0Idx3Rng24_uid231_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx3Rng24_uid231_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx3_uid232_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx1Rng2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage1Idx1Rng2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal leftShiftStage1Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx2Rng4_uid239_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2Rng4_uid239_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1Idx3Pad6_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage1Idx3Rng6_uid242_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage1Idx3Rng6_uid242_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (21 downto 0);
    signal leftShiftStage1Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2Idx1Rng1_uid247_fracPostNormExt_uid89_block_rsrvd_fix_in : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2Idx1Rng1_uid247_fracPostNormExt_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStage2Idx1_uid248_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (22 downto 0);
    signal stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (25 downto 0);
    signal rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist2_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal redist3_fracGRS_uid85_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist4_effSub_uid53_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sigB_uid52_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sigA_uid51_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_excR_bSig_uid46_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_excN_bSig_uid43_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_frac_aSig_uid23_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist12_exp_aSig_uid22_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (7 downto 0);

begin


    -- cAmA_uid87_block_rsrvd_fix(CONSTANT,86)
    cAmA_uid87_block_rsrvd_fix_q <= "11100";

    -- zs_uid151_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,150)
    zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q <= "0000000000000000";

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

    -- effSub_uid53_block_rsrvd_fix(LOGICAL,52)@0 + 1
    effSub_uid53_block_rsrvd_fix_qi <= sigA_uid51_block_rsrvd_fix_b xor sigB_uid52_block_rsrvd_fix_b;
    effSub_uid53_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => effSub_uid53_block_rsrvd_fix_qi, xout => effSub_uid53_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- exp_bSig_uid36_block_rsrvd_fix(BITSELECT,35)@0
    exp_bSig_uid36_block_rsrvd_fix_in <= bSig_uid18_block_rsrvd_fix_q(30 downto 0);
    exp_bSig_uid36_block_rsrvd_fix_b <= exp_bSig_uid36_block_rsrvd_fix_in(30 downto 23);

    -- exp_aSig_uid22_block_rsrvd_fix(BITSELECT,21)@0
    exp_aSig_uid22_block_rsrvd_fix_in <= aSig_uid17_block_rsrvd_fix_q(30 downto 0);
    exp_aSig_uid22_block_rsrvd_fix_b <= exp_aSig_uid22_block_rsrvd_fix_in(30 downto 23);

    -- expAmExpB_uid61_block_rsrvd_fix(SUB,60)@0
    expAmExpB_uid61_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & exp_aSig_uid22_block_rsrvd_fix_b);
    expAmExpB_uid61_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & exp_bSig_uid36_block_rsrvd_fix_b);
    expAmExpB_uid61_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expAmExpB_uid61_block_rsrvd_fix_a) - UNSIGNED(expAmExpB_uid61_block_rsrvd_fix_b));
    expAmExpB_uid61_block_rsrvd_fix_q <= expAmExpB_uid61_block_rsrvd_fix_o(8 downto 0);

    -- cWFP2_uid62_block_rsrvd_fix(CONSTANT,61)
    cWFP2_uid62_block_rsrvd_fix_q <= "11001";

    -- shiftedOut_uid64_block_rsrvd_fix(COMPARE,63)@0
    shiftedOut_uid64_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("000000" & cWFP2_uid62_block_rsrvd_fix_q);
    shiftedOut_uid64_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expAmExpB_uid61_block_rsrvd_fix_q);
    shiftedOut_uid64_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid64_block_rsrvd_fix_a) - UNSIGNED(shiftedOut_uid64_block_rsrvd_fix_b));
    shiftedOut_uid64_block_rsrvd_fix_c(0) <= shiftedOut_uid64_block_rsrvd_fix_o(10);

    -- iShiftedOut_uid68_block_rsrvd_fix(LOGICAL,67)@0
    iShiftedOut_uid68_block_rsrvd_fix_q <= not (shiftedOut_uid64_block_rsrvd_fix_c);

    -- zeroOutCst_uid219_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,218)
    zeroOutCst_uid219_alignmentShifter_uid65_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000";

    -- rightShiftStage2Idx3Pad3_uid215_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,214)
    rightShiftStage2Idx3Pad3_uid215_alignmentShifter_uid65_block_rsrvd_fix_q <= "000";

    -- rightShiftStage2Idx3Rng3_uid214_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,213)@0
    rightShiftStage2Idx3Rng3_uid214_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 3);

    -- rightShiftStage2Idx3_uid216_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,215)@0
    rightShiftStage2Idx3_uid216_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage2Idx3Pad3_uid215_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage2Idx3Rng3_uid214_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- zs_uid171_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,170)
    zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q <= "00";

    -- rightShiftStage2Idx2Rng2_uid211_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,210)@0
    rightShiftStage2Idx2Rng2_uid211_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 2);

    -- rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,212)@0
    rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix_q <= zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q & rightShiftStage2Idx2Rng2_uid211_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage2Idx1Rng1_uid208_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,207)@0
    rightShiftStage2Idx1Rng1_uid208_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 1);

    -- rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,209)@0
    rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix_q <= GND_q & rightShiftStage2Idx1Rng1_uid208_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage1Idx3Pad12_uid204_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,203)
    rightShiftStage1Idx3Pad12_uid204_alignmentShifter_uid65_block_rsrvd_fix_q <= "000000000000";

    -- rightShiftStage1Idx3Rng12_uid203_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,202)@0
    rightShiftStage1Idx3Rng12_uid203_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 12);

    -- rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,204)@0
    rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx3Pad12_uid204_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage1Idx3Rng12_uid203_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    cstAllZWE_uid21_block_rsrvd_fix_q <= "00000000";

    -- rightShiftStage1Idx2Rng8_uid200_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,199)@0
    rightShiftStage1Idx2Rng8_uid200_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 8);

    -- rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,201)@0
    rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix_q <= cstAllZWE_uid21_block_rsrvd_fix_q & rightShiftStage1Idx2Rng8_uid200_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- zs_uid165_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,164)
    zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q <= "0000";

    -- rightShiftStage1Idx1Rng4_uid197_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,196)@0
    rightShiftStage1Idx1Rng4_uid197_alignmentShifter_uid65_block_rsrvd_fix_b <= rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q(48 downto 4);

    -- rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,198)@0
    rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix_q <= zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q & rightShiftStage1Idx1Rng4_uid197_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage0Idx3Pad48_uid193_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,192)
    rightShiftStage0Idx3Pad48_uid193_alignmentShifter_uid65_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx3Rng48_uid192_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,191)@0
    rightShiftStage0Idx3Rng48_uid192_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 48);

    -- rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,193)@0
    rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx3Pad48_uid193_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage0Idx3Rng48_uid192_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage0Idx2Pad32_uid190_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,189)
    rightShiftStage0Idx2Pad32_uid190_alignmentShifter_uid65_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- rightShiftStage0Idx2Rng32_uid189_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,188)@0
    rightShiftStage0Idx2Rng32_uid189_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 32);

    -- rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,190)@0
    rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx2Pad32_uid190_alignmentShifter_uid65_block_rsrvd_fix_q & rightShiftStage0Idx2Rng32_uid189_alignmentShifter_uid65_block_rsrvd_fix_b;

    -- rightShiftStage0Idx1Rng16_uid186_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,185)@0
    rightShiftStage0Idx1Rng16_uid186_alignmentShifter_uid65_block_rsrvd_fix_b <= rightPaddedIn_uid66_block_rsrvd_fix_q(48 downto 16);

    -- rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,187)@0
    rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q <= zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q & rightShiftStage0Idx1Rng16_uid186_alignmentShifter_uid65_block_rsrvd_fix_b;

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

    -- padConst_uid65_block_rsrvd_fix(CONSTANT,64)
    padConst_uid65_block_rsrvd_fix_q <= "0000000000000000000000000";

    -- rightPaddedIn_uid66_block_rsrvd_fix(BITJOIN,65)@0
    rightPaddedIn_uid66_block_rsrvd_fix_q <= oFracB_uid60_block_rsrvd_fix_q & padConst_uid65_block_rsrvd_fix_q;

    -- rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix(MUX,195)@0
    rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_s <= rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_b;
    rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_combproc: PROCESS (rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_s, rightPaddedIn_uid66_block_rsrvd_fix_q, rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= rightPaddedIn_uid66_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix(MUX,206)@0
    rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_s <= rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c;
    rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_s, rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select(BITSELECT,251)@0
    rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in <= expAmExpB_uid61_block_rsrvd_fix_q(5 downto 0);
    rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_b <= rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in(5 downto 4);
    rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_c <= rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in(3 downto 2);
    rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_d <= rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_in(1 downto 0);

    -- rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix(MUX,217)@0
    rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_s <= rightShiftStageSel5Dto4_uid195_alignmentShifter_uid65_block_rsrvd_fix_merged_bit_select_d;
    rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_combproc: PROCESS (rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_s, rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage2Idx3_uid216_alignmentShifter_uid65_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage2Idx3_uid216_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,183)
    wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q <= "110001";

    -- shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix(COMPARE,184)@0
    shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expAmExpB_uid61_block_rsrvd_fix_q);
    shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000" & wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q);
    shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a) - UNSIGNED(shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b));
    shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n(0) <= not (shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o(10));

    -- r_uid220_alignmentShifter_uid65_block_rsrvd_fix(MUX,219)@0
    r_uid220_alignmentShifter_uid65_block_rsrvd_fix_s <= shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n;
    r_uid220_alignmentShifter_uid65_block_rsrvd_fix_combproc: PROCESS (r_uid220_alignmentShifter_uid65_block_rsrvd_fix_s, rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_q, zeroOutCst_uid219_alignmentShifter_uid65_block_rsrvd_fix_q)
    BEGIN
        CASE (r_uid220_alignmentShifter_uid65_block_rsrvd_fix_s) IS
            WHEN "0" => r_uid220_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage2_uid218_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN "1" => r_uid220_alignmentShifter_uid65_block_rsrvd_fix_q <= zeroOutCst_uid219_alignmentShifter_uid65_block_rsrvd_fix_q;
            WHEN OTHERS => r_uid220_alignmentShifter_uid65_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- alignFracBPostShiftOut_uid69_block_rsrvd_fix(LOGICAL,68)@0
    alignFracBPostShiftOut_uid69_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 1 => iShiftedOut_uid68_block_rsrvd_fix_q(0)) & iShiftedOut_uid68_block_rsrvd_fix_q));
    alignFracBPostShiftOut_uid69_block_rsrvd_fix_q <= r_uid220_alignmentShifter_uid65_block_rsrvd_fix_q and alignFracBPostShiftOut_uid69_block_rsrvd_fix_b;

    -- stickyBits_uid70_block_rsrvd_fix_merged_bit_select(BITSELECT,252)@0
    stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b <= alignFracBPostShiftOut_uid69_block_rsrvd_fix_q(22 downto 0);
    stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c <= alignFracBPostShiftOut_uid69_block_rsrvd_fix_q(48 downto 23);

    -- redist0_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1(DELAY,257)
    redist0_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 26, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c, xout => redist0_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q, clk => clk, aclr => areset );

    -- fracBAddOp_uid81_block_rsrvd_fix(BITJOIN,80)@1
    fracBAddOp_uid81_block_rsrvd_fix_q <= GND_q & redist0_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q;

    -- fracBAddOpPostXor_uid82_block_rsrvd_fix(LOGICAL,81)@1
    fracBAddOpPostXor_uid82_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 1 => effSub_uid53_block_rsrvd_fix_q(0)) & effSub_uid53_block_rsrvd_fix_q));
    fracBAddOpPostXor_uid82_block_rsrvd_fix_q <= fracBAddOp_uid81_block_rsrvd_fix_q xor fracBAddOpPostXor_uid82_block_rsrvd_fix_b;

    -- zocst_uid77_block_rsrvd_fix(CONSTANT,76)
    zocst_uid77_block_rsrvd_fix_q <= "01";

    -- frac_aSig_uid23_block_rsrvd_fix(BITSELECT,22)@0
    frac_aSig_uid23_block_rsrvd_fix_in <= aSig_uid17_block_rsrvd_fix_q(22 downto 0);
    frac_aSig_uid23_block_rsrvd_fix_b <= frac_aSig_uid23_block_rsrvd_fix_in(22 downto 0);

    -- redist11_frac_aSig_uid23_block_rsrvd_fix_b_1(DELAY,268)
    redist11_frac_aSig_uid23_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frac_aSig_uid23_block_rsrvd_fix_b, xout => redist11_frac_aSig_uid23_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix(LOGICAL,71)@0 + 1
    cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi <= "1" WHEN stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b = cstZeroWF_uid20_block_rsrvd_fix_q ELSE "0";
    cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi, xout => cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- effSubInvSticky_uid75_block_rsrvd_fix(LOGICAL,74)@1
    effSubInvSticky_uid75_block_rsrvd_fix_q <= effSub_uid53_block_rsrvd_fix_q and cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q;

    -- fracAAddOp_uid78_block_rsrvd_fix(BITJOIN,77)@1
    fracAAddOp_uid78_block_rsrvd_fix_q <= zocst_uid77_block_rsrvd_fix_q & redist11_frac_aSig_uid23_block_rsrvd_fix_b_1_q & GND_q & effSubInvSticky_uid75_block_rsrvd_fix_q;

    -- fracAddResult_uid83_block_rsrvd_fix(ADD,82)@1
    fracAddResult_uid83_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & fracAAddOp_uid78_block_rsrvd_fix_q);
    fracAddResult_uid83_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & fracBAddOpPostXor_uid82_block_rsrvd_fix_q);
    fracAddResult_uid83_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fracAddResult_uid83_block_rsrvd_fix_a) + UNSIGNED(fracAddResult_uid83_block_rsrvd_fix_b));
    fracAddResult_uid83_block_rsrvd_fix_q <= fracAddResult_uid83_block_rsrvd_fix_o(27 downto 0);

    -- rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix(BITSELECT,83)@1
    rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in <= fracAddResult_uid83_block_rsrvd_fix_q(26 downto 0);
    rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b <= rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in(26 downto 0);

    -- invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix(LOGICAL,72)@1
    invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q <= not (cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q);

    -- fracGRS_uid85_block_rsrvd_fix(BITJOIN,84)@1
    fracGRS_uid85_block_rsrvd_fix_q <= rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b & invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q;

    -- rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,151)@1
    rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b <= fracGRS_uid85_block_rsrvd_fix_q(27 downto 12);

    -- vCount_uid153_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,152)@1
    vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b = zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q ELSE "0";

    -- vStage_uid155_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,154)@1
    vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in <= fracGRS_uid85_block_rsrvd_fix_q(11 downto 0);
    vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b <= vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in(11 downto 0);

    -- mO_uid154_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,153)
    mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q <= "1111";

    -- cStage_uid156_lzCountVal_uid86_block_rsrvd_fix(BITJOIN,155)@1
    cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q <= vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b & mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q;

    -- vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix(MUX,157)@1
    vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s <= vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q;
    vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_combproc: PROCESS (vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s, rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b, cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,253)@1
    rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid161_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,160)@1
    vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix(MUX,163)@1
    vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s <= vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q;
    vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_combproc: PROCESS (vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s, rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b, rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,254)@1
    rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid167_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,166)@1
    vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix(MUX,169)@1
    vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s <= vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q;
    vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_combproc: PROCESS (vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s, rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b, rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,255)@1
    rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid173_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,172)@1
    vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix(MUX,175)@1
    vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s <= vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q;
    vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_combproc: PROCESS (vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s, rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b, rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q <= rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,177)@1
    rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b <= vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid179_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,178)@1
    vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q <= "1" WHEN rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid180_lzCountVal_uid86_block_rsrvd_fix(BITJOIN,179)@1
    r_uid180_lzCountVal_uid86_block_rsrvd_fix_q <= vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q & vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q & vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q & vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q & vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q;

    -- redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1(DELAY,258)
    redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => r_uid180_lzCountVal_uid86_block_rsrvd_fix_q, xout => redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- aMinusA_uid88_block_rsrvd_fix(LOGICAL,87)@2
    aMinusA_uid88_block_rsrvd_fix_q <= "1" WHEN redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q = cAmA_uid87_block_rsrvd_fix_q ELSE "0";

    -- invAMinusA_uid130_block_rsrvd_fix(LOGICAL,129)@2
    invAMinusA_uid130_block_rsrvd_fix_q <= not (aMinusA_uid88_block_rsrvd_fix_q);

    -- redist6_sigA_uid51_block_rsrvd_fix_b_2(DELAY,263)
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

    -- redist7_excR_bSig_uid46_block_rsrvd_fix_q_2(DELAY,264)
    redist7_excR_bSig_uid46_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excR_bSig_uid46_block_rsrvd_fix_q, xout => redist7_excR_bSig_uid46_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- redist12_exp_aSig_uid22_block_rsrvd_fix_b_1(DELAY,269)
    redist12_exp_aSig_uid22_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_aSig_uid22_block_rsrvd_fix_b, xout => redist12_exp_aSig_uid22_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@1 + 1
    expXIsMax_uid25_block_rsrvd_fix_qi <= "1" WHEN redist12_exp_aSig_uid22_block_rsrvd_fix_b_1_q = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid25_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid25_block_rsrvd_fix_qi, xout => expXIsMax_uid25_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- invExpXIsMax_uid30_block_rsrvd_fix(LOGICAL,29)@2
    invExpXIsMax_uid30_block_rsrvd_fix_q <= not (expXIsMax_uid25_block_rsrvd_fix_q);

    -- excZ_aSig_uid17_uid24_block_rsrvd_fix(LOGICAL,23)@1 + 1
    excZ_aSig_uid17_uid24_block_rsrvd_fix_qi <= "1" WHEN redist12_exp_aSig_uid22_block_rsrvd_fix_b_1_q = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";
    excZ_aSig_uid17_uid24_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_aSig_uid17_uid24_block_rsrvd_fix_qi, xout => excZ_aSig_uid17_uid24_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- InvExpXIsZero_uid31_block_rsrvd_fix(LOGICAL,30)@2
    InvExpXIsZero_uid31_block_rsrvd_fix_q <= not (excZ_aSig_uid17_uid24_block_rsrvd_fix_q);

    -- excR_aSig_uid32_block_rsrvd_fix(LOGICAL,31)@2
    excR_aSig_uid32_block_rsrvd_fix_q <= InvExpXIsZero_uid31_block_rsrvd_fix_q and invExpXIsMax_uid30_block_rsrvd_fix_q;

    -- signRReg_uid131_block_rsrvd_fix(LOGICAL,130)@2
    signRReg_uid131_block_rsrvd_fix_q <= excR_aSig_uid32_block_rsrvd_fix_q and redist7_excR_bSig_uid46_block_rsrvd_fix_q_2_q and redist6_sigA_uid51_block_rsrvd_fix_b_2_q and invAMinusA_uid130_block_rsrvd_fix_q;

    -- redist5_sigB_uid52_block_rsrvd_fix_b_2(DELAY,262)
    redist5_sigB_uid52_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => sigB_uid52_block_rsrvd_fix_b, xout => redist5_sigB_uid52_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2(DELAY,267)
    redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_bSig_uid18_uid38_block_rsrvd_fix_q, xout => redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excAZBZSigASigB_uid135_block_rsrvd_fix(LOGICAL,134)@2
    excAZBZSigASigB_uid135_block_rsrvd_fix_q <= excZ_aSig_uid17_uid24_block_rsrvd_fix_q and redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q and redist6_sigA_uid51_block_rsrvd_fix_b_2_q and redist5_sigB_uid52_block_rsrvd_fix_b_2_q;

    -- excBZARSigA_uid136_block_rsrvd_fix(LOGICAL,135)@2
    excBZARSigA_uid136_block_rsrvd_fix_q <= redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q and excR_aSig_uid32_block_rsrvd_fix_q and redist6_sigA_uid51_block_rsrvd_fix_b_2_q;

    -- signRZero_uid137_block_rsrvd_fix(LOGICAL,136)@2
    signRZero_uid137_block_rsrvd_fix_q <= excBZARSigA_uid136_block_rsrvd_fix_q or excAZBZSigASigB_uid135_block_rsrvd_fix_q;

    -- fracXIsZero_uid40_block_rsrvd_fix(LOGICAL,39)@0
    fracXIsZero_uid40_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid20_block_rsrvd_fix_q = frac_bSig_uid37_block_rsrvd_fix_b ELSE "0";

    -- excI_bSig_uid42_block_rsrvd_fix(LOGICAL,41)@0 + 1
    excI_bSig_uid42_block_rsrvd_fix_qi <= expXIsMax_uid39_block_rsrvd_fix_q and fracXIsZero_uid40_block_rsrvd_fix_q;
    excI_bSig_uid42_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_bSig_uid42_block_rsrvd_fix_qi, xout => excI_bSig_uid42_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist9_excI_bSig_uid42_block_rsrvd_fix_q_2(DELAY,266)
    redist9_excI_bSig_uid42_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_bSig_uid42_block_rsrvd_fix_q, xout => redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- sigBBInf_uid132_block_rsrvd_fix(LOGICAL,131)@2
    sigBBInf_uid132_block_rsrvd_fix_q <= redist5_sigB_uid52_block_rsrvd_fix_b_2_q and redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q;

    -- fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@1 + 1
    fracXIsZero_uid26_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid20_block_rsrvd_fix_q = redist11_frac_aSig_uid23_block_rsrvd_fix_b_1_q ELSE "0";
    fracXIsZero_uid26_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid26_block_rsrvd_fix_qi, xout => fracXIsZero_uid26_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- excI_aSig_uid28_block_rsrvd_fix(LOGICAL,27)@2
    excI_aSig_uid28_block_rsrvd_fix_q <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsZero_uid26_block_rsrvd_fix_q;

    -- sigAAInf_uid133_block_rsrvd_fix(LOGICAL,132)@2
    sigAAInf_uid133_block_rsrvd_fix_q <= redist6_sigA_uid51_block_rsrvd_fix_b_2_q and excI_aSig_uid28_block_rsrvd_fix_q;

    -- signRInf_uid134_block_rsrvd_fix(LOGICAL,133)@2
    signRInf_uid134_block_rsrvd_fix_q <= sigAAInf_uid133_block_rsrvd_fix_q or sigBBInf_uid132_block_rsrvd_fix_q;

    -- signRInfRZRReg_uid138_block_rsrvd_fix(LOGICAL,137)@2
    signRInfRZRReg_uid138_block_rsrvd_fix_q <= signRInf_uid134_block_rsrvd_fix_q or signRZero_uid137_block_rsrvd_fix_q or signRReg_uid131_block_rsrvd_fix_q;

    -- fracXIsNotZero_uid41_block_rsrvd_fix(LOGICAL,40)@0
    fracXIsNotZero_uid41_block_rsrvd_fix_q <= not (fracXIsZero_uid40_block_rsrvd_fix_q);

    -- excN_bSig_uid43_block_rsrvd_fix(LOGICAL,42)@0 + 1
    excN_bSig_uid43_block_rsrvd_fix_qi <= expXIsMax_uid39_block_rsrvd_fix_q and fracXIsNotZero_uid41_block_rsrvd_fix_q;
    excN_bSig_uid43_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_bSig_uid43_block_rsrvd_fix_qi, xout => excN_bSig_uid43_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist8_excN_bSig_uid43_block_rsrvd_fix_q_2(DELAY,265)
    redist8_excN_bSig_uid43_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excN_bSig_uid43_block_rsrvd_fix_q, xout => redist8_excN_bSig_uid43_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@2
    fracXIsNotZero_uid27_block_rsrvd_fix_q <= not (fracXIsZero_uid26_block_rsrvd_fix_q);

    -- excN_aSig_uid29_block_rsrvd_fix(LOGICAL,28)@2
    excN_aSig_uid29_block_rsrvd_fix_q <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsNotZero_uid27_block_rsrvd_fix_q;

    -- excRNaN2_uid125_block_rsrvd_fix(LOGICAL,124)@2
    excRNaN2_uid125_block_rsrvd_fix_q <= excN_aSig_uid29_block_rsrvd_fix_q or redist8_excN_bSig_uid43_block_rsrvd_fix_q_2_q;

    -- redist4_effSub_uid53_block_rsrvd_fix_q_2(DELAY,261)
    redist4_effSub_uid53_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => effSub_uid53_block_rsrvd_fix_q, xout => redist4_effSub_uid53_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excAIBISub_uid126_block_rsrvd_fix(LOGICAL,125)@2
    excAIBISub_uid126_block_rsrvd_fix_q <= excI_aSig_uid28_block_rsrvd_fix_q and redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q and redist4_effSub_uid53_block_rsrvd_fix_q_2_q;

    -- excRNaN_uid127_block_rsrvd_fix(LOGICAL,126)@2
    excRNaN_uid127_block_rsrvd_fix_q <= excAIBISub_uid126_block_rsrvd_fix_q or excRNaN2_uid125_block_rsrvd_fix_q;

    -- invExcRNaN_uid139_block_rsrvd_fix(LOGICAL,138)@2
    invExcRNaN_uid139_block_rsrvd_fix_q <= not (excRNaN_uid127_block_rsrvd_fix_q);

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signRPostExc_uid140_block_rsrvd_fix(LOGICAL,139)@2
    signRPostExc_uid140_block_rsrvd_fix_q <= invExcRNaN_uid139_block_rsrvd_fix_q and signRInfRZRReg_uid138_block_rsrvd_fix_q;

    -- cRBit_uid100_block_rsrvd_fix(CONSTANT,99)
    cRBit_uid100_block_rsrvd_fix_q <= "01000";

    -- leftShiftStage2Idx1Rng1_uid247_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,246)@2
    leftShiftStage2Idx1Rng1_uid247_fracPostNormExt_uid89_block_rsrvd_fix_in <= leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q(26 downto 0);
    leftShiftStage2Idx1Rng1_uid247_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage2Idx1Rng1_uid247_fracPostNormExt_uid89_block_rsrvd_fix_in(26 downto 0);

    -- leftShiftStage2Idx1_uid248_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,247)@2
    leftShiftStage2Idx1_uid248_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage2Idx1Rng1_uid247_fracPostNormExt_uid89_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage1Idx3Rng6_uid242_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,241)@2
    leftShiftStage1Idx3Rng6_uid242_fracPostNormExt_uid89_block_rsrvd_fix_in <= leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q(21 downto 0);
    leftShiftStage1Idx3Rng6_uid242_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng6_uid242_fracPostNormExt_uid89_block_rsrvd_fix_in(21 downto 0);

    -- leftShiftStage1Idx3Pad6_uid241_fracPostNormExt_uid89_block_rsrvd_fix(CONSTANT,240)
    leftShiftStage1Idx3Pad6_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q <= "000000";

    -- leftShiftStage1Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,242)@2
    leftShiftStage1Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng6_uid242_fracPostNormExt_uid89_block_rsrvd_fix_b & leftShiftStage1Idx3Pad6_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng4_uid239_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,238)@2
    leftShiftStage1Idx2Rng4_uid239_fracPostNormExt_uid89_block_rsrvd_fix_in <= leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q(23 downto 0);
    leftShiftStage1Idx2Rng4_uid239_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng4_uid239_fracPostNormExt_uid89_block_rsrvd_fix_in(23 downto 0);

    -- leftShiftStage1Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,239)@2
    leftShiftStage1Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng4_uid239_fracPostNormExt_uid89_block_rsrvd_fix_b & zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng2_uid236_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,235)@2
    leftShiftStage1Idx1Rng2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_in <= leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q(25 downto 0);
    leftShiftStage1Idx1Rng2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_in(25 downto 0);

    -- leftShiftStage1Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,236)@2
    leftShiftStage1Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_b & zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng24_uid231_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,230)@2
    leftShiftStage0Idx3Rng24_uid231_fracPostNormExt_uid89_block_rsrvd_fix_in <= redist3_fracGRS_uid85_block_rsrvd_fix_q_1_q(3 downto 0);
    leftShiftStage0Idx3Rng24_uid231_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng24_uid231_fracPostNormExt_uid89_block_rsrvd_fix_in(3 downto 0);

    -- leftShiftStage0Idx3Pad24_uid230_fracPostNormExt_uid89_block_rsrvd_fix(CONSTANT,229)
    leftShiftStage0Idx3Pad24_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q <= "000000000000000000000000";

    -- leftShiftStage0Idx3_uid232_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,231)@2
    leftShiftStage0Idx3_uid232_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng24_uid231_fracPostNormExt_uid89_block_rsrvd_fix_b & leftShiftStage0Idx3Pad24_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q;

    -- redist2_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_1(DELAY,259)
    redist2_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b, xout => redist2_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0Idx2_uid229_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,228)@2
    leftShiftStage0Idx2_uid229_fracPostNormExt_uid89_block_rsrvd_fix_q <= redist2_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_1_q & zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng8_uid225_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,224)@2
    leftShiftStage0Idx1Rng8_uid225_fracPostNormExt_uid89_block_rsrvd_fix_in <= redist3_fracGRS_uid85_block_rsrvd_fix_q_1_q(19 downto 0);
    leftShiftStage0Idx1Rng8_uid225_fracPostNormExt_uid89_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng8_uid225_fracPostNormExt_uid89_block_rsrvd_fix_in(19 downto 0);

    -- leftShiftStage0Idx1_uid226_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,225)@2
    leftShiftStage0Idx1_uid226_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng8_uid225_fracPostNormExt_uid89_block_rsrvd_fix_b & cstAllZWE_uid21_block_rsrvd_fix_q;

    -- redist3_fracGRS_uid85_block_rsrvd_fix_q_1(DELAY,260)
    redist3_fracGRS_uid85_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracGRS_uid85_block_rsrvd_fix_q, xout => redist3_fracGRS_uid85_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix(MUX,233)@2
    leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_s <= leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_s, redist3_fracGRS_uid85_block_rsrvd_fix_q_1_q, leftShiftStage0Idx1_uid226_fracPostNormExt_uid89_block_rsrvd_fix_q, leftShiftStage0Idx2_uid229_fracPostNormExt_uid89_block_rsrvd_fix_q, leftShiftStage0Idx3_uid232_fracPostNormExt_uid89_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q <= redist3_fracGRS_uid85_block_rsrvd_fix_q_1_q;
            WHEN "01" => leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid226_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid229_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid232_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix(MUX,244)@2
    leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_s <= leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_s, leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q, leftShiftStage1Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q, leftShiftStage1Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix_q, leftShiftStage1Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0_uid234_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid240_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid243_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select(BITSELECT,256)@2
    leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b <= redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q(4 downto 3);
    leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c <= redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q(2 downto 1);
    leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d <= redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q(0 downto 0);

    -- leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix(MUX,249)@2
    leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_s <= leftShiftStageSel4Dto3_uid233_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d;
    leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_combproc: PROCESS (leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_s, leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q, leftShiftStage2Idx1_uid248_fracPostNormExt_uid89_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_s) IS
            WHEN "0" => leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1_uid245_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN "1" => leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid248_fracPostNormExt_uid89_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- LSB_uid98_block_rsrvd_fix(BITSELECT,97)@2
    LSB_uid98_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q(4 downto 0));
    LSB_uid98_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(LSB_uid98_block_rsrvd_fix_in(4 downto 4));

    -- Guard_uid97_block_rsrvd_fix(BITSELECT,96)@2
    Guard_uid97_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q(3 downto 0));
    Guard_uid97_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(Guard_uid97_block_rsrvd_fix_in(3 downto 3));

    -- Round_uid96_block_rsrvd_fix(BITSELECT,95)@2
    Round_uid96_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q(2 downto 0));
    Round_uid96_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(Round_uid96_block_rsrvd_fix_in(2 downto 2));

    -- Sticky1_uid95_block_rsrvd_fix(BITSELECT,94)@2
    Sticky1_uid95_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q(1 downto 0));
    Sticky1_uid95_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(Sticky1_uid95_block_rsrvd_fix_in(1 downto 1));

    -- Sticky0_uid94_block_rsrvd_fix(BITSELECT,93)@2
    Sticky0_uid94_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q(0 downto 0));
    Sticky0_uid94_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(Sticky0_uid94_block_rsrvd_fix_in(0 downto 0));

    -- rndBitCond_uid99_block_rsrvd_fix(BITJOIN,98)@2
    rndBitCond_uid99_block_rsrvd_fix_q <= LSB_uid98_block_rsrvd_fix_b & Guard_uid97_block_rsrvd_fix_b & Round_uid96_block_rsrvd_fix_b & Sticky1_uid95_block_rsrvd_fix_b & Sticky0_uid94_block_rsrvd_fix_b;

    -- rBi_uid101_block_rsrvd_fix(LOGICAL,100)@2
    rBi_uid101_block_rsrvd_fix_q <= "1" WHEN rndBitCond_uid99_block_rsrvd_fix_q = cRBit_uid100_block_rsrvd_fix_q ELSE "0";

    -- roundBit_uid102_block_rsrvd_fix(LOGICAL,101)@2
    roundBit_uid102_block_rsrvd_fix_q <= not (rBi_uid101_block_rsrvd_fix_q);

    -- oneCST_uid91_block_rsrvd_fix(CONSTANT,90)
    oneCST_uid91_block_rsrvd_fix_q <= "00000001";

    -- expInc_uid92_block_rsrvd_fix(ADD,91)@1 + 1
    expInc_uid92_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist12_exp_aSig_uid22_block_rsrvd_fix_b_1_q);
    expInc_uid92_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & oneCST_uid91_block_rsrvd_fix_q);
    expInc_uid92_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expInc_uid92_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            expInc_uid92_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expInc_uid92_block_rsrvd_fix_a) + UNSIGNED(expInc_uid92_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expInc_uid92_block_rsrvd_fix_q <= expInc_uid92_block_rsrvd_fix_o(8 downto 0);

    -- expPostNorm_uid93_block_rsrvd_fix(SUB,92)@2
    expPostNorm_uid93_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expInc_uid92_block_rsrvd_fix_q);
    expPostNorm_uid93_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000" & redist1_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q);
    expPostNorm_uid93_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expPostNorm_uid93_block_rsrvd_fix_a) - UNSIGNED(expPostNorm_uid93_block_rsrvd_fix_b));
    expPostNorm_uid93_block_rsrvd_fix_q <= expPostNorm_uid93_block_rsrvd_fix_o(9 downto 0);

    -- fracPostNorm_uid90_block_rsrvd_fix(BITSELECT,89)@2
    fracPostNorm_uid90_block_rsrvd_fix_b <= leftShiftStage2_uid250_fracPostNormExt_uid89_block_rsrvd_fix_q(27 downto 1);

    -- fracPostNormRndRange_uid103_block_rsrvd_fix(BITSELECT,102)@2
    fracPostNormRndRange_uid103_block_rsrvd_fix_in <= fracPostNorm_uid90_block_rsrvd_fix_b(25 downto 0);
    fracPostNormRndRange_uid103_block_rsrvd_fix_b <= fracPostNormRndRange_uid103_block_rsrvd_fix_in(25 downto 2);

    -- expFracR_uid104_block_rsrvd_fix(BITJOIN,103)@2
    expFracR_uid104_block_rsrvd_fix_q <= expPostNorm_uid93_block_rsrvd_fix_q & fracPostNormRndRange_uid103_block_rsrvd_fix_b;

    -- rndExpFrac_uid105_block_rsrvd_fix(ADD,104)@2
    rndExpFrac_uid105_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expFracR_uid104_block_rsrvd_fix_q);
    rndExpFrac_uid105_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000000000000000000000" & roundBit_uid102_block_rsrvd_fix_q);
    rndExpFrac_uid105_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(rndExpFrac_uid105_block_rsrvd_fix_a) + UNSIGNED(rndExpFrac_uid105_block_rsrvd_fix_b));
    rndExpFrac_uid105_block_rsrvd_fix_q <= rndExpFrac_uid105_block_rsrvd_fix_o(34 downto 0);

    -- expRPreExc_uid118_block_rsrvd_fix(BITSELECT,117)@2
    expRPreExc_uid118_block_rsrvd_fix_in <= rndExpFrac_uid105_block_rsrvd_fix_q(31 downto 0);
    expRPreExc_uid118_block_rsrvd_fix_b <= expRPreExc_uid118_block_rsrvd_fix_in(31 downto 24);

    -- rndExpFracOvfBits_uid110_block_rsrvd_fix(BITSELECT,109)@2
    rndExpFracOvfBits_uid110_block_rsrvd_fix_in <= rndExpFrac_uid105_block_rsrvd_fix_q(33 downto 0);
    rndExpFracOvfBits_uid110_block_rsrvd_fix_b <= rndExpFracOvfBits_uid110_block_rsrvd_fix_in(33 downto 32);

    -- rOvfExtraBits_uid111_block_rsrvd_fix(LOGICAL,110)@2
    rOvfExtraBits_uid111_block_rsrvd_fix_q <= "1" WHEN rndExpFracOvfBits_uid110_block_rsrvd_fix_b = zocst_uid77_block_rsrvd_fix_q ELSE "0";

    -- wEP2AllOwE_uid106_block_rsrvd_fix(CONSTANT,105)
    wEP2AllOwE_uid106_block_rsrvd_fix_q <= "0011111111";

    -- rndExp_uid107_block_rsrvd_fix(BITSELECT,106)@2
    rndExp_uid107_block_rsrvd_fix_in <= rndExpFrac_uid105_block_rsrvd_fix_q(33 downto 0);
    rndExp_uid107_block_rsrvd_fix_b <= rndExp_uid107_block_rsrvd_fix_in(33 downto 24);

    -- rOvfEQMax_uid108_block_rsrvd_fix(LOGICAL,107)@2
    rOvfEQMax_uid108_block_rsrvd_fix_q <= "1" WHEN rndExp_uid107_block_rsrvd_fix_b = wEP2AllOwE_uid106_block_rsrvd_fix_q ELSE "0";

    -- rOvf_uid112_block_rsrvd_fix(LOGICAL,111)@2
    rOvf_uid112_block_rsrvd_fix_q <= rOvfEQMax_uid108_block_rsrvd_fix_q or rOvfExtraBits_uid111_block_rsrvd_fix_q;

    -- regInputs_uid119_block_rsrvd_fix(LOGICAL,118)@2
    regInputs_uid119_block_rsrvd_fix_q <= excR_aSig_uid32_block_rsrvd_fix_q and redist7_excR_bSig_uid46_block_rsrvd_fix_q_2_q;

    -- rInfOvf_uid122_block_rsrvd_fix(LOGICAL,121)@2
    rInfOvf_uid122_block_rsrvd_fix_q <= regInputs_uid119_block_rsrvd_fix_q and rOvf_uid112_block_rsrvd_fix_q;

    -- excRInfVInC_uid123_block_rsrvd_fix(BITJOIN,122)@2
    excRInfVInC_uid123_block_rsrvd_fix_q <= rInfOvf_uid122_block_rsrvd_fix_q & redist8_excN_bSig_uid43_block_rsrvd_fix_q_2_q & excN_aSig_uid29_block_rsrvd_fix_q & redist9_excI_bSig_uid42_block_rsrvd_fix_q_2_q & excI_aSig_uid28_block_rsrvd_fix_q & redist4_effSub_uid53_block_rsrvd_fix_q_2_q;

    -- excRInf_uid124_block_rsrvd_fix(LOOKUP,123)@2
    excRInf_uid124_block_rsrvd_fix_combproc: PROCESS (excRInfVInC_uid123_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excRInfVInC_uid123_block_rsrvd_fix_q) IS
            WHEN "000000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "000001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "000010" => excRInf_uid124_block_rsrvd_fix_q <= "1";
            WHEN "000011" => excRInf_uid124_block_rsrvd_fix_q <= "1";
            WHEN "000100" => excRInf_uid124_block_rsrvd_fix_q <= "1";
            WHEN "000101" => excRInf_uid124_block_rsrvd_fix_q <= "1";
            WHEN "000110" => excRInf_uid124_block_rsrvd_fix_q <= "1";
            WHEN "000111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "001000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "001001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "001010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "001011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "001100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "001101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "001110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "001111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "010000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "010001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "010010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "010011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "010100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "010101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "010110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "010111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "011000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "011001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "011010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "011011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "011100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "011101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "011110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "011111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "100000" => excRInf_uid124_block_rsrvd_fix_q <= "1";
            WHEN "100001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "100010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "100011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "100100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "100101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "100110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "100111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "101000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "101001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "101010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "101011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "101100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "101101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "101110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "101111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "110000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "110001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "110010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "110011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "110100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "110101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "110110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "110111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "111000" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "111001" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "111010" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "111011" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "111100" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "111101" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "111110" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN "111111" => excRInf_uid124_block_rsrvd_fix_q <= "0";
            WHEN OTHERS => -- unreachable
                           excRInf_uid124_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- rUdfExtraBit_uid115_block_rsrvd_fix(BITSELECT,114)@2
    rUdfExtraBit_uid115_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(rndExpFrac_uid105_block_rsrvd_fix_q(33 downto 0));
    rUdfExtraBit_uid115_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(rUdfExtraBit_uid115_block_rsrvd_fix_in(33 downto 33));

    -- wEP2AllZ_uid113_block_rsrvd_fix(CONSTANT,112)
    wEP2AllZ_uid113_block_rsrvd_fix_q <= "0000000000";

    -- rUdfEQMin_uid114_block_rsrvd_fix(LOGICAL,113)@2
    rUdfEQMin_uid114_block_rsrvd_fix_q <= "1" WHEN rndExp_uid107_block_rsrvd_fix_b = wEP2AllZ_uid113_block_rsrvd_fix_q ELSE "0";

    -- rUdf_uid116_block_rsrvd_fix(LOGICAL,115)@2
    rUdf_uid116_block_rsrvd_fix_q <= rUdfEQMin_uid114_block_rsrvd_fix_q or rUdfExtraBit_uid115_block_rsrvd_fix_b;

    -- excRZeroVInC_uid120_block_rsrvd_fix(BITJOIN,119)@2
    excRZeroVInC_uid120_block_rsrvd_fix_q <= aMinusA_uid88_block_rsrvd_fix_q & rUdf_uid116_block_rsrvd_fix_q & regInputs_uid119_block_rsrvd_fix_q & redist10_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_2_q & excZ_aSig_uid17_uid24_block_rsrvd_fix_q;

    -- excRZero_uid121_block_rsrvd_fix(LOOKUP,120)@2
    excRZero_uid121_block_rsrvd_fix_combproc: PROCESS (excRZeroVInC_uid120_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excRZeroVInC_uid120_block_rsrvd_fix_q) IS
            WHEN "00000" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "00001" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "00010" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "00011" => excRZero_uid121_block_rsrvd_fix_q <= "1";
            WHEN "00100" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "00101" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "00110" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "00111" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "01000" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "01001" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "01010" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "01011" => excRZero_uid121_block_rsrvd_fix_q <= "1";
            WHEN "01100" => excRZero_uid121_block_rsrvd_fix_q <= "1";
            WHEN "01101" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "01110" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "01111" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "10000" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "10001" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "10010" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "10011" => excRZero_uid121_block_rsrvd_fix_q <= "1";
            WHEN "10100" => excRZero_uid121_block_rsrvd_fix_q <= "1";
            WHEN "10101" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "10110" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "10111" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "11000" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "11001" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "11010" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "11011" => excRZero_uid121_block_rsrvd_fix_q <= "1";
            WHEN "11100" => excRZero_uid121_block_rsrvd_fix_q <= "1";
            WHEN "11101" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "11110" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN "11111" => excRZero_uid121_block_rsrvd_fix_q <= "0";
            WHEN OTHERS => -- unreachable
                           excRZero_uid121_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- concExc_uid128_block_rsrvd_fix(BITJOIN,127)@2
    concExc_uid128_block_rsrvd_fix_q <= excRNaN_uid127_block_rsrvd_fix_q & excRInf_uid124_block_rsrvd_fix_q & excRZero_uid121_block_rsrvd_fix_q;

    -- excREnc_uid129_block_rsrvd_fix(LOOKUP,128)@2
    excREnc_uid129_block_rsrvd_fix_combproc: PROCESS (concExc_uid128_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid128_block_rsrvd_fix_q) IS
            WHEN "000" => excREnc_uid129_block_rsrvd_fix_q <= "01";
            WHEN "001" => excREnc_uid129_block_rsrvd_fix_q <= "00";
            WHEN "010" => excREnc_uid129_block_rsrvd_fix_q <= "10";
            WHEN "011" => excREnc_uid129_block_rsrvd_fix_q <= "10";
            WHEN "100" => excREnc_uid129_block_rsrvd_fix_q <= "11";
            WHEN "101" => excREnc_uid129_block_rsrvd_fix_q <= "11";
            WHEN "110" => excREnc_uid129_block_rsrvd_fix_q <= "11";
            WHEN "111" => excREnc_uid129_block_rsrvd_fix_q <= "11";
            WHEN OTHERS => -- unreachable
                           excREnc_uid129_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid148_block_rsrvd_fix(MUX,147)@2
    expRPostExc_uid148_block_rsrvd_fix_s <= excREnc_uid129_block_rsrvd_fix_q;
    expRPostExc_uid148_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid148_block_rsrvd_fix_s, cstAllZWE_uid21_block_rsrvd_fix_q, expRPreExc_uid118_block_rsrvd_fix_b, cstAllOWE_uid19_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid148_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid148_block_rsrvd_fix_q <= cstAllZWE_uid21_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid148_block_rsrvd_fix_q <= expRPreExc_uid118_block_rsrvd_fix_b;
            WHEN "10" => expRPostExc_uid148_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid148_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid148_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid141_block_rsrvd_fix(CONSTANT,140)
    oneFracRPostExc2_uid141_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRPreExc_uid117_block_rsrvd_fix(BITSELECT,116)@2
    fracRPreExc_uid117_block_rsrvd_fix_in <= rndExpFrac_uid105_block_rsrvd_fix_q(23 downto 0);
    fracRPreExc_uid117_block_rsrvd_fix_b <= fracRPreExc_uid117_block_rsrvd_fix_in(23 downto 1);

    -- fracRPostExc_uid144_block_rsrvd_fix(MUX,143)@2
    fracRPostExc_uid144_block_rsrvd_fix_s <= excREnc_uid129_block_rsrvd_fix_q;
    fracRPostExc_uid144_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid144_block_rsrvd_fix_s, cstZeroWF_uid20_block_rsrvd_fix_q, fracRPreExc_uid117_block_rsrvd_fix_b, oneFracRPostExc2_uid141_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid144_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid144_block_rsrvd_fix_q <= cstZeroWF_uid20_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid144_block_rsrvd_fix_q <= fracRPreExc_uid117_block_rsrvd_fix_b;
            WHEN "10" => fracRPostExc_uid144_block_rsrvd_fix_q <= cstZeroWF_uid20_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid144_block_rsrvd_fix_q <= oneFracRPostExc2_uid141_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid144_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid149_block_rsrvd_fix(BITJOIN,148)@2
    R_uid149_block_rsrvd_fix_q <= signRPostExc_uid140_block_rsrvd_fix_q & expRPostExc_uid148_block_rsrvd_fix_q & fracRPostExc_uid144_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@2
    out_primWireOut <= R_uid149_block_rsrvd_fix_q;

END normal;
