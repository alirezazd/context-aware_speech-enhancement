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

-- VHDL created from floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA0Z0of0cdj6of0cd16uno0u
-- VHDL created on Mon Aug 16 17:44:01 2021


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
entity floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA0Z0of0cdj6of0cd16uno0u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA0Z0of0cdj6of0cd16uno0u;

architecture normal of floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA0Z0of0cdj6of0cd16uno0u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_x_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid11_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid12_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid13_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid19_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_fpx_uid22_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_fpx_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cwFo2_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal biasM1_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal xBranch0_uid41_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal xBranch0_uid41_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal xBranch0_uid41_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal xBranch0_uid41_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal xBranch_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXTableAddrExt_uid43_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expXTableAddrExt_uid43_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expXTableAddrExt_uid43_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expXTableAddrExt_uid43_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expXTableAddr_uid44_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expXTableAddr_uid44_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal invXBranch_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXTableAddrPost_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expXTableAddrPost_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal os_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (79 downto 0);
    signal oFracX_uid52_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal multFracBits_uid54_block_rsrvd_fix_in : STD_LOGIC_VECTOR (77 downto 0);
    signal multFracBits_uid54_block_rsrvd_fix_b : STD_LOGIC_VECTOR (77 downto 0);
    signal multFracBitsTopLow_uid55_block_rsrvd_fix_in : STD_LOGIC_VECTOR (76 downto 0);
    signal multFracBitsTopLow_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (30 downto 0);
    signal multFracBitsTop_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal intBit_uid57_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracCompOut_uid60_block_rsrvd_fix_in : STD_LOGIC_VECTOR (76 downto 0);
    signal fracCompOut_uid60_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal ZerosGB_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (29 downto 0);
    signal fracXRExt_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal finalFrac_uid65_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal finalFrac_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (52 downto 0);
    signal RRangeRed_uid67_block_rsrvd_fix_q : STD_LOGIC_VECTOR (61 downto 0);
    signal cstBiasMwShiftM2_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZwShiftP1_uid69_block_rsrvd_fix_q : STD_LOGIC_VECTOR (13 downto 0);
    signal expXRR_uid70_block_rsrvd_fix_in : STD_LOGIC_VECTOR (60 downto 0);
    signal expXRR_uid70_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal fracXRR_uid71_block_rsrvd_fix_in : STD_LOGIC_VECTOR (52 downto 0);
    signal fracXRR_uid71_block_rsrvd_fix_b : STD_LOGIC_VECTOR (52 downto 0);
    signal oFracXRR_uid73_block_rsrvd_fix_q : STD_LOGIC_VECTOR (53 downto 0);
    signal fxpXShiftValExt_uid74_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal fxpXShiftValExt_uid74_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal fxpXShiftValExt_uid74_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal fxpXShiftValExt_uid74_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal fxpXShiftVal_uid75_block_rsrvd_fix_in : STD_LOGIC_VECTOR (3 downto 0);
    signal fxpXShiftVal_uid75_block_rsrvd_fix_b : STD_LOGIC_VECTOR (3 downto 0);
    signal extendedFracX_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal cstBias_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstNaNwF_uid84_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal signXRR_uid87_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cosXIsOne_uid88_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal cosXIsOne_uid88_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal cosXIsOne_uid88_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal cosXIsOne_uid88_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal cosXIsOneXRR_uid89_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal cosXIsOneXRR_uid89_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal cosXIsOneXRR_uid89_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal cosXIsOneXRR_uid89_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal intXParity_uid90_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal y_uid91_block_rsrvd_fix_in : STD_LOGIC_VECTOR (66 downto 0);
    signal y_uid91_block_rsrvd_fix_b : STD_LOGIC_VECTOR (65 downto 0);
    signal paddingY_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (65 downto 0);
    signal updatedY_uid93_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal yIsZero_uid92_block_rsrvd_fix_a : STD_LOGIC_VECTOR (66 downto 0);
    signal yIsZero_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstZmwFRRPwSM1_uid95_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal half_uid97_block_rsrvd_fix_q : STD_LOGIC_VECTOR (65 downto 0);
    signal updatedY_uid99_block_rsrvd_fix_q : STD_LOGIC_VECTOR (131 downto 0);
    signal yIsHalf_uid98_block_rsrvd_fix_a : STD_LOGIC_VECTOR (131 downto 0);
    signal yIsHalf_uid98_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yIsHalf_uid98_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal aPostPad_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal oneMinusY_uid104_block_rsrvd_fix_a : STD_LOGIC_VECTOR (67 downto 0);
    signal oneMinusY_uid104_block_rsrvd_fix_b : STD_LOGIC_VECTOR (67 downto 0);
    signal oneMinusY_uid104_block_rsrvd_fix_o : STD_LOGIC_VECTOR (67 downto 0);
    signal oneMinusY_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal cmpYToOneMinusY_uid106_block_rsrvd_fix_a : STD_LOGIC_VECTOR (69 downto 0);
    signal cmpYToOneMinusY_uid106_block_rsrvd_fix_b : STD_LOGIC_VECTOR (69 downto 0);
    signal cmpYToOneMinusY_uid106_block_rsrvd_fix_o : STD_LOGIC_VECTOR (69 downto 0);
    signal cmpYToOneMinusY_uid106_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal invCmpYToOMY_uid107_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oMyBottom_uid108_block_rsrvd_fix_in : STD_LOGIC_VECTOR (64 downto 0);
    signal oMyBottom_uid108_block_rsrvd_fix_b : STD_LOGIC_VECTOR (64 downto 0);
    signal yBottom_uid109_block_rsrvd_fix_in : STD_LOGIC_VECTOR (64 downto 0);
    signal yBottom_uid109_block_rsrvd_fix_b : STD_LOGIC_VECTOR (64 downto 0);
    signal z_uid110_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal z_uid110_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal p_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal expP_uid116_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expP_uid116_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expP_uid116_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expP_uid116_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal yAddr_uid118_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal zPPolyEval_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (56 downto 0);
    signal zPPolyEval_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal fxpSinRes_uid121_block_rsrvd_fix_in : STD_LOGIC_VECTOR (30 downto 0);
    signal fxpSinRes_uid121_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal normBit_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highRes_uid124_block_rsrvd_fix_in : STD_LOGIC_VECTOR (50 downto 0);
    signal highRes_uid124_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal lowRes_uid125_block_rsrvd_fix_in : STD_LOGIC_VECTOR (49 downto 0);
    signal lowRes_uid125_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRCompPreRnd_uid126_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRCompPreRnd_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expRCompFracRCompPreRnd_uid127_block_rsrvd_fix_q : STD_LOGIC_VECTOR (32 downto 0);
    signal rndOp_uid132_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal expRCompFracRComp_uid133_block_rsrvd_fix_a : STD_LOGIC_VECTOR (34 downto 0);
    signal expRCompFracRComp_uid133_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal expRCompFracRComp_uid133_block_rsrvd_fix_o : STD_LOGIC_VECTOR (34 downto 0);
    signal expRCompFracRComp_uid133_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal fracRComp_uid134_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRComp_uid134_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRComp_uid135_block_rsrvd_fix_in : STD_LOGIC_VECTOR (31 downto 0);
    signal expRComp_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRCosIsNeg_uid137_block_rsrvd_fix_in : STD_LOGIC_VECTOR (32 downto 0);
    signal expRCosIsNeg_uid137_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal invCosXIsOne_uid138_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invCosXIsOneXRR_uid139_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yHalfCosNotONe_uid140_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cosUnderflow_uid141_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZeroCos_uid142_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid143_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid143_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZOrCosOne_uid144_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostExcSel_uid145_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid147_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid147_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal excConc_uid148_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal expSelBits_uid149_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal expSelector_uid150_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid152_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid152_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invYIsZero_uid153_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cosXOne_uid154_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRCond2_uid156_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invIntParity_uid158_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRCond1_uid159_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRBase_uid160_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signRBase_uid160_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xorSignRRXSignBase_uid161_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcXI_uid162_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcXN_uid163_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid164_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cosx_uid165_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal expFracX_uid167_px_uid21_block_rsrvd_fix_b : STD_LOGIC_VECTOR (30 downto 0);
    signal R_uid168_px_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid170_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid172_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid173_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid175_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid175_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid176_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid178_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid181_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid181_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid184_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid187_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid187_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid188_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid190_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid193_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid193_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid194_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid196_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid199_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid199_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid201_zCount_uid58_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid202_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid203_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal zs_uid205_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rVStage_uid206_lzcZ_uid112_block_rsrvd_fix_b : STD_LOGIC_VECTOR (63 downto 0);
    signal vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid208_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (62 downto 0);
    signal vStage_uid209_lzcZ_uid112_block_rsrvd_fix_in : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid210_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid233_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid239_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid244_lzcZ_uid112_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid245_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid246_lzcZ_uid112_block_rsrvd_fix_q : STD_LOGIC_VECTOR (6 downto 0);
    signal yT1_uid260_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal lowRangeB_uid262_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid262_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid263_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid264_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid264_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid264_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid264_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid265_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid268_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid268_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid269_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid270_invPolyEval_a : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid270_invPolyEval_b : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid270_invPolyEval_o : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid270_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal s2_uid271_invPolyEval_q : STD_LOGIC_VECTOR (32 downto 0);
    signal osig_uid274_pT1_uid261_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid277_pT2_uid267_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rrTable_uid47_block_rsrvd_fix_lutmem_reset0 : std_logic;
    signal rrTable_uid47_block_rsrvd_fix_lutmem_ia : STD_LOGIC_VECTOR (39 downto 0);
    signal rrTable_uid47_block_rsrvd_fix_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal rrTable_uid47_block_rsrvd_fix_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal rrTable_uid47_block_rsrvd_fix_lutmem_ir : STD_LOGIC_VECTOR (39 downto 0);
    signal rrTable_uid47_block_rsrvd_fix_lutmem_r : STD_LOGIC_VECTOR (39 downto 0);
    signal rrTable_uid48_block_rsrvd_fix_lutmem_reset0 : std_logic;
    signal rrTable_uid48_block_rsrvd_fix_lutmem_ia : STD_LOGIC_VECTOR (39 downto 0);
    signal rrTable_uid48_block_rsrvd_fix_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal rrTable_uid48_block_rsrvd_fix_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal rrTable_uid48_block_rsrvd_fix_lutmem_ir : STD_LOGIC_VECTOR (39 downto 0);
    signal rrTable_uid48_block_rsrvd_fix_lutmem_r : STD_LOGIC_VECTOR (39 downto 0);
    signal prod_uid53_block_rsrvd_fix_align_9_q : STD_LOGIC_VECTOR (52 downto 0);
    signal prod_uid53_block_rsrvd_fix_align_9_qint : STD_LOGIC_VECTOR (52 downto 0);
    signal prod_uid53_block_rsrvd_fix_join_10_q : STD_LOGIC_VECTOR (103 downto 0);
    signal prod_uid53_block_rsrvd_fix_align_11_q : STD_LOGIC_VECTOR (77 downto 0);
    signal prod_uid53_block_rsrvd_fix_align_11_qint : STD_LOGIC_VECTOR (77 downto 0);
    signal prod_uid53_block_rsrvd_fix_result_add_0_0_a : STD_LOGIC_VECTOR (104 downto 0);
    signal prod_uid53_block_rsrvd_fix_result_add_0_0_b : STD_LOGIC_VECTOR (104 downto 0);
    signal prod_uid53_block_rsrvd_fix_result_add_0_0_o : STD_LOGIC_VECTOR (104 downto 0);
    signal prod_uid53_block_rsrvd_fix_result_add_0_0_q : STD_LOGIC_VECTOR (104 downto 0);
    signal leftShiftStage0Idx1Rng16_uid298_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1Rng16_uid298_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1_uid299_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage0Idx2Rng32_uid301_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage0Idx2Rng32_uid301_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage0Idx2_uid302_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage0Idx3Pad48_uid303_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx3Rng48_uid304_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx3Rng48_uid304_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx3_uid305_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage1Idx1Rng4_uid309_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (73 downto 0);
    signal leftShiftStage1Idx1Rng4_uid309_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (73 downto 0);
    signal leftShiftStage1Idx1_uid310_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage1Idx2Rng8_uid312_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (69 downto 0);
    signal leftShiftStage1Idx2Rng8_uid312_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (69 downto 0);
    signal leftShiftStage1Idx2_uid313_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage1Idx3Pad12_uid314_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx3Rng12_uid315_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage1Idx3Rng12_uid315_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage1Idx3_uid316_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage2Idx1Rng1_uid320_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (76 downto 0);
    signal leftShiftStage2Idx1Rng1_uid320_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (76 downto 0);
    signal leftShiftStage2Idx1_uid321_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage2Idx2Rng2_uid323_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (75 downto 0);
    signal leftShiftStage2Idx2Rng2_uid323_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (75 downto 0);
    signal leftShiftStage2Idx2_uid324_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage2Idx3Pad3_uid325_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage2Idx3Rng3_uid326_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (74 downto 0);
    signal leftShiftStage2Idx3Rng3_uid326_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (74 downto 0);
    signal leftShiftStage2Idx3_uid327_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_i : STD_LOGIC_VECTOR (8 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_q : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng4_uid335_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid335_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1_uid336_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx2Rng8_uid338_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx2Rng8_uid338_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx2_uid339_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx3Rng12_uid341_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx3Rng12_uid341_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx3_uid342_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage1Idx1Rng1_uid346_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage1Idx1Rng1_uid346_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage1Idx1_uid347_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage1Idx2Rng2_uid349_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage1Idx2Rng2_uid349_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage1Idx2_uid350_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage1Idx3Rng3_uid352_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx3Rng3_uid352_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx3_uid353_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx1Rng32_uid360_alignedZ_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (32 downto 0);
    signal leftShiftStage0Idx1Rng32_uid360_alignedZ_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal leftShiftStage0Idx1_uid361_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage0Idx2_uid364_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx1Rng8_uid369_alignedZ_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (56 downto 0);
    signal leftShiftStage1Idx1Rng8_uid369_alignedZ_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (56 downto 0);
    signal leftShiftStage1Idx1_uid370_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx2Rng16_uid372_alignedZ_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx2Rng16_uid372_alignedZ_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx2_uid373_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx3Pad24_uid374_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx3Rng24_uid375_alignedZ_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (40 downto 0);
    signal leftShiftStage1Idx3Rng24_uid375_alignedZ_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (40 downto 0);
    signal leftShiftStage1Idx3_uid376_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2Idx1Rng2_uid380_alignedZ_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage2Idx1Rng2_uid380_alignedZ_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage2Idx1_uid381_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2Idx2Rng4_uid383_alignedZ_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage2Idx2Rng4_uid383_alignedZ_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage2Idx2_uid384_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2Idx3Pad6_uid385_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage2Idx3Rng6_uid386_alignedZ_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage2Idx3Rng6_uid386_alignedZ_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage2Idx3_uid387_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage3Idx1Rng1_uid391_alignedZ_uid113_block_rsrvd_fix_in : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3Idx1Rng1_uid391_alignedZ_uid113_block_rsrvd_fix_b : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3Idx1_uid392_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal memoryC0_uid248_sinXTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid248_sinXTables_lutmem_ia : STD_LOGIC_VECTOR (29 downto 0);
    signal memoryC0_uid248_sinXTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid248_sinXTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid248_sinXTables_lutmem_ir : STD_LOGIC_VECTOR (29 downto 0);
    signal memoryC0_uid248_sinXTables_lutmem_r : STD_LOGIC_VECTOR (29 downto 0);
    signal memoryC1_uid251_sinXTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid251_sinXTables_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC1_uid251_sinXTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid251_sinXTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid251_sinXTables_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC1_uid251_sinXTables_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid254_sinXTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid254_sinXTables_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid254_sinXTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid254_sinXTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid254_sinXTables_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid254_sinXTables_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_reset : std_logic;
    type mul2xSinRes_uid122_block_rsrvd_fix_cma_a0type is array(NATURAL range <>) of UNSIGNED(25 downto 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_a0 : mul2xSinRes_uid122_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of mul2xSinRes_uid122_block_rsrvd_fix_cma_a0 : signal is true;
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_c0 : mul2xSinRes_uid122_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve of mul2xSinRes_uid122_block_rsrvd_fix_cma_c0 : signal is true;
    type mul2xSinRes_uid122_block_rsrvd_fix_cma_ptype is array(NATURAL range <>) of UNSIGNED(51 downto 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_p : mul2xSinRes_uid122_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_u : mul2xSinRes_uid122_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_w : mul2xSinRes_uid122_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_x : mul2xSinRes_uid122_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_y : mul2xSinRes_uid122_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_s : mul2xSinRes_uid122_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_qq : STD_LOGIC_VECTOR (51 downto 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_q : STD_LOGIC_VECTOR (51 downto 0);
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_ena0 : std_logic;
    signal mul2xSinRes_uid122_block_rsrvd_fix_cma_ena1 : std_logic;
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_reset : std_logic;
    type prodXY_uid273_pT1_uid261_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(12 downto 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_a0 : prodXY_uid273_pT1_uid261_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid273_pT1_uid261_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid273_pT1_uid261_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(12 downto 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_c0 : prodXY_uid273_pT1_uid261_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid273_pT1_uid261_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid273_pT1_uid261_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_l : prodXY_uid273_pT1_uid261_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid273_pT1_uid261_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(26 downto 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_p : prodXY_uid273_pT1_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_u : prodXY_uid273_pT1_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_w : prodXY_uid273_pT1_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_x : prodXY_uid273_pT1_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_y : prodXY_uid273_pT1_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_s : prodXY_uid273_pT1_uid261_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_q : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid273_pT1_uid261_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_reset : std_logic;
    type prodXY_uid276_pT2_uid267_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_a0 : prodXY_uid276_pT2_uid267_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid276_pT2_uid267_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid276_pT2_uid267_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_c0 : prodXY_uid276_pT2_uid267_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid276_pT2_uid267_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid276_pT2_uid267_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_l : prodXY_uid276_pT2_uid267_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid276_pT2_uid267_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(41 downto 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_p : prodXY_uid276_pT2_uid267_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_u : prodXY_uid276_pT2_uid267_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_w : prodXY_uid276_pT2_uid267_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_x : prodXY_uid276_pT2_uid267_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_y : prodXY_uid276_pT2_uid267_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_s : prodXY_uid276_pT2_uid267_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_qq : STD_LOGIC_VECTOR (40 downto 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_q : STD_LOGIC_VECTOR (40 downto 0);
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid276_pT2_uid267_invPolyEval_cma_ena1 : std_logic;
    signal prod_uid53_block_rsrvd_fix_im0_cma_reset : std_logic;
    type prod_uid53_block_rsrvd_fix_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(26 downto 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_a0 : prod_uid53_block_rsrvd_fix_im0_cma_a0type(0 to 0);
    attribute preserve of prod_uid53_block_rsrvd_fix_im0_cma_a0 : signal is true;
    type prod_uid53_block_rsrvd_fix_im0_cma_c0type is array(NATURAL range <>) of UNSIGNED(23 downto 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_c0 : prod_uid53_block_rsrvd_fix_im0_cma_c0type(0 to 0);
    attribute preserve of prod_uid53_block_rsrvd_fix_im0_cma_c0 : signal is true;
    type prod_uid53_block_rsrvd_fix_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(50 downto 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_p : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_u : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_w : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_x : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_y : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_s : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_qq : STD_LOGIC_VECTOR (50 downto 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_q : STD_LOGIC_VECTOR (50 downto 0);
    signal prod_uid53_block_rsrvd_fix_im0_cma_ena0 : std_logic;
    signal prod_uid53_block_rsrvd_fix_im0_cma_ena1 : std_logic;
    signal prod_uid53_block_rsrvd_fix_im3_cma_reset : std_logic;
    signal prod_uid53_block_rsrvd_fix_im3_cma_a0 : mul2xSinRes_uid122_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve of prod_uid53_block_rsrvd_fix_im3_cma_a0 : signal is true;
    signal prod_uid53_block_rsrvd_fix_im3_cma_c0 : prod_uid53_block_rsrvd_fix_im0_cma_c0type(0 to 0);
    attribute preserve of prod_uid53_block_rsrvd_fix_im3_cma_c0 : signal is true;
    type prod_uid53_block_rsrvd_fix_im3_cma_ptype is array(NATURAL range <>) of UNSIGNED(49 downto 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_p : prod_uid53_block_rsrvd_fix_im3_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_u : prod_uid53_block_rsrvd_fix_im3_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_w : prod_uid53_block_rsrvd_fix_im3_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_x : prod_uid53_block_rsrvd_fix_im3_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_y : prod_uid53_block_rsrvd_fix_im3_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_s : prod_uid53_block_rsrvd_fix_im3_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_qq : STD_LOGIC_VECTOR (49 downto 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_q : STD_LOGIC_VECTOR (49 downto 0);
    signal prod_uid53_block_rsrvd_fix_im3_cma_ena0 : std_logic;
    signal prod_uid53_block_rsrvd_fix_im3_cma_ena1 : std_logic;
    signal prod_uid53_block_rsrvd_fix_im6_cma_reset : std_logic;
    signal prod_uid53_block_rsrvd_fix_im6_cma_a0 : prod_uid53_block_rsrvd_fix_im0_cma_a0type(0 to 0);
    attribute preserve of prod_uid53_block_rsrvd_fix_im6_cma_a0 : signal is true;
    signal prod_uid53_block_rsrvd_fix_im6_cma_c0 : prod_uid53_block_rsrvd_fix_im0_cma_c0type(0 to 0);
    attribute preserve of prod_uid53_block_rsrvd_fix_im6_cma_c0 : signal is true;
    signal prod_uid53_block_rsrvd_fix_im6_cma_p : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im6_cma_u : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im6_cma_w : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im6_cma_x : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im6_cma_y : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im6_cma_s : prod_uid53_block_rsrvd_fix_im0_cma_ptype(0 to 0);
    signal prod_uid53_block_rsrvd_fix_im6_cma_qq : STD_LOGIC_VECTOR (50 downto 0);
    signal prod_uid53_block_rsrvd_fix_im6_cma_q : STD_LOGIC_VECTOR (50 downto 0);
    signal prod_uid53_block_rsrvd_fix_im6_cma_ena0 : std_logic;
    signal prod_uid53_block_rsrvd_fix_im6_cma_ena1 : std_logic;
    signal prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (26 downto 0);
    signal prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (25 downto 0);
    signal prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (26 downto 0);
    signal leftShiftStageSel3Dto2_uid343_fxpX_uid77_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel3Dto2_uid343_fxpX_uid77_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (22 downto 0);
    signal rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid183_zCount_uid58_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid183_zCount_uid58_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid226_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid226_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist4_vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_vCount_uid184_zCount_uid58_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_vCount_uid178_zCount_uid58_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_vCount_uid172_zCount_uid58_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_signR_uid164_block_rsrvd_fix_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_excRNaN_uid143_block_rsrvd_fix_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_zPPolyEval_uid119_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist15_yAddr_uid118_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist16_yAddr_uid118_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist18_z_uid110_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal redist19_z_uid110_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (64 downto 0);
    signal redist20_yIsHalf_uid98_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_cosXIsOneXRR_uid89_block_rsrvd_fix_n_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_cosXIsOne_uid88_block_rsrvd_fix_n_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_cosXIsOne_uid88_block_rsrvd_fix_n_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_signXRR_uid87_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_intBit_uid57_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_multFracBits_uid54_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (77 downto 0);
    signal redist27_xBranch_uid42_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_excR_x_uid19_block_rsrvd_fix_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_fracXIsZero_uid13_block_rsrvd_fix_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_expXIsMax_uid12_block_rsrvd_fix_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_excZ_x_uid11_block_rsrvd_fix_q_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_reset0 : std_logic;
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_i : signal is true;
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_q : signal is true;
    signal redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6_outputreg_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_mem_reset0 : std_logic;
    signal redist17_p_uid114_block_rsrvd_fix_b_4_mem_ia : STD_LOGIC_VECTOR (25 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_mem_iq : STD_LOGIC_VECTOR (25 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_mem_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i : signal is true;
    signal redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_eq : std_logic;
    attribute preserve of redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_eq : signal is true;
    signal redist17_p_uid114_block_rsrvd_fix_b_4_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_p_uid114_block_rsrvd_fix_b_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist17_p_uid114_block_rsrvd_fix_b_4_sticky_ena_q : signal is true;
    signal redist17_p_uid114_block_rsrvd_fix_b_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- expFracX_uid167_px_uid21_block_rsrvd_fix(BITSELECT,166)@0
    expFracX_uid167_px_uid21_block_rsrvd_fix_b <= in_0(30 downto 0);

    -- R_uid168_px_uid21_block_rsrvd_fix(BITJOIN,167)@0
    R_uid168_px_uid21_block_rsrvd_fix_q <= GND_q & expFracX_uid167_px_uid21_block_rsrvd_fix_b;

    -- exp_fpx_uid26_block_rsrvd_fix_merged_bit_select(BITSELECT,406)@0
    exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_in <= R_uid168_px_uid21_block_rsrvd_fix_q(30 downto 0);
    exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b <= exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_in(30 downto 23);
    exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c <= exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_in(22 downto 0);

    -- redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2(DELAY,419)
    redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c, xout => redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2_q, clk => clk, aclr => areset );

    -- oFracX_uid52_block_rsrvd_fix(BITJOIN,51)@2
    oFracX_uid52_block_rsrvd_fix_q <= VCC_q & redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2_q;

    -- cstAllZWE_uid8_block_rsrvd_fix(CONSTANT,7)
    cstAllZWE_uid8_block_rsrvd_fix_q <= "00000000";

    -- excZ_fpx_uid22_uid28_block_rsrvd_fix(LOGICAL,27)@0
    excZ_fpx_uid22_uid28_block_rsrvd_fix_q <= "1" WHEN exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid8_block_rsrvd_fix_q ELSE "0";

    -- cstZeroWF_uid7_block_rsrvd_fix(CONSTANT,6)
    cstZeroWF_uid7_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid30_block_rsrvd_fix(LOGICAL,29)@0
    fracXIsZero_uid30_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid7_block_rsrvd_fix_q = exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c ELSE "0";

    -- cstAllOWE_uid6_block_rsrvd_fix(CONSTANT,5)
    cstAllOWE_uid6_block_rsrvd_fix_q <= "11111111";

    -- expXIsMax_uid29_block_rsrvd_fix(LOGICAL,28)@0
    expXIsMax_uid29_block_rsrvd_fix_q <= "1" WHEN exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b = cstAllOWE_uid6_block_rsrvd_fix_q ELSE "0";

    -- excI_fpx_uid32_block_rsrvd_fix(LOGICAL,31)@0
    excI_fpx_uid32_block_rsrvd_fix_q <= expXIsMax_uid29_block_rsrvd_fix_q and fracXIsZero_uid30_block_rsrvd_fix_q;

    -- cwFo2_uid39_block_rsrvd_fix(CONSTANT,38)
    cwFo2_uid39_block_rsrvd_fix_q <= "01110011";

    -- xBranch0_uid41_block_rsrvd_fix(COMPARE,40)@0
    xBranch0_uid41_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & cwFo2_uid39_block_rsrvd_fix_q);
    xBranch0_uid41_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b);
    xBranch0_uid41_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(xBranch0_uid41_block_rsrvd_fix_a) - UNSIGNED(xBranch0_uid41_block_rsrvd_fix_b));
    xBranch0_uid41_block_rsrvd_fix_n(0) <= not (xBranch0_uid41_block_rsrvd_fix_o(9));

    -- xBranch_uid42_block_rsrvd_fix(LOGICAL,41)@0
    xBranch_uid42_block_rsrvd_fix_q <= xBranch0_uid41_block_rsrvd_fix_n or excI_fpx_uid32_block_rsrvd_fix_q or excZ_fpx_uid22_uid28_block_rsrvd_fix_q;

    -- invXBranch_uid45_block_rsrvd_fix(LOGICAL,44)@0
    invXBranch_uid45_block_rsrvd_fix_q <= not (xBranch_uid42_block_rsrvd_fix_q);

    -- expXTableAddrExt_uid43_block_rsrvd_fix(SUB,42)@0
    expXTableAddrExt_uid43_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b);
    expXTableAddrExt_uid43_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & cwFo2_uid39_block_rsrvd_fix_q);
    expXTableAddrExt_uid43_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expXTableAddrExt_uid43_block_rsrvd_fix_a) - UNSIGNED(expXTableAddrExt_uid43_block_rsrvd_fix_b));
    expXTableAddrExt_uid43_block_rsrvd_fix_q <= expXTableAddrExt_uid43_block_rsrvd_fix_o(8 downto 0);

    -- expXTableAddr_uid44_block_rsrvd_fix(BITSELECT,43)@0
    expXTableAddr_uid44_block_rsrvd_fix_in <= expXTableAddrExt_uid43_block_rsrvd_fix_q(7 downto 0);
    expXTableAddr_uid44_block_rsrvd_fix_b <= expXTableAddr_uid44_block_rsrvd_fix_in(7 downto 0);

    -- expXTableAddrPost_uid46_block_rsrvd_fix(LOGICAL,45)@0
    expXTableAddrPost_uid46_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => invXBranch_uid45_block_rsrvd_fix_q(0)) & invXBranch_uid45_block_rsrvd_fix_q));
    expXTableAddrPost_uid46_block_rsrvd_fix_q <= expXTableAddr_uid44_block_rsrvd_fix_b and expXTableAddrPost_uid46_block_rsrvd_fix_b;

    -- rrTable_uid48_block_rsrvd_fix_lutmem(DUALMEM,279)@0 + 2
    -- in j@20000000
    rrTable_uid48_block_rsrvd_fix_lutmem_aa <= expXTableAddrPost_uid46_block_rsrvd_fix_q;
    rrTable_uid48_block_rsrvd_fix_lutmem_reset0 <= areset;
    rrTable_uid48_block_rsrvd_fix_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 40,
        widthad_a => 8,
        numwords_a => 141,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA1Zrsrvd_fix_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => rrTable_uid48_block_rsrvd_fix_lutmem_reset0,
        clock0 => clk,
        address_a => rrTable_uid48_block_rsrvd_fix_lutmem_aa,
        q_a => rrTable_uid48_block_rsrvd_fix_lutmem_ir
    );
    rrTable_uid48_block_rsrvd_fix_lutmem_r <= rrTable_uid48_block_rsrvd_fix_lutmem_ir(39 downto 0);

    -- rrTable_uid47_block_rsrvd_fix_lutmem(DUALMEM,278)@0 + 2
    -- in j@20000000
    rrTable_uid47_block_rsrvd_fix_lutmem_aa <= expXTableAddrPost_uid46_block_rsrvd_fix_q;
    rrTable_uid47_block_rsrvd_fix_lutmem_reset0 <= areset;
    rrTable_uid47_block_rsrvd_fix_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 40,
        widthad_a => 8,
        numwords_a => 141,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA0Zrsrvd_fix_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => rrTable_uid47_block_rsrvd_fix_lutmem_reset0,
        clock0 => clk,
        address_a => rrTable_uid47_block_rsrvd_fix_lutmem_aa,
        q_a => rrTable_uid47_block_rsrvd_fix_lutmem_ir
    );
    rrTable_uid47_block_rsrvd_fix_lutmem_r <= rrTable_uid47_block_rsrvd_fix_lutmem_ir(39 downto 0);

    -- os_uid49_block_rsrvd_fix(BITJOIN,48)@2
    os_uid49_block_rsrvd_fix_q <= rrTable_uid48_block_rsrvd_fix_lutmem_r & rrTable_uid47_block_rsrvd_fix_lutmem_r;

    -- prod_uid53_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,404)@2
    prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_b <= os_uid49_block_rsrvd_fix_q(26 downto 0);
    prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_c <= os_uid49_block_rsrvd_fix_q(79 downto 54);
    prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_d <= os_uid49_block_rsrvd_fix_q(53 downto 27);

    -- prod_uid53_block_rsrvd_fix_im6_cma(CHAINMULTADD,403)@2 + 2
    prod_uid53_block_rsrvd_fix_im6_cma_reset <= areset;
    prod_uid53_block_rsrvd_fix_im6_cma_ena0 <= '1';
    prod_uid53_block_rsrvd_fix_im6_cma_ena1 <= prod_uid53_block_rsrvd_fix_im6_cma_ena0;
    prod_uid53_block_rsrvd_fix_im6_cma_p(0) <= prod_uid53_block_rsrvd_fix_im6_cma_a0(0) * prod_uid53_block_rsrvd_fix_im6_cma_c0(0);
    prod_uid53_block_rsrvd_fix_im6_cma_u(0) <= RESIZE(prod_uid53_block_rsrvd_fix_im6_cma_p(0),51);
    prod_uid53_block_rsrvd_fix_im6_cma_w(0) <= prod_uid53_block_rsrvd_fix_im6_cma_u(0);
    prod_uid53_block_rsrvd_fix_im6_cma_x(0) <= prod_uid53_block_rsrvd_fix_im6_cma_w(0);
    prod_uid53_block_rsrvd_fix_im6_cma_y(0) <= prod_uid53_block_rsrvd_fix_im6_cma_x(0);
    prod_uid53_block_rsrvd_fix_im6_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prod_uid53_block_rsrvd_fix_im6_cma_a0 <= (others => (others => '0'));
            prod_uid53_block_rsrvd_fix_im6_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prod_uid53_block_rsrvd_fix_im6_cma_ena0 = '1') THEN
                prod_uid53_block_rsrvd_fix_im6_cma_a0(0) <= RESIZE(UNSIGNED(prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_d),27);
                prod_uid53_block_rsrvd_fix_im6_cma_c0(0) <= RESIZE(UNSIGNED(oFracX_uid52_block_rsrvd_fix_q),24);
            END IF;
        END IF;
    END PROCESS;
    prod_uid53_block_rsrvd_fix_im6_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prod_uid53_block_rsrvd_fix_im6_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prod_uid53_block_rsrvd_fix_im6_cma_ena1 = '1') THEN
                prod_uid53_block_rsrvd_fix_im6_cma_s(0) <= prod_uid53_block_rsrvd_fix_im6_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prod_uid53_block_rsrvd_fix_im6_cma_delay : dspba_delay
    GENERIC MAP ( width => 51, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prod_uid53_block_rsrvd_fix_im6_cma_s(0)(50 downto 0)), xout => prod_uid53_block_rsrvd_fix_im6_cma_qq, clk => clk, aclr => areset );
    prod_uid53_block_rsrvd_fix_im6_cma_q <= STD_LOGIC_VECTOR(prod_uid53_block_rsrvd_fix_im6_cma_qq(50 downto 0));

    -- prod_uid53_block_rsrvd_fix_align_11(BITSHIFT,291)@4
    prod_uid53_block_rsrvd_fix_align_11_qint <= prod_uid53_block_rsrvd_fix_im6_cma_q & "000000000000000000000000000";
    prod_uid53_block_rsrvd_fix_align_11_q <= prod_uid53_block_rsrvd_fix_align_11_qint(77 downto 0);

    -- prod_uid53_block_rsrvd_fix_im3_cma(CHAINMULTADD,402)@2 + 2
    prod_uid53_block_rsrvd_fix_im3_cma_reset <= areset;
    prod_uid53_block_rsrvd_fix_im3_cma_ena0 <= '1';
    prod_uid53_block_rsrvd_fix_im3_cma_ena1 <= prod_uid53_block_rsrvd_fix_im3_cma_ena0;
    prod_uid53_block_rsrvd_fix_im3_cma_p(0) <= prod_uid53_block_rsrvd_fix_im3_cma_a0(0) * prod_uid53_block_rsrvd_fix_im3_cma_c0(0);
    prod_uid53_block_rsrvd_fix_im3_cma_u(0) <= RESIZE(prod_uid53_block_rsrvd_fix_im3_cma_p(0),50);
    prod_uid53_block_rsrvd_fix_im3_cma_w(0) <= prod_uid53_block_rsrvd_fix_im3_cma_u(0);
    prod_uid53_block_rsrvd_fix_im3_cma_x(0) <= prod_uid53_block_rsrvd_fix_im3_cma_w(0);
    prod_uid53_block_rsrvd_fix_im3_cma_y(0) <= prod_uid53_block_rsrvd_fix_im3_cma_x(0);
    prod_uid53_block_rsrvd_fix_im3_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prod_uid53_block_rsrvd_fix_im3_cma_a0 <= (others => (others => '0'));
            prod_uid53_block_rsrvd_fix_im3_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prod_uid53_block_rsrvd_fix_im3_cma_ena0 = '1') THEN
                prod_uid53_block_rsrvd_fix_im3_cma_a0(0) <= RESIZE(UNSIGNED(prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_c),26);
                prod_uid53_block_rsrvd_fix_im3_cma_c0(0) <= RESIZE(UNSIGNED(oFracX_uid52_block_rsrvd_fix_q),24);
            END IF;
        END IF;
    END PROCESS;
    prod_uid53_block_rsrvd_fix_im3_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prod_uid53_block_rsrvd_fix_im3_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prod_uid53_block_rsrvd_fix_im3_cma_ena1 = '1') THEN
                prod_uid53_block_rsrvd_fix_im3_cma_s(0) <= prod_uid53_block_rsrvd_fix_im3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prod_uid53_block_rsrvd_fix_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 50, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prod_uid53_block_rsrvd_fix_im3_cma_s(0)(49 downto 0)), xout => prod_uid53_block_rsrvd_fix_im3_cma_qq, clk => clk, aclr => areset );
    prod_uid53_block_rsrvd_fix_im3_cma_q <= STD_LOGIC_VECTOR(prod_uid53_block_rsrvd_fix_im3_cma_qq(49 downto 0));

    -- prod_uid53_block_rsrvd_fix_align_9(BITSHIFT,289)@4
    prod_uid53_block_rsrvd_fix_align_9_qint <= prod_uid53_block_rsrvd_fix_im3_cma_q & "000";
    prod_uid53_block_rsrvd_fix_align_9_q <= prod_uid53_block_rsrvd_fix_align_9_qint(52 downto 0);

    -- prod_uid53_block_rsrvd_fix_im0_cma(CHAINMULTADD,401)@2 + 2
    prod_uid53_block_rsrvd_fix_im0_cma_reset <= areset;
    prod_uid53_block_rsrvd_fix_im0_cma_ena0 <= '1';
    prod_uid53_block_rsrvd_fix_im0_cma_ena1 <= prod_uid53_block_rsrvd_fix_im0_cma_ena0;
    prod_uid53_block_rsrvd_fix_im0_cma_p(0) <= prod_uid53_block_rsrvd_fix_im0_cma_a0(0) * prod_uid53_block_rsrvd_fix_im0_cma_c0(0);
    prod_uid53_block_rsrvd_fix_im0_cma_u(0) <= RESIZE(prod_uid53_block_rsrvd_fix_im0_cma_p(0),51);
    prod_uid53_block_rsrvd_fix_im0_cma_w(0) <= prod_uid53_block_rsrvd_fix_im0_cma_u(0);
    prod_uid53_block_rsrvd_fix_im0_cma_x(0) <= prod_uid53_block_rsrvd_fix_im0_cma_w(0);
    prod_uid53_block_rsrvd_fix_im0_cma_y(0) <= prod_uid53_block_rsrvd_fix_im0_cma_x(0);
    prod_uid53_block_rsrvd_fix_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prod_uid53_block_rsrvd_fix_im0_cma_a0 <= (others => (others => '0'));
            prod_uid53_block_rsrvd_fix_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prod_uid53_block_rsrvd_fix_im0_cma_ena0 = '1') THEN
                prod_uid53_block_rsrvd_fix_im0_cma_a0(0) <= RESIZE(UNSIGNED(prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_b),27);
                prod_uid53_block_rsrvd_fix_im0_cma_c0(0) <= RESIZE(UNSIGNED(oFracX_uid52_block_rsrvd_fix_q),24);
            END IF;
        END IF;
    END PROCESS;
    prod_uid53_block_rsrvd_fix_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prod_uid53_block_rsrvd_fix_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prod_uid53_block_rsrvd_fix_im0_cma_ena1 = '1') THEN
                prod_uid53_block_rsrvd_fix_im0_cma_s(0) <= prod_uid53_block_rsrvd_fix_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prod_uid53_block_rsrvd_fix_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 51, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prod_uid53_block_rsrvd_fix_im0_cma_s(0)(50 downto 0)), xout => prod_uid53_block_rsrvd_fix_im0_cma_qq, clk => clk, aclr => areset );
    prod_uid53_block_rsrvd_fix_im0_cma_q <= STD_LOGIC_VECTOR(prod_uid53_block_rsrvd_fix_im0_cma_qq(50 downto 0));

    -- prod_uid53_block_rsrvd_fix_join_10(BITJOIN,290)@4
    prod_uid53_block_rsrvd_fix_join_10_q <= prod_uid53_block_rsrvd_fix_align_9_q & prod_uid53_block_rsrvd_fix_im0_cma_q;

    -- prod_uid53_block_rsrvd_fix_result_add_0_0(ADD,293)@4
    prod_uid53_block_rsrvd_fix_result_add_0_0_a <= STD_LOGIC_VECTOR("0" & prod_uid53_block_rsrvd_fix_join_10_q);
    prod_uid53_block_rsrvd_fix_result_add_0_0_b <= STD_LOGIC_VECTOR("000000000000000000000000000" & prod_uid53_block_rsrvd_fix_align_11_q);
    prod_uid53_block_rsrvd_fix_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(prod_uid53_block_rsrvd_fix_result_add_0_0_a) + UNSIGNED(prod_uid53_block_rsrvd_fix_result_add_0_0_b));
    prod_uid53_block_rsrvd_fix_result_add_0_0_q <= prod_uid53_block_rsrvd_fix_result_add_0_0_o(104 downto 0);

    -- multFracBits_uid54_block_rsrvd_fix(BITSELECT,53)@4
    multFracBits_uid54_block_rsrvd_fix_in <= prod_uid53_block_rsrvd_fix_result_add_0_0_q(77 downto 0);
    multFracBits_uid54_block_rsrvd_fix_b <= multFracBits_uid54_block_rsrvd_fix_in(77 downto 0);

    -- redist26_multFracBits_uid54_block_rsrvd_fix_b_1(DELAY,444)
    redist26_multFracBits_uid54_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 78, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => multFracBits_uid54_block_rsrvd_fix_b, xout => redist26_multFracBits_uid54_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- intBit_uid57_block_rsrvd_fix(BITSELECT,56)@5
    intBit_uid57_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(redist26_multFracBits_uid54_block_rsrvd_fix_b_1_q(77 downto 77));

    -- redist25_intBit_uid57_block_rsrvd_fix_b_1(DELAY,443)
    redist25_intBit_uid57_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => intBit_uid57_block_rsrvd_fix_b, xout => redist25_intBit_uid57_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_notEnable(LOGICAL,456)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_nor(LOGICAL,457)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_nor_q <= not (redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_notEnable_q or redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_q);

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_last(CONSTANT,453)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_last_q <= "010";

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp(LOGICAL,454)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_b <= STD_LOGIC_VECTOR("0" & redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_q);
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_q <= "1" WHEN redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_last_q = redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_b ELSE "0";

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg(REG,455)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena(REG,458)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_nor_q = "1") THEN
                redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_enaAnd(LOGICAL,459)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_enaAnd_q <= redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_q and VCC_q;

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt(COUNTER,451)
    -- low=0, high=3, step=1, init=0
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_i <= redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_i, 2)));

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr(REG,452)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr_q <= "11";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem(DUALMEM,450)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_ia <= STD_LOGIC_VECTOR(exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b);
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_aa <= redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr_q;
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_ab <= redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_q;
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_reset0 <= areset;
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 8,
        widthad_b => 2,
        numwords_b => 4,
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
        clocken1 => redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_reset0,
        clock1 => clk,
        address_a => redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_aa,
        data_a => redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_ab,
        q_b => redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_iq
    );
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_q <= redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_iq(7 downto 0);

    -- redist27_xBranch_uid42_block_rsrvd_fix_q_5(DELAY,445)
    redist27_xBranch_uid42_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xBranch_uid42_block_rsrvd_fix_q, xout => redist27_xBranch_uid42_block_rsrvd_fix_q_5_q, clk => clk, aclr => areset );

    -- zs_uid170_zCount_uid58_block_rsrvd_fix(CONSTANT,169)
    zs_uid170_zCount_uid58_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- multFracBitsTopLow_uid55_block_rsrvd_fix(BITSELECT,54)@4
    multFracBitsTopLow_uid55_block_rsrvd_fix_in <= multFracBits_uid54_block_rsrvd_fix_b(76 downto 0);
    multFracBitsTopLow_uid55_block_rsrvd_fix_b <= multFracBitsTopLow_uid55_block_rsrvd_fix_in(76 downto 46);

    -- multFracBitsTop_uid56_block_rsrvd_fix(BITJOIN,55)@4
    multFracBitsTop_uid56_block_rsrvd_fix_q <= GND_q & multFracBitsTopLow_uid55_block_rsrvd_fix_b;

    -- vCount_uid172_zCount_uid58_block_rsrvd_fix(LOGICAL,171)@4
    vCount_uid172_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN multFracBitsTop_uid56_block_rsrvd_fix_q = zs_uid170_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- redist11_vCount_uid172_zCount_uid58_block_rsrvd_fix_q_1(DELAY,429)
    redist11_vCount_uid172_zCount_uid58_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid172_zCount_uid58_block_rsrvd_fix_q, xout => redist11_vCount_uid172_zCount_uid58_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid176_zCount_uid58_block_rsrvd_fix(CONSTANT,175)
    zs_uid176_zCount_uid58_block_rsrvd_fix_q <= "0000000000000000";

    -- mO_uid173_zCount_uid58_block_rsrvd_fix(CONSTANT,172)
    mO_uid173_zCount_uid58_block_rsrvd_fix_q <= "11111111111111111111111111111111";

    -- vStagei_uid175_zCount_uid58_block_rsrvd_fix(MUX,174)@4
    vStagei_uid175_zCount_uid58_block_rsrvd_fix_s <= vCount_uid172_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid175_zCount_uid58_block_rsrvd_fix_combproc: PROCESS (vStagei_uid175_zCount_uid58_block_rsrvd_fix_s, multFracBitsTop_uid56_block_rsrvd_fix_q, mO_uid173_zCount_uid58_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid175_zCount_uid58_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid175_zCount_uid58_block_rsrvd_fix_q <= multFracBitsTop_uid56_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid175_zCount_uid58_block_rsrvd_fix_q <= mO_uid173_zCount_uid58_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid175_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select(BITSELECT,407)@4
    rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid175_zCount_uid58_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid175_zCount_uid58_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid178_zCount_uid58_block_rsrvd_fix(LOGICAL,177)@4
    vCount_uid178_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_b = zs_uid176_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- redist10_vCount_uid178_zCount_uid58_block_rsrvd_fix_q_1(DELAY,428)
    redist10_vCount_uid178_zCount_uid58_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid178_zCount_uid58_block_rsrvd_fix_q, xout => redist10_vCount_uid178_zCount_uid58_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid181_zCount_uid58_block_rsrvd_fix(MUX,180)@4
    vStagei_uid181_zCount_uid58_block_rsrvd_fix_s <= vCount_uid178_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid181_zCount_uid58_block_rsrvd_fix_combproc: PROCESS (vStagei_uid181_zCount_uid58_block_rsrvd_fix_s, rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_b, rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid181_zCount_uid58_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid181_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid181_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid177_zCount_uid58_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid181_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid183_zCount_uid58_block_rsrvd_fix_merged_bit_select(BITSELECT,408)@4
    rVStage_uid183_zCount_uid58_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid181_zCount_uid58_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid183_zCount_uid58_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid181_zCount_uid58_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid184_zCount_uid58_block_rsrvd_fix(LOGICAL,183)@4
    vCount_uid184_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid183_zCount_uid58_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid8_block_rsrvd_fix_q ELSE "0";

    -- redist9_vCount_uid184_zCount_uid58_block_rsrvd_fix_q_1(DELAY,427)
    redist9_vCount_uid184_zCount_uid58_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid184_zCount_uid58_block_rsrvd_fix_q, xout => redist9_vCount_uid184_zCount_uid58_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid188_zCount_uid58_block_rsrvd_fix(CONSTANT,187)
    zs_uid188_zCount_uid58_block_rsrvd_fix_q <= "0000";

    -- vStagei_uid187_zCount_uid58_block_rsrvd_fix(MUX,186)@4 + 1
    vStagei_uid187_zCount_uid58_block_rsrvd_fix_s <= vCount_uid184_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid187_zCount_uid58_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid187_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid187_zCount_uid58_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid187_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid183_zCount_uid58_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid187_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid183_zCount_uid58_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid187_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select(BITSELECT,409)@5
    rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid187_zCount_uid58_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid187_zCount_uid58_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid190_zCount_uid58_block_rsrvd_fix(LOGICAL,189)@5
    vCount_uid190_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_b = zs_uid188_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- zs_uid194_zCount_uid58_block_rsrvd_fix(CONSTANT,193)
    zs_uid194_zCount_uid58_block_rsrvd_fix_q <= "00";

    -- vStagei_uid193_zCount_uid58_block_rsrvd_fix(MUX,192)@5
    vStagei_uid193_zCount_uid58_block_rsrvd_fix_s <= vCount_uid190_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid193_zCount_uid58_block_rsrvd_fix_combproc: PROCESS (vStagei_uid193_zCount_uid58_block_rsrvd_fix_s, rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_b, rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid193_zCount_uid58_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid193_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid193_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid189_zCount_uid58_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid193_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select(BITSELECT,410)@5
    rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid193_zCount_uid58_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid193_zCount_uid58_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid196_zCount_uid58_block_rsrvd_fix(LOGICAL,195)@5
    vCount_uid196_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_b = zs_uid194_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid199_zCount_uid58_block_rsrvd_fix(MUX,198)@5
    vStagei_uid199_zCount_uid58_block_rsrvd_fix_s <= vCount_uid196_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid199_zCount_uid58_block_rsrvd_fix_combproc: PROCESS (vStagei_uid199_zCount_uid58_block_rsrvd_fix_s, rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_b, rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid199_zCount_uid58_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid199_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid199_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid195_zCount_uid58_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid199_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid201_zCount_uid58_block_rsrvd_fix(BITSELECT,200)@5
    rVStage_uid201_zCount_uid58_block_rsrvd_fix_b <= vStagei_uid199_zCount_uid58_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid202_zCount_uid58_block_rsrvd_fix(LOGICAL,201)@5
    vCount_uid202_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid201_zCount_uid58_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid203_zCount_uid58_block_rsrvd_fix(BITJOIN,202)@5
    r_uid203_zCount_uid58_block_rsrvd_fix_q <= redist11_vCount_uid172_zCount_uid58_block_rsrvd_fix_q_1_q & redist10_vCount_uid178_zCount_uid58_block_rsrvd_fix_q_1_q & redist9_vCount_uid184_zCount_uid58_block_rsrvd_fix_q_1_q & vCount_uid190_zCount_uid58_block_rsrvd_fix_q & vCount_uid196_zCount_uid58_block_rsrvd_fix_q & vCount_uid202_zCount_uid58_block_rsrvd_fix_q;

    -- biasM1_uid40_block_rsrvd_fix(CONSTANT,39)
    biasM1_uid40_block_rsrvd_fix_q <= "01111110";

    -- expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged(SUB,330)@5 + 1
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_a <= STD_LOGIC_VECTOR("0" & biasM1_uid40_block_rsrvd_fix_q);
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_b <= STD_LOGIC_VECTOR("000" & r_uid203_zCount_uid58_block_rsrvd_fix_q);
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_i <= "0" & redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_q;
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist27_xBranch_uid42_block_rsrvd_fix_q_5_q = "1") THEN
                expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o <= expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_i;
            ELSE
                expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o <= STD_LOGIC_VECTOR(UNSIGNED(expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_a) - UNSIGNED(expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_b));
            END IF;
        END IF;
    END PROCESS;
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_q <= expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o(7 downto 0);

    -- redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5(DELAY,420)
    redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5 : dspba_delay
    GENERIC MAP ( width => 23, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2_q, xout => redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5_q, clk => clk, aclr => areset );

    -- ZerosGB_uid63_block_rsrvd_fix(CONSTANT,62)
    ZerosGB_uid63_block_rsrvd_fix_q <= "000000000000000000000000000000";

    -- fracXRExt_uid64_block_rsrvd_fix(BITJOIN,63)@5
    fracXRExt_uid64_block_rsrvd_fix_q <= redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5_q & ZerosGB_uid63_block_rsrvd_fix_q;

    -- leftShiftStage2Idx3Rng3_uid326_normMult_uid59_block_rsrvd_fix(BITSELECT,325)@5
    leftShiftStage2Idx3Rng3_uid326_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q(74 downto 0);
    leftShiftStage2Idx3Rng3_uid326_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage2Idx3Rng3_uid326_normMult_uid59_block_rsrvd_fix_in(74 downto 0);

    -- leftShiftStage2Idx3Pad3_uid325_normMult_uid59_block_rsrvd_fix(CONSTANT,324)
    leftShiftStage2Idx3Pad3_uid325_normMult_uid59_block_rsrvd_fix_q <= "000";

    -- leftShiftStage2Idx3_uid327_normMult_uid59_block_rsrvd_fix(BITJOIN,326)@5
    leftShiftStage2Idx3_uid327_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx3Rng3_uid326_normMult_uid59_block_rsrvd_fix_b & leftShiftStage2Idx3Pad3_uid325_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage2Idx2Rng2_uid323_normMult_uid59_block_rsrvd_fix(BITSELECT,322)@5
    leftShiftStage2Idx2Rng2_uid323_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q(75 downto 0);
    leftShiftStage2Idx2Rng2_uid323_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage2Idx2Rng2_uid323_normMult_uid59_block_rsrvd_fix_in(75 downto 0);

    -- leftShiftStage2Idx2_uid324_normMult_uid59_block_rsrvd_fix(BITJOIN,323)@5
    leftShiftStage2Idx2_uid324_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx2Rng2_uid323_normMult_uid59_block_rsrvd_fix_b & zs_uid194_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage2Idx1Rng1_uid320_normMult_uid59_block_rsrvd_fix(BITSELECT,319)@5
    leftShiftStage2Idx1Rng1_uid320_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q(76 downto 0);
    leftShiftStage2Idx1Rng1_uid320_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage2Idx1Rng1_uid320_normMult_uid59_block_rsrvd_fix_in(76 downto 0);

    -- leftShiftStage2Idx1_uid321_normMult_uid59_block_rsrvd_fix(BITJOIN,320)@5
    leftShiftStage2Idx1_uid321_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx1Rng1_uid320_normMult_uid59_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid315_normMult_uid59_block_rsrvd_fix(BITSELECT,314)@5
    leftShiftStage1Idx3Rng12_uid315_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q(65 downto 0);
    leftShiftStage1Idx3Rng12_uid315_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng12_uid315_normMult_uid59_block_rsrvd_fix_in(65 downto 0);

    -- leftShiftStage1Idx3Pad12_uid314_normMult_uid59_block_rsrvd_fix(CONSTANT,313)
    leftShiftStage1Idx3Pad12_uid314_normMult_uid59_block_rsrvd_fix_q <= "000000000000";

    -- leftShiftStage1Idx3_uid316_normMult_uid59_block_rsrvd_fix(BITJOIN,315)@5
    leftShiftStage1Idx3_uid316_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng12_uid315_normMult_uid59_block_rsrvd_fix_b & leftShiftStage1Idx3Pad12_uid314_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng8_uid312_normMult_uid59_block_rsrvd_fix(BITSELECT,311)@5
    leftShiftStage1Idx2Rng8_uid312_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q(69 downto 0);
    leftShiftStage1Idx2Rng8_uid312_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng8_uid312_normMult_uid59_block_rsrvd_fix_in(69 downto 0);

    -- leftShiftStage1Idx2_uid313_normMult_uid59_block_rsrvd_fix(BITJOIN,312)@5
    leftShiftStage1Idx2_uid313_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng8_uid312_normMult_uid59_block_rsrvd_fix_b & cstAllZWE_uid8_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng4_uid309_normMult_uid59_block_rsrvd_fix(BITSELECT,308)@5
    leftShiftStage1Idx1Rng4_uid309_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q(73 downto 0);
    leftShiftStage1Idx1Rng4_uid309_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng4_uid309_normMult_uid59_block_rsrvd_fix_in(73 downto 0);

    -- leftShiftStage1Idx1_uid310_normMult_uid59_block_rsrvd_fix(BITJOIN,309)@5
    leftShiftStage1Idx1_uid310_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng4_uid309_normMult_uid59_block_rsrvd_fix_b & zs_uid188_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng48_uid304_normMult_uid59_block_rsrvd_fix(BITSELECT,303)@5
    leftShiftStage0Idx3Rng48_uid304_normMult_uid59_block_rsrvd_fix_in <= redist26_multFracBits_uid54_block_rsrvd_fix_b_1_q(29 downto 0);
    leftShiftStage0Idx3Rng48_uid304_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng48_uid304_normMult_uid59_block_rsrvd_fix_in(29 downto 0);

    -- leftShiftStage0Idx3Pad48_uid303_normMult_uid59_block_rsrvd_fix(CONSTANT,302)
    leftShiftStage0Idx3Pad48_uid303_normMult_uid59_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid305_normMult_uid59_block_rsrvd_fix(BITJOIN,304)@5
    leftShiftStage0Idx3_uid305_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng48_uid304_normMult_uid59_block_rsrvd_fix_b & leftShiftStage0Idx3Pad48_uid303_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng32_uid301_normMult_uid59_block_rsrvd_fix(BITSELECT,300)@5
    leftShiftStage0Idx2Rng32_uid301_normMult_uid59_block_rsrvd_fix_in <= redist26_multFracBits_uid54_block_rsrvd_fix_b_1_q(45 downto 0);
    leftShiftStage0Idx2Rng32_uid301_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng32_uid301_normMult_uid59_block_rsrvd_fix_in(45 downto 0);

    -- leftShiftStage0Idx2_uid302_normMult_uid59_block_rsrvd_fix(BITJOIN,301)@5
    leftShiftStage0Idx2_uid302_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng32_uid301_normMult_uid59_block_rsrvd_fix_b & zs_uid170_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng16_uid298_normMult_uid59_block_rsrvd_fix(BITSELECT,297)@5
    leftShiftStage0Idx1Rng16_uid298_normMult_uid59_block_rsrvd_fix_in <= redist26_multFracBits_uid54_block_rsrvd_fix_b_1_q(61 downto 0);
    leftShiftStage0Idx1Rng16_uid298_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng16_uid298_normMult_uid59_block_rsrvd_fix_in(61 downto 0);

    -- leftShiftStage0Idx1_uid299_normMult_uid59_block_rsrvd_fix(BITJOIN,298)@5
    leftShiftStage0Idx1_uid299_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng16_uid298_normMult_uid59_block_rsrvd_fix_b & zs_uid176_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix(MUX,306)@5
    leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_s, redist26_multFracBits_uid54_block_rsrvd_fix_b_1_q, leftShiftStage0Idx1_uid299_normMult_uid59_block_rsrvd_fix_q, leftShiftStage0Idx2_uid302_normMult_uid59_block_rsrvd_fix_q, leftShiftStage0Idx3_uid305_normMult_uid59_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q <= redist26_multFracBits_uid54_block_rsrvd_fix_b_1_q;
            WHEN "01" => leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid299_normMult_uid59_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid302_normMult_uid59_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid305_normMult_uid59_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix(MUX,317)@5
    leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_s, leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q, leftShiftStage1Idx1_uid310_normMult_uid59_block_rsrvd_fix_q, leftShiftStage1Idx2_uid313_normMult_uid59_block_rsrvd_fix_q, leftShiftStage1Idx3_uid316_normMult_uid59_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0_uid307_normMult_uid59_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid310_normMult_uid59_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid313_normMult_uid59_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid316_normMult_uid59_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select(BITSELECT,411)@5
    leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_b <= r_uid203_zCount_uid58_block_rsrvd_fix_q(5 downto 4);
    leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_c <= r_uid203_zCount_uid58_block_rsrvd_fix_q(3 downto 2);
    leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_d <= r_uid203_zCount_uid58_block_rsrvd_fix_q(1 downto 0);

    -- leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix(MUX,328)@5
    leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid306_normMult_uid59_block_rsrvd_fix_merged_bit_select_d;
    leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_combproc: PROCESS (leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_s, leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q, leftShiftStage2Idx1_uid321_normMult_uid59_block_rsrvd_fix_q, leftShiftStage2Idx2_uid324_normMult_uid59_block_rsrvd_fix_q, leftShiftStage2Idx3_uid327_normMult_uid59_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1_uid318_normMult_uid59_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid321_normMult_uid59_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx2_uid324_normMult_uid59_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx3_uid327_normMult_uid59_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracCompOut_uid60_block_rsrvd_fix(BITSELECT,59)@5
    fracCompOut_uid60_block_rsrvd_fix_in <= leftShiftStage2_uid329_normMult_uid59_block_rsrvd_fix_q(76 downto 0);
    fracCompOut_uid60_block_rsrvd_fix_b <= fracCompOut_uid60_block_rsrvd_fix_in(76 downto 24);

    -- finalFrac_uid65_block_rsrvd_fix(MUX,64)@5 + 1
    finalFrac_uid65_block_rsrvd_fix_s <= redist27_xBranch_uid42_block_rsrvd_fix_q_5_q;
    finalFrac_uid65_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            finalFrac_uid65_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (finalFrac_uid65_block_rsrvd_fix_s) IS
                WHEN "0" => finalFrac_uid65_block_rsrvd_fix_q <= fracCompOut_uid60_block_rsrvd_fix_b;
                WHEN "1" => finalFrac_uid65_block_rsrvd_fix_q <= fracXRExt_uid64_block_rsrvd_fix_q;
                WHEN OTHERS => finalFrac_uid65_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- RRangeRed_uid67_block_rsrvd_fix(BITJOIN,66)@6
    RRangeRed_uid67_block_rsrvd_fix_q <= redist25_intBit_uid57_block_rsrvd_fix_b_1_q & expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_q & finalFrac_uid65_block_rsrvd_fix_q;

    -- expXRR_uid70_block_rsrvd_fix(BITSELECT,69)@6
    expXRR_uid70_block_rsrvd_fix_in <= RRangeRed_uid67_block_rsrvd_fix_q(60 downto 0);
    expXRR_uid70_block_rsrvd_fix_b <= expXRR_uid70_block_rsrvd_fix_in(60 downto 53);

    -- cstBiasMwShiftM2_uid68_block_rsrvd_fix(CONSTANT,67)
    cstBiasMwShiftM2_uid68_block_rsrvd_fix_q <= "01110000";

    -- cosXIsOneXRR_uid89_block_rsrvd_fix(COMPARE,88)@6
    cosXIsOneXRR_uid89_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & cstBiasMwShiftM2_uid68_block_rsrvd_fix_q));
    cosXIsOneXRR_uid89_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 8 => expXRR_uid70_block_rsrvd_fix_b(7)) & expXRR_uid70_block_rsrvd_fix_b));
    cosXIsOneXRR_uid89_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(cosXIsOneXRR_uid89_block_rsrvd_fix_a) - SIGNED(cosXIsOneXRR_uid89_block_rsrvd_fix_b));
    cosXIsOneXRR_uid89_block_rsrvd_fix_n(0) <= not (cosXIsOneXRR_uid89_block_rsrvd_fix_o(10));

    -- exp_x_uid9_block_rsrvd_fix(BITSELECT,8)@0
    exp_x_uid9_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- cosXIsOne_uid88_block_rsrvd_fix(COMPARE,87)@0 + 1
    cosXIsOne_uid88_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & cwFo2_uid39_block_rsrvd_fix_q);
    cosXIsOne_uid88_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & exp_x_uid9_block_rsrvd_fix_b);
    cosXIsOne_uid88_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            cosXIsOne_uid88_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            cosXIsOne_uid88_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(cosXIsOne_uid88_block_rsrvd_fix_a) - UNSIGNED(cosXIsOne_uid88_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    cosXIsOne_uid88_block_rsrvd_fix_n(0) <= not (cosXIsOne_uid88_block_rsrvd_fix_o(9));

    -- redist22_cosXIsOne_uid88_block_rsrvd_fix_n_6(DELAY,440)
    redist22_cosXIsOne_uid88_block_rsrvd_fix_n_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => cosXIsOne_uid88_block_rsrvd_fix_n, xout => redist22_cosXIsOne_uid88_block_rsrvd_fix_n_6_q, clk => clk, aclr => areset );

    -- cosXOne_uid154_block_rsrvd_fix(LOGICAL,153)@6
    cosXOne_uid154_block_rsrvd_fix_q <= not (redist22_cosXIsOne_uid88_block_rsrvd_fix_n_6_q or cosXIsOneXRR_uid89_block_rsrvd_fix_n);

    -- leftShiftStage1Idx3Rng3_uid352_fxpX_uid77_block_rsrvd_fix(BITSELECT,351)@6
    leftShiftStage1Idx3Rng3_uid352_fxpX_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q(64 downto 0);
    leftShiftStage1Idx3Rng3_uid352_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng3_uid352_fxpX_uid77_block_rsrvd_fix_in(64 downto 0);

    -- leftShiftStage1Idx3_uid353_fxpX_uid77_block_rsrvd_fix(BITJOIN,352)@6
    leftShiftStage1Idx3_uid353_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng3_uid352_fxpX_uid77_block_rsrvd_fix_b & leftShiftStage2Idx3Pad3_uid325_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng2_uid349_fxpX_uid77_block_rsrvd_fix(BITSELECT,348)@6
    leftShiftStage1Idx2Rng2_uid349_fxpX_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q(65 downto 0);
    leftShiftStage1Idx2Rng2_uid349_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng2_uid349_fxpX_uid77_block_rsrvd_fix_in(65 downto 0);

    -- leftShiftStage1Idx2_uid350_fxpX_uid77_block_rsrvd_fix(BITJOIN,349)@6
    leftShiftStage1Idx2_uid350_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng2_uid349_fxpX_uid77_block_rsrvd_fix_b & zs_uid194_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng1_uid346_fxpX_uid77_block_rsrvd_fix(BITSELECT,345)@6
    leftShiftStage1Idx1Rng1_uid346_fxpX_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q(66 downto 0);
    leftShiftStage1Idx1Rng1_uid346_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng1_uid346_fxpX_uid77_block_rsrvd_fix_in(66 downto 0);

    -- leftShiftStage1Idx1_uid347_fxpX_uid77_block_rsrvd_fix(BITJOIN,346)@6
    leftShiftStage1Idx1_uid347_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng1_uid346_fxpX_uid77_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage0Idx3Rng12_uid341_fxpX_uid77_block_rsrvd_fix(BITSELECT,340)@6
    leftShiftStage0Idx3Rng12_uid341_fxpX_uid77_block_rsrvd_fix_in <= extendedFracX_uid76_block_rsrvd_fix_q(55 downto 0);
    leftShiftStage0Idx3Rng12_uid341_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng12_uid341_fxpX_uid77_block_rsrvd_fix_in(55 downto 0);

    -- leftShiftStage0Idx3_uid342_fxpX_uid77_block_rsrvd_fix(BITJOIN,341)@6
    leftShiftStage0Idx3_uid342_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng12_uid341_fxpX_uid77_block_rsrvd_fix_b & leftShiftStage1Idx3Pad12_uid314_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng8_uid338_fxpX_uid77_block_rsrvd_fix(BITSELECT,337)@6
    leftShiftStage0Idx2Rng8_uid338_fxpX_uid77_block_rsrvd_fix_in <= extendedFracX_uid76_block_rsrvd_fix_q(59 downto 0);
    leftShiftStage0Idx2Rng8_uid338_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng8_uid338_fxpX_uid77_block_rsrvd_fix_in(59 downto 0);

    -- leftShiftStage0Idx2_uid339_fxpX_uid77_block_rsrvd_fix(BITJOIN,338)@6
    leftShiftStage0Idx2_uid339_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng8_uid338_fxpX_uid77_block_rsrvd_fix_b & cstAllZWE_uid8_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng4_uid335_fxpX_uid77_block_rsrvd_fix(BITSELECT,334)@6
    leftShiftStage0Idx1Rng4_uid335_fxpX_uid77_block_rsrvd_fix_in <= extendedFracX_uid76_block_rsrvd_fix_q(63 downto 0);
    leftShiftStage0Idx1Rng4_uid335_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng4_uid335_fxpX_uid77_block_rsrvd_fix_in(63 downto 0);

    -- leftShiftStage0Idx1_uid336_fxpX_uid77_block_rsrvd_fix(BITJOIN,335)@6
    leftShiftStage0Idx1_uid336_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng4_uid335_fxpX_uid77_block_rsrvd_fix_b & zs_uid188_zCount_uid58_block_rsrvd_fix_q;

    -- cstZwShiftP1_uid69_block_rsrvd_fix(CONSTANT,68)
    cstZwShiftP1_uid69_block_rsrvd_fix_q <= "00000000000000";

    -- fracXRR_uid71_block_rsrvd_fix(BITSELECT,70)@6
    fracXRR_uid71_block_rsrvd_fix_in <= RRangeRed_uid67_block_rsrvd_fix_q(52 downto 0);
    fracXRR_uid71_block_rsrvd_fix_b <= fracXRR_uid71_block_rsrvd_fix_in(52 downto 0);

    -- oFracXRR_uid73_block_rsrvd_fix(BITJOIN,72)@6
    oFracXRR_uid73_block_rsrvd_fix_q <= VCC_q & fracXRR_uid71_block_rsrvd_fix_b;

    -- extendedFracX_uid76_block_rsrvd_fix(BITJOIN,75)@6
    extendedFracX_uid76_block_rsrvd_fix_q <= cstZwShiftP1_uid69_block_rsrvd_fix_q & oFracXRR_uid73_block_rsrvd_fix_q;

    -- leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix(MUX,343)@6
    leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_s <= leftShiftStageSel3Dto2_uid343_fxpX_uid77_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_s, extendedFracX_uid76_block_rsrvd_fix_q, leftShiftStage0Idx1_uid336_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage0Idx2_uid339_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage0Idx3_uid342_fxpX_uid77_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q <= extendedFracX_uid76_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid336_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid339_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid342_fxpX_uid77_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fxpXShiftValExt_uid74_block_rsrvd_fix(SUB,73)@6
    fxpXShiftValExt_uid74_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 8 => expXRR_uid70_block_rsrvd_fix_b(7)) & expXRR_uid70_block_rsrvd_fix_b));
    fxpXShiftValExt_uid74_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & cstBiasMwShiftM2_uid68_block_rsrvd_fix_q));
    fxpXShiftValExt_uid74_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(fxpXShiftValExt_uid74_block_rsrvd_fix_a) - SIGNED(fxpXShiftValExt_uid74_block_rsrvd_fix_b));
    fxpXShiftValExt_uid74_block_rsrvd_fix_q <= fxpXShiftValExt_uid74_block_rsrvd_fix_o(9 downto 0);

    -- fxpXShiftVal_uid75_block_rsrvd_fix(BITSELECT,74)@6
    fxpXShiftVal_uid75_block_rsrvd_fix_in <= fxpXShiftValExt_uid74_block_rsrvd_fix_q(3 downto 0);
    fxpXShiftVal_uid75_block_rsrvd_fix_b <= fxpXShiftVal_uid75_block_rsrvd_fix_in(3 downto 0);

    -- leftShiftStageSel3Dto2_uid343_fxpX_uid77_block_rsrvd_fix_merged_bit_select(BITSELECT,405)@6
    leftShiftStageSel3Dto2_uid343_fxpX_uid77_block_rsrvd_fix_merged_bit_select_b <= fxpXShiftVal_uid75_block_rsrvd_fix_b(3 downto 2);
    leftShiftStageSel3Dto2_uid343_fxpX_uid77_block_rsrvd_fix_merged_bit_select_c <= fxpXShiftVal_uid75_block_rsrvd_fix_b(1 downto 0);

    -- leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix(MUX,354)@6
    leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_s <= leftShiftStageSel3Dto2_uid343_fxpX_uid77_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_s, leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage1Idx1_uid347_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage1Idx2_uid350_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage1Idx3_uid353_fxpX_uid77_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0_uid344_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid347_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid350_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid353_fxpX_uid77_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- y_uid91_block_rsrvd_fix(BITSELECT,90)@6
    y_uid91_block_rsrvd_fix_in <= leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_q(66 downto 0);
    y_uid91_block_rsrvd_fix_b <= y_uid91_block_rsrvd_fix_in(66 downto 1);

    -- paddingY_uid92_block_rsrvd_fix(CONSTANT,91)
    paddingY_uid92_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000000000000000000000";

    -- aPostPad_uid103_block_rsrvd_fix(BITJOIN,102)@6
    aPostPad_uid103_block_rsrvd_fix_q <= VCC_q & paddingY_uid92_block_rsrvd_fix_q;

    -- oneMinusY_uid104_block_rsrvd_fix(SUB,103)@6
    oneMinusY_uid104_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & aPostPad_uid103_block_rsrvd_fix_q);
    oneMinusY_uid104_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & y_uid91_block_rsrvd_fix_b);
    oneMinusY_uid104_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(oneMinusY_uid104_block_rsrvd_fix_a) - UNSIGNED(oneMinusY_uid104_block_rsrvd_fix_b));
    oneMinusY_uid104_block_rsrvd_fix_q <= oneMinusY_uid104_block_rsrvd_fix_o(67 downto 0);

    -- cmpYToOneMinusY_uid106_block_rsrvd_fix(COMPARE,105)@6
    cmpYToOneMinusY_uid106_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & oneMinusY_uid104_block_rsrvd_fix_q);
    cmpYToOneMinusY_uid106_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000" & y_uid91_block_rsrvd_fix_b);
    cmpYToOneMinusY_uid106_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(cmpYToOneMinusY_uid106_block_rsrvd_fix_a) - UNSIGNED(cmpYToOneMinusY_uid106_block_rsrvd_fix_b));
    cmpYToOneMinusY_uid106_block_rsrvd_fix_c(0) <= cmpYToOneMinusY_uid106_block_rsrvd_fix_o(69);

    -- invCmpYToOMY_uid107_block_rsrvd_fix(LOGICAL,106)@6
    invCmpYToOMY_uid107_block_rsrvd_fix_q <= not (cmpYToOneMinusY_uid106_block_rsrvd_fix_c);

    -- intXParity_uid90_block_rsrvd_fix(BITSELECT,89)@6
    intXParity_uid90_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(leftShiftStage1_uid355_fxpX_uid77_block_rsrvd_fix_q(67 downto 67));

    -- updatedY_uid93_block_rsrvd_fix(BITJOIN,92)@6
    updatedY_uid93_block_rsrvd_fix_q <= GND_q & paddingY_uid92_block_rsrvd_fix_q;

    -- yIsZero_uid92_block_rsrvd_fix(LOGICAL,93)@6
    yIsZero_uid92_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & y_uid91_block_rsrvd_fix_b);
    yIsZero_uid92_block_rsrvd_fix_q <= "1" WHEN yIsZero_uid92_block_rsrvd_fix_a = updatedY_uid93_block_rsrvd_fix_q ELSE "0";

    -- invYIsZero_uid153_block_rsrvd_fix(LOGICAL,152)@6
    invYIsZero_uid153_block_rsrvd_fix_q <= not (yIsZero_uid92_block_rsrvd_fix_q);

    -- signRCond2_uid156_block_rsrvd_fix(LOGICAL,155)@6
    signRCond2_uid156_block_rsrvd_fix_q <= invYIsZero_uid153_block_rsrvd_fix_q and intXParity_uid90_block_rsrvd_fix_b and invCmpYToOMY_uid107_block_rsrvd_fix_q and cosXOne_uid154_block_rsrvd_fix_q;

    -- invIntParity_uid158_block_rsrvd_fix(LOGICAL,157)@6
    invIntParity_uid158_block_rsrvd_fix_q <= not (intXParity_uid90_block_rsrvd_fix_b);

    -- signRCond1_uid159_block_rsrvd_fix(LOGICAL,158)@6
    signRCond1_uid159_block_rsrvd_fix_q <= invYIsZero_uid153_block_rsrvd_fix_q and invIntParity_uid158_block_rsrvd_fix_q and cmpYToOneMinusY_uid106_block_rsrvd_fix_c and cosXOne_uid154_block_rsrvd_fix_q;

    -- signRBase_uid160_block_rsrvd_fix(LOGICAL,159)@6 + 1
    signRBase_uid160_block_rsrvd_fix_qi <= signRCond1_uid159_block_rsrvd_fix_q or signRCond2_uid156_block_rsrvd_fix_q;
    signRBase_uid160_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signRBase_uid160_block_rsrvd_fix_qi, xout => signRBase_uid160_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- signXRR_uid87_block_rsrvd_fix(BITSELECT,86)@6
    signXRR_uid87_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(RRangeRed_uid67_block_rsrvd_fix_q(61 downto 61));

    -- redist24_signXRR_uid87_block_rsrvd_fix_b_1(DELAY,442)
    redist24_signXRR_uid87_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signXRR_uid87_block_rsrvd_fix_b, xout => redist24_signXRR_uid87_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- xorSignRRXSignBase_uid161_block_rsrvd_fix(LOGICAL,160)@7
    xorSignRRXSignBase_uid161_block_rsrvd_fix_q <= redist24_signXRR_uid87_block_rsrvd_fix_b_1_q xor signRBase_uid160_block_rsrvd_fix_q;

    -- frac_x_uid10_block_rsrvd_fix(BITSELECT,9)@0
    frac_x_uid10_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- fracXIsZero_uid13_block_rsrvd_fix(LOGICAL,12)@0 + 1
    fracXIsZero_uid13_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid7_block_rsrvd_fix_q = frac_x_uid10_block_rsrvd_fix_b ELSE "0";
    fracXIsZero_uid13_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid13_block_rsrvd_fix_qi, xout => fracXIsZero_uid13_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist29_fracXIsZero_uid13_block_rsrvd_fix_q_7(DELAY,447)
    redist29_fracXIsZero_uid13_block_rsrvd_fix_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid13_block_rsrvd_fix_q, xout => redist29_fracXIsZero_uid13_block_rsrvd_fix_q_7_q, clk => clk, aclr => areset );

    -- expXIsMax_uid12_block_rsrvd_fix(LOGICAL,11)@0 + 1
    expXIsMax_uid12_block_rsrvd_fix_qi <= "1" WHEN exp_x_uid9_block_rsrvd_fix_b = cstAllOWE_uid6_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid12_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid12_block_rsrvd_fix_qi, xout => expXIsMax_uid12_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist30_expXIsMax_uid12_block_rsrvd_fix_q_7(DELAY,448)
    redist30_expXIsMax_uid12_block_rsrvd_fix_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid12_block_rsrvd_fix_q, xout => redist30_expXIsMax_uid12_block_rsrvd_fix_q_7_q, clk => clk, aclr => areset );

    -- excI_x_uid15_block_rsrvd_fix(LOGICAL,14)@7
    excI_x_uid15_block_rsrvd_fix_q <= redist30_expXIsMax_uid12_block_rsrvd_fix_q_7_q and redist29_fracXIsZero_uid13_block_rsrvd_fix_q_7_q;

    -- invExcXI_uid162_block_rsrvd_fix(LOGICAL,161)@7
    invExcXI_uid162_block_rsrvd_fix_q <= not (excI_x_uid15_block_rsrvd_fix_q);

    -- fracXIsNotZero_uid14_block_rsrvd_fix(LOGICAL,13)@7
    fracXIsNotZero_uid14_block_rsrvd_fix_q <= not (redist29_fracXIsZero_uid13_block_rsrvd_fix_q_7_q);

    -- excN_x_uid16_block_rsrvd_fix(LOGICAL,15)@7
    excN_x_uid16_block_rsrvd_fix_q <= redist30_expXIsMax_uid12_block_rsrvd_fix_q_7_q and fracXIsNotZero_uid14_block_rsrvd_fix_q;

    -- invExcXN_uid163_block_rsrvd_fix(LOGICAL,162)@7
    invExcXN_uid163_block_rsrvd_fix_q <= not (excN_x_uid16_block_rsrvd_fix_q);

    -- signR_uid164_block_rsrvd_fix(LOGICAL,163)@7 + 1
    signR_uid164_block_rsrvd_fix_qi <= invExcXN_uid163_block_rsrvd_fix_q and invExcXI_uid162_block_rsrvd_fix_q and xorSignRRXSignBase_uid161_block_rsrvd_fix_q;
    signR_uid164_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid164_block_rsrvd_fix_qi, xout => signR_uid164_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist12_signR_uid164_block_rsrvd_fix_q_7(DELAY,430)
    redist12_signR_uid164_block_rsrvd_fix_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid164_block_rsrvd_fix_q, xout => redist12_signR_uid164_block_rsrvd_fix_q_7_q, clk => clk, aclr => areset );

    -- cstBias_uid78_block_rsrvd_fix(CONSTANT,77)
    cstBias_uid78_block_rsrvd_fix_q <= "01111111";

    -- oMyBottom_uid108_block_rsrvd_fix(BITSELECT,107)@6
    oMyBottom_uid108_block_rsrvd_fix_in <= oneMinusY_uid104_block_rsrvd_fix_q(64 downto 0);
    oMyBottom_uid108_block_rsrvd_fix_b <= oMyBottom_uid108_block_rsrvd_fix_in(64 downto 0);

    -- yBottom_uid109_block_rsrvd_fix(BITSELECT,108)@6
    yBottom_uid109_block_rsrvd_fix_in <= y_uid91_block_rsrvd_fix_b(64 downto 0);
    yBottom_uid109_block_rsrvd_fix_b <= yBottom_uid109_block_rsrvd_fix_in(64 downto 0);

    -- z_uid110_block_rsrvd_fix(MUX,109)@6
    z_uid110_block_rsrvd_fix_s <= invCmpYToOMY_uid107_block_rsrvd_fix_q;
    z_uid110_block_rsrvd_fix_combproc: PROCESS (z_uid110_block_rsrvd_fix_s, yBottom_uid109_block_rsrvd_fix_b, oMyBottom_uid108_block_rsrvd_fix_b)
    BEGIN
        CASE (z_uid110_block_rsrvd_fix_s) IS
            WHEN "0" => z_uid110_block_rsrvd_fix_q <= yBottom_uid109_block_rsrvd_fix_b;
            WHEN "1" => z_uid110_block_rsrvd_fix_q <= oMyBottom_uid108_block_rsrvd_fix_b;
            WHEN OTHERS => z_uid110_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- yAddr_uid118_block_rsrvd_fix(BITSELECT,117)@6
    yAddr_uid118_block_rsrvd_fix_b <= z_uid110_block_rsrvd_fix_q(64 downto 57);

    -- memoryC2_uid254_sinXTables_lutmem(DUALMEM,397)@6 + 2
    -- in j@20000000
    memoryC2_uid254_sinXTables_lutmem_aa <= yAddr_uid118_block_rsrvd_fix_b;
    memoryC2_uid254_sinXTables_lutmem_reset0 <= areset;
    memoryC2_uid254_sinXTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA2ZinXTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid254_sinXTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid254_sinXTables_lutmem_aa,
        q_a => memoryC2_uid254_sinXTables_lutmem_ir
    );
    memoryC2_uid254_sinXTables_lutmem_r <= memoryC2_uid254_sinXTables_lutmem_ir(12 downto 0);

    -- redist18_z_uid110_block_rsrvd_fix_q_1(DELAY,436)
    redist18_z_uid110_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 65, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => z_uid110_block_rsrvd_fix_q, xout => redist18_z_uid110_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- redist19_z_uid110_block_rsrvd_fix_q_2(DELAY,437)
    redist19_z_uid110_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 65, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist18_z_uid110_block_rsrvd_fix_q_1_q, xout => redist19_z_uid110_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- zPPolyEval_uid119_block_rsrvd_fix(BITSELECT,118)@8
    zPPolyEval_uid119_block_rsrvd_fix_in <= redist19_z_uid110_block_rsrvd_fix_q_2_q(56 downto 0);
    zPPolyEval_uid119_block_rsrvd_fix_b <= zPPolyEval_uid119_block_rsrvd_fix_in(56 downto 39);

    -- yT1_uid260_invPolyEval(BITSELECT,259)@8
    yT1_uid260_invPolyEval_b <= zPPolyEval_uid119_block_rsrvd_fix_b(17 downto 5);

    -- prodXY_uid273_pT1_uid261_invPolyEval_cma(CHAINMULTADD,399)@8 + 2
    prodXY_uid273_pT1_uid261_invPolyEval_cma_reset <= areset;
    prodXY_uid273_pT1_uid261_invPolyEval_cma_ena0 <= '1';
    prodXY_uid273_pT1_uid261_invPolyEval_cma_ena1 <= prodXY_uid273_pT1_uid261_invPolyEval_cma_ena0;
    prodXY_uid273_pT1_uid261_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid273_pT1_uid261_invPolyEval_cma_a0(0),14));
    prodXY_uid273_pT1_uid261_invPolyEval_cma_p(0) <= prodXY_uid273_pT1_uid261_invPolyEval_cma_l(0) * prodXY_uid273_pT1_uid261_invPolyEval_cma_c0(0);
    prodXY_uid273_pT1_uid261_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid273_pT1_uid261_invPolyEval_cma_p(0),27);
    prodXY_uid273_pT1_uid261_invPolyEval_cma_w(0) <= prodXY_uid273_pT1_uid261_invPolyEval_cma_u(0);
    prodXY_uid273_pT1_uid261_invPolyEval_cma_x(0) <= prodXY_uid273_pT1_uid261_invPolyEval_cma_w(0);
    prodXY_uid273_pT1_uid261_invPolyEval_cma_y(0) <= prodXY_uid273_pT1_uid261_invPolyEval_cma_x(0);
    prodXY_uid273_pT1_uid261_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid273_pT1_uid261_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid273_pT1_uid261_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid273_pT1_uid261_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid273_pT1_uid261_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid260_invPolyEval_b),13);
                prodXY_uid273_pT1_uid261_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid254_sinXTables_lutmem_r),13);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid273_pT1_uid261_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid273_pT1_uid261_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid273_pT1_uid261_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid273_pT1_uid261_invPolyEval_cma_s(0) <= prodXY_uid273_pT1_uid261_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid273_pT1_uid261_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid273_pT1_uid261_invPolyEval_cma_s(0)(25 downto 0)), xout => prodXY_uid273_pT1_uid261_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid273_pT1_uid261_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid273_pT1_uid261_invPolyEval_cma_qq(25 downto 0));

    -- osig_uid274_pT1_uid261_invPolyEval(BITSELECT,273)@10
    osig_uid274_pT1_uid261_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid273_pT1_uid261_invPolyEval_cma_q(25 downto 12));

    -- highBBits_uid263_invPolyEval(BITSELECT,262)@10
    highBBits_uid263_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid274_pT1_uid261_invPolyEval_b(13 downto 1));

    -- redist15_yAddr_uid118_block_rsrvd_fix_b_2(DELAY,433)
    redist15_yAddr_uid118_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid118_block_rsrvd_fix_b, xout => redist15_yAddr_uid118_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid251_sinXTables_lutmem(DUALMEM,396)@8 + 2
    -- in j@20000000
    memoryC1_uid251_sinXTables_lutmem_aa <= redist15_yAddr_uid118_block_rsrvd_fix_b_2_q;
    memoryC1_uid251_sinXTables_lutmem_reset0 <= areset;
    memoryC1_uid251_sinXTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA1ZinXTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid251_sinXTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid251_sinXTables_lutmem_aa,
        q_a => memoryC1_uid251_sinXTables_lutmem_ir
    );
    memoryC1_uid251_sinXTables_lutmem_r <= memoryC1_uid251_sinXTables_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid264_invPolyEval(ADD,263)@10
    s1sumAHighB_uid264_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC1_uid251_sinXTables_lutmem_r(20)) & memoryC1_uid251_sinXTables_lutmem_r));
    s1sumAHighB_uid264_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid263_invPolyEval_b(12)) & highBBits_uid263_invPolyEval_b));
    s1sumAHighB_uid264_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid264_invPolyEval_a) + SIGNED(s1sumAHighB_uid264_invPolyEval_b));
    s1sumAHighB_uid264_invPolyEval_q <= s1sumAHighB_uid264_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid262_invPolyEval(BITSELECT,261)@10
    lowRangeB_uid262_invPolyEval_in <= osig_uid274_pT1_uid261_invPolyEval_b(0 downto 0);
    lowRangeB_uid262_invPolyEval_b <= lowRangeB_uid262_invPolyEval_in(0 downto 0);

    -- s1_uid265_invPolyEval(BITJOIN,264)@10
    s1_uid265_invPolyEval_q <= s1sumAHighB_uid264_invPolyEval_q & lowRangeB_uid262_invPolyEval_b;

    -- redist14_zPPolyEval_uid119_block_rsrvd_fix_b_2(DELAY,432)
    redist14_zPPolyEval_uid119_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => zPPolyEval_uid119_block_rsrvd_fix_b, xout => redist14_zPPolyEval_uid119_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- prodXY_uid276_pT2_uid267_invPolyEval_cma(CHAINMULTADD,400)@10 + 2
    prodXY_uid276_pT2_uid267_invPolyEval_cma_reset <= areset;
    prodXY_uid276_pT2_uid267_invPolyEval_cma_ena0 <= '1';
    prodXY_uid276_pT2_uid267_invPolyEval_cma_ena1 <= prodXY_uid276_pT2_uid267_invPolyEval_cma_ena0;
    prodXY_uid276_pT2_uid267_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid276_pT2_uid267_invPolyEval_cma_a0(0),19));
    prodXY_uid276_pT2_uid267_invPolyEval_cma_p(0) <= prodXY_uid276_pT2_uid267_invPolyEval_cma_l(0) * prodXY_uid276_pT2_uid267_invPolyEval_cma_c0(0);
    prodXY_uid276_pT2_uid267_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid276_pT2_uid267_invPolyEval_cma_p(0),42);
    prodXY_uid276_pT2_uid267_invPolyEval_cma_w(0) <= prodXY_uid276_pT2_uid267_invPolyEval_cma_u(0);
    prodXY_uid276_pT2_uid267_invPolyEval_cma_x(0) <= prodXY_uid276_pT2_uid267_invPolyEval_cma_w(0);
    prodXY_uid276_pT2_uid267_invPolyEval_cma_y(0) <= prodXY_uid276_pT2_uid267_invPolyEval_cma_x(0);
    prodXY_uid276_pT2_uid267_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid276_pT2_uid267_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid276_pT2_uid267_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid276_pT2_uid267_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid276_pT2_uid267_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist14_zPPolyEval_uid119_block_rsrvd_fix_b_2_q),18);
                prodXY_uid276_pT2_uid267_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid265_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid276_pT2_uid267_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid276_pT2_uid267_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid276_pT2_uid267_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid276_pT2_uid267_invPolyEval_cma_s(0) <= prodXY_uid276_pT2_uid267_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid276_pT2_uid267_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 41, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid276_pT2_uid267_invPolyEval_cma_s(0)(40 downto 0)), xout => prodXY_uid276_pT2_uid267_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid276_pT2_uid267_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid276_pT2_uid267_invPolyEval_cma_qq(40 downto 0));

    -- osig_uid277_pT2_uid267_invPolyEval(BITSELECT,276)@12
    osig_uid277_pT2_uid267_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid276_pT2_uid267_invPolyEval_cma_q(40 downto 17));

    -- highBBits_uid269_invPolyEval(BITSELECT,268)@12
    highBBits_uid269_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid277_pT2_uid267_invPolyEval_b(23 downto 2));

    -- redist16_yAddr_uid118_block_rsrvd_fix_b_4(DELAY,434)
    redist16_yAddr_uid118_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist15_yAddr_uid118_block_rsrvd_fix_b_2_q, xout => redist16_yAddr_uid118_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid248_sinXTables_lutmem(DUALMEM,395)@10 + 2
    -- in j@20000000
    memoryC0_uid248_sinXTables_lutmem_aa <= redist16_yAddr_uid118_block_rsrvd_fix_b_4_q;
    memoryC0_uid248_sinXTables_lutmem_reset0 <= areset;
    memoryC0_uid248_sinXTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 30,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA0ZinXTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid248_sinXTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid248_sinXTables_lutmem_aa,
        q_a => memoryC0_uid248_sinXTables_lutmem_ir
    );
    memoryC0_uid248_sinXTables_lutmem_r <= memoryC0_uid248_sinXTables_lutmem_ir(29 downto 0);

    -- s2sumAHighB_uid270_invPolyEval(ADD,269)@12
    s2sumAHighB_uid270_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => memoryC0_uid248_sinXTables_lutmem_r(29)) & memoryC0_uid248_sinXTables_lutmem_r));
    s2sumAHighB_uid270_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 22 => highBBits_uid269_invPolyEval_b(21)) & highBBits_uid269_invPolyEval_b));
    s2sumAHighB_uid270_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid270_invPolyEval_a) + SIGNED(s2sumAHighB_uid270_invPolyEval_b));
    s2sumAHighB_uid270_invPolyEval_q <= s2sumAHighB_uid270_invPolyEval_o(30 downto 0);

    -- lowRangeB_uid268_invPolyEval(BITSELECT,267)@12
    lowRangeB_uid268_invPolyEval_in <= osig_uid277_pT2_uid267_invPolyEval_b(1 downto 0);
    lowRangeB_uid268_invPolyEval_b <= lowRangeB_uid268_invPolyEval_in(1 downto 0);

    -- s2_uid271_invPolyEval(BITJOIN,270)@12
    s2_uid271_invPolyEval_q <= s2sumAHighB_uid270_invPolyEval_q & lowRangeB_uid268_invPolyEval_b;

    -- fxpSinRes_uid121_block_rsrvd_fix(BITSELECT,120)@12
    fxpSinRes_uid121_block_rsrvd_fix_in <= s2_uid271_invPolyEval_q(30 downto 0);
    fxpSinRes_uid121_block_rsrvd_fix_b <= fxpSinRes_uid121_block_rsrvd_fix_in(30 downto 5);

    -- redist17_p_uid114_block_rsrvd_fix_b_4_notEnable(LOGICAL,467)
    redist17_p_uid114_block_rsrvd_fix_b_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist17_p_uid114_block_rsrvd_fix_b_4_nor(LOGICAL,468)
    redist17_p_uid114_block_rsrvd_fix_b_4_nor_q <= not (redist17_p_uid114_block_rsrvd_fix_b_4_notEnable_q or redist17_p_uid114_block_rsrvd_fix_b_4_sticky_ena_q);

    -- redist17_p_uid114_block_rsrvd_fix_b_4_mem_last(CONSTANT,464)
    redist17_p_uid114_block_rsrvd_fix_b_4_mem_last_q <= "01";

    -- redist17_p_uid114_block_rsrvd_fix_b_4_cmp(LOGICAL,465)
    redist17_p_uid114_block_rsrvd_fix_b_4_cmp_q <= "1" WHEN redist17_p_uid114_block_rsrvd_fix_b_4_mem_last_q = redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_q ELSE "0";

    -- redist17_p_uid114_block_rsrvd_fix_b_4_cmpReg(REG,466)
    redist17_p_uid114_block_rsrvd_fix_b_4_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_p_uid114_block_rsrvd_fix_b_4_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist17_p_uid114_block_rsrvd_fix_b_4_cmpReg_q <= STD_LOGIC_VECTOR(redist17_p_uid114_block_rsrvd_fix_b_4_cmp_q);
        END IF;
    END PROCESS;

    -- redist17_p_uid114_block_rsrvd_fix_b_4_sticky_ena(REG,469)
    redist17_p_uid114_block_rsrvd_fix_b_4_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_p_uid114_block_rsrvd_fix_b_4_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist17_p_uid114_block_rsrvd_fix_b_4_nor_q = "1") THEN
                redist17_p_uid114_block_rsrvd_fix_b_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist17_p_uid114_block_rsrvd_fix_b_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist17_p_uid114_block_rsrvd_fix_b_4_enaAnd(LOGICAL,470)
    redist17_p_uid114_block_rsrvd_fix_b_4_enaAnd_q <= redist17_p_uid114_block_rsrvd_fix_b_4_sticky_ena_q and VCC_q;

    -- redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt(COUNTER,462)
    -- low=0, high=2, step=1, init=0
    redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_eq <= '1';
            ELSE
                redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_eq <= '0';
            END IF;
            IF (redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_eq = '1') THEN
                redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i <= redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i + 2;
            ELSE
                redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i <= redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_i, 2)));

    -- leftShiftStage3Idx1Rng1_uid391_alignedZ_uid113_block_rsrvd_fix(BITSELECT,390)@8
    leftShiftStage3Idx1Rng1_uid391_alignedZ_uid113_block_rsrvd_fix_in <= leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q(63 downto 0);
    leftShiftStage3Idx1Rng1_uid391_alignedZ_uid113_block_rsrvd_fix_b <= leftShiftStage3Idx1Rng1_uid391_alignedZ_uid113_block_rsrvd_fix_in(63 downto 0);

    -- leftShiftStage3Idx1_uid392_alignedZ_uid113_block_rsrvd_fix(BITJOIN,391)@8
    leftShiftStage3Idx1_uid392_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage3Idx1Rng1_uid391_alignedZ_uid113_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage2Idx3Rng6_uid386_alignedZ_uid113_block_rsrvd_fix(BITSELECT,385)@8
    leftShiftStage2Idx3Rng6_uid386_alignedZ_uid113_block_rsrvd_fix_in <= leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q(58 downto 0);
    leftShiftStage2Idx3Rng6_uid386_alignedZ_uid113_block_rsrvd_fix_b <= leftShiftStage2Idx3Rng6_uid386_alignedZ_uid113_block_rsrvd_fix_in(58 downto 0);

    -- leftShiftStage2Idx3Pad6_uid385_alignedZ_uid113_block_rsrvd_fix(CONSTANT,384)
    leftShiftStage2Idx3Pad6_uid385_alignedZ_uid113_block_rsrvd_fix_q <= "000000";

    -- leftShiftStage2Idx3_uid387_alignedZ_uid113_block_rsrvd_fix(BITJOIN,386)@8
    leftShiftStage2Idx3_uid387_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage2Idx3Rng6_uid386_alignedZ_uid113_block_rsrvd_fix_b & leftShiftStage2Idx3Pad6_uid385_alignedZ_uid113_block_rsrvd_fix_q;

    -- leftShiftStage2Idx2Rng4_uid383_alignedZ_uid113_block_rsrvd_fix(BITSELECT,382)@8
    leftShiftStage2Idx2Rng4_uid383_alignedZ_uid113_block_rsrvd_fix_in <= leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q(60 downto 0);
    leftShiftStage2Idx2Rng4_uid383_alignedZ_uid113_block_rsrvd_fix_b <= leftShiftStage2Idx2Rng4_uid383_alignedZ_uid113_block_rsrvd_fix_in(60 downto 0);

    -- leftShiftStage2Idx2_uid384_alignedZ_uid113_block_rsrvd_fix(BITJOIN,383)@8
    leftShiftStage2Idx2_uid384_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage2Idx2Rng4_uid383_alignedZ_uid113_block_rsrvd_fix_b & zs_uid188_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage2Idx1Rng2_uid380_alignedZ_uid113_block_rsrvd_fix(BITSELECT,379)@8
    leftShiftStage2Idx1Rng2_uid380_alignedZ_uid113_block_rsrvd_fix_in <= leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q(62 downto 0);
    leftShiftStage2Idx1Rng2_uid380_alignedZ_uid113_block_rsrvd_fix_b <= leftShiftStage2Idx1Rng2_uid380_alignedZ_uid113_block_rsrvd_fix_in(62 downto 0);

    -- leftShiftStage2Idx1_uid381_alignedZ_uid113_block_rsrvd_fix(BITJOIN,380)@8
    leftShiftStage2Idx1_uid381_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage2Idx1Rng2_uid380_alignedZ_uid113_block_rsrvd_fix_b & zs_uid194_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage1Idx3Rng24_uid375_alignedZ_uid113_block_rsrvd_fix(BITSELECT,374)@8
    leftShiftStage1Idx3Rng24_uid375_alignedZ_uid113_block_rsrvd_fix_in <= leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q(40 downto 0);
    leftShiftStage1Idx3Rng24_uid375_alignedZ_uid113_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng24_uid375_alignedZ_uid113_block_rsrvd_fix_in(40 downto 0);

    -- leftShiftStage1Idx3Pad24_uid374_alignedZ_uid113_block_rsrvd_fix(CONSTANT,373)
    leftShiftStage1Idx3Pad24_uid374_alignedZ_uid113_block_rsrvd_fix_q <= "000000000000000000000000";

    -- leftShiftStage1Idx3_uid376_alignedZ_uid113_block_rsrvd_fix(BITJOIN,375)@8
    leftShiftStage1Idx3_uid376_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng24_uid375_alignedZ_uid113_block_rsrvd_fix_b & leftShiftStage1Idx3Pad24_uid374_alignedZ_uid113_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng16_uid372_alignedZ_uid113_block_rsrvd_fix(BITSELECT,371)@8
    leftShiftStage1Idx2Rng16_uid372_alignedZ_uid113_block_rsrvd_fix_in <= leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q(48 downto 0);
    leftShiftStage1Idx2Rng16_uid372_alignedZ_uid113_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng16_uid372_alignedZ_uid113_block_rsrvd_fix_in(48 downto 0);

    -- leftShiftStage1Idx2_uid373_alignedZ_uid113_block_rsrvd_fix(BITJOIN,372)@8
    leftShiftStage1Idx2_uid373_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng16_uid372_alignedZ_uid113_block_rsrvd_fix_b & zs_uid176_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng8_uid369_alignedZ_uid113_block_rsrvd_fix(BITSELECT,368)@8
    leftShiftStage1Idx1Rng8_uid369_alignedZ_uid113_block_rsrvd_fix_in <= leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q(56 downto 0);
    leftShiftStage1Idx1Rng8_uid369_alignedZ_uid113_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng8_uid369_alignedZ_uid113_block_rsrvd_fix_in(56 downto 0);

    -- leftShiftStage1Idx1_uid370_alignedZ_uid113_block_rsrvd_fix(BITJOIN,369)@8
    leftShiftStage1Idx1_uid370_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng8_uid369_alignedZ_uid113_block_rsrvd_fix_b & cstAllZWE_uid8_block_rsrvd_fix_q;

    -- cstZmwFRRPwSM1_uid95_block_rsrvd_fix(CONSTANT,94)
    cstZmwFRRPwSM1_uid95_block_rsrvd_fix_q <= "00000000000000000000000000000000000000000000000000000000000000000";

    -- vStage_uid209_lzcZ_uid112_block_rsrvd_fix(BITSELECT,208)@7
    vStage_uid209_lzcZ_uid112_block_rsrvd_fix_in <= redist18_z_uid110_block_rsrvd_fix_q_1_q(0 downto 0);
    vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b <= vStage_uid209_lzcZ_uid112_block_rsrvd_fix_in(0 downto 0);

    -- redist7_vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b_1(DELAY,425)
    redist7_vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b, xout => redist7_vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- zs_uid205_lzcZ_uid112_block_rsrvd_fix(CONSTANT,204)
    zs_uid205_lzcZ_uid112_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx2_uid364_alignedZ_uid113_block_rsrvd_fix(BITJOIN,363)@8
    leftShiftStage0Idx2_uid364_alignedZ_uid113_block_rsrvd_fix_q <= redist7_vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b_1_q & zs_uid205_lzcZ_uid112_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng32_uid360_alignedZ_uid113_block_rsrvd_fix(BITSELECT,359)@8
    leftShiftStage0Idx1Rng32_uid360_alignedZ_uid113_block_rsrvd_fix_in <= redist19_z_uid110_block_rsrvd_fix_q_2_q(32 downto 0);
    leftShiftStage0Idx1Rng32_uid360_alignedZ_uid113_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng32_uid360_alignedZ_uid113_block_rsrvd_fix_in(32 downto 0);

    -- leftShiftStage0Idx1_uid361_alignedZ_uid113_block_rsrvd_fix(BITJOIN,360)@8
    leftShiftStage0Idx1_uid361_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng32_uid360_alignedZ_uid113_block_rsrvd_fix_b & zs_uid170_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix(MUX,366)@8
    leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_s, redist19_z_uid110_block_rsrvd_fix_q_2_q, leftShiftStage0Idx1_uid361_alignedZ_uid113_block_rsrvd_fix_q, leftShiftStage0Idx2_uid364_alignedZ_uid113_block_rsrvd_fix_q, cstZmwFRRPwSM1_uid95_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q <= redist19_z_uid110_block_rsrvd_fix_q_2_q;
            WHEN "01" => leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid361_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid364_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q <= cstZmwFRRPwSM1_uid95_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix(MUX,377)@8
    leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_s, leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q, leftShiftStage1Idx1_uid370_alignedZ_uid113_block_rsrvd_fix_q, leftShiftStage1Idx2_uid373_alignedZ_uid113_block_rsrvd_fix_q, leftShiftStage1Idx3_uid376_alignedZ_uid113_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage0_uid367_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid370_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid373_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid376_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix(MUX,388)@8
    leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_d;
    leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_combproc: PROCESS (leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_s, leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q, leftShiftStage2Idx1_uid381_alignedZ_uid113_block_rsrvd_fix_q, leftShiftStage2Idx2_uid384_alignedZ_uid113_block_rsrvd_fix_q, leftShiftStage2Idx3_uid387_alignedZ_uid113_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage1_uid378_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid381_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage2Idx2_uid384_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage2Idx3_uid387_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid206_lzcZ_uid112_block_rsrvd_fix(BITSELECT,205)@7
    rVStage_uid206_lzcZ_uid112_block_rsrvd_fix_b <= redist18_z_uid110_block_rsrvd_fix_q_1_q(64 downto 1);

    -- vCount_uid207_lzcZ_uid112_block_rsrvd_fix(LOGICAL,206)@7
    vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q <= "1" WHEN rVStage_uid206_lzcZ_uid112_block_rsrvd_fix_b = zs_uid205_lzcZ_uid112_block_rsrvd_fix_q ELSE "0";

    -- redist8_vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q_1(DELAY,426)
    redist8_vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q, xout => redist8_vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- mO_uid208_lzcZ_uid112_block_rsrvd_fix(CONSTANT,207)
    mO_uid208_lzcZ_uid112_block_rsrvd_fix_q <= "111111111111111111111111111111111111111111111111111111111111111";

    -- cStage_uid210_lzcZ_uid112_block_rsrvd_fix(BITJOIN,209)@7
    cStage_uid210_lzcZ_uid112_block_rsrvd_fix_q <= vStage_uid209_lzcZ_uid112_block_rsrvd_fix_b & mO_uid208_lzcZ_uid112_block_rsrvd_fix_q;

    -- vStagei_uid212_lzcZ_uid112_block_rsrvd_fix(MUX,211)@7
    vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_s <= vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q;
    vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_combproc: PROCESS (vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_s, rVStage_uid206_lzcZ_uid112_block_rsrvd_fix_b, cStage_uid210_lzcZ_uid112_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid206_lzcZ_uid112_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_q <= cStage_uid210_lzcZ_uid112_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select(BITSELECT,412)@7
    rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_q(63 downto 32);
    rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid212_lzcZ_uid112_block_rsrvd_fix_q(31 downto 0);

    -- vCount_uid215_lzcZ_uid112_block_rsrvd_fix(LOGICAL,214)@7
    vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q <= "1" WHEN rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b = zs_uid170_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- redist6_vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q_1(DELAY,424)
    redist6_vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q, xout => redist6_vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid218_lzcZ_uid112_block_rsrvd_fix(MUX,217)@7
    vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_s <= vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q;
    vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_combproc: PROCESS (vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_s, rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b, rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid214_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select(BITSELECT,413)@7
    rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid218_lzcZ_uid112_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid221_lzcZ_uid112_block_rsrvd_fix(LOGICAL,220)@7
    vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q <= "1" WHEN rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b = zs_uid176_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- redist5_vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q_1(DELAY,423)
    redist5_vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q, xout => redist5_vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid224_lzcZ_uid112_block_rsrvd_fix(MUX,223)@7
    vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_s <= vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q;
    vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_combproc: PROCESS (vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_s, rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b, rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid220_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid226_lzcZ_uid112_block_rsrvd_fix_merged_bit_select(BITSELECT,414)@7
    rVStage_uid226_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid226_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid224_lzcZ_uid112_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid227_lzcZ_uid112_block_rsrvd_fix(LOGICAL,226)@7
    vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q <= "1" WHEN rVStage_uid226_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid8_block_rsrvd_fix_q ELSE "0";

    -- redist4_vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q_1(DELAY,422)
    redist4_vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q, xout => redist4_vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid230_lzcZ_uid112_block_rsrvd_fix(MUX,229)@7 + 1
    vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_s <= vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q;
    vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid226_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid226_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select(BITSELECT,415)@8
    rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid230_lzcZ_uid112_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid233_lzcZ_uid112_block_rsrvd_fix(LOGICAL,232)@8
    vCount_uid233_lzcZ_uid112_block_rsrvd_fix_q <= "1" WHEN rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b = zs_uid188_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid236_lzcZ_uid112_block_rsrvd_fix(MUX,235)@8
    vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_s <= vCount_uid233_lzcZ_uid112_block_rsrvd_fix_q;
    vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_combproc: PROCESS (vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_s, rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b, rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid232_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select(BITSELECT,416)@8
    rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid236_lzcZ_uid112_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid239_lzcZ_uid112_block_rsrvd_fix(LOGICAL,238)@8
    vCount_uid239_lzcZ_uid112_block_rsrvd_fix_q <= "1" WHEN rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b = zs_uid194_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid242_lzcZ_uid112_block_rsrvd_fix(MUX,241)@8
    vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_s <= vCount_uid239_lzcZ_uid112_block_rsrvd_fix_q;
    vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_combproc: PROCESS (vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_s, rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b, rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_q <= rVStage_uid238_lzcZ_uid112_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid244_lzcZ_uid112_block_rsrvd_fix(BITSELECT,243)@8
    rVStage_uid244_lzcZ_uid112_block_rsrvd_fix_b <= vStagei_uid242_lzcZ_uid112_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid245_lzcZ_uid112_block_rsrvd_fix(LOGICAL,244)@8
    vCount_uid245_lzcZ_uid112_block_rsrvd_fix_q <= "1" WHEN rVStage_uid244_lzcZ_uid112_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid246_lzcZ_uid112_block_rsrvd_fix(BITJOIN,245)@8
    r_uid246_lzcZ_uid112_block_rsrvd_fix_q <= redist8_vCount_uid207_lzcZ_uid112_block_rsrvd_fix_q_1_q & redist6_vCount_uid215_lzcZ_uid112_block_rsrvd_fix_q_1_q & redist5_vCount_uid221_lzcZ_uid112_block_rsrvd_fix_q_1_q & redist4_vCount_uid227_lzcZ_uid112_block_rsrvd_fix_q_1_q & vCount_uid233_lzcZ_uid112_block_rsrvd_fix_q & vCount_uid239_lzcZ_uid112_block_rsrvd_fix_q & vCount_uid245_lzcZ_uid112_block_rsrvd_fix_q;

    -- leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select(BITSELECT,417)@8
    leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_b <= r_uid246_lzcZ_uid112_block_rsrvd_fix_q(6 downto 5);
    leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_c <= r_uid246_lzcZ_uid112_block_rsrvd_fix_q(4 downto 3);
    leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_d <= r_uid246_lzcZ_uid112_block_rsrvd_fix_q(2 downto 1);
    leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_e <= r_uid246_lzcZ_uid112_block_rsrvd_fix_q(0 downto 0);

    -- leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix(MUX,393)@8
    leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid366_alignedZ_uid113_block_rsrvd_fix_merged_bit_select_e;
    leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_combproc: PROCESS (leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_s, leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q, leftShiftStage3Idx1_uid392_alignedZ_uid113_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_s) IS
            WHEN "0" => leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage2_uid389_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN "1" => leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_q <= leftShiftStage3Idx1_uid392_alignedZ_uid113_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- p_uid114_block_rsrvd_fix(BITSELECT,113)@8
    p_uid114_block_rsrvd_fix_b <= leftShiftStage3_uid394_alignedZ_uid113_block_rsrvd_fix_q(64 downto 39);

    -- redist17_p_uid114_block_rsrvd_fix_b_4_wraddr(REG,463)
    redist17_p_uid114_block_rsrvd_fix_b_4_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist17_p_uid114_block_rsrvd_fix_b_4_wraddr_q <= "10";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist17_p_uid114_block_rsrvd_fix_b_4_wraddr_q <= STD_LOGIC_VECTOR(redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist17_p_uid114_block_rsrvd_fix_b_4_mem(DUALMEM,461)
    redist17_p_uid114_block_rsrvd_fix_b_4_mem_ia <= STD_LOGIC_VECTOR(p_uid114_block_rsrvd_fix_b);
    redist17_p_uid114_block_rsrvd_fix_b_4_mem_aa <= redist17_p_uid114_block_rsrvd_fix_b_4_wraddr_q;
    redist17_p_uid114_block_rsrvd_fix_b_4_mem_ab <= redist17_p_uid114_block_rsrvd_fix_b_4_rdcnt_q;
    redist17_p_uid114_block_rsrvd_fix_b_4_mem_reset0 <= areset;
    redist17_p_uid114_block_rsrvd_fix_b_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 26,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 26,
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
        clocken1 => redist17_p_uid114_block_rsrvd_fix_b_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist17_p_uid114_block_rsrvd_fix_b_4_mem_reset0,
        clock1 => clk,
        address_a => redist17_p_uid114_block_rsrvd_fix_b_4_mem_aa,
        data_a => redist17_p_uid114_block_rsrvd_fix_b_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist17_p_uid114_block_rsrvd_fix_b_4_mem_ab,
        q_b => redist17_p_uid114_block_rsrvd_fix_b_4_mem_iq
    );
    redist17_p_uid114_block_rsrvd_fix_b_4_mem_q <= redist17_p_uid114_block_rsrvd_fix_b_4_mem_iq(25 downto 0);

    -- mul2xSinRes_uid122_block_rsrvd_fix_cma(CHAINMULTADD,398)@12 + 2
    mul2xSinRes_uid122_block_rsrvd_fix_cma_reset <= areset;
    mul2xSinRes_uid122_block_rsrvd_fix_cma_ena0 <= '1';
    mul2xSinRes_uid122_block_rsrvd_fix_cma_ena1 <= mul2xSinRes_uid122_block_rsrvd_fix_cma_ena0;
    mul2xSinRes_uid122_block_rsrvd_fix_cma_p(0) <= mul2xSinRes_uid122_block_rsrvd_fix_cma_a0(0) * mul2xSinRes_uid122_block_rsrvd_fix_cma_c0(0);
    mul2xSinRes_uid122_block_rsrvd_fix_cma_u(0) <= RESIZE(mul2xSinRes_uid122_block_rsrvd_fix_cma_p(0),52);
    mul2xSinRes_uid122_block_rsrvd_fix_cma_w(0) <= mul2xSinRes_uid122_block_rsrvd_fix_cma_u(0);
    mul2xSinRes_uid122_block_rsrvd_fix_cma_x(0) <= mul2xSinRes_uid122_block_rsrvd_fix_cma_w(0);
    mul2xSinRes_uid122_block_rsrvd_fix_cma_y(0) <= mul2xSinRes_uid122_block_rsrvd_fix_cma_x(0);
    mul2xSinRes_uid122_block_rsrvd_fix_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            mul2xSinRes_uid122_block_rsrvd_fix_cma_a0 <= (others => (others => '0'));
            mul2xSinRes_uid122_block_rsrvd_fix_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (mul2xSinRes_uid122_block_rsrvd_fix_cma_ena0 = '1') THEN
                mul2xSinRes_uid122_block_rsrvd_fix_cma_a0(0) <= RESIZE(UNSIGNED(redist17_p_uid114_block_rsrvd_fix_b_4_mem_q),26);
                mul2xSinRes_uid122_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(fxpSinRes_uid121_block_rsrvd_fix_b),26);
            END IF;
        END IF;
    END PROCESS;
    mul2xSinRes_uid122_block_rsrvd_fix_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            mul2xSinRes_uid122_block_rsrvd_fix_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (mul2xSinRes_uid122_block_rsrvd_fix_cma_ena1 = '1') THEN
                mul2xSinRes_uid122_block_rsrvd_fix_cma_s(0) <= mul2xSinRes_uid122_block_rsrvd_fix_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    mul2xSinRes_uid122_block_rsrvd_fix_cma_delay : dspba_delay
    GENERIC MAP ( width => 52, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(mul2xSinRes_uid122_block_rsrvd_fix_cma_s(0)(51 downto 0)), xout => mul2xSinRes_uid122_block_rsrvd_fix_cma_qq, clk => clk, aclr => areset );
    mul2xSinRes_uid122_block_rsrvd_fix_cma_q <= STD_LOGIC_VECTOR(mul2xSinRes_uid122_block_rsrvd_fix_cma_qq(51 downto 0));

    -- normBit_uid123_block_rsrvd_fix(BITSELECT,122)@14
    normBit_uid123_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(mul2xSinRes_uid122_block_rsrvd_fix_cma_q(51 downto 51));

    -- rndOp_uid132_block_rsrvd_fix(BITJOIN,131)@14
    rndOp_uid132_block_rsrvd_fix_q <= normBit_uid123_block_rsrvd_fix_b & cstZeroWF_uid7_block_rsrvd_fix_q & VCC_q;

    -- redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6(DELAY,421)
    redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 7, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => r_uid246_lzcZ_uid112_block_rsrvd_fix_q, xout => redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6_q, clk => clk, aclr => areset );

    -- redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6_outputreg(DELAY,460)
    redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6_outputreg : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6_q, xout => redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6_outputreg_q, clk => clk, aclr => areset );

    -- expP_uid116_block_rsrvd_fix(SUB,115)@14
    expP_uid116_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & biasM1_uid40_block_rsrvd_fix_q);
    expP_uid116_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & redist3_r_uid246_lzcZ_uid112_block_rsrvd_fix_q_6_outputreg_q);
    expP_uid116_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expP_uid116_block_rsrvd_fix_a) - UNSIGNED(expP_uid116_block_rsrvd_fix_b));
    expP_uid116_block_rsrvd_fix_q <= expP_uid116_block_rsrvd_fix_o(8 downto 0);

    -- highRes_uid124_block_rsrvd_fix(BITSELECT,123)@14
    highRes_uid124_block_rsrvd_fix_in <= mul2xSinRes_uid122_block_rsrvd_fix_cma_q(50 downto 0);
    highRes_uid124_block_rsrvd_fix_b <= highRes_uid124_block_rsrvd_fix_in(50 downto 27);

    -- lowRes_uid125_block_rsrvd_fix(BITSELECT,124)@14
    lowRes_uid125_block_rsrvd_fix_in <= mul2xSinRes_uid122_block_rsrvd_fix_cma_q(49 downto 0);
    lowRes_uid125_block_rsrvd_fix_b <= lowRes_uid125_block_rsrvd_fix_in(49 downto 26);

    -- fracRCompPreRnd_uid126_block_rsrvd_fix(MUX,125)@14
    fracRCompPreRnd_uid126_block_rsrvd_fix_s <= normBit_uid123_block_rsrvd_fix_b;
    fracRCompPreRnd_uid126_block_rsrvd_fix_combproc: PROCESS (fracRCompPreRnd_uid126_block_rsrvd_fix_s, lowRes_uid125_block_rsrvd_fix_b, highRes_uid124_block_rsrvd_fix_b)
    BEGIN
        CASE (fracRCompPreRnd_uid126_block_rsrvd_fix_s) IS
            WHEN "0" => fracRCompPreRnd_uid126_block_rsrvd_fix_q <= lowRes_uid125_block_rsrvd_fix_b;
            WHEN "1" => fracRCompPreRnd_uid126_block_rsrvd_fix_q <= highRes_uid124_block_rsrvd_fix_b;
            WHEN OTHERS => fracRCompPreRnd_uid126_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expRCompFracRCompPreRnd_uid127_block_rsrvd_fix(BITJOIN,126)@14
    expRCompFracRCompPreRnd_uid127_block_rsrvd_fix_q <= expP_uid116_block_rsrvd_fix_q & fracRCompPreRnd_uid126_block_rsrvd_fix_q;

    -- expRCompFracRComp_uid133_block_rsrvd_fix(ADD,132)@14
    expRCompFracRComp_uid133_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => expRCompFracRCompPreRnd_uid127_block_rsrvd_fix_q(32)) & expRCompFracRCompPreRnd_uid127_block_rsrvd_fix_q));
    expRCompFracRComp_uid133_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000" & rndOp_uid132_block_rsrvd_fix_q));
    expRCompFracRComp_uid133_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expRCompFracRComp_uid133_block_rsrvd_fix_a) + SIGNED(expRCompFracRComp_uid133_block_rsrvd_fix_b));
    expRCompFracRComp_uid133_block_rsrvd_fix_q <= expRCompFracRComp_uid133_block_rsrvd_fix_o(33 downto 0);

    -- expRComp_uid135_block_rsrvd_fix(BITSELECT,134)@14
    expRComp_uid135_block_rsrvd_fix_in <= expRCompFracRComp_uid133_block_rsrvd_fix_q(31 downto 0);
    expRComp_uid135_block_rsrvd_fix_b <= expRComp_uid135_block_rsrvd_fix_in(31 downto 24);

    -- redist23_cosXIsOne_uid88_block_rsrvd_fix_n_14(DELAY,441)
    redist23_cosXIsOne_uid88_block_rsrvd_fix_n_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist22_cosXIsOne_uid88_block_rsrvd_fix_n_6_q, xout => redist23_cosXIsOne_uid88_block_rsrvd_fix_n_14_q, clk => clk, aclr => areset );

    -- redist21_cosXIsOneXRR_uid89_block_rsrvd_fix_n_8(DELAY,439)
    redist21_cosXIsOneXRR_uid89_block_rsrvd_fix_n_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => cosXIsOneXRR_uid89_block_rsrvd_fix_n, xout => redist21_cosXIsOneXRR_uid89_block_rsrvd_fix_n_8_q, clk => clk, aclr => areset );

    -- invCosXIsOneXRR_uid139_block_rsrvd_fix(LOGICAL,138)@14
    invCosXIsOneXRR_uid139_block_rsrvd_fix_q <= not (redist21_cosXIsOneXRR_uid89_block_rsrvd_fix_n_8_q);

    -- invCosXIsOne_uid138_block_rsrvd_fix(LOGICAL,137)@14
    invCosXIsOne_uid138_block_rsrvd_fix_q <= not (redist23_cosXIsOne_uid88_block_rsrvd_fix_n_14_q);

    -- half_uid97_block_rsrvd_fix(BITJOIN,96)@6
    half_uid97_block_rsrvd_fix_q <= VCC_q & cstZmwFRRPwSM1_uid95_block_rsrvd_fix_q;

    -- updatedY_uid99_block_rsrvd_fix(BITJOIN,98)@6
    updatedY_uid99_block_rsrvd_fix_q <= half_uid97_block_rsrvd_fix_q & paddingY_uid92_block_rsrvd_fix_q;

    -- yIsHalf_uid98_block_rsrvd_fix(LOGICAL,99)@6 + 1
    yIsHalf_uid98_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("000000000000000000000000000000000000000000000000000000000000000000" & y_uid91_block_rsrvd_fix_b);
    yIsHalf_uid98_block_rsrvd_fix_qi <= "1" WHEN yIsHalf_uid98_block_rsrvd_fix_a = updatedY_uid99_block_rsrvd_fix_q ELSE "0";
    yIsHalf_uid98_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yIsHalf_uid98_block_rsrvd_fix_qi, xout => yIsHalf_uid98_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist20_yIsHalf_uid98_block_rsrvd_fix_q_8(DELAY,438)
    redist20_yIsHalf_uid98_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => yIsHalf_uid98_block_rsrvd_fix_q, xout => redist20_yIsHalf_uid98_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- yHalfCosNotONe_uid140_block_rsrvd_fix(LOGICAL,139)@14
    yHalfCosNotONe_uid140_block_rsrvd_fix_q <= redist20_yIsHalf_uid98_block_rsrvd_fix_q_8_q and invCosXIsOne_uid138_block_rsrvd_fix_q and invCosXIsOneXRR_uid139_block_rsrvd_fix_q;

    -- expRCosIsNeg_uid137_block_rsrvd_fix(BITSELECT,136)@14
    expRCosIsNeg_uid137_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(expRCompFracRComp_uid133_block_rsrvd_fix_q(32 downto 0));
    expRCosIsNeg_uid137_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expRCosIsNeg_uid137_block_rsrvd_fix_in(32 downto 32));

    -- invExpXIsMax_uid17_block_rsrvd_fix(LOGICAL,16)@7
    invExpXIsMax_uid17_block_rsrvd_fix_q <= not (redist30_expXIsMax_uid12_block_rsrvd_fix_q_7_q);

    -- excZ_x_uid11_block_rsrvd_fix(LOGICAL,10)@0 + 1
    excZ_x_uid11_block_rsrvd_fix_qi <= "1" WHEN exp_x_uid9_block_rsrvd_fix_b = cstAllZWE_uid8_block_rsrvd_fix_q ELSE "0";
    excZ_x_uid11_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid11_block_rsrvd_fix_qi, xout => excZ_x_uid11_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist31_excZ_x_uid11_block_rsrvd_fix_q_7(DELAY,449)
    redist31_excZ_x_uid11_block_rsrvd_fix_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid11_block_rsrvd_fix_q, xout => redist31_excZ_x_uid11_block_rsrvd_fix_q_7_q, clk => clk, aclr => areset );

    -- InvExpXIsZero_uid18_block_rsrvd_fix(LOGICAL,17)@7
    InvExpXIsZero_uid18_block_rsrvd_fix_q <= not (redist31_excZ_x_uid11_block_rsrvd_fix_q_7_q);

    -- excR_x_uid19_block_rsrvd_fix(LOGICAL,18)@7 + 1
    excR_x_uid19_block_rsrvd_fix_qi <= InvExpXIsZero_uid18_block_rsrvd_fix_q and invExpXIsMax_uid17_block_rsrvd_fix_q;
    excR_x_uid19_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excR_x_uid19_block_rsrvd_fix_qi, xout => excR_x_uid19_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist28_excR_x_uid19_block_rsrvd_fix_q_7(DELAY,446)
    redist28_excR_x_uid19_block_rsrvd_fix_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => excR_x_uid19_block_rsrvd_fix_q, xout => redist28_excR_x_uid19_block_rsrvd_fix_q_7_q, clk => clk, aclr => areset );

    -- cosUnderflow_uid141_block_rsrvd_fix(LOGICAL,140)@14
    cosUnderflow_uid141_block_rsrvd_fix_q <= redist28_excR_x_uid19_block_rsrvd_fix_q_7_q and expRCosIsNeg_uid137_block_rsrvd_fix_b and invCosXIsOne_uid138_block_rsrvd_fix_q and invCosXIsOneXRR_uid139_block_rsrvd_fix_q;

    -- excRZeroCos_uid142_block_rsrvd_fix(LOGICAL,141)@14
    excRZeroCos_uid142_block_rsrvd_fix_q <= cosUnderflow_uid141_block_rsrvd_fix_q or yHalfCosNotONe_uid140_block_rsrvd_fix_q;

    -- excRNaN_uid143_block_rsrvd_fix(LOGICAL,142)@7 + 1
    excRNaN_uid143_block_rsrvd_fix_qi <= excN_x_uid16_block_rsrvd_fix_q or excI_x_uid15_block_rsrvd_fix_q;
    excRNaN_uid143_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRNaN_uid143_block_rsrvd_fix_qi, xout => excRNaN_uid143_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist13_excRNaN_uid143_block_rsrvd_fix_q_7(DELAY,431)
    redist13_excRNaN_uid143_block_rsrvd_fix_q_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRNaN_uid143_block_rsrvd_fix_q, xout => redist13_excRNaN_uid143_block_rsrvd_fix_q_7_q, clk => clk, aclr => areset );

    -- excConc_uid148_block_rsrvd_fix(BITJOIN,147)@14
    excConc_uid148_block_rsrvd_fix_q <= redist21_cosXIsOneXRR_uid89_block_rsrvd_fix_n_8_q & excRZeroCos_uid142_block_rsrvd_fix_q & redist13_excRNaN_uid143_block_rsrvd_fix_q_7_q;

    -- expSelBits_uid149_block_rsrvd_fix(BITJOIN,148)@14
    expSelBits_uid149_block_rsrvd_fix_q <= redist23_cosXIsOne_uid88_block_rsrvd_fix_n_14_q & excConc_uid148_block_rsrvd_fix_q;

    -- expSelector_uid150_block_rsrvd_fix(LOOKUP,149)@14
    expSelector_uid150_block_rsrvd_fix_combproc: PROCESS (expSelBits_uid149_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (expSelBits_uid149_block_rsrvd_fix_q) IS
            WHEN "0000" => expSelector_uid150_block_rsrvd_fix_q <= "00";
            WHEN "0001" => expSelector_uid150_block_rsrvd_fix_q <= "11";
            WHEN "0010" => expSelector_uid150_block_rsrvd_fix_q <= "10";
            WHEN "0011" => expSelector_uid150_block_rsrvd_fix_q <= "00";
            WHEN "0100" => expSelector_uid150_block_rsrvd_fix_q <= "01";
            WHEN "0101" => expSelector_uid150_block_rsrvd_fix_q <= "11";
            WHEN "0110" => expSelector_uid150_block_rsrvd_fix_q <= "10";
            WHEN "0111" => expSelector_uid150_block_rsrvd_fix_q <= "00";
            WHEN "1000" => expSelector_uid150_block_rsrvd_fix_q <= "01";
            WHEN "1001" => expSelector_uid150_block_rsrvd_fix_q <= "11";
            WHEN "1010" => expSelector_uid150_block_rsrvd_fix_q <= "10";
            WHEN "1011" => expSelector_uid150_block_rsrvd_fix_q <= "00";
            WHEN "1100" => expSelector_uid150_block_rsrvd_fix_q <= "01";
            WHEN "1101" => expSelector_uid150_block_rsrvd_fix_q <= "11";
            WHEN "1110" => expSelector_uid150_block_rsrvd_fix_q <= "10";
            WHEN "1111" => expSelector_uid150_block_rsrvd_fix_q <= "00";
            WHEN OTHERS => -- unreachable
                           expSelector_uid150_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid152_block_rsrvd_fix(MUX,151)@14
    expRPostExc_uid152_block_rsrvd_fix_s <= expSelector_uid150_block_rsrvd_fix_q;
    expRPostExc_uid152_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid152_block_rsrvd_fix_s, expRComp_uid135_block_rsrvd_fix_b, cstBias_uid78_block_rsrvd_fix_q, cstAllZWE_uid8_block_rsrvd_fix_q, cstAllOWE_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid152_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid152_block_rsrvd_fix_q <= expRComp_uid135_block_rsrvd_fix_b;
            WHEN "01" => expRPostExc_uid152_block_rsrvd_fix_q <= cstBias_uid78_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid152_block_rsrvd_fix_q <= cstAllZWE_uid8_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid152_block_rsrvd_fix_q <= cstAllOWE_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid152_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstNaNwF_uid84_block_rsrvd_fix(CONSTANT,83)
    cstNaNwF_uid84_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRComp_uid134_block_rsrvd_fix(BITSELECT,133)@14
    fracRComp_uid134_block_rsrvd_fix_in <= expRCompFracRComp_uid133_block_rsrvd_fix_q(23 downto 0);
    fracRComp_uid134_block_rsrvd_fix_b <= fracRComp_uid134_block_rsrvd_fix_in(23 downto 1);

    -- excZOrCosOne_uid144_block_rsrvd_fix(LOGICAL,143)@14
    excZOrCosOne_uid144_block_rsrvd_fix_q <= excRZeroCos_uid142_block_rsrvd_fix_q or redist23_cosXIsOne_uid88_block_rsrvd_fix_n_14_q or redist21_cosXIsOneXRR_uid89_block_rsrvd_fix_n_8_q;

    -- fracRPostExcSel_uid145_block_rsrvd_fix(BITJOIN,144)@14
    fracRPostExcSel_uid145_block_rsrvd_fix_q <= redist13_excRNaN_uid143_block_rsrvd_fix_q_7_q & excZOrCosOne_uid144_block_rsrvd_fix_q;

    -- fracRPostExc_uid147_block_rsrvd_fix(MUX,146)@14
    fracRPostExc_uid147_block_rsrvd_fix_s <= fracRPostExcSel_uid145_block_rsrvd_fix_q;
    fracRPostExc_uid147_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid147_block_rsrvd_fix_s, fracRComp_uid134_block_rsrvd_fix_b, cstZeroWF_uid7_block_rsrvd_fix_q, cstNaNwF_uid84_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid147_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid147_block_rsrvd_fix_q <= fracRComp_uid134_block_rsrvd_fix_b;
            WHEN "01" => fracRPostExc_uid147_block_rsrvd_fix_q <= cstZeroWF_uid7_block_rsrvd_fix_q;
            WHEN "10" => fracRPostExc_uid147_block_rsrvd_fix_q <= cstNaNwF_uid84_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid147_block_rsrvd_fix_q <= cstNaNwF_uid84_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid147_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cosx_uid165_block_rsrvd_fix(BITJOIN,164)@14
    cosx_uid165_block_rsrvd_fix_q <= redist12_signR_uid164_block_rsrvd_fix_q_7_q & expRPostExc_uid152_block_rsrvd_fix_q & fracRPostExc_uid147_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@14
    out_primWireOut <= cosx_uid165_block_rsrvd_fix_q;

END normal;
