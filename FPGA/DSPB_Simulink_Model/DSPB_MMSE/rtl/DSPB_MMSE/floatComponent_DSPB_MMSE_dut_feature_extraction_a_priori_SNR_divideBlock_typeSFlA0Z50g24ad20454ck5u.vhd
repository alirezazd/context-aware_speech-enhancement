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

-- VHDL created from floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA0Ze2a150g24ad20454ck5u
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
entity floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA0Ze2a150g24ad20454ck5u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA0Ze2a150g24ad20454ck5u;

architecture normal of floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA0Ze2a150g24ad20454ck5u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstBiasM1_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBias_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expX_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal fracX_uid11_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal signX_uid12_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal expY_uid13_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal fracY_uid14_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal signY_uid15_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal paddingY_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal updatedY_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal fracYZero_uid16_block_rsrvd_fix_a : STD_LOGIC_VECTOR (23 downto 0);
    signal fracYZero_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllZWE_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal excZ_x_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_y_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid43_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid47_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXmY_uid48_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expXmY_uid48_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expXmY_uid48_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expXmY_uid48_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expR_uid49_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal expR_uid49_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal expR_uid49_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal expR_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal yAddr_uid52_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal yPE_uid53_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal invY_uid55_block_rsrvd_fix_in : STD_LOGIC_VECTOR (31 downto 0);
    signal invY_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal invYO_uid56_block_rsrvd_fix_in : STD_LOGIC_VECTOR (32 downto 0);
    signal invYO_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal lOAdded_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal z4_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal oFracXZ4_uid62_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal divValPreNormYPow2Exc_uid64_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (27 downto 0);
    signal norm_uid65_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal divValPreNormHigh_uid66_block_rsrvd_fix_in : STD_LOGIC_VECTOR (26 downto 0);
    signal divValPreNormHigh_uid66_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal divValPreNormLow_uid67_block_rsrvd_fix_in : STD_LOGIC_VECTOR (25 downto 0);
    signal divValPreNormLow_uid67_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal normFracRnd_uid68_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal normFracRnd_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal expFracRnd_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal zeroPaddingInAddition_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracPostRnd_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal expFracPostRnd_uid77_block_rsrvd_fix_a : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracPostRnd_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracPostRnd_uid77_block_rsrvd_fix_o : STD_LOGIC_VECTOR (36 downto 0);
    signal expFracPostRnd_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (35 downto 0);
    signal fracXExt_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal fracPostRndF_uid80_block_rsrvd_fix_in : STD_LOGIC_VECTOR (24 downto 0);
    signal fracPostRndF_uid80_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracPostRndF_uid81_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostRndF_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expPostRndFR_uid82_block_rsrvd_fix_in : STD_LOGIC_VECTOR (32 downto 0);
    signal expPostRndFR_uid82_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expPostRndF_uid83_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expPostRndF_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal lOAdded_uid85_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal lOAdded_uid88_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal qDivProdNorm_uid91_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal qDivProdFracHigh_uid92_block_rsrvd_fix_in : STD_LOGIC_VECTOR (47 downto 0);
    signal qDivProdFracHigh_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal qDivProdFracLow_uid93_block_rsrvd_fix_in : STD_LOGIC_VECTOR (46 downto 0);
    signal qDivProdFracLow_uid93_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal qDivProdFrac_uid94_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal qDivProdFrac_uid94_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal qDivProdExp_opA_uid95_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal qDivProdExp_opA_uid95_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal qDivProdExp_opA_uid95_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal qDivProdExp_opA_uid95_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal qDivProdExp_opBs_uid96_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal qDivProdExp_opBs_uid96_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal qDivProdExp_opBs_uid96_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal qDivProdExp_opBs_uid96_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal qDivProdExp_uid97_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal qDivProdExp_uid97_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal qDivProdExp_uid97_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal qDivProdExp_uid97_block_rsrvd_fix_q : STD_LOGIC_VECTOR (10 downto 0);
    signal qDivProdFracWF_uid98_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal qDivProdLTX_opA_uid99_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal qDivProdLTX_opA_uid99_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal qDivProdLTX_opA_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal qDivProdLTX_opB_uid101_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal qDividerProdLTX_uid102_block_rsrvd_fix_a : STD_LOGIC_VECTOR (32 downto 0);
    signal qDividerProdLTX_uid102_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal qDividerProdLTX_uid102_block_rsrvd_fix_o : STD_LOGIC_VECTOR (32 downto 0);
    signal qDividerProdLTX_uid102_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal betweenFPwF_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (0 downto 0);
    signal betweenFPwF_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal extraUlp_uid104_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal extraUlp_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracPostRndFT_uid105_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPreExcExt_uid106_block_rsrvd_fix_a : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExcExt_uid106_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExcExt_uid106_block_rsrvd_fix_o : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExcExt_uid106_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal fracPostRndFPostUlp_uid107_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal fracPostRndFPostUlp_uid107_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPreExc_uid108_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPreExc_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal ovfIncRnd_uid110_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracPostRndInc_uid111_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expFracPostRndInc_uid111_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expFracPostRndInc_uid111_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expFracPostRndInc_uid111_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expFracPostRndR_uid112_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expFracPostRndR_uid112_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPreExc_uid113_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRPreExc_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expRExt_uid115_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal expUdf_uid116_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expUdf_uid116_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expUdf_uid116_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expUdf_uid116_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid119_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expOvf_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expOvf_uid119_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expOvf_uid119_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroOverReg_uid120_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal regOverRegWithUf_uid121_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xRegOrZero_uid122_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal regOrZeroOverInf_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid124_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRYZ_uid125_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRYROvf_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYZ_uid127_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYR_uid128_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid129_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZYZ_uid130_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYI_uid131_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid132_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid133_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid134_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal oneFracRPostExc2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid138_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid138_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid142_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid142_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid143_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sRPostExc_uid144_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal sRPostExc_uid144_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal divR_uid145_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal os_uid149_invTables_q : STD_LOGIC_VECTOR (31 downto 0);
    signal os_uid153_invTables_q : STD_LOGIC_VECTOR (21 downto 0);
    signal yT1_uid161_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal lowRangeB_uid163_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid163_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid164_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid165_invPolyEval_a : STD_LOGIC_VECTOR (22 downto 0);
    signal s1sumAHighB_uid165_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal s1sumAHighB_uid165_invPolyEval_o : STD_LOGIC_VECTOR (22 downto 0);
    signal s1sumAHighB_uid165_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal s1_uid166_invPolyEval_q : STD_LOGIC_VECTOR (23 downto 0);
    signal lowRangeB_uid169_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid169_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid170_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal s2sumAHighB_uid171_invPolyEval_a : STD_LOGIC_VECTOR (32 downto 0);
    signal s2sumAHighB_uid171_invPolyEval_b : STD_LOGIC_VECTOR (32 downto 0);
    signal s2sumAHighB_uid171_invPolyEval_o : STD_LOGIC_VECTOR (32 downto 0);
    signal s2sumAHighB_uid171_invPolyEval_q : STD_LOGIC_VECTOR (32 downto 0);
    signal s2_uid172_invPolyEval_q : STD_LOGIC_VECTOR (34 downto 0);
    signal osig_uid175_divValPreNorm_uid60_block_rsrvd_fix_b : STD_LOGIC_VECTOR (27 downto 0);
    signal osig_uid178_pT1_uid162_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid181_pT2_uid168_invPolyEval_b : STD_LOGIC_VECTOR (24 downto 0);
    signal memoryC0_uid147_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid147_invTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid147_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid147_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid147_invTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid147_invTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid148_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid148_invTables_lutmem_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC0_uid148_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid148_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid148_invTables_lutmem_ir : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC0_uid148_invTables_lutmem_r : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC1_uid151_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid151_invTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid151_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid151_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid151_invTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid151_invTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid152_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid152_invTables_lutmem_ia : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC1_uid152_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid152_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid152_invTables_lutmem_ir : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC1_uid152_invTables_lutmem_r : STD_LOGIC_VECTOR (1 downto 0);
    signal memoryC2_uid155_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid155_invTables_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid155_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid155_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid155_invTables_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid155_invTables_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_reset : std_logic;
    type qDivProd_uid90_block_rsrvd_fix_cma_a0type is array(NATURAL range <>) of UNSIGNED(24 downto 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_a0 : qDivProd_uid90_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of qDivProd_uid90_block_rsrvd_fix_cma_a0 : signal is true;
    type qDivProd_uid90_block_rsrvd_fix_cma_c0type is array(NATURAL range <>) of UNSIGNED(23 downto 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_c0 : qDivProd_uid90_block_rsrvd_fix_cma_c0type(0 to 0);
    attribute preserve of qDivProd_uid90_block_rsrvd_fix_cma_c0 : signal is true;
    type qDivProd_uid90_block_rsrvd_fix_cma_ptype is array(NATURAL range <>) of UNSIGNED(48 downto 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_p : qDivProd_uid90_block_rsrvd_fix_cma_ptype(0 to 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_u : qDivProd_uid90_block_rsrvd_fix_cma_ptype(0 to 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_w : qDivProd_uid90_block_rsrvd_fix_cma_ptype(0 to 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_x : qDivProd_uid90_block_rsrvd_fix_cma_ptype(0 to 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_y : qDivProd_uid90_block_rsrvd_fix_cma_ptype(0 to 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_s : qDivProd_uid90_block_rsrvd_fix_cma_ptype(0 to 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_qq : STD_LOGIC_VECTOR (48 downto 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_q : STD_LOGIC_VECTOR (48 downto 0);
    signal qDivProd_uid90_block_rsrvd_fix_cma_ena0 : std_logic;
    signal qDivProd_uid90_block_rsrvd_fix_cma_ena1 : std_logic;
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_reset : std_logic;
    type prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_a0type is array(NATURAL range <>) of UNSIGNED(26 downto 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_a0 : prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_a0 : signal is true;
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_c0 : qDivProd_uid90_block_rsrvd_fix_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_c0 : signal is true;
    type prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ptype is array(NATURAL range <>) of UNSIGNED(50 downto 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_p : prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_u : prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_w : prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_x : prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_y : prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_s : prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_qq : STD_LOGIC_VECTOR (50 downto 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_q : STD_LOGIC_VECTOR (50 downto 0);
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ena0 : std_logic;
    signal prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ena1 : std_logic;
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_reset : std_logic;
    type prodXY_uid177_pT1_uid162_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(12 downto 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_a0 : prodXY_uid177_pT1_uid162_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid177_pT1_uid162_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid177_pT1_uid162_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(12 downto 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_c0 : prodXY_uid177_pT1_uid162_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid177_pT1_uid162_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid177_pT1_uid162_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_l : prodXY_uid177_pT1_uid162_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid177_pT1_uid162_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(26 downto 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_p : prodXY_uid177_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_u : prodXY_uid177_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_w : prodXY_uid177_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_x : prodXY_uid177_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_y : prodXY_uid177_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_s : prodXY_uid177_pT1_uid162_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_q : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid177_pT1_uid162_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_reset : std_logic;
    type prodXY_uid180_pT2_uid168_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_a0 : prodXY_uid180_pT2_uid168_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid180_pT2_uid168_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid180_pT2_uid168_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(23 downto 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_c0 : prodXY_uid180_pT2_uid168_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid180_pT2_uid168_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid180_pT2_uid168_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_l : prodXY_uid180_pT2_uid168_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid180_pT2_uid168_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(38 downto 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_p : prodXY_uid180_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_u : prodXY_uid180_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_w : prodXY_uid180_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_x : prodXY_uid180_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_y : prodXY_uid180_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_s : prodXY_uid180_pT2_uid168_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid180_pT2_uid168_invPolyEval_cma_ena1 : std_logic;
    signal redist0_sRPostExc_uid144_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_excREnc_uid134_block_rsrvd_fix_q_3_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist3_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (30 downto 0);
    signal redist4_qDivProdExp_opA_uid95_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist5_expPostRndFR_uid82_block_rsrvd_fix_b_3_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist6_fracPostRndF_uid81_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist7_lOAdded_uid58_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist8_invYO_uid56_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_yPE_uid53_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist10_yPE_uid53_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist11_yAddr_uid52_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist12_yAddr_uid52_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist13_signR_uid47_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_signY_uid15_block_rsrvd_fix_b_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_fracX_uid11_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist18_expX_uid10_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_reset0 : std_logic;
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i : signal is true;
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_eq : std_logic;
    attribute preserve of redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_eq : signal is true;
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist15_fracY_uid14_block_rsrvd_fix_b_8_sticky_ena_q : signal is true;
    signal redist15_fracY_uid14_block_rsrvd_fix_b_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_mem_reset0 : std_logic;
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i : signal is true;
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq : std_logic;
    attribute preserve of redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq : signal is true;
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist16_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q : signal is true;
    signal redist16_expY_uid13_block_rsrvd_fix_b_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_notEnable(LOGICAL,216)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_nor(LOGICAL,217)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_nor_q <= not (redist15_fracY_uid14_block_rsrvd_fix_b_8_notEnable_q or redist15_fracY_uid14_block_rsrvd_fix_b_8_sticky_ena_q);

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_last(CONSTANT,213)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_last_q <= "0101";

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_cmp(LOGICAL,214)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_cmp_b <= STD_LOGIC_VECTOR("0" & redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_q);
    redist15_fracY_uid14_block_rsrvd_fix_b_8_cmp_q <= "1" WHEN redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_last_q = redist15_fracY_uid14_block_rsrvd_fix_b_8_cmp_b ELSE "0";

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_cmpReg(REG,215)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist15_fracY_uid14_block_rsrvd_fix_b_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist15_fracY_uid14_block_rsrvd_fix_b_8_cmpReg_q <= STD_LOGIC_VECTOR(redist15_fracY_uid14_block_rsrvd_fix_b_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_sticky_ena(REG,218)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist15_fracY_uid14_block_rsrvd_fix_b_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist15_fracY_uid14_block_rsrvd_fix_b_8_nor_q = "1") THEN
                redist15_fracY_uid14_block_rsrvd_fix_b_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist15_fracY_uid14_block_rsrvd_fix_b_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_enaAnd(LOGICAL,219)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_enaAnd_q <= redist15_fracY_uid14_block_rsrvd_fix_b_8_sticky_ena_q and VCC_q;

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt(COUNTER,211)
    -- low=0, high=6, step=1, init=0
    redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_eq <= '1';
            ELSE
                redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
            END IF;
            IF (redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_eq = '1') THEN
                redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i <= redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i + 2;
            ELSE
                redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i <= redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_i, 3)));

    -- fracY_uid14_block_rsrvd_fix(BITSELECT,13)@0
    fracY_uid14_block_rsrvd_fix_b <= in_1(22 downto 0);

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_wraddr(REG,212)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist15_fracY_uid14_block_rsrvd_fix_b_8_wraddr_q <= "110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist15_fracY_uid14_block_rsrvd_fix_b_8_wraddr_q <= STD_LOGIC_VECTOR(redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist15_fracY_uid14_block_rsrvd_fix_b_8_mem(DUALMEM,210)
    redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_ia <= STD_LOGIC_VECTOR(fracY_uid14_block_rsrvd_fix_b);
    redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_aa <= redist15_fracY_uid14_block_rsrvd_fix_b_8_wraddr_q;
    redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_ab <= redist15_fracY_uid14_block_rsrvd_fix_b_8_rdcnt_q;
    redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_reset0 <= areset;
    redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 23,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 23,
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
        clocken1 => redist15_fracY_uid14_block_rsrvd_fix_b_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_reset0,
        clock1 => clk,
        address_a => redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_aa,
        data_a => redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_ab,
        q_b => redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_iq
    );
    redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_q <= redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_iq(22 downto 0);

    -- paddingY_uid16_block_rsrvd_fix(CONSTANT,15)
    paddingY_uid16_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid40_block_rsrvd_fix(LOGICAL,39)@8
    fracXIsZero_uid40_block_rsrvd_fix_q <= "1" WHEN paddingY_uid16_block_rsrvd_fix_q = redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_q ELSE "0";

    -- cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    cstAllOWE_uid19_block_rsrvd_fix_q <= "11111111";

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_notEnable(LOGICAL,226)
    redist16_expY_uid13_block_rsrvd_fix_b_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_nor(LOGICAL,227)
    redist16_expY_uid13_block_rsrvd_fix_b_8_nor_q <= not (redist16_expY_uid13_block_rsrvd_fix_b_8_notEnable_q or redist16_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q);

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_mem_last(CONSTANT,223)
    redist16_expY_uid13_block_rsrvd_fix_b_8_mem_last_q <= "0101";

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_cmp(LOGICAL,224)
    redist16_expY_uid13_block_rsrvd_fix_b_8_cmp_b <= STD_LOGIC_VECTOR("0" & redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q);
    redist16_expY_uid13_block_rsrvd_fix_b_8_cmp_q <= "1" WHEN redist16_expY_uid13_block_rsrvd_fix_b_8_mem_last_q = redist16_expY_uid13_block_rsrvd_fix_b_8_cmp_b ELSE "0";

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_cmpReg(REG,225)
    redist16_expY_uid13_block_rsrvd_fix_b_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_expY_uid13_block_rsrvd_fix_b_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist16_expY_uid13_block_rsrvd_fix_b_8_cmpReg_q <= STD_LOGIC_VECTOR(redist16_expY_uid13_block_rsrvd_fix_b_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_sticky_ena(REG,228)
    redist16_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist16_expY_uid13_block_rsrvd_fix_b_8_nor_q = "1") THEN
                redist16_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist16_expY_uid13_block_rsrvd_fix_b_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_enaAnd(LOGICAL,229)
    redist16_expY_uid13_block_rsrvd_fix_b_8_enaAnd_q <= redist16_expY_uid13_block_rsrvd_fix_b_8_sticky_ena_q and VCC_q;

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt(COUNTER,221)
    -- low=0, high=6, step=1, init=0
    redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq <= '1';
            ELSE
                redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq <= '0';
            END IF;
            IF (redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_eq = '1') THEN
                redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i <= redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i + 2;
            ELSE
                redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i <= redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_i, 3)));

    -- expY_uid13_block_rsrvd_fix(BITSELECT,12)@0
    expY_uid13_block_rsrvd_fix_b <= in_1(30 downto 23);

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_wraddr(REG,222)
    redist16_expY_uid13_block_rsrvd_fix_b_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_expY_uid13_block_rsrvd_fix_b_8_wraddr_q <= "110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist16_expY_uid13_block_rsrvd_fix_b_8_wraddr_q <= STD_LOGIC_VECTOR(redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist16_expY_uid13_block_rsrvd_fix_b_8_mem(DUALMEM,220)
    redist16_expY_uid13_block_rsrvd_fix_b_8_mem_ia <= STD_LOGIC_VECTOR(expY_uid13_block_rsrvd_fix_b);
    redist16_expY_uid13_block_rsrvd_fix_b_8_mem_aa <= redist16_expY_uid13_block_rsrvd_fix_b_8_wraddr_q;
    redist16_expY_uid13_block_rsrvd_fix_b_8_mem_ab <= redist16_expY_uid13_block_rsrvd_fix_b_8_rdcnt_q;
    redist16_expY_uid13_block_rsrvd_fix_b_8_mem_reset0 <= areset;
    redist16_expY_uid13_block_rsrvd_fix_b_8_mem_dmem : altera_syncram
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
        clocken1 => redist16_expY_uid13_block_rsrvd_fix_b_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist16_expY_uid13_block_rsrvd_fix_b_8_mem_reset0,
        clock1 => clk,
        address_a => redist16_expY_uid13_block_rsrvd_fix_b_8_mem_aa,
        data_a => redist16_expY_uid13_block_rsrvd_fix_b_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist16_expY_uid13_block_rsrvd_fix_b_8_mem_ab,
        q_b => redist16_expY_uid13_block_rsrvd_fix_b_8_mem_iq
    );
    redist16_expY_uid13_block_rsrvd_fix_b_8_mem_q <= redist16_expY_uid13_block_rsrvd_fix_b_8_mem_iq(7 downto 0);

    -- expXIsMax_uid39_block_rsrvd_fix(LOGICAL,38)@8
    expXIsMax_uid39_block_rsrvd_fix_q <= "1" WHEN redist16_expY_uid13_block_rsrvd_fix_b_8_mem_q = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";

    -- excI_y_uid42_block_rsrvd_fix(LOGICAL,41)@8
    excI_y_uid42_block_rsrvd_fix_q <= expXIsMax_uid39_block_rsrvd_fix_q and fracXIsZero_uid40_block_rsrvd_fix_q;

    -- fracX_uid11_block_rsrvd_fix(BITSELECT,10)@6
    fracX_uid11_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- redist17_fracX_uid11_block_rsrvd_fix_b_2(DELAY,208)
    redist17_fracX_uid11_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracX_uid11_block_rsrvd_fix_b, xout => redist17_fracX_uid11_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@8
    fracXIsZero_uid26_block_rsrvd_fix_q <= "1" WHEN paddingY_uid16_block_rsrvd_fix_q = redist17_fracX_uid11_block_rsrvd_fix_b_2_q ELSE "0";

    -- expX_uid10_block_rsrvd_fix(BITSELECT,9)@6
    expX_uid10_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- redist18_expX_uid10_block_rsrvd_fix_b_2(DELAY,209)
    redist18_expX_uid10_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expX_uid10_block_rsrvd_fix_b, xout => redist18_expX_uid10_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@8
    expXIsMax_uid25_block_rsrvd_fix_q <= "1" WHEN redist18_expX_uid10_block_rsrvd_fix_b_2_q = cstAllOWE_uid19_block_rsrvd_fix_q ELSE "0";

    -- excI_x_uid28_block_rsrvd_fix(LOGICAL,27)@8
    excI_x_uid28_block_rsrvd_fix_q <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsZero_uid26_block_rsrvd_fix_q;

    -- excXIYI_uid131_block_rsrvd_fix(LOGICAL,130)@8
    excXIYI_uid131_block_rsrvd_fix_q <= excI_x_uid28_block_rsrvd_fix_q and excI_y_uid42_block_rsrvd_fix_q;

    -- fracXIsNotZero_uid41_block_rsrvd_fix(LOGICAL,40)@8
    fracXIsNotZero_uid41_block_rsrvd_fix_q <= not (fracXIsZero_uid40_block_rsrvd_fix_q);

    -- excN_y_uid43_block_rsrvd_fix(LOGICAL,42)@8
    excN_y_uid43_block_rsrvd_fix_q <= expXIsMax_uid39_block_rsrvd_fix_q and fracXIsNotZero_uid41_block_rsrvd_fix_q;

    -- fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@8
    fracXIsNotZero_uid27_block_rsrvd_fix_q <= not (fracXIsZero_uid26_block_rsrvd_fix_q);

    -- excN_x_uid29_block_rsrvd_fix(LOGICAL,28)@8
    excN_x_uid29_block_rsrvd_fix_q <= expXIsMax_uid25_block_rsrvd_fix_q and fracXIsNotZero_uid27_block_rsrvd_fix_q;

    -- cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    cstAllZWE_uid21_block_rsrvd_fix_q <= "00000000";

    -- excZ_y_uid38_block_rsrvd_fix(LOGICAL,37)@8
    excZ_y_uid38_block_rsrvd_fix_q <= "1" WHEN redist16_expY_uid13_block_rsrvd_fix_b_8_mem_q = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- excZ_x_uid24_block_rsrvd_fix(LOGICAL,23)@8
    excZ_x_uid24_block_rsrvd_fix_q <= "1" WHEN redist18_expX_uid10_block_rsrvd_fix_b_2_q = cstAllZWE_uid21_block_rsrvd_fix_q ELSE "0";

    -- excXZYZ_uid130_block_rsrvd_fix(LOGICAL,129)@8
    excXZYZ_uid130_block_rsrvd_fix_q <= excZ_x_uid24_block_rsrvd_fix_q and excZ_y_uid38_block_rsrvd_fix_q;

    -- excRNaN_uid132_block_rsrvd_fix(LOGICAL,131)@8
    excRNaN_uid132_block_rsrvd_fix_q <= excXZYZ_uid130_block_rsrvd_fix_q or excN_x_uid29_block_rsrvd_fix_q or excN_y_uid43_block_rsrvd_fix_q or excXIYI_uid131_block_rsrvd_fix_q;

    -- invExcRNaN_uid143_block_rsrvd_fix(LOGICAL,142)@8
    invExcRNaN_uid143_block_rsrvd_fix_q <= not (excRNaN_uid132_block_rsrvd_fix_q);

    -- signY_uid15_block_rsrvd_fix(BITSELECT,14)@0
    signY_uid15_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(31 downto 31));

    -- redist14_signY_uid15_block_rsrvd_fix_b_6(DELAY,205)
    redist14_signY_uid15_block_rsrvd_fix_b_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => signY_uid15_block_rsrvd_fix_b, xout => redist14_signY_uid15_block_rsrvd_fix_b_6_q, clk => clk, aclr => areset );

    -- signX_uid12_block_rsrvd_fix(BITSELECT,11)@6
    signX_uid12_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- signR_uid47_block_rsrvd_fix(LOGICAL,46)@6 + 1
    signR_uid47_block_rsrvd_fix_qi <= signX_uid12_block_rsrvd_fix_b xor redist14_signY_uid15_block_rsrvd_fix_b_6_q;
    signR_uid47_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid47_block_rsrvd_fix_qi, xout => signR_uid47_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist13_signR_uid47_block_rsrvd_fix_q_2(DELAY,204)
    redist13_signR_uid47_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid47_block_rsrvd_fix_q, xout => redist13_signR_uid47_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- sRPostExc_uid144_block_rsrvd_fix(LOGICAL,143)@8 + 1
    sRPostExc_uid144_block_rsrvd_fix_qi <= redist13_signR_uid47_block_rsrvd_fix_q_2_q and invExcRNaN_uid143_block_rsrvd_fix_q;
    sRPostExc_uid144_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sRPostExc_uid144_block_rsrvd_fix_qi, xout => sRPostExc_uid144_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist0_sRPostExc_uid144_block_rsrvd_fix_q_3(DELAY,191)
    redist0_sRPostExc_uid144_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => sRPostExc_uid144_block_rsrvd_fix_q, xout => redist0_sRPostExc_uid144_block_rsrvd_fix_q_3_q, clk => clk, aclr => areset );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- fracXExt_uid78_block_rsrvd_fix(BITJOIN,77)@8
    fracXExt_uid78_block_rsrvd_fix_q <= redist17_fracX_uid11_block_rsrvd_fix_b_2_q & GND_q;

    -- lOAdded_uid58_block_rsrvd_fix(BITJOIN,57)@6
    lOAdded_uid58_block_rsrvd_fix_q <= VCC_q & fracX_uid11_block_rsrvd_fix_b;

    -- redist7_lOAdded_uid58_block_rsrvd_fix_q_2(DELAY,198)
    redist7_lOAdded_uid58_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => lOAdded_uid58_block_rsrvd_fix_q, xout => redist7_lOAdded_uid58_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- z4_uid61_block_rsrvd_fix(CONSTANT,60)
    z4_uid61_block_rsrvd_fix_q <= "0000";

    -- oFracXZ4_uid62_block_rsrvd_fix(BITJOIN,61)@8
    oFracXZ4_uid62_block_rsrvd_fix_q <= redist7_lOAdded_uid58_block_rsrvd_fix_q_2_q & z4_uid61_block_rsrvd_fix_q;

    -- yAddr_uid52_block_rsrvd_fix(BITSELECT,51)@0
    yAddr_uid52_block_rsrvd_fix_b <= fracY_uid14_block_rsrvd_fix_b(22 downto 14);

    -- memoryC2_uid155_invTables_lutmem(DUALMEM,186)@0 + 2
    -- in j@20000000
    memoryC2_uid155_invTables_lutmem_aa <= yAddr_uid52_block_rsrvd_fix_b;
    memoryC2_uid155_invTables_lutmem_reset0 <= areset;
    memoryC2_uid155_invTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA4ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid155_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid155_invTables_lutmem_aa,
        q_a => memoryC2_uid155_invTables_lutmem_ir
    );
    memoryC2_uid155_invTables_lutmem_r <= memoryC2_uid155_invTables_lutmem_ir(12 downto 0);

    -- yPE_uid53_block_rsrvd_fix(BITSELECT,52)@0
    yPE_uid53_block_rsrvd_fix_b <= in_1(13 downto 0);

    -- redist9_yPE_uid53_block_rsrvd_fix_b_2(DELAY,200)
    redist9_yPE_uid53_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yPE_uid53_block_rsrvd_fix_b, xout => redist9_yPE_uid53_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- yT1_uid161_invPolyEval(BITSELECT,160)@2
    yT1_uid161_invPolyEval_b <= redist9_yPE_uid53_block_rsrvd_fix_b_2_q(13 downto 1);

    -- prodXY_uid177_pT1_uid162_invPolyEval_cma(CHAINMULTADD,189)@2 + 2
    prodXY_uid177_pT1_uid162_invPolyEval_cma_reset <= areset;
    prodXY_uid177_pT1_uid162_invPolyEval_cma_ena0 <= '1';
    prodXY_uid177_pT1_uid162_invPolyEval_cma_ena1 <= prodXY_uid177_pT1_uid162_invPolyEval_cma_ena0;
    prodXY_uid177_pT1_uid162_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid177_pT1_uid162_invPolyEval_cma_a0(0),14));
    prodXY_uid177_pT1_uid162_invPolyEval_cma_p(0) <= prodXY_uid177_pT1_uid162_invPolyEval_cma_l(0) * prodXY_uid177_pT1_uid162_invPolyEval_cma_c0(0);
    prodXY_uid177_pT1_uid162_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid177_pT1_uid162_invPolyEval_cma_p(0),27);
    prodXY_uid177_pT1_uid162_invPolyEval_cma_w(0) <= prodXY_uid177_pT1_uid162_invPolyEval_cma_u(0);
    prodXY_uid177_pT1_uid162_invPolyEval_cma_x(0) <= prodXY_uid177_pT1_uid162_invPolyEval_cma_w(0);
    prodXY_uid177_pT1_uid162_invPolyEval_cma_y(0) <= prodXY_uid177_pT1_uid162_invPolyEval_cma_x(0);
    prodXY_uid177_pT1_uid162_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid177_pT1_uid162_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid177_pT1_uid162_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid177_pT1_uid162_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid177_pT1_uid162_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid161_invPolyEval_b),13);
                prodXY_uid177_pT1_uid162_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid155_invTables_lutmem_r),13);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid177_pT1_uid162_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid177_pT1_uid162_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid177_pT1_uid162_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid177_pT1_uid162_invPolyEval_cma_s(0) <= prodXY_uid177_pT1_uid162_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid177_pT1_uid162_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid177_pT1_uid162_invPolyEval_cma_s(0)(25 downto 0)), xout => prodXY_uid177_pT1_uid162_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid177_pT1_uid162_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid177_pT1_uid162_invPolyEval_cma_qq(25 downto 0));

    -- osig_uid178_pT1_uid162_invPolyEval(BITSELECT,177)@4
    osig_uid178_pT1_uid162_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid177_pT1_uid162_invPolyEval_cma_q(25 downto 12));

    -- highBBits_uid164_invPolyEval(BITSELECT,163)@4
    highBBits_uid164_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid178_pT1_uid162_invPolyEval_b(13 downto 1));

    -- redist11_yAddr_uid52_block_rsrvd_fix_b_2(DELAY,202)
    redist11_yAddr_uid52_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid52_block_rsrvd_fix_b, xout => redist11_yAddr_uid52_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid152_invTables_lutmem(DUALMEM,185)@2 + 2
    -- in j@20000000
    memoryC1_uid152_invTables_lutmem_aa <= redist11_yAddr_uid52_block_rsrvd_fix_b_2_q;
    memoryC1_uid152_invTables_lutmem_reset0 <= areset;
    memoryC1_uid152_invTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA3ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid152_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid152_invTables_lutmem_aa,
        q_a => memoryC1_uid152_invTables_lutmem_ir
    );
    memoryC1_uid152_invTables_lutmem_r <= memoryC1_uid152_invTables_lutmem_ir(1 downto 0);

    -- memoryC1_uid151_invTables_lutmem(DUALMEM,184)@2 + 2
    -- in j@20000000
    memoryC1_uid151_invTables_lutmem_aa <= redist11_yAddr_uid52_block_rsrvd_fix_b_2_q;
    memoryC1_uid151_invTables_lutmem_reset0 <= areset;
    memoryC1_uid151_invTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA2ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid151_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid151_invTables_lutmem_aa,
        q_a => memoryC1_uid151_invTables_lutmem_ir
    );
    memoryC1_uid151_invTables_lutmem_r <= memoryC1_uid151_invTables_lutmem_ir(19 downto 0);

    -- os_uid153_invTables(BITJOIN,152)@4
    os_uid153_invTables_q <= memoryC1_uid152_invTables_lutmem_r & memoryC1_uid151_invTables_lutmem_r;

    -- s1sumAHighB_uid165_invPolyEval(ADD,164)@4
    s1sumAHighB_uid165_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => os_uid153_invTables_q(21)) & os_uid153_invTables_q));
    s1sumAHighB_uid165_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 13 => highBBits_uid164_invPolyEval_b(12)) & highBBits_uid164_invPolyEval_b));
    s1sumAHighB_uid165_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid165_invPolyEval_a) + SIGNED(s1sumAHighB_uid165_invPolyEval_b));
    s1sumAHighB_uid165_invPolyEval_q <= s1sumAHighB_uid165_invPolyEval_o(22 downto 0);

    -- lowRangeB_uid163_invPolyEval(BITSELECT,162)@4
    lowRangeB_uid163_invPolyEval_in <= osig_uid178_pT1_uid162_invPolyEval_b(0 downto 0);
    lowRangeB_uid163_invPolyEval_b <= lowRangeB_uid163_invPolyEval_in(0 downto 0);

    -- s1_uid166_invPolyEval(BITJOIN,165)@4
    s1_uid166_invPolyEval_q <= s1sumAHighB_uid165_invPolyEval_q & lowRangeB_uid163_invPolyEval_b;

    -- redist10_yPE_uid53_block_rsrvd_fix_b_4(DELAY,201)
    redist10_yPE_uid53_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_yPE_uid53_block_rsrvd_fix_b_2_q, xout => redist10_yPE_uid53_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- prodXY_uid180_pT2_uid168_invPolyEval_cma(CHAINMULTADD,190)@4 + 2
    prodXY_uid180_pT2_uid168_invPolyEval_cma_reset <= areset;
    prodXY_uid180_pT2_uid168_invPolyEval_cma_ena0 <= '1';
    prodXY_uid180_pT2_uid168_invPolyEval_cma_ena1 <= prodXY_uid180_pT2_uid168_invPolyEval_cma_ena0;
    prodXY_uid180_pT2_uid168_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid180_pT2_uid168_invPolyEval_cma_a0(0),15));
    prodXY_uid180_pT2_uid168_invPolyEval_cma_p(0) <= prodXY_uid180_pT2_uid168_invPolyEval_cma_l(0) * prodXY_uid180_pT2_uid168_invPolyEval_cma_c0(0);
    prodXY_uid180_pT2_uid168_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid180_pT2_uid168_invPolyEval_cma_p(0),39);
    prodXY_uid180_pT2_uid168_invPolyEval_cma_w(0) <= prodXY_uid180_pT2_uid168_invPolyEval_cma_u(0);
    prodXY_uid180_pT2_uid168_invPolyEval_cma_x(0) <= prodXY_uid180_pT2_uid168_invPolyEval_cma_w(0);
    prodXY_uid180_pT2_uid168_invPolyEval_cma_y(0) <= prodXY_uid180_pT2_uid168_invPolyEval_cma_x(0);
    prodXY_uid180_pT2_uid168_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid180_pT2_uid168_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid180_pT2_uid168_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid180_pT2_uid168_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid180_pT2_uid168_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist10_yPE_uid53_block_rsrvd_fix_b_4_q),14);
                prodXY_uid180_pT2_uid168_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid166_invPolyEval_q),24);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid180_pT2_uid168_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid180_pT2_uid168_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid180_pT2_uid168_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid180_pT2_uid168_invPolyEval_cma_s(0) <= prodXY_uid180_pT2_uid168_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid180_pT2_uid168_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid180_pT2_uid168_invPolyEval_cma_s(0)(37 downto 0)), xout => prodXY_uid180_pT2_uid168_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid180_pT2_uid168_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid180_pT2_uid168_invPolyEval_cma_qq(37 downto 0));

    -- osig_uid181_pT2_uid168_invPolyEval(BITSELECT,180)@6
    osig_uid181_pT2_uid168_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid180_pT2_uid168_invPolyEval_cma_q(37 downto 13));

    -- highBBits_uid170_invPolyEval(BITSELECT,169)@6
    highBBits_uid170_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid181_pT2_uid168_invPolyEval_b(24 downto 2));

    -- redist12_yAddr_uid52_block_rsrvd_fix_b_4(DELAY,203)
    redist12_yAddr_uid52_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist11_yAddr_uid52_block_rsrvd_fix_b_2_q, xout => redist12_yAddr_uid52_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid148_invTables_lutmem(DUALMEM,183)@4 + 2
    -- in j@20000000
    memoryC0_uid148_invTables_lutmem_aa <= redist12_yAddr_uid52_block_rsrvd_fix_b_4_q;
    memoryC0_uid148_invTables_lutmem_reset0 <= areset;
    memoryC0_uid148_invTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 12,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA1ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid148_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid148_invTables_lutmem_aa,
        q_a => memoryC0_uid148_invTables_lutmem_ir
    );
    memoryC0_uid148_invTables_lutmem_r <= memoryC0_uid148_invTables_lutmem_ir(11 downto 0);

    -- memoryC0_uid147_invTables_lutmem(DUALMEM,182)@4 + 2
    -- in j@20000000
    memoryC0_uid147_invTables_lutmem_aa <= redist12_yAddr_uid52_block_rsrvd_fix_b_4_q;
    memoryC0_uid147_invTables_lutmem_reset0 <= areset;
    memoryC0_uid147_invTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA0ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid147_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid147_invTables_lutmem_aa,
        q_a => memoryC0_uid147_invTables_lutmem_ir
    );
    memoryC0_uid147_invTables_lutmem_r <= memoryC0_uid147_invTables_lutmem_ir(19 downto 0);

    -- os_uid149_invTables(BITJOIN,148)@6
    os_uid149_invTables_q <= memoryC0_uid148_invTables_lutmem_r & memoryC0_uid147_invTables_lutmem_r;

    -- s2sumAHighB_uid171_invPolyEval(ADD,170)@6
    s2sumAHighB_uid171_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => os_uid149_invTables_q(31)) & os_uid149_invTables_q));
    s2sumAHighB_uid171_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 23 => highBBits_uid170_invPolyEval_b(22)) & highBBits_uid170_invPolyEval_b));
    s2sumAHighB_uid171_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid171_invPolyEval_a) + SIGNED(s2sumAHighB_uid171_invPolyEval_b));
    s2sumAHighB_uid171_invPolyEval_q <= s2sumAHighB_uid171_invPolyEval_o(32 downto 0);

    -- lowRangeB_uid169_invPolyEval(BITSELECT,168)@6
    lowRangeB_uid169_invPolyEval_in <= osig_uid181_pT2_uid168_invPolyEval_b(1 downto 0);
    lowRangeB_uid169_invPolyEval_b <= lowRangeB_uid169_invPolyEval_in(1 downto 0);

    -- s2_uid172_invPolyEval(BITJOIN,171)@6
    s2_uid172_invPolyEval_q <= s2sumAHighB_uid171_invPolyEval_q & lowRangeB_uid169_invPolyEval_b;

    -- invY_uid55_block_rsrvd_fix(BITSELECT,54)@6
    invY_uid55_block_rsrvd_fix_in <= s2_uid172_invPolyEval_q(31 downto 0);
    invY_uid55_block_rsrvd_fix_b <= invY_uid55_block_rsrvd_fix_in(31 downto 5);

    -- prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma(CHAINMULTADD,188)@6 + 2
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_reset <= areset;
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ena0 <= '1';
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ena1 <= prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ena0;
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_p(0) <= prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_a0(0) * prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_c0(0);
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_u(0) <= RESIZE(prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_p(0),51);
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_w(0) <= prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_u(0);
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_x(0) <= prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_w(0);
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_y(0) <= prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_x(0);
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_a0 <= (others => (others => '0'));
            prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ena0 = '1') THEN
                prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_a0(0) <= RESIZE(UNSIGNED(invY_uid55_block_rsrvd_fix_b),27);
                prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(lOAdded_uid58_block_rsrvd_fix_q),24);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_ena1 = '1') THEN
                prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_s(0) <= prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_delay : dspba_delay
    GENERIC MAP ( width => 51, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_s(0)(50 downto 0)), xout => prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_qq, clk => clk, aclr => areset );
    prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_q <= STD_LOGIC_VECTOR(prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_qq(50 downto 0));

    -- osig_uid175_divValPreNorm_uid60_block_rsrvd_fix(BITSELECT,174)@8
    osig_uid175_divValPreNorm_uid60_block_rsrvd_fix_b <= prodXY_uid174_divValPreNorm_uid60_block_rsrvd_fix_cma_q(50 downto 23);

    -- updatedY_uid17_block_rsrvd_fix(BITJOIN,16)@8
    updatedY_uid17_block_rsrvd_fix_q <= GND_q & paddingY_uid16_block_rsrvd_fix_q;

    -- fracYZero_uid16_block_rsrvd_fix(LOGICAL,17)@8
    fracYZero_uid16_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_q);
    fracYZero_uid16_block_rsrvd_fix_q <= "1" WHEN fracYZero_uid16_block_rsrvd_fix_a = updatedY_uid17_block_rsrvd_fix_q ELSE "0";

    -- divValPreNormYPow2Exc_uid64_block_rsrvd_fix(MUX,63)@8
    divValPreNormYPow2Exc_uid64_block_rsrvd_fix_s <= fracYZero_uid16_block_rsrvd_fix_q;
    divValPreNormYPow2Exc_uid64_block_rsrvd_fix_combproc: PROCESS (divValPreNormYPow2Exc_uid64_block_rsrvd_fix_s, osig_uid175_divValPreNorm_uid60_block_rsrvd_fix_b, oFracXZ4_uid62_block_rsrvd_fix_q)
    BEGIN
        CASE (divValPreNormYPow2Exc_uid64_block_rsrvd_fix_s) IS
            WHEN "0" => divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q <= osig_uid175_divValPreNorm_uid60_block_rsrvd_fix_b;
            WHEN "1" => divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q <= oFracXZ4_uid62_block_rsrvd_fix_q;
            WHEN OTHERS => divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- norm_uid65_block_rsrvd_fix(BITSELECT,64)@8
    norm_uid65_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q(27 downto 27));

    -- zeroPaddingInAddition_uid75_block_rsrvd_fix(CONSTANT,74)
    zeroPaddingInAddition_uid75_block_rsrvd_fix_q <= "000000000000000000000000";

    -- expFracPostRnd_uid76_block_rsrvd_fix(BITJOIN,75)@8
    expFracPostRnd_uid76_block_rsrvd_fix_q <= norm_uid65_block_rsrvd_fix_b & zeroPaddingInAddition_uid75_block_rsrvd_fix_q & VCC_q;

    -- cstBiasM1_uid7_block_rsrvd_fix(CONSTANT,6)
    cstBiasM1_uid7_block_rsrvd_fix_q <= "01111110";

    -- expXmY_uid48_block_rsrvd_fix(SUB,47)@8
    expXmY_uid48_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist18_expX_uid10_block_rsrvd_fix_b_2_q);
    expXmY_uid48_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & redist16_expY_uid13_block_rsrvd_fix_b_8_mem_q);
    expXmY_uid48_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expXmY_uid48_block_rsrvd_fix_a) - UNSIGNED(expXmY_uid48_block_rsrvd_fix_b));
    expXmY_uid48_block_rsrvd_fix_q <= expXmY_uid48_block_rsrvd_fix_o(8 downto 0);

    -- expR_uid49_block_rsrvd_fix(ADD,48)@8
    expR_uid49_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => expXmY_uid48_block_rsrvd_fix_q(8)) & expXmY_uid48_block_rsrvd_fix_q));
    expR_uid49_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & cstBiasM1_uid7_block_rsrvd_fix_q));
    expR_uid49_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expR_uid49_block_rsrvd_fix_a) + SIGNED(expR_uid49_block_rsrvd_fix_b));
    expR_uid49_block_rsrvd_fix_q <= expR_uid49_block_rsrvd_fix_o(9 downto 0);

    -- divValPreNormHigh_uid66_block_rsrvd_fix(BITSELECT,65)@8
    divValPreNormHigh_uid66_block_rsrvd_fix_in <= divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q(26 downto 0);
    divValPreNormHigh_uid66_block_rsrvd_fix_b <= divValPreNormHigh_uid66_block_rsrvd_fix_in(26 downto 2);

    -- divValPreNormLow_uid67_block_rsrvd_fix(BITSELECT,66)@8
    divValPreNormLow_uid67_block_rsrvd_fix_in <= divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q(25 downto 0);
    divValPreNormLow_uid67_block_rsrvd_fix_b <= divValPreNormLow_uid67_block_rsrvd_fix_in(25 downto 1);

    -- normFracRnd_uid68_block_rsrvd_fix(MUX,67)@8
    normFracRnd_uid68_block_rsrvd_fix_s <= norm_uid65_block_rsrvd_fix_b;
    normFracRnd_uid68_block_rsrvd_fix_combproc: PROCESS (normFracRnd_uid68_block_rsrvd_fix_s, divValPreNormLow_uid67_block_rsrvd_fix_b, divValPreNormHigh_uid66_block_rsrvd_fix_b)
    BEGIN
        CASE (normFracRnd_uid68_block_rsrvd_fix_s) IS
            WHEN "0" => normFracRnd_uid68_block_rsrvd_fix_q <= divValPreNormLow_uid67_block_rsrvd_fix_b;
            WHEN "1" => normFracRnd_uid68_block_rsrvd_fix_q <= divValPreNormHigh_uid66_block_rsrvd_fix_b;
            WHEN OTHERS => normFracRnd_uid68_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expFracRnd_uid69_block_rsrvd_fix(BITJOIN,68)@8
    expFracRnd_uid69_block_rsrvd_fix_q <= expR_uid49_block_rsrvd_fix_q & normFracRnd_uid68_block_rsrvd_fix_q;

    -- expFracPostRnd_uid77_block_rsrvd_fix(ADD,76)@8
    expFracPostRnd_uid77_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 35 => expFracRnd_uid69_block_rsrvd_fix_q(34)) & expFracRnd_uid69_block_rsrvd_fix_q));
    expFracPostRnd_uid77_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & expFracPostRnd_uid76_block_rsrvd_fix_q));
    expFracPostRnd_uid77_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expFracPostRnd_uid77_block_rsrvd_fix_a) + SIGNED(expFracPostRnd_uid77_block_rsrvd_fix_b));
    expFracPostRnd_uid77_block_rsrvd_fix_q <= expFracPostRnd_uid77_block_rsrvd_fix_o(35 downto 0);

    -- fracPostRndF_uid80_block_rsrvd_fix(BITSELECT,79)@8
    fracPostRndF_uid80_block_rsrvd_fix_in <= expFracPostRnd_uid77_block_rsrvd_fix_q(24 downto 0);
    fracPostRndF_uid80_block_rsrvd_fix_b <= fracPostRndF_uid80_block_rsrvd_fix_in(24 downto 1);

    -- invYO_uid56_block_rsrvd_fix(BITSELECT,55)@6
    invYO_uid56_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(s2_uid172_invPolyEval_q(32 downto 0));
    invYO_uid56_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(invYO_uid56_block_rsrvd_fix_in(32 downto 32));

    -- redist8_invYO_uid56_block_rsrvd_fix_b_2(DELAY,199)
    redist8_invYO_uid56_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => invYO_uid56_block_rsrvd_fix_b, xout => redist8_invYO_uid56_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- fracPostRndF_uid81_block_rsrvd_fix(MUX,80)@8
    fracPostRndF_uid81_block_rsrvd_fix_s <= redist8_invYO_uid56_block_rsrvd_fix_b_2_q;
    fracPostRndF_uid81_block_rsrvd_fix_combproc: PROCESS (fracPostRndF_uid81_block_rsrvd_fix_s, fracPostRndF_uid80_block_rsrvd_fix_b, fracXExt_uid78_block_rsrvd_fix_q)
    BEGIN
        CASE (fracPostRndF_uid81_block_rsrvd_fix_s) IS
            WHEN "0" => fracPostRndF_uid81_block_rsrvd_fix_q <= fracPostRndF_uid80_block_rsrvd_fix_b;
            WHEN "1" => fracPostRndF_uid81_block_rsrvd_fix_q <= fracXExt_uid78_block_rsrvd_fix_q;
            WHEN OTHERS => fracPostRndF_uid81_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist6_fracPostRndF_uid81_block_rsrvd_fix_q_2(DELAY,197)
    redist6_fracPostRndF_uid81_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracPostRndF_uid81_block_rsrvd_fix_q, xout => redist6_fracPostRndF_uid81_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- fracPostRndFT_uid105_block_rsrvd_fix(BITSELECT,104)@10
    fracPostRndFT_uid105_block_rsrvd_fix_b <= redist6_fracPostRndF_uid81_block_rsrvd_fix_q_2_q(23 downto 1);

    -- redist2_fracPostRndFT_uid105_block_rsrvd_fix_b_1(DELAY,193)
    redist2_fracPostRndFT_uid105_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracPostRndFT_uid105_block_rsrvd_fix_b, xout => redist2_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- fracRPreExcExt_uid106_block_rsrvd_fix(ADD,105)@11
    fracRPreExcExt_uid106_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist2_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q);
    fracRPreExcExt_uid106_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000000000000000" & extraUlp_uid104_block_rsrvd_fix_q);
    fracRPreExcExt_uid106_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fracRPreExcExt_uid106_block_rsrvd_fix_a) + UNSIGNED(fracRPreExcExt_uid106_block_rsrvd_fix_b));
    fracRPreExcExt_uid106_block_rsrvd_fix_q <= fracRPreExcExt_uid106_block_rsrvd_fix_o(23 downto 0);

    -- ovfIncRnd_uid110_block_rsrvd_fix(BITSELECT,109)@11
    ovfIncRnd_uid110_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(fracRPreExcExt_uid106_block_rsrvd_fix_q(23 downto 23));

    -- expFracPostRndInc_uid111_block_rsrvd_fix(ADD,110)@11
    expFracPostRndInc_uid111_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist5_expPostRndFR_uid82_block_rsrvd_fix_b_3_q);
    expFracPostRndInc_uid111_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000" & ovfIncRnd_uid110_block_rsrvd_fix_b);
    expFracPostRndInc_uid111_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expFracPostRndInc_uid111_block_rsrvd_fix_a) + UNSIGNED(expFracPostRndInc_uid111_block_rsrvd_fix_b));
    expFracPostRndInc_uid111_block_rsrvd_fix_q <= expFracPostRndInc_uid111_block_rsrvd_fix_o(8 downto 0);

    -- expFracPostRndR_uid112_block_rsrvd_fix(BITSELECT,111)@11
    expFracPostRndR_uid112_block_rsrvd_fix_in <= expFracPostRndInc_uid111_block_rsrvd_fix_q(7 downto 0);
    expFracPostRndR_uid112_block_rsrvd_fix_b <= expFracPostRndR_uid112_block_rsrvd_fix_in(7 downto 0);

    -- expPostRndFR_uid82_block_rsrvd_fix(BITSELECT,81)@8
    expPostRndFR_uid82_block_rsrvd_fix_in <= expFracPostRnd_uid77_block_rsrvd_fix_q(32 downto 0);
    expPostRndFR_uid82_block_rsrvd_fix_b <= expPostRndFR_uid82_block_rsrvd_fix_in(32 downto 25);

    -- redist5_expPostRndFR_uid82_block_rsrvd_fix_b_3(DELAY,196)
    redist5_expPostRndFR_uid82_block_rsrvd_fix_b_3 : dspba_delay
    GENERIC MAP ( width => 8, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => expPostRndFR_uid82_block_rsrvd_fix_b, xout => redist5_expPostRndFR_uid82_block_rsrvd_fix_b_3_q, clk => clk, aclr => areset );

    -- betweenFPwF_uid103_block_rsrvd_fix(BITSELECT,102)@10
    betweenFPwF_uid103_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(redist6_fracPostRndF_uid81_block_rsrvd_fix_q_2_q(0 downto 0));
    betweenFPwF_uid103_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(betweenFPwF_uid103_block_rsrvd_fix_in(0 downto 0));

    -- qDivProdLTX_opB_uid101_block_rsrvd_fix(BITJOIN,100)@8
    qDivProdLTX_opB_uid101_block_rsrvd_fix_q <= redist18_expX_uid10_block_rsrvd_fix_b_2_q & redist17_fracX_uid11_block_rsrvd_fix_b_2_q;

    -- redist3_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_2(DELAY,194)
    redist3_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 31, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => qDivProdLTX_opB_uid101_block_rsrvd_fix_q, xout => redist3_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- lOAdded_uid88_block_rsrvd_fix(BITJOIN,87)@8
    lOAdded_uid88_block_rsrvd_fix_q <= VCC_q & redist15_fracY_uid14_block_rsrvd_fix_b_8_mem_q;

    -- lOAdded_uid85_block_rsrvd_fix(BITJOIN,84)@8
    lOAdded_uid85_block_rsrvd_fix_q <= VCC_q & fracPostRndF_uid81_block_rsrvd_fix_q;

    -- qDivProd_uid90_block_rsrvd_fix_cma(CHAINMULTADD,187)@8 + 2
    qDivProd_uid90_block_rsrvd_fix_cma_reset <= areset;
    qDivProd_uid90_block_rsrvd_fix_cma_ena0 <= '1';
    qDivProd_uid90_block_rsrvd_fix_cma_ena1 <= qDivProd_uid90_block_rsrvd_fix_cma_ena0;
    qDivProd_uid90_block_rsrvd_fix_cma_p(0) <= qDivProd_uid90_block_rsrvd_fix_cma_a0(0) * qDivProd_uid90_block_rsrvd_fix_cma_c0(0);
    qDivProd_uid90_block_rsrvd_fix_cma_u(0) <= RESIZE(qDivProd_uid90_block_rsrvd_fix_cma_p(0),49);
    qDivProd_uid90_block_rsrvd_fix_cma_w(0) <= qDivProd_uid90_block_rsrvd_fix_cma_u(0);
    qDivProd_uid90_block_rsrvd_fix_cma_x(0) <= qDivProd_uid90_block_rsrvd_fix_cma_w(0);
    qDivProd_uid90_block_rsrvd_fix_cma_y(0) <= qDivProd_uid90_block_rsrvd_fix_cma_x(0);
    qDivProd_uid90_block_rsrvd_fix_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            qDivProd_uid90_block_rsrvd_fix_cma_a0 <= (others => (others => '0'));
            qDivProd_uid90_block_rsrvd_fix_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (qDivProd_uid90_block_rsrvd_fix_cma_ena0 = '1') THEN
                qDivProd_uid90_block_rsrvd_fix_cma_a0(0) <= RESIZE(UNSIGNED(lOAdded_uid85_block_rsrvd_fix_q),25);
                qDivProd_uid90_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(lOAdded_uid88_block_rsrvd_fix_q),24);
            END IF;
        END IF;
    END PROCESS;
    qDivProd_uid90_block_rsrvd_fix_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            qDivProd_uid90_block_rsrvd_fix_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (qDivProd_uid90_block_rsrvd_fix_cma_ena1 = '1') THEN
                qDivProd_uid90_block_rsrvd_fix_cma_s(0) <= qDivProd_uid90_block_rsrvd_fix_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    qDivProd_uid90_block_rsrvd_fix_cma_delay : dspba_delay
    GENERIC MAP ( width => 49, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(qDivProd_uid90_block_rsrvd_fix_cma_s(0)(48 downto 0)), xout => qDivProd_uid90_block_rsrvd_fix_cma_qq, clk => clk, aclr => areset );
    qDivProd_uid90_block_rsrvd_fix_cma_q <= STD_LOGIC_VECTOR(qDivProd_uid90_block_rsrvd_fix_cma_qq(48 downto 0));

    -- qDivProdNorm_uid91_block_rsrvd_fix(BITSELECT,90)@10
    qDivProdNorm_uid91_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(qDivProd_uid90_block_rsrvd_fix_cma_q(48 downto 48));

    -- cstBias_uid8_block_rsrvd_fix(CONSTANT,7)
    cstBias_uid8_block_rsrvd_fix_q <= "01111111";

    -- qDivProdExp_opBs_uid96_block_rsrvd_fix(SUB,95)@10
    qDivProdExp_opBs_uid96_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & cstBias_uid8_block_rsrvd_fix_q);
    qDivProdExp_opBs_uid96_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000" & qDivProdNorm_uid91_block_rsrvd_fix_b);
    qDivProdExp_opBs_uid96_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(qDivProdExp_opBs_uid96_block_rsrvd_fix_a) - UNSIGNED(qDivProdExp_opBs_uid96_block_rsrvd_fix_b));
    qDivProdExp_opBs_uid96_block_rsrvd_fix_q <= qDivProdExp_opBs_uid96_block_rsrvd_fix_o(8 downto 0);

    -- expPostRndF_uid83_block_rsrvd_fix(MUX,82)@8
    expPostRndF_uid83_block_rsrvd_fix_s <= redist8_invYO_uid56_block_rsrvd_fix_b_2_q;
    expPostRndF_uid83_block_rsrvd_fix_combproc: PROCESS (expPostRndF_uid83_block_rsrvd_fix_s, expPostRndFR_uid82_block_rsrvd_fix_b, redist18_expX_uid10_block_rsrvd_fix_b_2_q)
    BEGIN
        CASE (expPostRndF_uid83_block_rsrvd_fix_s) IS
            WHEN "0" => expPostRndF_uid83_block_rsrvd_fix_q <= expPostRndFR_uid82_block_rsrvd_fix_b;
            WHEN "1" => expPostRndF_uid83_block_rsrvd_fix_q <= redist18_expX_uid10_block_rsrvd_fix_b_2_q;
            WHEN OTHERS => expPostRndF_uid83_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- qDivProdExp_opA_uid95_block_rsrvd_fix(ADD,94)@8 + 1
    qDivProdExp_opA_uid95_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist16_expY_uid13_block_rsrvd_fix_b_8_mem_q);
    qDivProdExp_opA_uid95_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & expPostRndF_uid83_block_rsrvd_fix_q);
    qDivProdExp_opA_uid95_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            qDivProdExp_opA_uid95_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            qDivProdExp_opA_uid95_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(qDivProdExp_opA_uid95_block_rsrvd_fix_a) + UNSIGNED(qDivProdExp_opA_uid95_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    qDivProdExp_opA_uid95_block_rsrvd_fix_q <= qDivProdExp_opA_uid95_block_rsrvd_fix_o(8 downto 0);

    -- redist4_qDivProdExp_opA_uid95_block_rsrvd_fix_q_2(DELAY,195)
    redist4_qDivProdExp_opA_uid95_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => qDivProdExp_opA_uid95_block_rsrvd_fix_q, xout => redist4_qDivProdExp_opA_uid95_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- qDivProdExp_uid97_block_rsrvd_fix(SUB,96)@10
    qDivProdExp_uid97_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & redist4_qDivProdExp_opA_uid95_block_rsrvd_fix_q_2_q));
    qDivProdExp_uid97_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 9 => qDivProdExp_opBs_uid96_block_rsrvd_fix_q(8)) & qDivProdExp_opBs_uid96_block_rsrvd_fix_q));
    qDivProdExp_uid97_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(qDivProdExp_uid97_block_rsrvd_fix_a) - SIGNED(qDivProdExp_uid97_block_rsrvd_fix_b));
    qDivProdExp_uid97_block_rsrvd_fix_q <= qDivProdExp_uid97_block_rsrvd_fix_o(10 downto 0);

    -- qDivProdLTX_opA_uid99_block_rsrvd_fix(BITSELECT,98)@10
    qDivProdLTX_opA_uid99_block_rsrvd_fix_in <= qDivProdExp_uid97_block_rsrvd_fix_q(7 downto 0);
    qDivProdLTX_opA_uid99_block_rsrvd_fix_b <= qDivProdLTX_opA_uid99_block_rsrvd_fix_in(7 downto 0);

    -- qDivProdFracHigh_uid92_block_rsrvd_fix(BITSELECT,91)@10
    qDivProdFracHigh_uid92_block_rsrvd_fix_in <= qDivProd_uid90_block_rsrvd_fix_cma_q(47 downto 0);
    qDivProdFracHigh_uid92_block_rsrvd_fix_b <= qDivProdFracHigh_uid92_block_rsrvd_fix_in(47 downto 24);

    -- qDivProdFracLow_uid93_block_rsrvd_fix(BITSELECT,92)@10
    qDivProdFracLow_uid93_block_rsrvd_fix_in <= qDivProd_uid90_block_rsrvd_fix_cma_q(46 downto 0);
    qDivProdFracLow_uid93_block_rsrvd_fix_b <= qDivProdFracLow_uid93_block_rsrvd_fix_in(46 downto 23);

    -- qDivProdFrac_uid94_block_rsrvd_fix(MUX,93)@10
    qDivProdFrac_uid94_block_rsrvd_fix_s <= qDivProdNorm_uid91_block_rsrvd_fix_b;
    qDivProdFrac_uid94_block_rsrvd_fix_combproc: PROCESS (qDivProdFrac_uid94_block_rsrvd_fix_s, qDivProdFracLow_uid93_block_rsrvd_fix_b, qDivProdFracHigh_uid92_block_rsrvd_fix_b)
    BEGIN
        CASE (qDivProdFrac_uid94_block_rsrvd_fix_s) IS
            WHEN "0" => qDivProdFrac_uid94_block_rsrvd_fix_q <= qDivProdFracLow_uid93_block_rsrvd_fix_b;
            WHEN "1" => qDivProdFrac_uid94_block_rsrvd_fix_q <= qDivProdFracHigh_uid92_block_rsrvd_fix_b;
            WHEN OTHERS => qDivProdFrac_uid94_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- qDivProdFracWF_uid98_block_rsrvd_fix(BITSELECT,97)@10
    qDivProdFracWF_uid98_block_rsrvd_fix_b <= qDivProdFrac_uid94_block_rsrvd_fix_q(23 downto 1);

    -- qDivProdLTX_opA_uid100_block_rsrvd_fix(BITJOIN,99)@10
    qDivProdLTX_opA_uid100_block_rsrvd_fix_q <= qDivProdLTX_opA_uid99_block_rsrvd_fix_b & qDivProdFracWF_uid98_block_rsrvd_fix_b;

    -- qDividerProdLTX_uid102_block_rsrvd_fix(COMPARE,101)@10
    qDividerProdLTX_uid102_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & qDivProdLTX_opA_uid100_block_rsrvd_fix_q);
    qDividerProdLTX_uid102_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & redist3_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_2_q);
    qDividerProdLTX_uid102_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(qDividerProdLTX_uid102_block_rsrvd_fix_a) - UNSIGNED(qDividerProdLTX_uid102_block_rsrvd_fix_b));
    qDividerProdLTX_uid102_block_rsrvd_fix_c(0) <= qDividerProdLTX_uid102_block_rsrvd_fix_o(32);

    -- extraUlp_uid104_block_rsrvd_fix(LOGICAL,103)@10 + 1
    extraUlp_uid104_block_rsrvd_fix_qi <= qDividerProdLTX_uid102_block_rsrvd_fix_c and betweenFPwF_uid103_block_rsrvd_fix_b;
    extraUlp_uid104_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => extraUlp_uid104_block_rsrvd_fix_qi, xout => extraUlp_uid104_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- expRPreExc_uid113_block_rsrvd_fix(MUX,112)@11
    expRPreExc_uid113_block_rsrvd_fix_s <= extraUlp_uid104_block_rsrvd_fix_q;
    expRPreExc_uid113_block_rsrvd_fix_combproc: PROCESS (expRPreExc_uid113_block_rsrvd_fix_s, redist5_expPostRndFR_uid82_block_rsrvd_fix_b_3_q, expFracPostRndR_uid112_block_rsrvd_fix_b)
    BEGIN
        CASE (expRPreExc_uid113_block_rsrvd_fix_s) IS
            WHEN "0" => expRPreExc_uid113_block_rsrvd_fix_q <= redist5_expPostRndFR_uid82_block_rsrvd_fix_b_3_q;
            WHEN "1" => expRPreExc_uid113_block_rsrvd_fix_q <= expFracPostRndR_uid112_block_rsrvd_fix_b;
            WHEN OTHERS => expRPreExc_uid113_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- invExpXIsMax_uid44_block_rsrvd_fix(LOGICAL,43)@8
    invExpXIsMax_uid44_block_rsrvd_fix_q <= not (expXIsMax_uid39_block_rsrvd_fix_q);

    -- InvExpXIsZero_uid45_block_rsrvd_fix(LOGICAL,44)@8
    InvExpXIsZero_uid45_block_rsrvd_fix_q <= not (excZ_y_uid38_block_rsrvd_fix_q);

    -- excR_y_uid46_block_rsrvd_fix(LOGICAL,45)@8
    excR_y_uid46_block_rsrvd_fix_q <= InvExpXIsZero_uid45_block_rsrvd_fix_q and invExpXIsMax_uid44_block_rsrvd_fix_q;

    -- excXIYR_uid128_block_rsrvd_fix(LOGICAL,127)@8
    excXIYR_uid128_block_rsrvd_fix_q <= excI_x_uid28_block_rsrvd_fix_q and excR_y_uid46_block_rsrvd_fix_q;

    -- excXIYZ_uid127_block_rsrvd_fix(LOGICAL,126)@8
    excXIYZ_uid127_block_rsrvd_fix_q <= excI_x_uid28_block_rsrvd_fix_q and excZ_y_uid38_block_rsrvd_fix_q;

    -- expRExt_uid115_block_rsrvd_fix(BITSELECT,114)@8
    expRExt_uid115_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracPostRnd_uid77_block_rsrvd_fix_q(35 downto 25));

    -- expOvf_uid119_block_rsrvd_fix(COMPARE,118)@8
    expOvf_uid119_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => expRExt_uid115_block_rsrvd_fix_b(10)) & expRExt_uid115_block_rsrvd_fix_b));
    expOvf_uid119_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000" & cstAllOWE_uid19_block_rsrvd_fix_q));
    expOvf_uid119_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid119_block_rsrvd_fix_a) - SIGNED(expOvf_uid119_block_rsrvd_fix_b));
    expOvf_uid119_block_rsrvd_fix_n(0) <= not (expOvf_uid119_block_rsrvd_fix_o(12));

    -- invExpXIsMax_uid30_block_rsrvd_fix(LOGICAL,29)@8
    invExpXIsMax_uid30_block_rsrvd_fix_q <= not (expXIsMax_uid25_block_rsrvd_fix_q);

    -- InvExpXIsZero_uid31_block_rsrvd_fix(LOGICAL,30)@8
    InvExpXIsZero_uid31_block_rsrvd_fix_q <= not (excZ_x_uid24_block_rsrvd_fix_q);

    -- excR_x_uid32_block_rsrvd_fix(LOGICAL,31)@8
    excR_x_uid32_block_rsrvd_fix_q <= InvExpXIsZero_uid31_block_rsrvd_fix_q and invExpXIsMax_uid30_block_rsrvd_fix_q;

    -- excXRYROvf_uid126_block_rsrvd_fix(LOGICAL,125)@8
    excXRYROvf_uid126_block_rsrvd_fix_q <= excR_x_uid32_block_rsrvd_fix_q and excR_y_uid46_block_rsrvd_fix_q and expOvf_uid119_block_rsrvd_fix_n;

    -- excXRYZ_uid125_block_rsrvd_fix(LOGICAL,124)@8
    excXRYZ_uid125_block_rsrvd_fix_q <= excR_x_uid32_block_rsrvd_fix_q and excZ_y_uid38_block_rsrvd_fix_q;

    -- excRInf_uid129_block_rsrvd_fix(LOGICAL,128)@8
    excRInf_uid129_block_rsrvd_fix_q <= excXRYZ_uid125_block_rsrvd_fix_q or excXRYROvf_uid126_block_rsrvd_fix_q or excXIYZ_uid127_block_rsrvd_fix_q or excXIYR_uid128_block_rsrvd_fix_q;

    -- xRegOrZero_uid122_block_rsrvd_fix(LOGICAL,121)@8
    xRegOrZero_uid122_block_rsrvd_fix_q <= excR_x_uid32_block_rsrvd_fix_q or excZ_x_uid24_block_rsrvd_fix_q;

    -- regOrZeroOverInf_uid123_block_rsrvd_fix(LOGICAL,122)@8
    regOrZeroOverInf_uid123_block_rsrvd_fix_q <= xRegOrZero_uid122_block_rsrvd_fix_q and excI_y_uid42_block_rsrvd_fix_q;

    -- expUdf_uid116_block_rsrvd_fix(COMPARE,115)@8
    expUdf_uid116_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000000" & GND_q));
    expUdf_uid116_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => expRExt_uid115_block_rsrvd_fix_b(10)) & expRExt_uid115_block_rsrvd_fix_b));
    expUdf_uid116_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid116_block_rsrvd_fix_a) - SIGNED(expUdf_uid116_block_rsrvd_fix_b));
    expUdf_uid116_block_rsrvd_fix_n(0) <= not (expUdf_uid116_block_rsrvd_fix_o(12));

    -- regOverRegWithUf_uid121_block_rsrvd_fix(LOGICAL,120)@8
    regOverRegWithUf_uid121_block_rsrvd_fix_q <= expUdf_uid116_block_rsrvd_fix_n and excR_x_uid32_block_rsrvd_fix_q and excR_y_uid46_block_rsrvd_fix_q;

    -- zeroOverReg_uid120_block_rsrvd_fix(LOGICAL,119)@8
    zeroOverReg_uid120_block_rsrvd_fix_q <= excZ_x_uid24_block_rsrvd_fix_q and excR_y_uid46_block_rsrvd_fix_q;

    -- excRZero_uid124_block_rsrvd_fix(LOGICAL,123)@8
    excRZero_uid124_block_rsrvd_fix_q <= zeroOverReg_uid120_block_rsrvd_fix_q or regOverRegWithUf_uid121_block_rsrvd_fix_q or regOrZeroOverInf_uid123_block_rsrvd_fix_q;

    -- concExc_uid133_block_rsrvd_fix(BITJOIN,132)@8
    concExc_uid133_block_rsrvd_fix_q <= excRNaN_uid132_block_rsrvd_fix_q & excRInf_uid129_block_rsrvd_fix_q & excRZero_uid124_block_rsrvd_fix_q;

    -- excREnc_uid134_block_rsrvd_fix(LOOKUP,133)@8 + 1
    excREnc_uid134_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            excREnc_uid134_block_rsrvd_fix_q <= "01";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (concExc_uid133_block_rsrvd_fix_q) IS
                WHEN "000" => excREnc_uid134_block_rsrvd_fix_q <= "01";
                WHEN "001" => excREnc_uid134_block_rsrvd_fix_q <= "00";
                WHEN "010" => excREnc_uid134_block_rsrvd_fix_q <= "10";
                WHEN "011" => excREnc_uid134_block_rsrvd_fix_q <= "00";
                WHEN "100" => excREnc_uid134_block_rsrvd_fix_q <= "11";
                WHEN "101" => excREnc_uid134_block_rsrvd_fix_q <= "00";
                WHEN "110" => excREnc_uid134_block_rsrvd_fix_q <= "00";
                WHEN "111" => excREnc_uid134_block_rsrvd_fix_q <= "00";
                WHEN OTHERS => -- unreachable
                               excREnc_uid134_block_rsrvd_fix_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- redist1_excREnc_uid134_block_rsrvd_fix_q_3(DELAY,192)
    redist1_excREnc_uid134_block_rsrvd_fix_q_3 : dspba_delay
    GENERIC MAP ( width => 2, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => excREnc_uid134_block_rsrvd_fix_q, xout => redist1_excREnc_uid134_block_rsrvd_fix_q_3_q, clk => clk, aclr => areset );

    -- expRPostExc_uid142_block_rsrvd_fix(MUX,141)@11
    expRPostExc_uid142_block_rsrvd_fix_s <= redist1_excREnc_uid134_block_rsrvd_fix_q_3_q;
    expRPostExc_uid142_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid142_block_rsrvd_fix_s, cstAllZWE_uid21_block_rsrvd_fix_q, expRPreExc_uid113_block_rsrvd_fix_q, cstAllOWE_uid19_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid142_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid142_block_rsrvd_fix_q <= cstAllZWE_uid21_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid142_block_rsrvd_fix_q <= expRPreExc_uid113_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid142_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid142_block_rsrvd_fix_q <= cstAllOWE_uid19_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid142_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneFracRPostExc2_uid135_block_rsrvd_fix(CONSTANT,134)
    oneFracRPostExc2_uid135_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracPostRndFPostUlp_uid107_block_rsrvd_fix(BITSELECT,106)@11
    fracPostRndFPostUlp_uid107_block_rsrvd_fix_in <= fracRPreExcExt_uid106_block_rsrvd_fix_q(22 downto 0);
    fracPostRndFPostUlp_uid107_block_rsrvd_fix_b <= fracPostRndFPostUlp_uid107_block_rsrvd_fix_in(22 downto 0);

    -- fracRPreExc_uid108_block_rsrvd_fix(MUX,107)@11
    fracRPreExc_uid108_block_rsrvd_fix_s <= extraUlp_uid104_block_rsrvd_fix_q;
    fracRPreExc_uid108_block_rsrvd_fix_combproc: PROCESS (fracRPreExc_uid108_block_rsrvd_fix_s, redist2_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q, fracPostRndFPostUlp_uid107_block_rsrvd_fix_b)
    BEGIN
        CASE (fracRPreExc_uid108_block_rsrvd_fix_s) IS
            WHEN "0" => fracRPreExc_uid108_block_rsrvd_fix_q <= redist2_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q;
            WHEN "1" => fracRPreExc_uid108_block_rsrvd_fix_q <= fracPostRndFPostUlp_uid107_block_rsrvd_fix_b;
            WHEN OTHERS => fracRPreExc_uid108_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPostExc_uid138_block_rsrvd_fix(MUX,137)@11
    fracRPostExc_uid138_block_rsrvd_fix_s <= redist1_excREnc_uid134_block_rsrvd_fix_q_3_q;
    fracRPostExc_uid138_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid138_block_rsrvd_fix_s, paddingY_uid16_block_rsrvd_fix_q, fracRPreExc_uid108_block_rsrvd_fix_q, oneFracRPostExc2_uid135_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid138_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid138_block_rsrvd_fix_q <= paddingY_uid16_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid138_block_rsrvd_fix_q <= fracRPreExc_uid108_block_rsrvd_fix_q;
            WHEN "10" => fracRPostExc_uid138_block_rsrvd_fix_q <= paddingY_uid16_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid138_block_rsrvd_fix_q <= oneFracRPostExc2_uid135_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid138_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- divR_uid145_block_rsrvd_fix(BITJOIN,144)@11
    divR_uid145_block_rsrvd_fix_q <= redist0_sRPostExc_uid144_block_rsrvd_fix_q_3_q & expRPostExc_uid142_block_rsrvd_fix_q & fracRPostExc_uid138_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@11
    out_primWireOut <= divR_uid145_block_rsrvd_fix_q;

END normal;
