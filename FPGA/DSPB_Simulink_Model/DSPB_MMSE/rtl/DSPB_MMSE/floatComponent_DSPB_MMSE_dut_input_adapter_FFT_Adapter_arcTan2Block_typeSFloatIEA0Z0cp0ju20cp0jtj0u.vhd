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

-- VHDL created from floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0Z0iuq0cp0ju20cp0jtj0u
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
entity floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0Z0iuq0cp0ju20cp0jtj0u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0Z0iuq0cp0ju20cp0jtj0u;

architecture normal of floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0Z0iuq0cp0ju20cp0jtj0u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal exp_xIn_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_xIn_uid11_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expXIsMax_uid13_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid14_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_xIn_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_xIn_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_yIn_uid24_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_yIn_uid25_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expXIsMax_uid27_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid28_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_yIn_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_yIn_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yInSign_uid35_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xInSign_uid36_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal zwEwF_uid37_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal yInExpFrac_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal yInZero_uid41_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal yInZero_uid41_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xInExpFrac_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal xInZero_uid45_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xInZero_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expX_uid47_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal fracX_uid48_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal singX_uid49_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cstNaNWF_uid52_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid53_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBias_uid54_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasM1_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasMWF_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstBiasP1_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstWFP1_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstWFP2_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal excZ_div_uid460_uid66_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid67_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_div_uid70_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal updatedY_uid76_block_rsrvd_fix_q : STD_LOGIC_VECTOR (45 downto 0);
    signal fracXIsZero_uid75_block_rsrvd_fix_a : STD_LOGIC_VECTOR (45 downto 0);
    signal fracXIsZero_uid75_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsBias_uid78_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal inIsOne_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal piO2_uid80_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal piO4_uid81_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal cstPiO2_uid82_block_rsrvd_fix_in : STD_LOGIC_VECTOR (24 downto 0);
    signal cstPiO2_uid82_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fpPiO2C_uid83_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cstPiO4_uid85_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal cstPiO4_uid85_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fpPiO4C_uid86_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal constOut_uid88_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal constOut_uid88_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xyInInf_uid89_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xyInInf_uid89_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal arctanIsConst_uid90_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal path2_uid91_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal path2_uid91_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal path2_uid91_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal path2_uid91_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal u_uid93_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u_uid93_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal oFracU_uid96_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal biasMwShift_uid97_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal atanUIsU_uid98_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal atanUIsU_uid98_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal atanUIsU_uid98_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal atanUIsU_uid98_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftBias_uid99_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal shiftValue_uid100_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValue_uid100_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValue_uid100_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValue_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal xMSB_uid101_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal zS_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValuePostNeg_uid104_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal shiftValuePostNeg_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal cst01pWShift_uid105_block_rsrvd_fix_q : STD_LOGIC_VECTOR (12 downto 0);
    signal oFracUExt_uid106_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal fxpShifterBits_uid107_block_rsrvd_fix_in : STD_LOGIC_VECTOR (3 downto 0);
    signal fxpShifterBits_uid107_block_rsrvd_fix_b : STD_LOGIC_VECTOR (3 downto 0);
    signal y_uid109_block_rsrvd_fix_in : STD_LOGIC_VECTOR (35 downto 0);
    signal y_uid109_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal fxpAtanXOXRes_uid114_block_rsrvd_fix_in : STD_LOGIC_VECTOR (31 downto 0);
    signal fxpAtanXOXRes_uid114_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal normBit_uid116_block_rsrvd_fix_in : STD_LOGIC_VECTOR (49 downto 0);
    signal normBit_uid116_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPath3High_uid117_block_rsrvd_fix_in : STD_LOGIC_VECTOR (48 downto 0);
    signal fracRPath3High_uid117_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPath3Low_uid118_block_rsrvd_fix_in : STD_LOGIC_VECTOR (47 downto 0);
    signal fracRPath3Low_uid118_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPath3Pre_uid119_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPath3Pre_uid119_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal invNormBit_uid120_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expRPath3Ext_uid121_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expRPath3Ext_uid121_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expRPath3Ext_uid121_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expRPath3Ext_uid121_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expRPath3PreRnd_uid122_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPath3PreRnd_uid122_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expFracRPath3PreRnd_uid123_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal fracRPath3PostRnd_uid126_block_rsrvd_fix_a : STD_LOGIC_VECTOR (32 downto 0);
    signal fracRPath3PostRnd_uid126_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal fracRPath3PostRnd_uid126_block_rsrvd_fix_o : STD_LOGIC_VECTOR (32 downto 0);
    signal fracRPath3PostRnd_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (32 downto 0);
    signal shiftOut_uid130_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal shiftOut_uid130_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal shiftOut_uid130_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal shiftOut_uid130_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal oFracRPath2_uid133_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal sValPostSOutR_uid134_block_rsrvd_fix_in : STD_LOGIC_VECTOR (4 downto 0);
    signal sValPostSOutR_uid134_block_rsrvd_fix_b : STD_LOGIC_VECTOR (4 downto 0);
    signal bPostPad_uid137_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal path2Diff_uid138_block_rsrvd_fix_a : STD_LOGIC_VECTOR (26 downto 0);
    signal path2Diff_uid138_block_rsrvd_fix_b : STD_LOGIC_VECTOR (26 downto 0);
    signal path2Diff_uid138_block_rsrvd_fix_o : STD_LOGIC_VECTOR (26 downto 0);
    signal path2Diff_uid138_block_rsrvd_fix_q : STD_LOGIC_VECTOR (26 downto 0);
    signal normBitPath2Diff_uid139_block_rsrvd_fix_in : STD_LOGIC_VECTOR (25 downto 0);
    signal normBitPath2Diff_uid139_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal path2DiffHigh_uid140_block_rsrvd_fix_in : STD_LOGIC_VECTOR (24 downto 0);
    signal path2DiffHigh_uid140_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal path2DiffLow_uid141_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal path2DiffLow_uid141_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPath2_uid142_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPath2_uid142_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expRPath2_uid143_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRPath2_uid143_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expFracConc_uid146_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal expFracRPath2PostRnd_uid147_block_rsrvd_fix_a : STD_LOGIC_VECTOR (32 downto 0);
    signal expFracRPath2PostRnd_uid147_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal expFracRPath2PostRnd_uid147_block_rsrvd_fix_o : STD_LOGIC_VECTOR (32 downto 0);
    signal expFracRPath2PostRnd_uid147_block_rsrvd_fix_q : STD_LOGIC_VECTOR (32 downto 0);
    signal pathSelBits_uid150_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal fracOutMuxSelEnc_uid151_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRCalc_uid153_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRCalc_uid153_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRCalc_uid155_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRCalc_uid155_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstPi_uid156_block_rsrvd_fix_q : STD_LOGIC_VECTOR (46 downto 0);
    signal sOutAlignRes_uid158_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal sOutAlignRes_uid158_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal sOutAlignRes_uid158_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal sOutAlignRes_uid158_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal yInZOrsOutAlignRes_uid159_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sValPostSOutRange_uid162_block_rsrvd_fix_in : STD_LOGIC_VECTOR (4 downto 0);
    signal sValPostSOutRange_uid162_block_rsrvd_fix_b : STD_LOGIC_VECTOR (4 downto 0);
    signal oFracRCalc_uid163_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal padConst_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal rightPaddedIn_uid165_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal padACst_uid168_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal aPostPad_uid169_block_rsrvd_fix_q : STD_LOGIC_VECTOR (48 downto 0);
    signal subRes_uid170_block_rsrvd_fix_a : STD_LOGIC_VECTOR (49 downto 0);
    signal subRes_uid170_block_rsrvd_fix_b : STD_LOGIC_VECTOR (49 downto 0);
    signal subRes_uid170_block_rsrvd_fix_o : STD_LOGIC_VECTOR (49 downto 0);
    signal subRes_uid170_block_rsrvd_fix_q : STD_LOGIC_VECTOR (49 downto 0);
    signal subResNormBit_uid171_block_rsrvd_fix_in : STD_LOGIC_VECTOR (48 downto 0);
    signal subResNormBit_uid171_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal subResHigh_uid172_block_rsrvd_fix_in : STD_LOGIC_VECTOR (47 downto 0);
    signal subResHigh_uid172_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal subResLow_uid173_block_rsrvd_fix_in : STD_LOGIC_VECTOR (46 downto 0);
    signal subResLow_uid173_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRSub_uid174_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRSub_uid174_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRSub_uid175_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRSub_uid175_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal xInIsLTEZero_uid176_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal xInIsLTEZero_uid176_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRFinal_uid177_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRFinal_uid177_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRFinal_uid178_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRFinal_uid178_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invYInSign_uid179_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invXInSign_uid180_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero2_uid181_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero1_uid182_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid183_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid183_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid184_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid184_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelBits_uid185_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal outMuxSelEnc_uid186_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid188_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid188_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid189_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid189_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid190_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid191_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal R_uid192_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal updatedY_uid204_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal fracYZero_uid203_div_uid46_block_rsrvd_fix_a : STD_LOGIC_VECTOR (23 downto 0);
    signal fracYZero_uid203_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid211_div_uid46_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_x_uid211_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid217_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid218_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid219_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid225_div_uid46_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal excZ_y_uid225_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid231_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid232_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_y_uid233_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid234_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXmY_uid235_div_uid46_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expXmY_uid235_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expXmY_uid235_div_uid46_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expXmY_uid235_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expR_uid236_div_uid46_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal expR_uid236_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal expR_uid236_div_uid46_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal expR_uid236_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal yAddr_uid239_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal yPE_uid240_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (13 downto 0);
    signal fracYPostZ_uid244_div_uid46_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracYPostZ_uid244_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal lOAdded_uid246_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal oFracXSE_mergedSignalTM_uid251_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal norm_uid255_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal divValPreNormHigh_uid256_div_uid46_block_rsrvd_fix_in : STD_LOGIC_VECTOR (24 downto 0);
    signal divValPreNormHigh_uid256_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal divValPreNormLow_uid257_div_uid46_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal divValPreNormLow_uid257_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal normFracRnd_uid258_div_uid46_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal normFracRnd_uid258_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expFracRnd_uid259_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal rndOp_uid263_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_a : STD_LOGIC_VECTOR (35 downto 0);
    signal expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (35 downto 0);
    signal expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_o : STD_LOGIC_VECTOR (35 downto 0);
    signal expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (34 downto 0);
    signal fracRPreExc_uid266_div_uid46_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRPreExc_uid266_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excRPreExc_uid267_div_uid46_block_rsrvd_fix_in : STD_LOGIC_VECTOR (31 downto 0);
    signal excRPreExc_uid267_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRExt_uid268_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal expUdf_uid269_div_uid46_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expUdf_uid269_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expUdf_uid269_div_uid46_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expUdf_uid269_div_uid46_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expOvf_uid272_div_uid46_block_rsrvd_fix_a : STD_LOGIC_VECTOR (12 downto 0);
    signal expOvf_uid272_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (12 downto 0);
    signal expOvf_uid272_div_uid46_block_rsrvd_fix_o : STD_LOGIC_VECTOR (12 downto 0);
    signal expOvf_uid272_div_uid46_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal zeroOverReg_uid273_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal regOverRegWithUf_uid274_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xRegOrZero_uid275_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal regOrZeroOverInf_uid276_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid277_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRYZ_uid278_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXRYROvf_uid279_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYZ_uid280_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYR_uid281_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRInf_uid282_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXZYZ_uid283_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excXIYI_uid284_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid285_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal concExc_uid286_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excREnc_uid287_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid291_div_uid46_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid291_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid295_div_uid46_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid295_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid296_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sRPostExc_uid297_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal divR_uid298_div_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cst2BiasM1_uid307_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cst2Bias_uid308_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal fracXIsNotZero_uid318_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid320_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid321_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid322_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excR_x_uid323_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oFracX_uid324_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal fracXIsZero_uid325_z_uid92_block_rsrvd_fix_a : STD_LOGIC_VECTOR (23 downto 0);
    signal fracXIsZero_uid325_z_uid92_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal y_uid328_z_uid92_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal y_uid328_z_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRCompExt_uid333_z_uid92_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expRCompExt_uid333_z_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expRCompExt_uid333_z_uid92_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expRCompExt_uid333_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expRComp_uid334_z_uid92_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRComp_uid334_z_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal udf_uid335_z_uid92_block_rsrvd_fix_in : STD_LOGIC_VECTOR (9 downto 0);
    signal udf_uid335_z_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expRCompYIsOne_uid337_z_uid92_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRCompYIsOne_uid337_z_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal fxpInverseRes_uid338_z_uid92_block_rsrvd_fix_in : STD_LOGIC_VECTOR (28 downto 0);
    signal fxpInverseRes_uid338_z_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fxpInverseResFrac_uid340_z_uid92_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal fxpInverseResFrac_uid340_z_uid92_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRCalc_uid341_z_uid92_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRCalc_uid341_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRCalc_uid342_z_uid92_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expRCalc_uid342_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal xRegAndUdf_uid343_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xIOrXRUdf_uid344_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelBits_uid345_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid348_z_uid92_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid348_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid349_z_uid92_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid349_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invExcRNaN_uid350_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid351_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal R_uid352_z_uid92_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal yT1_uid366_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal lowRangeB_uid368_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid368_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid369_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid370_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid370_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid370_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid370_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid371_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid374_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid374_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid375_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid376_invPolyEval_a : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid376_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid376_invPolyEval_o : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid376_invPolyEval_q : STD_LOGIC_VECTOR (31 downto 0);
    signal s2_uid377_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal os_uid381_invTables_q : STD_LOGIC_VECTOR (30 downto 0);
    signal os_uid385_invTables_q : STD_LOGIC_VECTOR (20 downto 0);
    signal yT1_uid393_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal lowRangeB_uid395_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid395_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid396_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal s1sumAHighB_uid397_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid397_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid397_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid397_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid398_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid401_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid401_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid402_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid403_invPolyEval_a : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid403_invPolyEval_b : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid403_invPolyEval_o : STD_LOGIC_VECTOR (31 downto 0);
    signal s2sumAHighB_uid403_invPolyEval_q : STD_LOGIC_VECTOR (31 downto 0);
    signal s2_uid404_invPolyEval_q : STD_LOGIC_VECTOR (33 downto 0);
    signal osig_uid407_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal yT1_uid421_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal lowRangeB_uid423_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid423_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid424_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal s1sumAHighB_uid425_invPolyEval_a : STD_LOGIC_VECTOR (20 downto 0);
    signal s1sumAHighB_uid425_invPolyEval_b : STD_LOGIC_VECTOR (20 downto 0);
    signal s1sumAHighB_uid425_invPolyEval_o : STD_LOGIC_VECTOR (20 downto 0);
    signal s1sumAHighB_uid425_invPolyEval_q : STD_LOGIC_VECTOR (20 downto 0);
    signal s1_uid426_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal lowRangeB_uid429_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid429_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid430_invPolyEval_b : STD_LOGIC_VECTOR (20 downto 0);
    signal s2sumAHighB_uid431_invPolyEval_a : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid431_invPolyEval_b : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid431_invPolyEval_o : STD_LOGIC_VECTOR (29 downto 0);
    signal s2sumAHighB_uid431_invPolyEval_q : STD_LOGIC_VECTOR (29 downto 0);
    signal s2_uid432_invPolyEval_q : STD_LOGIC_VECTOR (31 downto 0);
    signal osig_uid435_pT1_uid367_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid438_pT2_uid373_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal osig_uid441_pT1_uid394_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal osig_uid444_pT2_uid400_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal osig_uid447_pT1_uid422_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal osig_uid450_pT2_uid428_invPolyEval_b : STD_LOGIC_VECTOR (22 downto 0);
    signal memoryC1_uid384_invTables_q_const_q : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Pad4_uid455_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx1Rng4_uid456_fxpU_uid108_block_rsrvd_fix_in : STD_LOGIC_VECTOR (32 downto 0);
    signal leftShiftStage0Idx1Rng4_uid456_fxpU_uid108_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal leftShiftStage0Idx1_uid457_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage0Idx2Rng8_uid459_fxpU_uid108_block_rsrvd_fix_in : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage0Idx2Rng8_uid459_fxpU_uid108_block_rsrvd_fix_b : STD_LOGIC_VECTOR (28 downto 0);
    signal leftShiftStage0Idx2_uid460_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage0Idx3Pad12_uid461_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage0Idx3Rng12_uid462_fxpU_uid108_block_rsrvd_fix_in : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage0Idx3Rng12_uid462_fxpU_uid108_block_rsrvd_fix_b : STD_LOGIC_VECTOR (24 downto 0);
    signal leftShiftStage0Idx3_uid463_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage1Idx1Rng1_uid467_fxpU_uid108_block_rsrvd_fix_in : STD_LOGIC_VECTOR (35 downto 0);
    signal leftShiftStage1Idx1Rng1_uid467_fxpU_uid108_block_rsrvd_fix_b : STD_LOGIC_VECTOR (35 downto 0);
    signal leftShiftStage1Idx1_uid468_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage1Idx2Rng2_uid470_fxpU_uid108_block_rsrvd_fix_in : STD_LOGIC_VECTOR (34 downto 0);
    signal leftShiftStage1Idx2Rng2_uid470_fxpU_uid108_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal leftShiftStage1Idx2_uid471_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage1Idx3Pad3_uid472_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage1Idx3Rng3_uid473_fxpU_uid108_block_rsrvd_fix_in : STD_LOGIC_VECTOR (33 downto 0);
    signal leftShiftStage1Idx3Rng3_uid473_fxpU_uid108_block_rsrvd_fix_b : STD_LOGIC_VECTOR (33 downto 0);
    signal leftShiftStage1Idx3_uid474_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_q : STD_LOGIC_VECTOR (36 downto 0);
    signal shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_a : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_b : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_i : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_o : STD_LOGIC_VECTOR (8 downto 0);
    signal shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_q : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1Rng8_uid481_fxpOp2Path2_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (16 downto 0);
    signal rightShiftStage0Idx1_uid483_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage0Idx2Rng16_uid484_fxpOp2Path2_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal rightShiftStage0Idx2Pad16_uid485_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx2_uid486_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage0Idx3Rng24_uid487_fxpOp2Path2_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx3_uid489_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage1Idx1Rng2_uid492_fxpOp2Path2_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal rightShiftStage1Idx1_uid494_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage1Idx2Rng4_uid495_fxpOp2Path2_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (20 downto 0);
    signal rightShiftStage1Idx2_uid497_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage1Idx3Rng6_uid498_fxpOp2Path2_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (18 downto 0);
    signal rightShiftStage1Idx3Pad6_uid499_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rightShiftStage1Idx3_uid500_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage2Idx1Rng1_uid503_fxpOp2Path2_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage2Idx1_uid505_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_q : STD_LOGIC_VECTOR (24 downto 0);
    signal sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_a : STD_LOGIC_VECTOR (8 downto 0);
    signal sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_b : STD_LOGIC_VECTOR (8 downto 0);
    signal sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_i : STD_LOGIC_VECTOR (8 downto 0);
    signal sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_o : STD_LOGIC_VECTOR (8 downto 0);
    signal sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_q : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage0Idx1Rng8_uid512_fxpAlignedRes_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (39 downto 0);
    signal rightShiftStage0Idx1_uid514_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx2Rng16_uid515_fxpAlignedRes_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2_uid517_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx3Rng24_uid518_fxpAlignedRes_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage0Idx3_uid520_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx1Rng2_uid523_fxpAlignedRes_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal rightShiftStage1Idx1_uid525_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx2Rng4_uid526_fxpAlignedRes_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (43 downto 0);
    signal rightShiftStage1Idx2_uid528_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1Idx3Rng6_uid529_fxpAlignedRes_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (41 downto 0);
    signal rightShiftStage1Idx3_uid531_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage2Idx1Rng1_uid534_fxpAlignedRes_uid164_block_rsrvd_fix_b : STD_LOGIC_VECTOR (46 downto 0);
    signal rightShiftStage2Idx1_uid536_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal memoryC0_uid354_atan2Tables_lutmem_reset0 : std_logic;
    signal memoryC0_uid354_atan2Tables_lutmem_ia : STD_LOGIC_VECTOR (30 downto 0);
    signal memoryC0_uid354_atan2Tables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid354_atan2Tables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid354_atan2Tables_lutmem_ir : STD_LOGIC_VECTOR (30 downto 0);
    signal memoryC0_uid354_atan2Tables_lutmem_r : STD_LOGIC_VECTOR (30 downto 0);
    signal memoryC1_uid357_atan2Tables_lutmem_reset0 : std_logic;
    signal memoryC1_uid357_atan2Tables_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC1_uid357_atan2Tables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid357_atan2Tables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid357_atan2Tables_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC1_uid357_atan2Tables_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid360_atan2Tables_lutmem_reset0 : std_logic;
    signal memoryC2_uid360_atan2Tables_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid360_atan2Tables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid360_atan2Tables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid360_atan2Tables_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid360_atan2Tables_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC0_uid379_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid379_invTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid379_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid379_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid379_invTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid379_invTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid380_invTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid380_invTables_lutmem_ia : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid380_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid380_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid380_invTables_lutmem_ir : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC0_uid380_invTables_lutmem_r : STD_LOGIC_VECTOR (10 downto 0);
    signal memoryC1_uid383_invTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid383_invTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid383_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid383_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid383_invTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid383_invTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC2_uid387_invTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid387_invTables_lutmem_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC2_uid387_invTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid387_invTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid387_invTables_lutmem_ir : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC2_uid387_invTables_lutmem_r : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC0_uid409_inverseTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid409_inverseTables_lutmem_ia : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC0_uid409_inverseTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid409_inverseTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid409_inverseTables_lutmem_ir : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC0_uid409_inverseTables_lutmem_r : STD_LOGIC_VECTOR (28 downto 0);
    signal memoryC1_uid412_inverseTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid412_inverseTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid412_inverseTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid412_inverseTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid412_inverseTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid412_inverseTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC2_uid415_inverseTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid415_inverseTables_lutmem_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC2_uid415_inverseTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid415_inverseTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid415_inverseTables_lutmem_ir : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC2_uid415_inverseTables_lutmem_r : STD_LOGIC_VECTOR (11 downto 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_reset : std_logic;
    type mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_a0type is array(NATURAL range <>) of UNSIGNED(23 downto 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_a0 : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_a0 : signal is true;
    type mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_c0type is array(NATURAL range <>) of UNSIGNED(26 downto 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_c0 : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_c0type(0 to 0);
    attribute preserve of mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_c0 : signal is true;
    type mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ptype is array(NATURAL range <>) of UNSIGNED(50 downto 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_p : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_u : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_w : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_x : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_y : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_s : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ptype(0 to 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_qq : STD_LOGIC_VECTOR (50 downto 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_q : STD_LOGIC_VECTOR (50 downto 0);
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ena0 : std_logic;
    signal mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ena1 : std_logic;
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_reset : std_logic;
    type prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_a0type is array(NATURAL range <>) of UNSIGNED(25 downto 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_a0 : prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_a0 : signal is true;
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_c0 : mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_c0 : signal is true;
    type prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ptype is array(NATURAL range <>) of UNSIGNED(49 downto 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_p : prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_u : prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_w : prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_x : prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_y : prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_s : prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ptype(0 to 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_qq : STD_LOGIC_VECTOR (49 downto 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_q : STD_LOGIC_VECTOR (49 downto 0);
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ena0 : std_logic;
    signal prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ena1 : std_logic;
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_reset : std_logic;
    type prodXY_uid434_pT1_uid367_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(12 downto 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_a0 : prodXY_uid434_pT1_uid367_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid434_pT1_uid367_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid434_pT1_uid367_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(12 downto 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_c0 : prodXY_uid434_pT1_uid367_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid434_pT1_uid367_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid434_pT1_uid367_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_l : prodXY_uid434_pT1_uid367_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid434_pT1_uid367_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(26 downto 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_p : prodXY_uid434_pT1_uid367_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_u : prodXY_uid434_pT1_uid367_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_w : prodXY_uid434_pT1_uid367_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_x : prodXY_uid434_pT1_uid367_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_y : prodXY_uid434_pT1_uid367_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_s : prodXY_uid434_pT1_uid367_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_q : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid434_pT1_uid367_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_reset : std_logic;
    type prodXY_uid437_pT2_uid373_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_a0 : prodXY_uid437_pT2_uid373_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid437_pT2_uid373_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid437_pT2_uid373_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_c0 : prodXY_uid437_pT2_uid373_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid437_pT2_uid373_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid437_pT2_uid373_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_l : prodXY_uid437_pT2_uid373_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid437_pT2_uid373_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(41 downto 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_p : prodXY_uid437_pT2_uid373_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_u : prodXY_uid437_pT2_uid373_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_w : prodXY_uid437_pT2_uid373_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_x : prodXY_uid437_pT2_uid373_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_y : prodXY_uid437_pT2_uid373_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_s : prodXY_uid437_pT2_uid373_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_qq : STD_LOGIC_VECTOR (40 downto 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_q : STD_LOGIC_VECTOR (40 downto 0);
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid437_pT2_uid373_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_reset : std_logic;
    type prodXY_uid440_pT1_uid394_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(11 downto 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_a0 : prodXY_uid440_pT1_uid394_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid440_pT1_uid394_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid440_pT1_uid394_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(11 downto 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_c0 : prodXY_uid440_pT1_uid394_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid440_pT1_uid394_invPolyEval_cma_c0 : signal is true;
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_l : prodXY_uid434_pT1_uid367_invPolyEval_cma_c0type(0 to 0);
    type prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(24 downto 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_p : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_u : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_w : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_x : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_y : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_s : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_qq : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid440_pT1_uid394_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_reset : std_logic;
    type prodXY_uid443_pT2_uid400_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_a0 : prodXY_uid443_pT2_uid400_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid443_pT2_uid400_invPolyEval_cma_a0 : signal is true;
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_c0 : prodXY_uid437_pT2_uid373_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid443_pT2_uid400_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid443_pT2_uid400_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_l : prodXY_uid443_pT2_uid400_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(37 downto 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_p : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_u : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_w : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_x : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_y : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_s : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid443_pT2_uid400_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_reset : std_logic;
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_a0 : prodXY_uid440_pT1_uid394_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid446_pT1_uid422_invPolyEval_cma_a0 : signal is true;
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_c0 : prodXY_uid440_pT1_uid394_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid446_pT1_uid422_invPolyEval_cma_c0 : signal is true;
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_l : prodXY_uid434_pT1_uid367_invPolyEval_cma_c0type(0 to 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_p : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_u : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_w : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_x : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_y : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_s : prodXY_uid440_pT1_uid394_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_qq : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid446_pT1_uid422_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_reset : std_logic;
    type prodXY_uid449_pT2_uid428_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_a0 : prodXY_uid449_pT2_uid428_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid449_pT2_uid428_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid449_pT2_uid428_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(21 downto 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_c0 : prodXY_uid449_pT2_uid428_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid449_pT2_uid428_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid449_pT2_uid428_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_l : prodXY_uid449_pT2_uid428_invPolyEval_cma_ltype(0 to 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_p : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_u : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_w : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_x : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_y : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_s : prodXY_uid443_pT2_uid400_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid449_pT2_uid428_invPolyEval_cma_ena1 : std_logic;
    signal fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (30 downto 0);
    signal fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal expU_uid94_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (30 downto 0);
    signal expU_uid94_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expU_uid94_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (22 downto 0);
    signal leftShiftStageSel3Dto2_uid464_fxpU_uid108_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel3Dto2_uid464_fxpU_uid108_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal yAddr_uid111_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid111_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (17 downto 0);
    signal fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (31 downto 0);
    signal fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (31 downto 0);
    signal fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (0 downto 0);
    signal yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (14 downto 0);
    signal invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (31 downto 0);
    signal invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (25 downto 0);
    signal invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist3_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist4_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist5_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist6_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist7_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist10_fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_lOAdded_uid246_div_uid46_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist13_yPE_uid240_div_uid46_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist14_yPE_uid240_div_uid46_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (13 downto 0);
    signal redist15_yAddr_uid239_div_uid46_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist16_yAddr_uid239_div_uid46_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist17_expXmY_uid235_div_uid46_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist18_excZ_y_uid225_div_uid46_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_excZ_x_uid211_div_uid46_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_updatedY_uid204_div_uid46_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist21_excRNaN_uid184_block_rsrvd_fix_q_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_excRZero_uid183_block_rsrvd_fix_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_xInIsLTEZero_uid176_block_rsrvd_fix_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_expRCalc_uid155_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist25_fracRCalc_uid153_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist26_fracOutMuxSelEnc_uid151_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist27_expRPath3PreRnd_uid122_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist29_xyInInf_uid89_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_excI_div_uid70_block_rsrvd_fix_q_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_singX_uid49_block_rsrvd_fix_b_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_fracX_uid48_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist36_xInZero_uid45_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_yInZero_uid41_block_rsrvd_fix_q_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_yInZero_uid41_block_rsrvd_fix_q_18_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_xInSign_uid36_block_rsrvd_fix_b_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_xInSign_uid36_block_rsrvd_fix_b_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_yInSign_uid35_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_yInSign_uid35_block_rsrvd_fix_b_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_yInSign_uid35_block_rsrvd_fix_b_19_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_fracXIsZero_uid28_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_expXIsMax_uid27_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_expXIsMax_uid13_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist48_frac_xIn_uid11_block_rsrvd_fix_b_7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_outputreg_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_reset0 : std_logic;
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i : signal is true;
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_eq : std_logic;
    attribute preserve of redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_eq : signal is true;
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_sticky_ena_q : signal is true;
    signal redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_reset0 : std_logic;
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_i : signal is true;
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_sticky_ena_q : signal is true;
    signal redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_reset0 : std_logic;
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i : signal is true;
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_eq : std_logic;
    attribute preserve of redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_eq : signal is true;
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist28_oFracU_uid96_block_rsrvd_fix_q_6_sticky_ena_q : signal is true;
    signal redist28_oFracU_uid96_block_rsrvd_fix_q_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_inputreg_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_reset0 : std_logic;
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i : signal is true;
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_eq : signal is true;
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist33_fracX_uid48_block_rsrvd_fix_b_6_sticky_ena_q : signal is true;
    signal redist33_fracX_uid48_block_rsrvd_fix_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_reset0 : std_logic;
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_i : signal is true;
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist34_fracX_uid48_block_rsrvd_fix_b_15_sticky_ena_q : signal is true;
    signal redist34_fracX_uid48_block_rsrvd_fix_b_15_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_mem_reset0 : std_logic;
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_i : signal is true;
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist35_expX_uid47_block_rsrvd_fix_b_9_sticky_ena_q : signal is true;
    signal redist35_expX_uid47_block_rsrvd_fix_b_9_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_reset0 : std_logic;
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_ia : STD_LOGIC_VECTOR (22 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_iq : STD_LOGIC_VECTOR (22 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i : signal is true;
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_eq : signal is true;
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_sticky_ena_q : signal is true;
    signal redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_reset0 : std_logic;
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i : signal is true;
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_eq : signal is true;
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_sticky_ena_q : signal is true;
    signal redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- frac_yIn_uid25_block_rsrvd_fix(BITSELECT,24)@6
    frac_yIn_uid25_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- cstZeroWF_uid8_block_rsrvd_fix(CONSTANT,7)
    cstZeroWF_uid8_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid28_block_rsrvd_fix(LOGICAL,27)@6 + 1
    fracXIsZero_uid28_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid8_block_rsrvd_fix_q = frac_yIn_uid25_block_rsrvd_fix_b ELSE "0";
    fracXIsZero_uid28_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid28_block_rsrvd_fix_qi, xout => fracXIsZero_uid28_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist44_fracXIsZero_uid28_block_rsrvd_fix_q_2(DELAY,611)
    redist44_fracXIsZero_uid28_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid28_block_rsrvd_fix_q, xout => redist44_fracXIsZero_uid28_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- fracXIsNotZero_uid29_block_rsrvd_fix(LOGICAL,28)@8
    fracXIsNotZero_uid29_block_rsrvd_fix_q <= not (redist44_fracXIsZero_uid28_block_rsrvd_fix_q_2_q);

    -- cstAllOWE_uid7_block_rsrvd_fix(CONSTANT,6)
    cstAllOWE_uid7_block_rsrvd_fix_q <= "11111111";

    -- exp_yIn_uid24_block_rsrvd_fix(BITSELECT,23)@6
    exp_yIn_uid24_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- expXIsMax_uid27_block_rsrvd_fix(LOGICAL,26)@6 + 1
    expXIsMax_uid27_block_rsrvd_fix_qi <= "1" WHEN exp_yIn_uid24_block_rsrvd_fix_b = cstAllOWE_uid7_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid27_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid27_block_rsrvd_fix_qi, xout => expXIsMax_uid27_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist45_expXIsMax_uid27_block_rsrvd_fix_q_2(DELAY,612)
    redist45_expXIsMax_uid27_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid27_block_rsrvd_fix_q, xout => redist45_expXIsMax_uid27_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excN_yIn_uid31_block_rsrvd_fix(LOGICAL,30)@8
    excN_yIn_uid31_block_rsrvd_fix_q <= redist45_expXIsMax_uid27_block_rsrvd_fix_q_2_q and fracXIsNotZero_uid29_block_rsrvd_fix_q;

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_notEnable(LOGICAL,686)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_nor(LOGICAL,687)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_nor_q <= not (redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_notEnable_q or redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_sticky_ena_q);

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_last(CONSTANT,683)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_last_q <= "011";

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmp(LOGICAL,684)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmp_q <= "1" WHEN redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_last_q = redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_q ELSE "0";

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmpReg(REG,685)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_sticky_ena(REG,688)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_nor_q = "1") THEN
                redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_enaAnd(LOGICAL,689)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_enaAnd_q <= redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_sticky_ena_q and VCC_q;

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt(COUNTER,681)
    -- low=0, high=4, step=1, init=0
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_eq <= '1';
            ELSE
                redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_eq = '1') THEN
                redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i <= redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i + 4;
            ELSE
                redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i <= redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_i, 3)));

    -- frac_xIn_uid11_block_rsrvd_fix(BITSELECT,10)@0
    frac_xIn_uid11_block_rsrvd_fix_b <= in_1(22 downto 0);

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_wraddr(REG,682)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem(DUALMEM,680)
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_ia <= STD_LOGIC_VECTOR(frac_xIn_uid11_block_rsrvd_fix_b);
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_aa <= redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_wraddr_q;
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_ab <= redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_rdcnt_q;
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_reset0 <= areset;
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_dmem : altera_syncram
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
        clocken1 => redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_reset0,
        clock1 => clk,
        address_a => redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_aa,
        data_a => redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_ab,
        q_b => redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_iq
    );
    redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_q <= redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_iq(22 downto 0);

    -- redist48_frac_xIn_uid11_block_rsrvd_fix_b_7(DELAY,615)
    redist48_frac_xIn_uid11_block_rsrvd_fix_b_7 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_q, xout => redist48_frac_xIn_uid11_block_rsrvd_fix_b_7_q, clk => clk, aclr => areset );

    -- fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,13)@7 + 1
    fracXIsZero_uid14_block_rsrvd_fix_qi <= "1" WHEN cstZeroWF_uid8_block_rsrvd_fix_q = redist48_frac_xIn_uid11_block_rsrvd_fix_b_7_q ELSE "0";
    fracXIsZero_uid14_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid14_block_rsrvd_fix_qi, xout => fracXIsZero_uid14_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- fracXIsNotZero_uid15_block_rsrvd_fix(LOGICAL,14)@8
    fracXIsNotZero_uid15_block_rsrvd_fix_q <= not (fracXIsZero_uid14_block_rsrvd_fix_q);

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_notEnable(LOGICAL,696)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_nor(LOGICAL,697)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_nor_q <= not (redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_notEnable_q or redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_sticky_ena_q);

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_last(CONSTANT,693)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_last_q <= "011";

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmp(LOGICAL,694)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmp_q <= "1" WHEN redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_last_q = redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_q ELSE "0";

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmpReg(REG,695)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_sticky_ena(REG,698)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_nor_q = "1") THEN
                redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_enaAnd(LOGICAL,699)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_enaAnd_q <= redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_sticky_ena_q and VCC_q;

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt(COUNTER,691)
    -- low=0, high=4, step=1, init=0
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_eq <= '1';
            ELSE
                redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_eq = '1') THEN
                redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i <= redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i + 4;
            ELSE
                redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i <= redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_i, 3)));

    -- exp_xIn_uid10_block_rsrvd_fix(BITSELECT,9)@0
    exp_xIn_uid10_block_rsrvd_fix_b <= in_1(30 downto 23);

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_wraddr(REG,692)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem(DUALMEM,690)
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_ia <= STD_LOGIC_VECTOR(exp_xIn_uid10_block_rsrvd_fix_b);
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_aa <= redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_wraddr_q;
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_ab <= redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_rdcnt_q;
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_reset0 <= areset;
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 8,
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
        clocken1 => redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_reset0,
        clock1 => clk,
        address_a => redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_aa,
        data_a => redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_ab,
        q_b => redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_iq
    );
    redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_q <= redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_iq(7 downto 0);

    -- expXIsMax_uid13_block_rsrvd_fix(LOGICAL,12)@6 + 1
    expXIsMax_uid13_block_rsrvd_fix_qi <= "1" WHEN redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_q = cstAllOWE_uid7_block_rsrvd_fix_q ELSE "0";
    expXIsMax_uid13_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid13_block_rsrvd_fix_qi, xout => expXIsMax_uid13_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist46_expXIsMax_uid13_block_rsrvd_fix_q_2(DELAY,613)
    redist46_expXIsMax_uid13_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXIsMax_uid13_block_rsrvd_fix_q, xout => redist46_expXIsMax_uid13_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excN_xIn_uid17_block_rsrvd_fix(LOGICAL,16)@8
    excN_xIn_uid17_block_rsrvd_fix_q <= redist46_expXIsMax_uid13_block_rsrvd_fix_q_2_q and fracXIsNotZero_uid15_block_rsrvd_fix_q;

    -- excRNaN_uid184_block_rsrvd_fix(LOGICAL,183)@8 + 1
    excRNaN_uid184_block_rsrvd_fix_qi <= excN_xIn_uid17_block_rsrvd_fix_q or excN_yIn_uid31_block_rsrvd_fix_q;
    excRNaN_uid184_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRNaN_uid184_block_rsrvd_fix_qi, xout => excRNaN_uid184_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist21_excRNaN_uid184_block_rsrvd_fix_q_17(DELAY,588)
    redist21_excRNaN_uid184_block_rsrvd_fix_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRNaN_uid184_block_rsrvd_fix_q, xout => redist21_excRNaN_uid184_block_rsrvd_fix_q_17_q, clk => clk, aclr => areset );

    -- invExcRNaN_uid190_block_rsrvd_fix(LOGICAL,189)@25
    invExcRNaN_uid190_block_rsrvd_fix_q <= not (redist21_excRNaN_uid184_block_rsrvd_fix_q_17_q);

    -- yInSign_uid35_block_rsrvd_fix(BITSELECT,34)@6
    yInSign_uid35_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- redist41_yInSign_uid35_block_rsrvd_fix_b_2(DELAY,608)
    redist41_yInSign_uid35_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yInSign_uid35_block_rsrvd_fix_b, xout => redist41_yInSign_uid35_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- redist42_yInSign_uid35_block_rsrvd_fix_b_8(DELAY,609)
    redist42_yInSign_uid35_block_rsrvd_fix_b_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist41_yInSign_uid35_block_rsrvd_fix_b_2_q, xout => redist42_yInSign_uid35_block_rsrvd_fix_b_8_q, clk => clk, aclr => areset );

    -- redist43_yInSign_uid35_block_rsrvd_fix_b_19(DELAY,610)
    redist43_yInSign_uid35_block_rsrvd_fix_b_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 11, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist42_yInSign_uid35_block_rsrvd_fix_b_8_q, xout => redist43_yInSign_uid35_block_rsrvd_fix_b_19_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signR_uid191_block_rsrvd_fix(LOGICAL,190)@25
    signR_uid191_block_rsrvd_fix_q <= redist43_yInSign_uid35_block_rsrvd_fix_b_19_q and invExcRNaN_uid190_block_rsrvd_fix_q;

    -- cstBiasP1_uid57_block_rsrvd_fix(CONSTANT,56)
    cstBiasP1_uid57_block_rsrvd_fix_q <= "10000000";

    -- cstBias_uid54_block_rsrvd_fix(CONSTANT,53)
    cstBias_uid54_block_rsrvd_fix_q <= "01111111";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- rightShiftStage2Idx1Rng1_uid534_fxpAlignedRes_uid164_block_rsrvd_fix(BITSELECT,533)@25
    rightShiftStage2Idx1Rng1_uid534_fxpAlignedRes_uid164_block_rsrvd_fix_b <= rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q(47 downto 1);

    -- rightShiftStage2Idx1_uid536_fxpAlignedRes_uid164_block_rsrvd_fix(BITJOIN,535)@25
    rightShiftStage2Idx1_uid536_fxpAlignedRes_uid164_block_rsrvd_fix_q <= GND_q & rightShiftStage2Idx1Rng1_uid534_fxpAlignedRes_uid164_block_rsrvd_fix_b;

    -- rightShiftStage1Idx3Pad6_uid499_fxpOp2Path2_uid135_block_rsrvd_fix(CONSTANT,498)
    rightShiftStage1Idx3Pad6_uid499_fxpOp2Path2_uid135_block_rsrvd_fix_q <= "000000";

    -- rightShiftStage1Idx3Rng6_uid529_fxpAlignedRes_uid164_block_rsrvd_fix(BITSELECT,528)@25
    rightShiftStage1Idx3Rng6_uid529_fxpAlignedRes_uid164_block_rsrvd_fix_b <= rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q(47 downto 6);

    -- rightShiftStage1Idx3_uid531_fxpAlignedRes_uid164_block_rsrvd_fix(BITJOIN,530)@25
    rightShiftStage1Idx3_uid531_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage1Idx3Pad6_uid499_fxpOp2Path2_uid135_block_rsrvd_fix_q & rightShiftStage1Idx3Rng6_uid529_fxpAlignedRes_uid164_block_rsrvd_fix_b;

    -- leftShiftStage0Idx1Pad4_uid455_fxpU_uid108_block_rsrvd_fix(CONSTANT,454)
    leftShiftStage0Idx1Pad4_uid455_fxpU_uid108_block_rsrvd_fix_q <= "0000";

    -- rightShiftStage1Idx2Rng4_uid526_fxpAlignedRes_uid164_block_rsrvd_fix(BITSELECT,525)@25
    rightShiftStage1Idx2Rng4_uid526_fxpAlignedRes_uid164_block_rsrvd_fix_b <= rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q(47 downto 4);

    -- rightShiftStage1Idx2_uid528_fxpAlignedRes_uid164_block_rsrvd_fix(BITJOIN,527)@25
    rightShiftStage1Idx2_uid528_fxpAlignedRes_uid164_block_rsrvd_fix_q <= leftShiftStage0Idx1Pad4_uid455_fxpU_uid108_block_rsrvd_fix_q & rightShiftStage1Idx2Rng4_uid526_fxpAlignedRes_uid164_block_rsrvd_fix_b;

    -- padACst_uid168_block_rsrvd_fix(CONSTANT,167)
    padACst_uid168_block_rsrvd_fix_q <= "00";

    -- rightShiftStage1Idx1Rng2_uid523_fxpAlignedRes_uid164_block_rsrvd_fix(BITSELECT,522)@25
    rightShiftStage1Idx1Rng2_uid523_fxpAlignedRes_uid164_block_rsrvd_fix_b <= rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q(47 downto 2);

    -- rightShiftStage1Idx1_uid525_fxpAlignedRes_uid164_block_rsrvd_fix(BITJOIN,524)@25
    rightShiftStage1Idx1_uid525_fxpAlignedRes_uid164_block_rsrvd_fix_q <= padACst_uid168_block_rsrvd_fix_q & rightShiftStage1Idx1Rng2_uid523_fxpAlignedRes_uid164_block_rsrvd_fix_b;

    -- padConst_uid164_block_rsrvd_fix(CONSTANT,163)
    padConst_uid164_block_rsrvd_fix_q <= "000000000000000000000000";

    -- rightShiftStage0Idx3Rng24_uid518_fxpAlignedRes_uid164_block_rsrvd_fix(BITSELECT,517)@25
    rightShiftStage0Idx3Rng24_uid518_fxpAlignedRes_uid164_block_rsrvd_fix_b <= rightPaddedIn_uid165_block_rsrvd_fix_q(47 downto 24);

    -- rightShiftStage0Idx3_uid520_fxpAlignedRes_uid164_block_rsrvd_fix(BITJOIN,519)@25
    rightShiftStage0Idx3_uid520_fxpAlignedRes_uid164_block_rsrvd_fix_q <= padConst_uid164_block_rsrvd_fix_q & rightShiftStage0Idx3Rng24_uid518_fxpAlignedRes_uid164_block_rsrvd_fix_b;

    -- rightShiftStage0Idx2Pad16_uid485_fxpOp2Path2_uid135_block_rsrvd_fix(CONSTANT,484)
    rightShiftStage0Idx2Pad16_uid485_fxpOp2Path2_uid135_block_rsrvd_fix_q <= "0000000000000000";

    -- rightShiftStage0Idx2Rng16_uid515_fxpAlignedRes_uid164_block_rsrvd_fix(BITSELECT,514)@25
    rightShiftStage0Idx2Rng16_uid515_fxpAlignedRes_uid164_block_rsrvd_fix_b <= rightPaddedIn_uid165_block_rsrvd_fix_q(47 downto 16);

    -- rightShiftStage0Idx2_uid517_fxpAlignedRes_uid164_block_rsrvd_fix(BITJOIN,516)@25
    rightShiftStage0Idx2_uid517_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage0Idx2Pad16_uid485_fxpOp2Path2_uid135_block_rsrvd_fix_q & rightShiftStage0Idx2Rng16_uid515_fxpAlignedRes_uid164_block_rsrvd_fix_b;

    -- rightShiftStage0Idx1Rng8_uid512_fxpAlignedRes_uid164_block_rsrvd_fix(BITSELECT,511)@25
    rightShiftStage0Idx1Rng8_uid512_fxpAlignedRes_uid164_block_rsrvd_fix_b <= rightPaddedIn_uid165_block_rsrvd_fix_q(47 downto 8);

    -- rightShiftStage0Idx1_uid514_fxpAlignedRes_uid164_block_rsrvd_fix(BITJOIN,513)@25
    rightShiftStage0Idx1_uid514_fxpAlignedRes_uid164_block_rsrvd_fix_q <= cstAllZWE_uid53_block_rsrvd_fix_q & rightShiftStage0Idx1Rng8_uid512_fxpAlignedRes_uid164_block_rsrvd_fix_b;

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_notEnable(LOGICAL,635)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_nor(LOGICAL,636)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_nor_q <= not (redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_notEnable_q or redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_sticky_ena_q);

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_last(CONSTANT,632)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_last_q <= "010";

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmp(LOGICAL,633)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmp_b <= STD_LOGIC_VECTOR("0" & redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_q);
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmp_q <= "1" WHEN redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_last_q = redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmp_b ELSE "0";

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmpReg(REG,634)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmpReg_q <= STD_LOGIC_VECTOR(redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_sticky_ena(REG,637)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_nor_q = "1") THEN
                redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_enaAnd(LOGICAL,638)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_enaAnd_q <= redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_sticky_ena_q and VCC_q;

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt(COUNTER,630)
    -- low=0, high=3, step=1, init=0
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_i <= redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_i, 2)));

    -- excI_xIn_uid16_block_rsrvd_fix(LOGICAL,15)@8
    excI_xIn_uid16_block_rsrvd_fix_q <= redist46_expXIsMax_uid13_block_rsrvd_fix_q_2_q and fracXIsZero_uid14_block_rsrvd_fix_q;

    -- excI_yIn_uid30_block_rsrvd_fix(LOGICAL,29)@8
    excI_yIn_uid30_block_rsrvd_fix_q <= redist45_expXIsMax_uid27_block_rsrvd_fix_q_2_q and redist44_fracXIsZero_uid28_block_rsrvd_fix_q_2_q;

    -- excXIYI_uid284_div_uid46_block_rsrvd_fix(LOGICAL,283)@8
    excXIYI_uid284_div_uid46_block_rsrvd_fix_q <= excI_yIn_uid30_block_rsrvd_fix_q and excI_xIn_uid16_block_rsrvd_fix_q;

    -- excZ_y_uid225_div_uid46_block_rsrvd_fix(LOGICAL,224)@6 + 1
    excZ_y_uid225_div_uid46_block_rsrvd_fix_qi <= "1" WHEN redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_q = cstAllZWE_uid53_block_rsrvd_fix_q ELSE "0";
    excZ_y_uid225_div_uid46_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid225_div_uid46_block_rsrvd_fix_qi, xout => excZ_y_uid225_div_uid46_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist18_excZ_y_uid225_div_uid46_block_rsrvd_fix_q_2(DELAY,585)
    redist18_excZ_y_uid225_div_uid46_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_y_uid225_div_uid46_block_rsrvd_fix_q, xout => redist18_excZ_y_uid225_div_uid46_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excZ_x_uid211_div_uid46_block_rsrvd_fix(LOGICAL,210)@6 + 1
    excZ_x_uid211_div_uid46_block_rsrvd_fix_qi <= "1" WHEN exp_yIn_uid24_block_rsrvd_fix_b = cstAllZWE_uid53_block_rsrvd_fix_q ELSE "0";
    excZ_x_uid211_div_uid46_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid211_div_uid46_block_rsrvd_fix_qi, xout => excZ_x_uid211_div_uid46_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist19_excZ_x_uid211_div_uid46_block_rsrvd_fix_q_2(DELAY,586)
    redist19_excZ_x_uid211_div_uid46_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excZ_x_uid211_div_uid46_block_rsrvd_fix_q, xout => redist19_excZ_x_uid211_div_uid46_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- excXZYZ_uid283_div_uid46_block_rsrvd_fix(LOGICAL,282)@8
    excXZYZ_uid283_div_uid46_block_rsrvd_fix_q <= redist19_excZ_x_uid211_div_uid46_block_rsrvd_fix_q_2_q and redist18_excZ_y_uid225_div_uid46_block_rsrvd_fix_q_2_q;

    -- excRNaN_uid285_div_uid46_block_rsrvd_fix(LOGICAL,284)@8
    excRNaN_uid285_div_uid46_block_rsrvd_fix_q <= excXZYZ_uid283_div_uid46_block_rsrvd_fix_q or excN_yIn_uid31_block_rsrvd_fix_q or excN_xIn_uid17_block_rsrvd_fix_q or excXIYI_uid284_div_uid46_block_rsrvd_fix_q;

    -- invExcRNaN_uid296_div_uid46_block_rsrvd_fix(LOGICAL,295)@8
    invExcRNaN_uid296_div_uid46_block_rsrvd_fix_q <= not (excRNaN_uid285_div_uid46_block_rsrvd_fix_q);

    -- xInSign_uid36_block_rsrvd_fix(BITSELECT,35)@0
    xInSign_uid36_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(31 downto 31));

    -- redist39_xInSign_uid36_block_rsrvd_fix_b_8(DELAY,606)
    redist39_xInSign_uid36_block_rsrvd_fix_b_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => xInSign_uid36_block_rsrvd_fix_b, xout => redist39_xInSign_uid36_block_rsrvd_fix_b_8_q, clk => clk, aclr => areset );

    -- signR_uid234_div_uid46_block_rsrvd_fix(LOGICAL,233)@8
    signR_uid234_div_uid46_block_rsrvd_fix_q <= redist41_yInSign_uid35_block_rsrvd_fix_b_2_q xor redist39_xInSign_uid36_block_rsrvd_fix_b_8_q;

    -- sRPostExc_uid297_div_uid46_block_rsrvd_fix(LOGICAL,296)@8
    sRPostExc_uid297_div_uid46_block_rsrvd_fix_q <= signR_uid234_div_uid46_block_rsrvd_fix_q and invExcRNaN_uid296_div_uid46_block_rsrvd_fix_q;

    -- lOAdded_uid246_div_uid46_block_rsrvd_fix(BITJOIN,245)@6
    lOAdded_uid246_div_uid46_block_rsrvd_fix_q <= VCC_q & frac_yIn_uid25_block_rsrvd_fix_b;

    -- redist12_lOAdded_uid246_div_uid46_block_rsrvd_fix_q_2(DELAY,579)
    redist12_lOAdded_uid246_div_uid46_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => lOAdded_uid246_div_uid46_block_rsrvd_fix_q, xout => redist12_lOAdded_uid246_div_uid46_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- oFracXSE_mergedSignalTM_uid251_div_uid46_block_rsrvd_fix(BITJOIN,250)@8
    oFracXSE_mergedSignalTM_uid251_div_uid46_block_rsrvd_fix_q <= redist12_lOAdded_uid246_div_uid46_block_rsrvd_fix_q_2_q & padACst_uid168_block_rsrvd_fix_q;

    -- yAddr_uid239_div_uid46_block_rsrvd_fix(BITSELECT,238)@0
    yAddr_uid239_div_uid46_block_rsrvd_fix_b <= frac_xIn_uid11_block_rsrvd_fix_b(22 downto 14);

    -- memoryC2_uid387_invTables_lutmem(DUALMEM,545)@0 + 2
    -- in j@20000000
    memoryC2_uid387_invTables_lutmem_aa <= yAddr_uid239_div_uid46_block_rsrvd_fix_b;
    memoryC2_uid387_invTables_lutmem_reset0 <= areset;
    memoryC2_uid387_invTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA3ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid387_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid387_invTables_lutmem_aa,
        q_a => memoryC2_uid387_invTables_lutmem_ir
    );
    memoryC2_uid387_invTables_lutmem_r <= memoryC2_uid387_invTables_lutmem_ir(11 downto 0);

    -- yPE_uid240_div_uid46_block_rsrvd_fix(BITSELECT,239)@0
    yPE_uid240_div_uid46_block_rsrvd_fix_b <= in_1(13 downto 0);

    -- redist13_yPE_uid240_div_uid46_block_rsrvd_fix_b_2(DELAY,580)
    redist13_yPE_uid240_div_uid46_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yPE_uid240_div_uid46_block_rsrvd_fix_b, xout => redist13_yPE_uid240_div_uid46_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- yT1_uid393_invPolyEval(BITSELECT,392)@2
    yT1_uid393_invPolyEval_b <= redist13_yPE_uid240_div_uid46_block_rsrvd_fix_b_2_q(13 downto 2);

    -- prodXY_uid440_pT1_uid394_invPolyEval_cma(CHAINMULTADD,553)@2 + 2
    prodXY_uid440_pT1_uid394_invPolyEval_cma_reset <= areset;
    prodXY_uid440_pT1_uid394_invPolyEval_cma_ena0 <= '1';
    prodXY_uid440_pT1_uid394_invPolyEval_cma_ena1 <= prodXY_uid440_pT1_uid394_invPolyEval_cma_ena0;
    prodXY_uid440_pT1_uid394_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid440_pT1_uid394_invPolyEval_cma_a0(0),13));
    prodXY_uid440_pT1_uid394_invPolyEval_cma_p(0) <= prodXY_uid440_pT1_uid394_invPolyEval_cma_l(0) * prodXY_uid440_pT1_uid394_invPolyEval_cma_c0(0);
    prodXY_uid440_pT1_uid394_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid440_pT1_uid394_invPolyEval_cma_p(0),25);
    prodXY_uid440_pT1_uid394_invPolyEval_cma_w(0) <= prodXY_uid440_pT1_uid394_invPolyEval_cma_u(0);
    prodXY_uid440_pT1_uid394_invPolyEval_cma_x(0) <= prodXY_uid440_pT1_uid394_invPolyEval_cma_w(0);
    prodXY_uid440_pT1_uid394_invPolyEval_cma_y(0) <= prodXY_uid440_pT1_uid394_invPolyEval_cma_x(0);
    prodXY_uid440_pT1_uid394_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid440_pT1_uid394_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid440_pT1_uid394_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid440_pT1_uid394_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid440_pT1_uid394_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid393_invPolyEval_b),12);
                prodXY_uid440_pT1_uid394_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid387_invTables_lutmem_r),12);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid440_pT1_uid394_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid440_pT1_uid394_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid440_pT1_uid394_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid440_pT1_uid394_invPolyEval_cma_s(0) <= prodXY_uid440_pT1_uid394_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid440_pT1_uid394_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 24, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid440_pT1_uid394_invPolyEval_cma_s(0)(23 downto 0)), xout => prodXY_uid440_pT1_uid394_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid440_pT1_uid394_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid440_pT1_uid394_invPolyEval_cma_qq(23 downto 0));

    -- osig_uid441_pT1_uid394_invPolyEval(BITSELECT,440)@4
    osig_uid441_pT1_uid394_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid440_pT1_uid394_invPolyEval_cma_q(23 downto 11));

    -- highBBits_uid396_invPolyEval(BITSELECT,395)@4
    highBBits_uid396_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid441_pT1_uid394_invPolyEval_b(12 downto 1));

    -- memoryC1_uid384_invTables_q_const(CONSTANT,451)
    memoryC1_uid384_invTables_q_const_q <= "1";

    -- redist15_yAddr_uid239_div_uid46_block_rsrvd_fix_b_2(DELAY,582)
    redist15_yAddr_uid239_div_uid46_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid239_div_uid46_block_rsrvd_fix_b, xout => redist15_yAddr_uid239_div_uid46_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid383_invTables_lutmem(DUALMEM,544)@2 + 2
    -- in j@20000000
    memoryC1_uid383_invTables_lutmem_aa <= redist15_yAddr_uid239_div_uid46_block_rsrvd_fix_b_2_q;
    memoryC1_uid383_invTables_lutmem_reset0 <= areset;
    memoryC1_uid383_invTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA2ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid383_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid383_invTables_lutmem_aa,
        q_a => memoryC1_uid383_invTables_lutmem_ir
    );
    memoryC1_uid383_invTables_lutmem_r <= memoryC1_uid383_invTables_lutmem_ir(19 downto 0);

    -- os_uid385_invTables(BITJOIN,384)@4
    os_uid385_invTables_q <= memoryC1_uid384_invTables_q_const_q & memoryC1_uid383_invTables_lutmem_r;

    -- s1sumAHighB_uid397_invPolyEval(ADD,396)@4
    s1sumAHighB_uid397_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => os_uid385_invTables_q(20)) & os_uid385_invTables_q));
    s1sumAHighB_uid397_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 12 => highBBits_uid396_invPolyEval_b(11)) & highBBits_uid396_invPolyEval_b));
    s1sumAHighB_uid397_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid397_invPolyEval_a) + SIGNED(s1sumAHighB_uid397_invPolyEval_b));
    s1sumAHighB_uid397_invPolyEval_q <= s1sumAHighB_uid397_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid395_invPolyEval(BITSELECT,394)@4
    lowRangeB_uid395_invPolyEval_in <= osig_uid441_pT1_uid394_invPolyEval_b(0 downto 0);
    lowRangeB_uid395_invPolyEval_b <= lowRangeB_uid395_invPolyEval_in(0 downto 0);

    -- s1_uid398_invPolyEval(BITJOIN,397)@4
    s1_uid398_invPolyEval_q <= s1sumAHighB_uid397_invPolyEval_q & lowRangeB_uid395_invPolyEval_b;

    -- redist14_yPE_uid240_div_uid46_block_rsrvd_fix_b_4(DELAY,581)
    redist14_yPE_uid240_div_uid46_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist13_yPE_uid240_div_uid46_block_rsrvd_fix_b_2_q, xout => redist14_yPE_uid240_div_uid46_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- prodXY_uid443_pT2_uid400_invPolyEval_cma(CHAINMULTADD,554)@4 + 2
    prodXY_uid443_pT2_uid400_invPolyEval_cma_reset <= areset;
    prodXY_uid443_pT2_uid400_invPolyEval_cma_ena0 <= '1';
    prodXY_uid443_pT2_uid400_invPolyEval_cma_ena1 <= prodXY_uid443_pT2_uid400_invPolyEval_cma_ena0;
    prodXY_uid443_pT2_uid400_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid443_pT2_uid400_invPolyEval_cma_a0(0),15));
    prodXY_uid443_pT2_uid400_invPolyEval_cma_p(0) <= prodXY_uid443_pT2_uid400_invPolyEval_cma_l(0) * prodXY_uid443_pT2_uid400_invPolyEval_cma_c0(0);
    prodXY_uid443_pT2_uid400_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid443_pT2_uid400_invPolyEval_cma_p(0),38);
    prodXY_uid443_pT2_uid400_invPolyEval_cma_w(0) <= prodXY_uid443_pT2_uid400_invPolyEval_cma_u(0);
    prodXY_uid443_pT2_uid400_invPolyEval_cma_x(0) <= prodXY_uid443_pT2_uid400_invPolyEval_cma_w(0);
    prodXY_uid443_pT2_uid400_invPolyEval_cma_y(0) <= prodXY_uid443_pT2_uid400_invPolyEval_cma_x(0);
    prodXY_uid443_pT2_uid400_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid443_pT2_uid400_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid443_pT2_uid400_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid443_pT2_uid400_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid443_pT2_uid400_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist14_yPE_uid240_div_uid46_block_rsrvd_fix_b_4_q),14);
                prodXY_uid443_pT2_uid400_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid398_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid443_pT2_uid400_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid443_pT2_uid400_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid443_pT2_uid400_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid443_pT2_uid400_invPolyEval_cma_s(0) <= prodXY_uid443_pT2_uid400_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid443_pT2_uid400_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid443_pT2_uid400_invPolyEval_cma_s(0)(36 downto 0)), xout => prodXY_uid443_pT2_uid400_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid443_pT2_uid400_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid443_pT2_uid400_invPolyEval_cma_qq(36 downto 0));

    -- osig_uid444_pT2_uid400_invPolyEval(BITSELECT,443)@6
    osig_uid444_pT2_uid400_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid443_pT2_uid400_invPolyEval_cma_q(36 downto 13));

    -- highBBits_uid402_invPolyEval(BITSELECT,401)@6
    highBBits_uid402_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid444_pT2_uid400_invPolyEval_b(23 downto 2));

    -- redist16_yAddr_uid239_div_uid46_block_rsrvd_fix_b_4(DELAY,583)
    redist16_yAddr_uid239_div_uid46_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist15_yAddr_uid239_div_uid46_block_rsrvd_fix_b_2_q, xout => redist16_yAddr_uid239_div_uid46_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid380_invTables_lutmem(DUALMEM,543)@4 + 2
    -- in j@20000000
    memoryC0_uid380_invTables_lutmem_aa <= redist16_yAddr_uid239_div_uid46_block_rsrvd_fix_b_4_q;
    memoryC0_uid380_invTables_lutmem_reset0 <= areset;
    memoryC0_uid380_invTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 11,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA1ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid380_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid380_invTables_lutmem_aa,
        q_a => memoryC0_uid380_invTables_lutmem_ir
    );
    memoryC0_uid380_invTables_lutmem_r <= memoryC0_uid380_invTables_lutmem_ir(10 downto 0);

    -- memoryC0_uid379_invTables_lutmem(DUALMEM,542)@4 + 2
    -- in j@20000000
    memoryC0_uid379_invTables_lutmem_aa <= redist16_yAddr_uid239_div_uid46_block_rsrvd_fix_b_4_q;
    memoryC0_uid379_invTables_lutmem_reset0 <= areset;
    memoryC0_uid379_invTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0ZinvTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid379_invTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid379_invTables_lutmem_aa,
        q_a => memoryC0_uid379_invTables_lutmem_ir
    );
    memoryC0_uid379_invTables_lutmem_r <= memoryC0_uid379_invTables_lutmem_ir(19 downto 0);

    -- os_uid381_invTables(BITJOIN,380)@6
    os_uid381_invTables_q <= memoryC0_uid380_invTables_lutmem_r & memoryC0_uid379_invTables_lutmem_r;

    -- s2sumAHighB_uid403_invPolyEval(ADD,402)@6
    s2sumAHighB_uid403_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => os_uid381_invTables_q(30)) & os_uid381_invTables_q));
    s2sumAHighB_uid403_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 22 => highBBits_uid402_invPolyEval_b(21)) & highBBits_uid402_invPolyEval_b));
    s2sumAHighB_uid403_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid403_invPolyEval_a) + SIGNED(s2sumAHighB_uid403_invPolyEval_b));
    s2sumAHighB_uid403_invPolyEval_q <= s2sumAHighB_uid403_invPolyEval_o(31 downto 0);

    -- lowRangeB_uid401_invPolyEval(BITSELECT,400)@6
    lowRangeB_uid401_invPolyEval_in <= osig_uid444_pT2_uid400_invPolyEval_b(1 downto 0);
    lowRangeB_uid401_invPolyEval_b <= lowRangeB_uid401_invPolyEval_in(1 downto 0);

    -- s2_uid404_invPolyEval(BITJOIN,403)@6
    s2_uid404_invPolyEval_q <= s2sumAHighB_uid403_invPolyEval_q & lowRangeB_uid401_invPolyEval_b;

    -- invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select(BITSELECT,566)@6
    invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_in <= s2_uid404_invPolyEval_q(31 downto 0);
    invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_b <= invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_in(30 downto 5);
    invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_c <= invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_in(31 downto 31);

    -- prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma(CHAINMULTADD,550)@6 + 2
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_reset <= areset;
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ena0 <= '1';
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ena1 <= prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ena0;
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_p(0) <= prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_a0(0) * prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_c0(0);
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_u(0) <= RESIZE(prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_p(0),50);
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_w(0) <= prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_u(0);
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_x(0) <= prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_w(0);
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_y(0) <= prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_x(0);
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_a0 <= (others => (others => '0'));
            prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ena0 = '1') THEN
                prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_a0(0) <= RESIZE(UNSIGNED(invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_b),26);
                prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(lOAdded_uid246_div_uid46_block_rsrvd_fix_q),24);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_ena1 = '1') THEN
                prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_s(0) <= prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_delay : dspba_delay
    GENERIC MAP ( width => 50, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_s(0)(49 downto 0)), xout => prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_qq, clk => clk, aclr => areset );
    prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_q <= STD_LOGIC_VECTOR(prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_qq(49 downto 0));

    -- osig_uid407_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix(BITSELECT,406)@8
    osig_uid407_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_b <= prodXY_uid406_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_cma_q(49 downto 24);

    -- redist0_invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_c_1(DELAY,567)
    redist0_invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_c, xout => redist0_invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_c_1_q, clk => clk, aclr => areset );

    -- updatedY_uid204_div_uid46_block_rsrvd_fix(BITJOIN,203)@7
    updatedY_uid204_div_uid46_block_rsrvd_fix_q <= GND_q & cstZeroWF_uid8_block_rsrvd_fix_q;

    -- fracYZero_uid203_div_uid46_block_rsrvd_fix(LOGICAL,204)@7
    fracYZero_uid203_div_uid46_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist48_frac_xIn_uid11_block_rsrvd_fix_b_7_q);
    fracYZero_uid203_div_uid46_block_rsrvd_fix_q <= "1" WHEN fracYZero_uid203_div_uid46_block_rsrvd_fix_a = updatedY_uid204_div_uid46_block_rsrvd_fix_q ELSE "0";

    -- fracYPostZ_uid244_div_uid46_block_rsrvd_fix(LOGICAL,243)@7 + 1
    fracYPostZ_uid244_div_uid46_block_rsrvd_fix_qi <= fracYZero_uid203_div_uid46_block_rsrvd_fix_q or redist0_invY_uid242_div_uid46_block_rsrvd_fix_merged_bit_select_c_1_q;
    fracYPostZ_uid244_div_uid46_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracYPostZ_uid244_div_uid46_block_rsrvd_fix_qi, xout => fracYPostZ_uid244_div_uid46_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix(MUX,253)@8
    divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_s <= fracYPostZ_uid244_div_uid46_block_rsrvd_fix_q;
    divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_combproc: PROCESS (divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_s, osig_uid407_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_b, oFracXSE_mergedSignalTM_uid251_div_uid46_block_rsrvd_fix_q)
    BEGIN
        CASE (divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_s) IS
            WHEN "0" => divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_q <= osig_uid407_prodDivPreNormProd_uid248_div_uid46_block_rsrvd_fix_b;
            WHEN "1" => divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_q <= oFracXSE_mergedSignalTM_uid251_div_uid46_block_rsrvd_fix_q;
            WHEN OTHERS => divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- norm_uid255_div_uid46_block_rsrvd_fix(BITSELECT,254)@8
    norm_uid255_div_uid46_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_q(25 downto 25));

    -- rndOp_uid263_div_uid46_block_rsrvd_fix(BITJOIN,262)@8
    rndOp_uid263_div_uid46_block_rsrvd_fix_q <= norm_uid255_div_uid46_block_rsrvd_fix_b & cstZeroWF_uid8_block_rsrvd_fix_q & VCC_q;

    -- cstBiasM1_uid55_block_rsrvd_fix(CONSTANT,54)
    cstBiasM1_uid55_block_rsrvd_fix_q <= "01111110";

    -- expXmY_uid235_div_uid46_block_rsrvd_fix(SUB,234)@6 + 1
    expXmY_uid235_div_uid46_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & exp_yIn_uid24_block_rsrvd_fix_b);
    expXmY_uid235_div_uid46_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_q);
    expXmY_uid235_div_uid46_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expXmY_uid235_div_uid46_block_rsrvd_fix_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            expXmY_uid235_div_uid46_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expXmY_uid235_div_uid46_block_rsrvd_fix_a) - UNSIGNED(expXmY_uid235_div_uid46_block_rsrvd_fix_b));
        END IF;
    END PROCESS;
    expXmY_uid235_div_uid46_block_rsrvd_fix_q <= expXmY_uid235_div_uid46_block_rsrvd_fix_o(8 downto 0);

    -- redist17_expXmY_uid235_div_uid46_block_rsrvd_fix_q_2(DELAY,584)
    redist17_expXmY_uid235_div_uid46_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXmY_uid235_div_uid46_block_rsrvd_fix_q, xout => redist17_expXmY_uid235_div_uid46_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- expR_uid236_div_uid46_block_rsrvd_fix(ADD,235)@8
    expR_uid236_div_uid46_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => redist17_expXmY_uid235_div_uid46_block_rsrvd_fix_q_2_q(8)) & redist17_expXmY_uid235_div_uid46_block_rsrvd_fix_q_2_q));
    expR_uid236_div_uid46_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & cstBiasM1_uid55_block_rsrvd_fix_q));
    expR_uid236_div_uid46_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expR_uid236_div_uid46_block_rsrvd_fix_a) + SIGNED(expR_uid236_div_uid46_block_rsrvd_fix_b));
    expR_uid236_div_uid46_block_rsrvd_fix_q <= expR_uid236_div_uid46_block_rsrvd_fix_o(9 downto 0);

    -- divValPreNormHigh_uid256_div_uid46_block_rsrvd_fix(BITSELECT,255)@8
    divValPreNormHigh_uid256_div_uid46_block_rsrvd_fix_in <= divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_q(24 downto 0);
    divValPreNormHigh_uid256_div_uid46_block_rsrvd_fix_b <= divValPreNormHigh_uid256_div_uid46_block_rsrvd_fix_in(24 downto 1);

    -- divValPreNormLow_uid257_div_uid46_block_rsrvd_fix(BITSELECT,256)@8
    divValPreNormLow_uid257_div_uid46_block_rsrvd_fix_in <= divValPreNormTrunc_uid254_div_uid46_block_rsrvd_fix_q(23 downto 0);
    divValPreNormLow_uid257_div_uid46_block_rsrvd_fix_b <= divValPreNormLow_uid257_div_uid46_block_rsrvd_fix_in(23 downto 0);

    -- normFracRnd_uid258_div_uid46_block_rsrvd_fix(MUX,257)@8
    normFracRnd_uid258_div_uid46_block_rsrvd_fix_s <= norm_uid255_div_uid46_block_rsrvd_fix_b;
    normFracRnd_uid258_div_uid46_block_rsrvd_fix_combproc: PROCESS (normFracRnd_uid258_div_uid46_block_rsrvd_fix_s, divValPreNormLow_uid257_div_uid46_block_rsrvd_fix_b, divValPreNormHigh_uid256_div_uid46_block_rsrvd_fix_b)
    BEGIN
        CASE (normFracRnd_uid258_div_uid46_block_rsrvd_fix_s) IS
            WHEN "0" => normFracRnd_uid258_div_uid46_block_rsrvd_fix_q <= divValPreNormLow_uid257_div_uid46_block_rsrvd_fix_b;
            WHEN "1" => normFracRnd_uid258_div_uid46_block_rsrvd_fix_q <= divValPreNormHigh_uid256_div_uid46_block_rsrvd_fix_b;
            WHEN OTHERS => normFracRnd_uid258_div_uid46_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expFracRnd_uid259_div_uid46_block_rsrvd_fix(BITJOIN,258)@8
    expFracRnd_uid259_div_uid46_block_rsrvd_fix_q <= expR_uid236_div_uid46_block_rsrvd_fix_q & normFracRnd_uid258_div_uid46_block_rsrvd_fix_q;

    -- expFracPostRnd_uid264_div_uid46_block_rsrvd_fix(ADD,263)@8
    expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 34 => expFracRnd_uid259_div_uid46_block_rsrvd_fix_q(33)) & expFracRnd_uid259_div_uid46_block_rsrvd_fix_q));
    expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & rndOp_uid263_div_uid46_block_rsrvd_fix_q));
    expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_a) + SIGNED(expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_b));
    expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_q <= expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_o(34 downto 0);

    -- excRPreExc_uid267_div_uid46_block_rsrvd_fix(BITSELECT,266)@8
    excRPreExc_uid267_div_uid46_block_rsrvd_fix_in <= expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_q(31 downto 0);
    excRPreExc_uid267_div_uid46_block_rsrvd_fix_b <= excRPreExc_uid267_div_uid46_block_rsrvd_fix_in(31 downto 24);

    -- invExpXIsMax_uid231_div_uid46_block_rsrvd_fix(LOGICAL,230)@8
    invExpXIsMax_uid231_div_uid46_block_rsrvd_fix_q <= not (redist46_expXIsMax_uid13_block_rsrvd_fix_q_2_q);

    -- InvExpXIsZero_uid232_div_uid46_block_rsrvd_fix(LOGICAL,231)@8
    InvExpXIsZero_uid232_div_uid46_block_rsrvd_fix_q <= not (redist18_excZ_y_uid225_div_uid46_block_rsrvd_fix_q_2_q);

    -- excR_y_uid233_div_uid46_block_rsrvd_fix(LOGICAL,232)@8
    excR_y_uid233_div_uid46_block_rsrvd_fix_q <= InvExpXIsZero_uid232_div_uid46_block_rsrvd_fix_q and invExpXIsMax_uid231_div_uid46_block_rsrvd_fix_q;

    -- excXIYR_uid281_div_uid46_block_rsrvd_fix(LOGICAL,280)@8
    excXIYR_uid281_div_uid46_block_rsrvd_fix_q <= excI_yIn_uid30_block_rsrvd_fix_q and excR_y_uid233_div_uid46_block_rsrvd_fix_q;

    -- excXIYZ_uid280_div_uid46_block_rsrvd_fix(LOGICAL,279)@8
    excXIYZ_uid280_div_uid46_block_rsrvd_fix_q <= excI_yIn_uid30_block_rsrvd_fix_q and redist18_excZ_y_uid225_div_uid46_block_rsrvd_fix_q_2_q;

    -- expRExt_uid268_div_uid46_block_rsrvd_fix(BITSELECT,267)@8
    expRExt_uid268_div_uid46_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_q(34 downto 24));

    -- expOvf_uid272_div_uid46_block_rsrvd_fix(COMPARE,271)@8
    expOvf_uid272_div_uid46_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => expRExt_uid268_div_uid46_block_rsrvd_fix_b(10)) & expRExt_uid268_div_uid46_block_rsrvd_fix_b));
    expOvf_uid272_div_uid46_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000" & cstAllOWE_uid7_block_rsrvd_fix_q));
    expOvf_uid272_div_uid46_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expOvf_uid272_div_uid46_block_rsrvd_fix_a) - SIGNED(expOvf_uid272_div_uid46_block_rsrvd_fix_b));
    expOvf_uid272_div_uid46_block_rsrvd_fix_n(0) <= not (expOvf_uid272_div_uid46_block_rsrvd_fix_o(12));

    -- invExpXIsMax_uid217_div_uid46_block_rsrvd_fix(LOGICAL,216)@8
    invExpXIsMax_uid217_div_uid46_block_rsrvd_fix_q <= not (redist45_expXIsMax_uid27_block_rsrvd_fix_q_2_q);

    -- InvExpXIsZero_uid218_div_uid46_block_rsrvd_fix(LOGICAL,217)@8
    InvExpXIsZero_uid218_div_uid46_block_rsrvd_fix_q <= not (redist19_excZ_x_uid211_div_uid46_block_rsrvd_fix_q_2_q);

    -- excR_x_uid219_div_uid46_block_rsrvd_fix(LOGICAL,218)@8
    excR_x_uid219_div_uid46_block_rsrvd_fix_q <= InvExpXIsZero_uid218_div_uid46_block_rsrvd_fix_q and invExpXIsMax_uid217_div_uid46_block_rsrvd_fix_q;

    -- excXRYROvf_uid279_div_uid46_block_rsrvd_fix(LOGICAL,278)@8
    excXRYROvf_uid279_div_uid46_block_rsrvd_fix_q <= excR_x_uid219_div_uid46_block_rsrvd_fix_q and excR_y_uid233_div_uid46_block_rsrvd_fix_q and expOvf_uid272_div_uid46_block_rsrvd_fix_n;

    -- excXRYZ_uid278_div_uid46_block_rsrvd_fix(LOGICAL,277)@8
    excXRYZ_uid278_div_uid46_block_rsrvd_fix_q <= excR_x_uid219_div_uid46_block_rsrvd_fix_q and redist18_excZ_y_uid225_div_uid46_block_rsrvd_fix_q_2_q;

    -- excRInf_uid282_div_uid46_block_rsrvd_fix(LOGICAL,281)@8
    excRInf_uid282_div_uid46_block_rsrvd_fix_q <= excXRYZ_uid278_div_uid46_block_rsrvd_fix_q or excXRYROvf_uid279_div_uid46_block_rsrvd_fix_q or excXIYZ_uid280_div_uid46_block_rsrvd_fix_q or excXIYR_uid281_div_uid46_block_rsrvd_fix_q;

    -- xRegOrZero_uid275_div_uid46_block_rsrvd_fix(LOGICAL,274)@8
    xRegOrZero_uid275_div_uid46_block_rsrvd_fix_q <= excR_x_uid219_div_uid46_block_rsrvd_fix_q or redist19_excZ_x_uid211_div_uid46_block_rsrvd_fix_q_2_q;

    -- regOrZeroOverInf_uid276_div_uid46_block_rsrvd_fix(LOGICAL,275)@8
    regOrZeroOverInf_uid276_div_uid46_block_rsrvd_fix_q <= xRegOrZero_uid275_div_uid46_block_rsrvd_fix_q and excI_xIn_uid16_block_rsrvd_fix_q;

    -- expUdf_uid269_div_uid46_block_rsrvd_fix(COMPARE,268)@8
    expUdf_uid269_div_uid46_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000000" & GND_q));
    expUdf_uid269_div_uid46_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => expRExt_uid268_div_uid46_block_rsrvd_fix_b(10)) & expRExt_uid268_div_uid46_block_rsrvd_fix_b));
    expUdf_uid269_div_uid46_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expUdf_uid269_div_uid46_block_rsrvd_fix_a) - SIGNED(expUdf_uid269_div_uid46_block_rsrvd_fix_b));
    expUdf_uid269_div_uid46_block_rsrvd_fix_n(0) <= not (expUdf_uid269_div_uid46_block_rsrvd_fix_o(12));

    -- regOverRegWithUf_uid274_div_uid46_block_rsrvd_fix(LOGICAL,273)@8
    regOverRegWithUf_uid274_div_uid46_block_rsrvd_fix_q <= expUdf_uid269_div_uid46_block_rsrvd_fix_n and excR_x_uid219_div_uid46_block_rsrvd_fix_q and excR_y_uid233_div_uid46_block_rsrvd_fix_q;

    -- zeroOverReg_uid273_div_uid46_block_rsrvd_fix(LOGICAL,272)@8
    zeroOverReg_uid273_div_uid46_block_rsrvd_fix_q <= redist19_excZ_x_uid211_div_uid46_block_rsrvd_fix_q_2_q and excR_y_uid233_div_uid46_block_rsrvd_fix_q;

    -- excRZero_uid277_div_uid46_block_rsrvd_fix(LOGICAL,276)@8
    excRZero_uid277_div_uid46_block_rsrvd_fix_q <= zeroOverReg_uid273_div_uid46_block_rsrvd_fix_q or regOverRegWithUf_uid274_div_uid46_block_rsrvd_fix_q or regOrZeroOverInf_uid276_div_uid46_block_rsrvd_fix_q;

    -- concExc_uid286_div_uid46_block_rsrvd_fix(BITJOIN,285)@8
    concExc_uid286_div_uid46_block_rsrvd_fix_q <= excRNaN_uid285_div_uid46_block_rsrvd_fix_q & excRInf_uid282_div_uid46_block_rsrvd_fix_q & excRZero_uid277_div_uid46_block_rsrvd_fix_q;

    -- excREnc_uid287_div_uid46_block_rsrvd_fix(LOOKUP,286)@8
    excREnc_uid287_div_uid46_block_rsrvd_fix_combproc: PROCESS (concExc_uid286_div_uid46_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (concExc_uid286_div_uid46_block_rsrvd_fix_q) IS
            WHEN "000" => excREnc_uid287_div_uid46_block_rsrvd_fix_q <= "01";
            WHEN "001" => excREnc_uid287_div_uid46_block_rsrvd_fix_q <= "00";
            WHEN "010" => excREnc_uid287_div_uid46_block_rsrvd_fix_q <= "10";
            WHEN "011" => excREnc_uid287_div_uid46_block_rsrvd_fix_q <= "00";
            WHEN "100" => excREnc_uid287_div_uid46_block_rsrvd_fix_q <= "11";
            WHEN "101" => excREnc_uid287_div_uid46_block_rsrvd_fix_q <= "00";
            WHEN "110" => excREnc_uid287_div_uid46_block_rsrvd_fix_q <= "00";
            WHEN "111" => excREnc_uid287_div_uid46_block_rsrvd_fix_q <= "00";
            WHEN OTHERS => -- unreachable
                           excREnc_uid287_div_uid46_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid295_div_uid46_block_rsrvd_fix(MUX,294)@8
    expRPostExc_uid295_div_uid46_block_rsrvd_fix_s <= excREnc_uid287_div_uid46_block_rsrvd_fix_q;
    expRPostExc_uid295_div_uid46_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid295_div_uid46_block_rsrvd_fix_s, cstAllZWE_uid53_block_rsrvd_fix_q, excRPreExc_uid267_div_uid46_block_rsrvd_fix_b, cstAllOWE_uid7_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid295_div_uid46_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid295_div_uid46_block_rsrvd_fix_q <= cstAllZWE_uid53_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid295_div_uid46_block_rsrvd_fix_q <= excRPreExc_uid267_div_uid46_block_rsrvd_fix_b;
            WHEN "10" => expRPostExc_uid295_div_uid46_block_rsrvd_fix_q <= cstAllOWE_uid7_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid295_div_uid46_block_rsrvd_fix_q <= cstAllOWE_uid7_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid295_div_uid46_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstNaNWF_uid52_block_rsrvd_fix(CONSTANT,51)
    cstNaNWF_uid52_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRPreExc_uid266_div_uid46_block_rsrvd_fix(BITSELECT,265)@8
    fracRPreExc_uid266_div_uid46_block_rsrvd_fix_in <= expFracPostRnd_uid264_div_uid46_block_rsrvd_fix_q(23 downto 0);
    fracRPreExc_uid266_div_uid46_block_rsrvd_fix_b <= fracRPreExc_uid266_div_uid46_block_rsrvd_fix_in(23 downto 1);

    -- fracRPostExc_uid291_div_uid46_block_rsrvd_fix(MUX,290)@8
    fracRPostExc_uid291_div_uid46_block_rsrvd_fix_s <= excREnc_uid287_div_uid46_block_rsrvd_fix_q;
    fracRPostExc_uid291_div_uid46_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid291_div_uid46_block_rsrvd_fix_s, cstZeroWF_uid8_block_rsrvd_fix_q, fracRPreExc_uid266_div_uid46_block_rsrvd_fix_b, cstNaNWF_uid52_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid291_div_uid46_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid291_div_uid46_block_rsrvd_fix_q <= cstZeroWF_uid8_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid291_div_uid46_block_rsrvd_fix_q <= fracRPreExc_uid266_div_uid46_block_rsrvd_fix_b;
            WHEN "10" => fracRPostExc_uid291_div_uid46_block_rsrvd_fix_q <= cstZeroWF_uid8_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid291_div_uid46_block_rsrvd_fix_q <= cstNaNWF_uid52_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid291_div_uid46_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- divR_uid298_div_uid46_block_rsrvd_fix(BITJOIN,297)@8
    divR_uid298_div_uid46_block_rsrvd_fix_q <= sRPostExc_uid297_div_uid46_block_rsrvd_fix_q & expRPostExc_uid295_div_uid46_block_rsrvd_fix_q & fracRPostExc_uid291_div_uid46_block_rsrvd_fix_q;

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_inputreg(DELAY,628)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => divR_uid298_div_uid46_block_rsrvd_fix_q, xout => redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_inputreg_q, clk => clk, aclr => areset );

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_wraddr(REG,631)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_wraddr_q <= "11";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_wraddr_q <= STD_LOGIC_VECTOR(redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem(DUALMEM,629)
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_ia <= STD_LOGIC_VECTOR(redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_inputreg_q);
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_aa <= redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_wraddr_q;
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_ab <= redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_rdcnt_q;
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_reset0 <= areset;
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 32,
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
        clocken1 => redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_reset0,
        clock1 => clk,
        address_a => redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_aa,
        data_a => redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_ab,
        q_b => redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_iq
    );
    redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_q <= redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_iq(31 downto 0);

    -- singX_uid49_block_rsrvd_fix(BITSELECT,48)@14
    singX_uid49_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_q(31 downto 31));

    -- redist31_singX_uid49_block_rsrvd_fix_b_9(DELAY,598)
    redist31_singX_uid49_block_rsrvd_fix_b_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => singX_uid49_block_rsrvd_fix_b, xout => redist31_singX_uid49_block_rsrvd_fix_b_9_q, clk => clk, aclr => areset );

    -- piO2_uid80_block_rsrvd_fix(CONSTANT,79)
    piO2_uid80_block_rsrvd_fix_q <= "11001001000011111101101011";

    -- cstPiO2_uid82_block_rsrvd_fix(BITSELECT,81)@23
    cstPiO2_uid82_block_rsrvd_fix_in <= piO2_uid80_block_rsrvd_fix_q(24 downto 0);
    cstPiO2_uid82_block_rsrvd_fix_b <= cstPiO2_uid82_block_rsrvd_fix_in(24 downto 2);

    -- fpPiO2C_uid83_block_rsrvd_fix(BITJOIN,82)@23
    fpPiO2C_uid83_block_rsrvd_fix_q <= redist31_singX_uid49_block_rsrvd_fix_b_9_q & cstBias_uid54_block_rsrvd_fix_q & cstPiO2_uid82_block_rsrvd_fix_b;

    -- piO4_uid81_block_rsrvd_fix(CONSTANT,80)
    piO4_uid81_block_rsrvd_fix_q <= "110010010000111111011011";

    -- cstPiO4_uid85_block_rsrvd_fix(BITSELECT,84)@23
    cstPiO4_uid85_block_rsrvd_fix_in <= piO4_uid81_block_rsrvd_fix_q(22 downto 0);
    cstPiO4_uid85_block_rsrvd_fix_b <= cstPiO4_uid85_block_rsrvd_fix_in(22 downto 0);

    -- fpPiO4C_uid86_block_rsrvd_fix(BITJOIN,85)@23
    fpPiO4C_uid86_block_rsrvd_fix_q <= redist31_singX_uid49_block_rsrvd_fix_b_9_q & cstBiasM1_uid55_block_rsrvd_fix_q & cstPiO4_uid85_block_rsrvd_fix_b;

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_notEnable(LOGICAL,656)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_nor(LOGICAL,657)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_nor_q <= not (redist33_fracX_uid48_block_rsrvd_fix_b_6_notEnable_q or redist33_fracX_uid48_block_rsrvd_fix_b_6_sticky_ena_q);

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_last(CONSTANT,653)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_last_q <= "01";

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_cmp(LOGICAL,654)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_cmp_q <= "1" WHEN redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_last_q = redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_q ELSE "0";

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_cmpReg(REG,655)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist33_fracX_uid48_block_rsrvd_fix_b_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist33_fracX_uid48_block_rsrvd_fix_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist33_fracX_uid48_block_rsrvd_fix_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_sticky_ena(REG,658)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist33_fracX_uid48_block_rsrvd_fix_b_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist33_fracX_uid48_block_rsrvd_fix_b_6_nor_q = "1") THEN
                redist33_fracX_uid48_block_rsrvd_fix_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist33_fracX_uid48_block_rsrvd_fix_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_enaAnd(LOGICAL,659)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_enaAnd_q <= redist33_fracX_uid48_block_rsrvd_fix_b_6_sticky_ena_q and VCC_q;

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt(COUNTER,651)
    -- low=0, high=2, step=1, init=0
    redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_eq <= '1';
            ELSE
                redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_eq = '1') THEN
                redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i <= redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i + 2;
            ELSE
                redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i <= redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_i, 2)));

    -- fracX_uid48_block_rsrvd_fix(BITSELECT,47)@8
    fracX_uid48_block_rsrvd_fix_b <= divR_uid298_div_uid46_block_rsrvd_fix_q(22 downto 0);

    -- redist32_fracX_uid48_block_rsrvd_fix_b_1(DELAY,599)
    redist32_fracX_uid48_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracX_uid48_block_rsrvd_fix_b, xout => redist32_fracX_uid48_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_inputreg(DELAY,649)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_inputreg : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist32_fracX_uid48_block_rsrvd_fix_b_1_q, xout => redist33_fracX_uid48_block_rsrvd_fix_b_6_inputreg_q, clk => clk, aclr => areset );

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_wraddr(REG,652)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist33_fracX_uid48_block_rsrvd_fix_b_6_wraddr_q <= "10";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist33_fracX_uid48_block_rsrvd_fix_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist33_fracX_uid48_block_rsrvd_fix_b_6_mem(DUALMEM,650)
    redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_ia <= STD_LOGIC_VECTOR(redist33_fracX_uid48_block_rsrvd_fix_b_6_inputreg_q);
    redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_aa <= redist33_fracX_uid48_block_rsrvd_fix_b_6_wraddr_q;
    redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_ab <= redist33_fracX_uid48_block_rsrvd_fix_b_6_rdcnt_q;
    redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_reset0 <= areset;
    redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_dmem : altera_syncram
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
        clocken1 => redist33_fracX_uid48_block_rsrvd_fix_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_reset0,
        clock1 => clk,
        address_a => redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_aa,
        data_a => redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_ab,
        q_b => redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_iq
    );
    redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_q <= redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_iq(22 downto 0);

    -- fracXIsZero_uid68_block_rsrvd_fix(LOGICAL,67)@14
    fracXIsZero_uid68_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid8_block_rsrvd_fix_q = redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_q ELSE "0";

    -- expX_uid47_block_rsrvd_fix(BITSELECT,46)@14
    expX_uid47_block_rsrvd_fix_b <= redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_q(30 downto 23);

    -- expXIsMax_uid67_block_rsrvd_fix(LOGICAL,66)@14
    expXIsMax_uid67_block_rsrvd_fix_q <= "1" WHEN expX_uid47_block_rsrvd_fix_b = cstAllOWE_uid7_block_rsrvd_fix_q ELSE "0";

    -- excI_div_uid70_block_rsrvd_fix(LOGICAL,69)@14
    excI_div_uid70_block_rsrvd_fix_q <= expXIsMax_uid67_block_rsrvd_fix_q and fracXIsZero_uid68_block_rsrvd_fix_q;

    -- redist30_excI_div_uid70_block_rsrvd_fix_q_9(DELAY,597)
    redist30_excI_div_uid70_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => excI_div_uid70_block_rsrvd_fix_q, xout => redist30_excI_div_uid70_block_rsrvd_fix_q_9_q, clk => clk, aclr => areset );

    -- constOut_uid88_block_rsrvd_fix(MUX,87)@23
    constOut_uid88_block_rsrvd_fix_s <= redist30_excI_div_uid70_block_rsrvd_fix_q_9_q;
    constOut_uid88_block_rsrvd_fix_combproc: PROCESS (constOut_uid88_block_rsrvd_fix_s, fpPiO4C_uid86_block_rsrvd_fix_q, fpPiO2C_uid83_block_rsrvd_fix_q)
    BEGIN
        CASE (constOut_uid88_block_rsrvd_fix_s) IS
            WHEN "0" => constOut_uid88_block_rsrvd_fix_q <= fpPiO4C_uid86_block_rsrvd_fix_q;
            WHEN "1" => constOut_uid88_block_rsrvd_fix_q <= fpPiO2C_uid83_block_rsrvd_fix_q;
            WHEN OTHERS => constOut_uid88_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracOutCst_uid152_block_rsrvd_fix_merged_bit_select(BITSELECT,557)@23
    fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_in <= constOut_uid88_block_rsrvd_fix_q(30 downto 0);
    fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_b <= fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_in(22 downto 0);
    fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_c <= fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_in(30 downto 23);

    -- leftShiftStage1Idx3Rng3_uid473_fxpU_uid108_block_rsrvd_fix(BITSELECT,472)@14
    leftShiftStage1Idx3Rng3_uid473_fxpU_uid108_block_rsrvd_fix_in <= leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q(33 downto 0);
    leftShiftStage1Idx3Rng3_uid473_fxpU_uid108_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng3_uid473_fxpU_uid108_block_rsrvd_fix_in(33 downto 0);

    -- leftShiftStage1Idx3Pad3_uid472_fxpU_uid108_block_rsrvd_fix(CONSTANT,471)
    leftShiftStage1Idx3Pad3_uid472_fxpU_uid108_block_rsrvd_fix_q <= "000";

    -- leftShiftStage1Idx3_uid474_fxpU_uid108_block_rsrvd_fix(BITJOIN,473)@14
    leftShiftStage1Idx3_uid474_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng3_uid473_fxpU_uid108_block_rsrvd_fix_b & leftShiftStage1Idx3Pad3_uid472_fxpU_uid108_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng2_uid470_fxpU_uid108_block_rsrvd_fix(BITSELECT,469)@14
    leftShiftStage1Idx2Rng2_uid470_fxpU_uid108_block_rsrvd_fix_in <= leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q(34 downto 0);
    leftShiftStage1Idx2Rng2_uid470_fxpU_uid108_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng2_uid470_fxpU_uid108_block_rsrvd_fix_in(34 downto 0);

    -- leftShiftStage1Idx2_uid471_fxpU_uid108_block_rsrvd_fix(BITJOIN,470)@14
    leftShiftStage1Idx2_uid471_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng2_uid470_fxpU_uid108_block_rsrvd_fix_b & padACst_uid168_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng1_uid467_fxpU_uid108_block_rsrvd_fix(BITSELECT,466)@14
    leftShiftStage1Idx1Rng1_uid467_fxpU_uid108_block_rsrvd_fix_in <= leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q(35 downto 0);
    leftShiftStage1Idx1Rng1_uid467_fxpU_uid108_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng1_uid467_fxpU_uid108_block_rsrvd_fix_in(35 downto 0);

    -- leftShiftStage1Idx1_uid468_fxpU_uid108_block_rsrvd_fix(BITJOIN,467)@14
    leftShiftStage1Idx1_uid468_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng1_uid467_fxpU_uid108_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage0Idx3Rng12_uid462_fxpU_uid108_block_rsrvd_fix(BITSELECT,461)@14
    leftShiftStage0Idx3Rng12_uid462_fxpU_uid108_block_rsrvd_fix_in <= oFracUExt_uid106_block_rsrvd_fix_q(24 downto 0);
    leftShiftStage0Idx3Rng12_uid462_fxpU_uid108_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng12_uid462_fxpU_uid108_block_rsrvd_fix_in(24 downto 0);

    -- leftShiftStage0Idx3Pad12_uid461_fxpU_uid108_block_rsrvd_fix(CONSTANT,460)
    leftShiftStage0Idx3Pad12_uid461_fxpU_uid108_block_rsrvd_fix_q <= "000000000000";

    -- leftShiftStage0Idx3_uid463_fxpU_uid108_block_rsrvd_fix(BITJOIN,462)@14
    leftShiftStage0Idx3_uid463_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng12_uid462_fxpU_uid108_block_rsrvd_fix_b & leftShiftStage0Idx3Pad12_uid461_fxpU_uid108_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng8_uid459_fxpU_uid108_block_rsrvd_fix(BITSELECT,458)@14
    leftShiftStage0Idx2Rng8_uid459_fxpU_uid108_block_rsrvd_fix_in <= oFracUExt_uid106_block_rsrvd_fix_q(28 downto 0);
    leftShiftStage0Idx2Rng8_uid459_fxpU_uid108_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng8_uid459_fxpU_uid108_block_rsrvd_fix_in(28 downto 0);

    -- leftShiftStage0Idx2_uid460_fxpU_uid108_block_rsrvd_fix(BITJOIN,459)@14
    leftShiftStage0Idx2_uid460_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng8_uid459_fxpU_uid108_block_rsrvd_fix_b & cstAllZWE_uid53_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng4_uid456_fxpU_uid108_block_rsrvd_fix(BITSELECT,455)@14
    leftShiftStage0Idx1Rng4_uid456_fxpU_uid108_block_rsrvd_fix_in <= oFracUExt_uid106_block_rsrvd_fix_q(32 downto 0);
    leftShiftStage0Idx1Rng4_uid456_fxpU_uid108_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng4_uid456_fxpU_uid108_block_rsrvd_fix_in(32 downto 0);

    -- leftShiftStage0Idx1_uid457_fxpU_uid108_block_rsrvd_fix(BITJOIN,456)@14
    leftShiftStage0Idx1_uid457_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng4_uid456_fxpU_uid108_block_rsrvd_fix_b & leftShiftStage0Idx1Pad4_uid455_fxpU_uid108_block_rsrvd_fix_q;

    -- cst01pWShift_uid105_block_rsrvd_fix(CONSTANT,104)
    cst01pWShift_uid105_block_rsrvd_fix_q <= "0000000000000";

    -- fracXIsNotZero_uid318_z_uid92_block_rsrvd_fix(LOGICAL,317)@14
    fracXIsNotZero_uid318_z_uid92_block_rsrvd_fix_q <= not (fracXIsZero_uid68_block_rsrvd_fix_q);

    -- excN_x_uid320_z_uid92_block_rsrvd_fix(LOGICAL,319)@14
    excN_x_uid320_z_uid92_block_rsrvd_fix_q <= expXIsMax_uid67_block_rsrvd_fix_q and fracXIsNotZero_uid318_z_uid92_block_rsrvd_fix_q;

    -- invExcRNaN_uid350_z_uid92_block_rsrvd_fix(LOGICAL,349)@14
    invExcRNaN_uid350_z_uid92_block_rsrvd_fix_q <= not (excN_x_uid320_z_uid92_block_rsrvd_fix_q);

    -- signR_uid351_z_uid92_block_rsrvd_fix(LOGICAL,350)@14
    signR_uid351_z_uid92_block_rsrvd_fix_q <= singX_uid49_block_rsrvd_fix_b and invExcRNaN_uid350_z_uid92_block_rsrvd_fix_q;

    -- cst2Bias_uid308_z_uid92_block_rsrvd_fix(CONSTANT,307)
    cst2Bias_uid308_z_uid92_block_rsrvd_fix_q <= "11111110";

    -- expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix(SUB,335)@14
    expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & cst2Bias_uid308_z_uid92_block_rsrvd_fix_q);
    expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & expX_uid47_block_rsrvd_fix_b);
    expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_a) - UNSIGNED(expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_b));
    expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_q <= expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_o(8 downto 0);

    -- expRCompYIsOne_uid337_z_uid92_block_rsrvd_fix(BITSELECT,336)@14
    expRCompYIsOne_uid337_z_uid92_block_rsrvd_fix_in <= expRCompYIsOneExt_uid336_z_uid92_block_rsrvd_fix_q(7 downto 0);
    expRCompYIsOne_uid337_z_uid92_block_rsrvd_fix_b <= expRCompYIsOne_uid337_z_uid92_block_rsrvd_fix_in(7 downto 0);

    -- cst2BiasM1_uid307_z_uid92_block_rsrvd_fix(CONSTANT,306)
    cst2BiasM1_uid307_z_uid92_block_rsrvd_fix_q <= "11111101";

    -- expRCompExt_uid333_z_uid92_block_rsrvd_fix(SUB,332)@14
    expRCompExt_uid333_z_uid92_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & cst2BiasM1_uid307_z_uid92_block_rsrvd_fix_q);
    expRCompExt_uid333_z_uid92_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & expX_uid47_block_rsrvd_fix_b);
    expRCompExt_uid333_z_uid92_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expRCompExt_uid333_z_uid92_block_rsrvd_fix_a) - UNSIGNED(expRCompExt_uid333_z_uid92_block_rsrvd_fix_b));
    expRCompExt_uid333_z_uid92_block_rsrvd_fix_q <= expRCompExt_uid333_z_uid92_block_rsrvd_fix_o(8 downto 0);

    -- expRComp_uid334_z_uid92_block_rsrvd_fix(BITSELECT,333)@14
    expRComp_uid334_z_uid92_block_rsrvd_fix_in <= expRCompExt_uid333_z_uid92_block_rsrvd_fix_q(7 downto 0);
    expRComp_uid334_z_uid92_block_rsrvd_fix_b <= expRComp_uid334_z_uid92_block_rsrvd_fix_in(7 downto 0);

    -- redist20_updatedY_uid204_div_uid46_block_rsrvd_fix_q_2(DELAY,587)
    redist20_updatedY_uid204_div_uid46_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => updatedY_uid204_div_uid46_block_rsrvd_fix_q, xout => redist20_updatedY_uid204_div_uid46_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- fracXIsZero_uid325_z_uid92_block_rsrvd_fix(LOGICAL,326)@9 + 1
    fracXIsZero_uid325_z_uid92_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist32_fracX_uid48_block_rsrvd_fix_b_1_q);
    fracXIsZero_uid325_z_uid92_block_rsrvd_fix_qi <= "1" WHEN fracXIsZero_uid325_z_uid92_block_rsrvd_fix_a = redist20_updatedY_uid204_div_uid46_block_rsrvd_fix_q_2_q ELSE "0";
    fracXIsZero_uid325_z_uid92_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid325_z_uid92_block_rsrvd_fix_qi, xout => fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist10_fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q_5(DELAY,577)
    redist10_fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q, xout => redist10_fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q_5_q, clk => clk, aclr => areset );

    -- expRCalc_uid342_z_uid92_block_rsrvd_fix(MUX,341)@14
    expRCalc_uid342_z_uid92_block_rsrvd_fix_s <= redist10_fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q_5_q;
    expRCalc_uid342_z_uid92_block_rsrvd_fix_combproc: PROCESS (expRCalc_uid342_z_uid92_block_rsrvd_fix_s, expRComp_uid334_z_uid92_block_rsrvd_fix_b, expRCompYIsOne_uid337_z_uid92_block_rsrvd_fix_b)
    BEGIN
        CASE (expRCalc_uid342_z_uid92_block_rsrvd_fix_s) IS
            WHEN "0" => expRCalc_uid342_z_uid92_block_rsrvd_fix_q <= expRComp_uid334_z_uid92_block_rsrvd_fix_b;
            WHEN "1" => expRCalc_uid342_z_uid92_block_rsrvd_fix_q <= expRCompYIsOne_uid337_z_uid92_block_rsrvd_fix_b;
            WHEN OTHERS => expRCalc_uid342_z_uid92_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- excZ_div_uid460_uid66_block_rsrvd_fix(LOGICAL,65)@14
    excZ_div_uid460_uid66_block_rsrvd_fix_q <= "1" WHEN expX_uid47_block_rsrvd_fix_b = cstAllZWE_uid53_block_rsrvd_fix_q ELSE "0";

    -- udf_uid335_z_uid92_block_rsrvd_fix(BITSELECT,334)@14
    udf_uid335_z_uid92_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => expRCompExt_uid333_z_uid92_block_rsrvd_fix_q(8)) & expRCompExt_uid333_z_uid92_block_rsrvd_fix_q));
    udf_uid335_z_uid92_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(udf_uid335_z_uid92_block_rsrvd_fix_in(9 downto 9));

    -- invExpXIsMax_uid321_z_uid92_block_rsrvd_fix(LOGICAL,320)@14
    invExpXIsMax_uid321_z_uid92_block_rsrvd_fix_q <= not (expXIsMax_uid67_block_rsrvd_fix_q);

    -- InvExpXIsZero_uid322_z_uid92_block_rsrvd_fix(LOGICAL,321)@14
    InvExpXIsZero_uid322_z_uid92_block_rsrvd_fix_q <= not (excZ_div_uid460_uid66_block_rsrvd_fix_q);

    -- excR_x_uid323_z_uid92_block_rsrvd_fix(LOGICAL,322)@14
    excR_x_uid323_z_uid92_block_rsrvd_fix_q <= InvExpXIsZero_uid322_z_uid92_block_rsrvd_fix_q and invExpXIsMax_uid321_z_uid92_block_rsrvd_fix_q;

    -- xRegAndUdf_uid343_z_uid92_block_rsrvd_fix(LOGICAL,342)@14
    xRegAndUdf_uid343_z_uid92_block_rsrvd_fix_q <= excR_x_uid323_z_uid92_block_rsrvd_fix_q and udf_uid335_z_uid92_block_rsrvd_fix_b;

    -- xIOrXRUdf_uid344_z_uid92_block_rsrvd_fix(LOGICAL,343)@14
    xIOrXRUdf_uid344_z_uid92_block_rsrvd_fix_q <= excI_div_uid70_block_rsrvd_fix_q or xRegAndUdf_uid343_z_uid92_block_rsrvd_fix_q;

    -- excSelBits_uid345_z_uid92_block_rsrvd_fix(BITJOIN,344)@14
    excSelBits_uid345_z_uid92_block_rsrvd_fix_q <= excN_x_uid320_z_uid92_block_rsrvd_fix_q & excZ_div_uid460_uid66_block_rsrvd_fix_q & xIOrXRUdf_uid344_z_uid92_block_rsrvd_fix_q;

    -- outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix(LOOKUP,345)@14
    outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_combproc: PROCESS (excSelBits_uid345_z_uid92_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excSelBits_uid345_z_uid92_block_rsrvd_fix_q) IS
            WHEN "000" => outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= "01";
            WHEN "001" => outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= "00";
            WHEN "010" => outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= "10";
            WHEN "011" => outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= "01";
            WHEN "100" => outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= "11";
            WHEN "101" => outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= "01";
            WHEN "110" => outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= "01";
            WHEN "111" => outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= "01";
            WHEN OTHERS => -- unreachable
                           outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid349_z_uid92_block_rsrvd_fix(MUX,348)@14
    expRPostExc_uid349_z_uid92_block_rsrvd_fix_s <= outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q;
    expRPostExc_uid349_z_uid92_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid349_z_uid92_block_rsrvd_fix_s, cstAllZWE_uid53_block_rsrvd_fix_q, expRCalc_uid342_z_uid92_block_rsrvd_fix_q, cstAllOWE_uid7_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid349_z_uid92_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid349_z_uid92_block_rsrvd_fix_q <= cstAllZWE_uid53_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid349_z_uid92_block_rsrvd_fix_q <= expRCalc_uid342_z_uid92_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid349_z_uid92_block_rsrvd_fix_q <= cstAllOWE_uid7_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid349_z_uid92_block_rsrvd_fix_q <= cstAllOWE_uid7_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid349_z_uid92_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oFracX_uid324_z_uid92_block_rsrvd_fix(BITJOIN,323)@8
    oFracX_uid324_z_uid92_block_rsrvd_fix_q <= VCC_q & fracX_uid48_block_rsrvd_fix_b;

    -- y_uid328_z_uid92_block_rsrvd_fix(BITSELECT,327)@8
    y_uid328_z_uid92_block_rsrvd_fix_in <= oFracX_uid324_z_uid92_block_rsrvd_fix_q(22 downto 0);
    y_uid328_z_uid92_block_rsrvd_fix_b <= y_uid328_z_uid92_block_rsrvd_fix_in(22 downto 0);

    -- yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select(BITSELECT,565)@8
    yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b <= y_uid328_z_uid92_block_rsrvd_fix_b(22 downto 15);
    yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c <= y_uid328_z_uid92_block_rsrvd_fix_b(14 downto 0);

    -- memoryC2_uid415_inverseTables_lutmem(DUALMEM,548)@8 + 2
    -- in j@20000000
    memoryC2_uid415_inverseTables_lutmem_aa <= yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b;
    memoryC2_uid415_inverseTables_lutmem_reset0 <= areset;
    memoryC2_uid415_inverseTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA2ZrseTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid415_inverseTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid415_inverseTables_lutmem_aa,
        q_a => memoryC2_uid415_inverseTables_lutmem_ir
    );
    memoryC2_uid415_inverseTables_lutmem_r <= memoryC2_uid415_inverseTables_lutmem_ir(11 downto 0);

    -- redist3_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_2(DELAY,570)
    redist3_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c, xout => redist3_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_2_q, clk => clk, aclr => areset );

    -- yT1_uid421_invPolyEval(BITSELECT,420)@10
    yT1_uid421_invPolyEval_b <= redist3_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_2_q(14 downto 3);

    -- prodXY_uid446_pT1_uid422_invPolyEval_cma(CHAINMULTADD,555)@10 + 2
    prodXY_uid446_pT1_uid422_invPolyEval_cma_reset <= areset;
    prodXY_uid446_pT1_uid422_invPolyEval_cma_ena0 <= '1';
    prodXY_uid446_pT1_uid422_invPolyEval_cma_ena1 <= prodXY_uid446_pT1_uid422_invPolyEval_cma_ena0;
    prodXY_uid446_pT1_uid422_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid446_pT1_uid422_invPolyEval_cma_a0(0),13));
    prodXY_uid446_pT1_uid422_invPolyEval_cma_p(0) <= prodXY_uid446_pT1_uid422_invPolyEval_cma_l(0) * prodXY_uid446_pT1_uid422_invPolyEval_cma_c0(0);
    prodXY_uid446_pT1_uid422_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid446_pT1_uid422_invPolyEval_cma_p(0),25);
    prodXY_uid446_pT1_uid422_invPolyEval_cma_w(0) <= prodXY_uid446_pT1_uid422_invPolyEval_cma_u(0);
    prodXY_uid446_pT1_uid422_invPolyEval_cma_x(0) <= prodXY_uid446_pT1_uid422_invPolyEval_cma_w(0);
    prodXY_uid446_pT1_uid422_invPolyEval_cma_y(0) <= prodXY_uid446_pT1_uid422_invPolyEval_cma_x(0);
    prodXY_uid446_pT1_uid422_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid446_pT1_uid422_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid446_pT1_uid422_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid446_pT1_uid422_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid446_pT1_uid422_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid421_invPolyEval_b),12);
                prodXY_uid446_pT1_uid422_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid415_inverseTables_lutmem_r),12);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid446_pT1_uid422_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid446_pT1_uid422_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid446_pT1_uid422_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid446_pT1_uid422_invPolyEval_cma_s(0) <= prodXY_uid446_pT1_uid422_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid446_pT1_uid422_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 24, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid446_pT1_uid422_invPolyEval_cma_s(0)(23 downto 0)), xout => prodXY_uid446_pT1_uid422_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid446_pT1_uid422_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid446_pT1_uid422_invPolyEval_cma_qq(23 downto 0));

    -- osig_uid447_pT1_uid422_invPolyEval(BITSELECT,446)@12
    osig_uid447_pT1_uid422_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid446_pT1_uid422_invPolyEval_cma_q(23 downto 11));

    -- highBBits_uid424_invPolyEval(BITSELECT,423)@12
    highBBits_uid424_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid447_pT1_uid422_invPolyEval_b(12 downto 1));

    -- redist1_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_2(DELAY,568)
    redist1_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b, xout => redist1_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid412_inverseTables_lutmem(DUALMEM,547)@10 + 2
    -- in j@20000000
    memoryC1_uid412_inverseTables_lutmem_aa <= redist1_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_2_q;
    memoryC1_uid412_inverseTables_lutmem_reset0 <= areset;
    memoryC1_uid412_inverseTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 20,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA1ZrseTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid412_inverseTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid412_inverseTables_lutmem_aa,
        q_a => memoryC1_uid412_inverseTables_lutmem_ir
    );
    memoryC1_uid412_inverseTables_lutmem_r <= memoryC1_uid412_inverseTables_lutmem_ir(19 downto 0);

    -- s1sumAHighB_uid425_invPolyEval(ADD,424)@12
    s1sumAHighB_uid425_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => memoryC1_uid412_inverseTables_lutmem_r(19)) & memoryC1_uid412_inverseTables_lutmem_r));
    s1sumAHighB_uid425_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 12 => highBBits_uid424_invPolyEval_b(11)) & highBBits_uid424_invPolyEval_b));
    s1sumAHighB_uid425_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid425_invPolyEval_a) + SIGNED(s1sumAHighB_uid425_invPolyEval_b));
    s1sumAHighB_uid425_invPolyEval_q <= s1sumAHighB_uid425_invPolyEval_o(20 downto 0);

    -- lowRangeB_uid423_invPolyEval(BITSELECT,422)@12
    lowRangeB_uid423_invPolyEval_in <= osig_uid447_pT1_uid422_invPolyEval_b(0 downto 0);
    lowRangeB_uid423_invPolyEval_b <= lowRangeB_uid423_invPolyEval_in(0 downto 0);

    -- s1_uid426_invPolyEval(BITJOIN,425)@12
    s1_uid426_invPolyEval_q <= s1sumAHighB_uid425_invPolyEval_q & lowRangeB_uid423_invPolyEval_b;

    -- redist4_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_4(DELAY,571)
    redist4_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist3_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_2_q, xout => redist4_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_4_q, clk => clk, aclr => areset );

    -- prodXY_uid449_pT2_uid428_invPolyEval_cma(CHAINMULTADD,556)@12 + 2
    prodXY_uid449_pT2_uid428_invPolyEval_cma_reset <= areset;
    prodXY_uid449_pT2_uid428_invPolyEval_cma_ena0 <= '1';
    prodXY_uid449_pT2_uid428_invPolyEval_cma_ena1 <= prodXY_uid449_pT2_uid428_invPolyEval_cma_ena0;
    prodXY_uid449_pT2_uid428_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid449_pT2_uid428_invPolyEval_cma_a0(0),16));
    prodXY_uid449_pT2_uid428_invPolyEval_cma_p(0) <= prodXY_uid449_pT2_uid428_invPolyEval_cma_l(0) * prodXY_uid449_pT2_uid428_invPolyEval_cma_c0(0);
    prodXY_uid449_pT2_uid428_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid449_pT2_uid428_invPolyEval_cma_p(0),38);
    prodXY_uid449_pT2_uid428_invPolyEval_cma_w(0) <= prodXY_uid449_pT2_uid428_invPolyEval_cma_u(0);
    prodXY_uid449_pT2_uid428_invPolyEval_cma_x(0) <= prodXY_uid449_pT2_uid428_invPolyEval_cma_w(0);
    prodXY_uid449_pT2_uid428_invPolyEval_cma_y(0) <= prodXY_uid449_pT2_uid428_invPolyEval_cma_x(0);
    prodXY_uid449_pT2_uid428_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid449_pT2_uid428_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid449_pT2_uid428_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid449_pT2_uid428_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid449_pT2_uid428_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist4_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_c_4_q),15);
                prodXY_uid449_pT2_uid428_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid426_invPolyEval_q),22);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid449_pT2_uid428_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid449_pT2_uid428_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid449_pT2_uid428_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid449_pT2_uid428_invPolyEval_cma_s(0) <= prodXY_uid449_pT2_uid428_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid449_pT2_uid428_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid449_pT2_uid428_invPolyEval_cma_s(0)(36 downto 0)), xout => prodXY_uid449_pT2_uid428_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid449_pT2_uid428_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid449_pT2_uid428_invPolyEval_cma_qq(36 downto 0));

    -- osig_uid450_pT2_uid428_invPolyEval(BITSELECT,449)@14
    osig_uid450_pT2_uid428_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid449_pT2_uid428_invPolyEval_cma_q(36 downto 14));

    -- highBBits_uid430_invPolyEval(BITSELECT,429)@14
    highBBits_uid430_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid450_pT2_uid428_invPolyEval_b(22 downto 2));

    -- redist2_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_4(DELAY,569)
    redist2_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist1_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_2_q, xout => redist2_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid409_inverseTables_lutmem(DUALMEM,546)@12 + 2
    -- in j@20000000
    memoryC0_uid409_inverseTables_lutmem_aa <= redist2_yAddr_uid330_z_uid92_block_rsrvd_fix_merged_bit_select_b_4_q;
    memoryC0_uid409_inverseTables_lutmem_reset0 <= areset;
    memoryC0_uid409_inverseTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0ZrseTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid409_inverseTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid409_inverseTables_lutmem_aa,
        q_a => memoryC0_uid409_inverseTables_lutmem_ir
    );
    memoryC0_uid409_inverseTables_lutmem_r <= memoryC0_uid409_inverseTables_lutmem_ir(28 downto 0);

    -- s2sumAHighB_uid431_invPolyEval(ADD,430)@14
    s2sumAHighB_uid431_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => memoryC0_uid409_inverseTables_lutmem_r(28)) & memoryC0_uid409_inverseTables_lutmem_r));
    s2sumAHighB_uid431_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 21 => highBBits_uid430_invPolyEval_b(20)) & highBBits_uid430_invPolyEval_b));
    s2sumAHighB_uid431_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid431_invPolyEval_a) + SIGNED(s2sumAHighB_uid431_invPolyEval_b));
    s2sumAHighB_uid431_invPolyEval_q <= s2sumAHighB_uid431_invPolyEval_o(29 downto 0);

    -- lowRangeB_uid429_invPolyEval(BITSELECT,428)@14
    lowRangeB_uid429_invPolyEval_in <= osig_uid450_pT2_uid428_invPolyEval_b(1 downto 0);
    lowRangeB_uid429_invPolyEval_b <= lowRangeB_uid429_invPolyEval_in(1 downto 0);

    -- s2_uid432_invPolyEval(BITJOIN,431)@14
    s2_uid432_invPolyEval_q <= s2sumAHighB_uid431_invPolyEval_q & lowRangeB_uid429_invPolyEval_b;

    -- fxpInverseRes_uid338_z_uid92_block_rsrvd_fix(BITSELECT,337)@14
    fxpInverseRes_uid338_z_uid92_block_rsrvd_fix_in <= s2_uid432_invPolyEval_q(28 downto 0);
    fxpInverseRes_uid338_z_uid92_block_rsrvd_fix_b <= fxpInverseRes_uid338_z_uid92_block_rsrvd_fix_in(28 downto 5);

    -- fxpInverseResFrac_uid340_z_uid92_block_rsrvd_fix(BITSELECT,339)@14
    fxpInverseResFrac_uid340_z_uid92_block_rsrvd_fix_in <= fxpInverseRes_uid338_z_uid92_block_rsrvd_fix_b(22 downto 0);
    fxpInverseResFrac_uid340_z_uid92_block_rsrvd_fix_b <= fxpInverseResFrac_uid340_z_uid92_block_rsrvd_fix_in(22 downto 0);

    -- fracRCalc_uid341_z_uid92_block_rsrvd_fix(MUX,340)@14
    fracRCalc_uid341_z_uid92_block_rsrvd_fix_s <= redist10_fracXIsZero_uid325_z_uid92_block_rsrvd_fix_q_5_q;
    fracRCalc_uid341_z_uid92_block_rsrvd_fix_combproc: PROCESS (fracRCalc_uid341_z_uid92_block_rsrvd_fix_s, fxpInverseResFrac_uid340_z_uid92_block_rsrvd_fix_b, cstZeroWF_uid8_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRCalc_uid341_z_uid92_block_rsrvd_fix_s) IS
            WHEN "0" => fracRCalc_uid341_z_uid92_block_rsrvd_fix_q <= fxpInverseResFrac_uid340_z_uid92_block_rsrvd_fix_b;
            WHEN "1" => fracRCalc_uid341_z_uid92_block_rsrvd_fix_q <= cstZeroWF_uid8_block_rsrvd_fix_q;
            WHEN OTHERS => fracRCalc_uid341_z_uid92_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPostExc_uid348_z_uid92_block_rsrvd_fix(MUX,347)@14
    fracRPostExc_uid348_z_uid92_block_rsrvd_fix_s <= outMuxSelEnc_uid346_z_uid92_block_rsrvd_fix_q;
    fracRPostExc_uid348_z_uid92_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid348_z_uid92_block_rsrvd_fix_s, cstZeroWF_uid8_block_rsrvd_fix_q, fracRCalc_uid341_z_uid92_block_rsrvd_fix_q, cstNaNWF_uid52_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid348_z_uid92_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid348_z_uid92_block_rsrvd_fix_q <= cstZeroWF_uid8_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid348_z_uid92_block_rsrvd_fix_q <= fracRCalc_uid341_z_uid92_block_rsrvd_fix_q;
            WHEN "10" => fracRPostExc_uid348_z_uid92_block_rsrvd_fix_q <= cstZeroWF_uid8_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid348_z_uid92_block_rsrvd_fix_q <= cstNaNWF_uid52_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid348_z_uid92_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid352_z_uid92_block_rsrvd_fix(BITJOIN,351)@14
    R_uid352_z_uid92_block_rsrvd_fix_q <= signR_uid351_z_uid92_block_rsrvd_fix_q & expRPostExc_uid349_z_uid92_block_rsrvd_fix_q & fracRPostExc_uid348_z_uid92_block_rsrvd_fix_q;

    -- path2_uid91_block_rsrvd_fix(COMPARE,90)@14
    path2_uid91_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expX_uid47_block_rsrvd_fix_b);
    path2_uid91_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & cstBias_uid54_block_rsrvd_fix_q);
    path2_uid91_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(path2_uid91_block_rsrvd_fix_a) - UNSIGNED(path2_uid91_block_rsrvd_fix_b));
    path2_uid91_block_rsrvd_fix_n(0) <= not (path2_uid91_block_rsrvd_fix_o(9));

    -- u_uid93_block_rsrvd_fix(MUX,92)@14
    u_uid93_block_rsrvd_fix_s <= path2_uid91_block_rsrvd_fix_n;
    u_uid93_block_rsrvd_fix_combproc: PROCESS (u_uid93_block_rsrvd_fix_s, redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_q, R_uid352_z_uid92_block_rsrvd_fix_q)
    BEGIN
        CASE (u_uid93_block_rsrvd_fix_s) IS
            WHEN "0" => u_uid93_block_rsrvd_fix_q <= redist11_divR_uid298_div_uid46_block_rsrvd_fix_q_6_mem_q;
            WHEN "1" => u_uid93_block_rsrvd_fix_q <= R_uid352_z_uid92_block_rsrvd_fix_q;
            WHEN OTHERS => u_uid93_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expU_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,558)@14
    expU_uid94_block_rsrvd_fix_merged_bit_select_in <= u_uid93_block_rsrvd_fix_q(30 downto 0);
    expU_uid94_block_rsrvd_fix_merged_bit_select_b <= expU_uid94_block_rsrvd_fix_merged_bit_select_in(30 downto 23);
    expU_uid94_block_rsrvd_fix_merged_bit_select_c <= expU_uid94_block_rsrvd_fix_merged_bit_select_in(22 downto 0);

    -- oFracU_uid96_block_rsrvd_fix(BITJOIN,95)@14
    oFracU_uid96_block_rsrvd_fix_q <= VCC_q & expU_uid94_block_rsrvd_fix_merged_bit_select_c;

    -- oFracUExt_uid106_block_rsrvd_fix(BITJOIN,105)@14
    oFracUExt_uid106_block_rsrvd_fix_q <= cst01pWShift_uid105_block_rsrvd_fix_q & oFracU_uid96_block_rsrvd_fix_q;

    -- leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix(MUX,464)@14
    leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_s <= leftShiftStageSel3Dto2_uid464_fxpU_uid108_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_s, oFracUExt_uid106_block_rsrvd_fix_q, leftShiftStage0Idx1_uid457_fxpU_uid108_block_rsrvd_fix_q, leftShiftStage0Idx2_uid460_fxpU_uid108_block_rsrvd_fix_q, leftShiftStage0Idx3_uid463_fxpU_uid108_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q <= oFracUExt_uid106_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid457_fxpU_uid108_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid460_fxpU_uid108_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid463_fxpU_uid108_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- zS_uid103_block_rsrvd_fix(CONSTANT,102)
    zS_uid103_block_rsrvd_fix_q <= "000000000";

    -- shiftBias_uid99_block_rsrvd_fix(CONSTANT,98)
    shiftBias_uid99_block_rsrvd_fix_q <= "01110010";

    -- shiftValue_uid100_block_rsrvd_fix(SUB,99)@14
    shiftValue_uid100_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expU_uid94_block_rsrvd_fix_merged_bit_select_b);
    shiftValue_uid100_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & shiftBias_uid99_block_rsrvd_fix_q);
    shiftValue_uid100_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftValue_uid100_block_rsrvd_fix_a) - UNSIGNED(shiftValue_uid100_block_rsrvd_fix_b));
    shiftValue_uid100_block_rsrvd_fix_q <= shiftValue_uid100_block_rsrvd_fix_o(8 downto 0);

    -- xMSB_uid101_block_rsrvd_fix(BITSELECT,100)@14
    xMSB_uid101_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(shiftValue_uid100_block_rsrvd_fix_q(8 downto 8));

    -- shiftValuePostNeg_uid104_block_rsrvd_fix(MUX,103)@14
    shiftValuePostNeg_uid104_block_rsrvd_fix_s <= xMSB_uid101_block_rsrvd_fix_b;
    shiftValuePostNeg_uid104_block_rsrvd_fix_combproc: PROCESS (shiftValuePostNeg_uid104_block_rsrvd_fix_s, shiftValue_uid100_block_rsrvd_fix_q, zS_uid103_block_rsrvd_fix_q)
    BEGIN
        CASE (shiftValuePostNeg_uid104_block_rsrvd_fix_s) IS
            WHEN "0" => shiftValuePostNeg_uid104_block_rsrvd_fix_q <= shiftValue_uid100_block_rsrvd_fix_q;
            WHEN "1" => shiftValuePostNeg_uid104_block_rsrvd_fix_q <= zS_uid103_block_rsrvd_fix_q;
            WHEN OTHERS => shiftValuePostNeg_uid104_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fxpShifterBits_uid107_block_rsrvd_fix(BITSELECT,106)@14
    fxpShifterBits_uid107_block_rsrvd_fix_in <= shiftValuePostNeg_uid104_block_rsrvd_fix_q(3 downto 0);
    fxpShifterBits_uid107_block_rsrvd_fix_b <= fxpShifterBits_uid107_block_rsrvd_fix_in(3 downto 0);

    -- leftShiftStageSel3Dto2_uid464_fxpU_uid108_block_rsrvd_fix_merged_bit_select(BITSELECT,559)@14
    leftShiftStageSel3Dto2_uid464_fxpU_uid108_block_rsrvd_fix_merged_bit_select_b <= fxpShifterBits_uid107_block_rsrvd_fix_b(3 downto 2);
    leftShiftStageSel3Dto2_uid464_fxpU_uid108_block_rsrvd_fix_merged_bit_select_c <= fxpShifterBits_uid107_block_rsrvd_fix_b(1 downto 0);

    -- leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix(MUX,475)@14
    leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_s <= leftShiftStageSel3Dto2_uid464_fxpU_uid108_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_s, leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q, leftShiftStage1Idx1_uid468_fxpU_uid108_block_rsrvd_fix_q, leftShiftStage1Idx2_uid471_fxpU_uid108_block_rsrvd_fix_q, leftShiftStage1Idx3_uid474_fxpU_uid108_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage0_uid465_fxpU_uid108_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid468_fxpU_uid108_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid471_fxpU_uid108_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid474_fxpU_uid108_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- y_uid109_block_rsrvd_fix(BITSELECT,108)@14
    y_uid109_block_rsrvd_fix_in <= leftShiftStage1_uid476_fxpU_uid108_block_rsrvd_fix_q(35 downto 0);
    y_uid109_block_rsrvd_fix_b <= y_uid109_block_rsrvd_fix_in(35 downto 1);

    -- yAddr_uid111_block_rsrvd_fix_merged_bit_select(BITSELECT,560)@14
    yAddr_uid111_block_rsrvd_fix_merged_bit_select_b <= y_uid109_block_rsrvd_fix_b(34 downto 27);
    yAddr_uid111_block_rsrvd_fix_merged_bit_select_c <= y_uid109_block_rsrvd_fix_b(26 downto 9);

    -- memoryC2_uid360_atan2Tables_lutmem(DUALMEM,541)@14 + 2
    -- in j@20000000
    memoryC2_uid360_atan2Tables_lutmem_aa <= yAddr_uid111_block_rsrvd_fix_merged_bit_select_b;
    memoryC2_uid360_atan2Tables_lutmem_reset0 <= areset;
    memoryC2_uid360_atan2Tables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA2Zan2Tables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid360_atan2Tables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid360_atan2Tables_lutmem_aa,
        q_a => memoryC2_uid360_atan2Tables_lutmem_ir
    );
    memoryC2_uid360_atan2Tables_lutmem_r <= memoryC2_uid360_atan2Tables_lutmem_ir(12 downto 0);

    -- redist7_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_2(DELAY,574)
    redist7_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid111_block_rsrvd_fix_merged_bit_select_c, xout => redist7_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_2_q, clk => clk, aclr => areset );

    -- yT1_uid366_invPolyEval(BITSELECT,365)@16
    yT1_uid366_invPolyEval_b <= redist7_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_2_q(17 downto 5);

    -- prodXY_uid434_pT1_uid367_invPolyEval_cma(CHAINMULTADD,551)@16 + 2
    prodXY_uid434_pT1_uid367_invPolyEval_cma_reset <= areset;
    prodXY_uid434_pT1_uid367_invPolyEval_cma_ena0 <= '1';
    prodXY_uid434_pT1_uid367_invPolyEval_cma_ena1 <= prodXY_uid434_pT1_uid367_invPolyEval_cma_ena0;
    prodXY_uid434_pT1_uid367_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid434_pT1_uid367_invPolyEval_cma_a0(0),14));
    prodXY_uid434_pT1_uid367_invPolyEval_cma_p(0) <= prodXY_uid434_pT1_uid367_invPolyEval_cma_l(0) * prodXY_uid434_pT1_uid367_invPolyEval_cma_c0(0);
    prodXY_uid434_pT1_uid367_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid434_pT1_uid367_invPolyEval_cma_p(0),27);
    prodXY_uid434_pT1_uid367_invPolyEval_cma_w(0) <= prodXY_uid434_pT1_uid367_invPolyEval_cma_u(0);
    prodXY_uid434_pT1_uid367_invPolyEval_cma_x(0) <= prodXY_uid434_pT1_uid367_invPolyEval_cma_w(0);
    prodXY_uid434_pT1_uid367_invPolyEval_cma_y(0) <= prodXY_uid434_pT1_uid367_invPolyEval_cma_x(0);
    prodXY_uid434_pT1_uid367_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid434_pT1_uid367_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid434_pT1_uid367_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid434_pT1_uid367_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid434_pT1_uid367_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid366_invPolyEval_b),13);
                prodXY_uid434_pT1_uid367_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid360_atan2Tables_lutmem_r),13);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid434_pT1_uid367_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid434_pT1_uid367_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid434_pT1_uid367_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid434_pT1_uid367_invPolyEval_cma_s(0) <= prodXY_uid434_pT1_uid367_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid434_pT1_uid367_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid434_pT1_uid367_invPolyEval_cma_s(0)(25 downto 0)), xout => prodXY_uid434_pT1_uid367_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid434_pT1_uid367_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid434_pT1_uid367_invPolyEval_cma_qq(25 downto 0));

    -- osig_uid435_pT1_uid367_invPolyEval(BITSELECT,434)@18
    osig_uid435_pT1_uid367_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid434_pT1_uid367_invPolyEval_cma_q(25 downto 12));

    -- highBBits_uid369_invPolyEval(BITSELECT,368)@18
    highBBits_uid369_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid435_pT1_uid367_invPolyEval_b(13 downto 1));

    -- redist5_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_2(DELAY,572)
    redist5_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid111_block_rsrvd_fix_merged_bit_select_b, xout => redist5_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid357_atan2Tables_lutmem(DUALMEM,540)@16 + 2
    -- in j@20000000
    memoryC1_uid357_atan2Tables_lutmem_aa <= redist5_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_2_q;
    memoryC1_uid357_atan2Tables_lutmem_reset0 <= areset;
    memoryC1_uid357_atan2Tables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA1Zan2Tables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid357_atan2Tables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid357_atan2Tables_lutmem_aa,
        q_a => memoryC1_uid357_atan2Tables_lutmem_ir
    );
    memoryC1_uid357_atan2Tables_lutmem_r <= memoryC1_uid357_atan2Tables_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid370_invPolyEval(ADD,369)@18
    s1sumAHighB_uid370_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC1_uid357_atan2Tables_lutmem_r(20)) & memoryC1_uid357_atan2Tables_lutmem_r));
    s1sumAHighB_uid370_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid369_invPolyEval_b(12)) & highBBits_uid369_invPolyEval_b));
    s1sumAHighB_uid370_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid370_invPolyEval_a) + SIGNED(s1sumAHighB_uid370_invPolyEval_b));
    s1sumAHighB_uid370_invPolyEval_q <= s1sumAHighB_uid370_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid368_invPolyEval(BITSELECT,367)@18
    lowRangeB_uid368_invPolyEval_in <= osig_uid435_pT1_uid367_invPolyEval_b(0 downto 0);
    lowRangeB_uid368_invPolyEval_b <= lowRangeB_uid368_invPolyEval_in(0 downto 0);

    -- s1_uid371_invPolyEval(BITJOIN,370)@18
    s1_uid371_invPolyEval_q <= s1sumAHighB_uid370_invPolyEval_q & lowRangeB_uid368_invPolyEval_b;

    -- redist8_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_4(DELAY,575)
    redist8_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_4 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist7_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_2_q, xout => redist8_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_4_q, clk => clk, aclr => areset );

    -- prodXY_uid437_pT2_uid373_invPolyEval_cma(CHAINMULTADD,552)@18 + 2
    prodXY_uid437_pT2_uid373_invPolyEval_cma_reset <= areset;
    prodXY_uid437_pT2_uid373_invPolyEval_cma_ena0 <= '1';
    prodXY_uid437_pT2_uid373_invPolyEval_cma_ena1 <= prodXY_uid437_pT2_uid373_invPolyEval_cma_ena0;
    prodXY_uid437_pT2_uid373_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid437_pT2_uid373_invPolyEval_cma_a0(0),19));
    prodXY_uid437_pT2_uid373_invPolyEval_cma_p(0) <= prodXY_uid437_pT2_uid373_invPolyEval_cma_l(0) * prodXY_uid437_pT2_uid373_invPolyEval_cma_c0(0);
    prodXY_uid437_pT2_uid373_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid437_pT2_uid373_invPolyEval_cma_p(0),42);
    prodXY_uid437_pT2_uid373_invPolyEval_cma_w(0) <= prodXY_uid437_pT2_uid373_invPolyEval_cma_u(0);
    prodXY_uid437_pT2_uid373_invPolyEval_cma_x(0) <= prodXY_uid437_pT2_uid373_invPolyEval_cma_w(0);
    prodXY_uid437_pT2_uid373_invPolyEval_cma_y(0) <= prodXY_uid437_pT2_uid373_invPolyEval_cma_x(0);
    prodXY_uid437_pT2_uid373_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid437_pT2_uid373_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid437_pT2_uid373_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid437_pT2_uid373_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid437_pT2_uid373_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist8_yAddr_uid111_block_rsrvd_fix_merged_bit_select_c_4_q),18);
                prodXY_uid437_pT2_uid373_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid371_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid437_pT2_uid373_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid437_pT2_uid373_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid437_pT2_uid373_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid437_pT2_uid373_invPolyEval_cma_s(0) <= prodXY_uid437_pT2_uid373_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid437_pT2_uid373_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 41, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid437_pT2_uid373_invPolyEval_cma_s(0)(40 downto 0)), xout => prodXY_uid437_pT2_uid373_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid437_pT2_uid373_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid437_pT2_uid373_invPolyEval_cma_qq(40 downto 0));

    -- osig_uid438_pT2_uid373_invPolyEval(BITSELECT,437)@20
    osig_uid438_pT2_uid373_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid437_pT2_uid373_invPolyEval_cma_q(40 downto 17));

    -- highBBits_uid375_invPolyEval(BITSELECT,374)@20
    highBBits_uid375_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid438_pT2_uid373_invPolyEval_b(23 downto 2));

    -- redist6_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_4(DELAY,573)
    redist6_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist5_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_2_q, xout => redist6_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid354_atan2Tables_lutmem(DUALMEM,539)@18 + 2
    -- in j@20000000
    memoryC0_uid354_atan2Tables_lutmem_aa <= redist6_yAddr_uid111_block_rsrvd_fix_merged_bit_select_b_4_q;
    memoryC0_uid354_atan2Tables_lutmem_reset0 <= areset;
    memoryC0_uid354_atan2Tables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0Zan2Tables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid354_atan2Tables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid354_atan2Tables_lutmem_aa,
        q_a => memoryC0_uid354_atan2Tables_lutmem_ir
    );
    memoryC0_uid354_atan2Tables_lutmem_r <= memoryC0_uid354_atan2Tables_lutmem_ir(30 downto 0);

    -- s2sumAHighB_uid376_invPolyEval(ADD,375)@20
    s2sumAHighB_uid376_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => memoryC0_uid354_atan2Tables_lutmem_r(30)) & memoryC0_uid354_atan2Tables_lutmem_r));
    s2sumAHighB_uid376_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 22 => highBBits_uid375_invPolyEval_b(21)) & highBBits_uid375_invPolyEval_b));
    s2sumAHighB_uid376_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid376_invPolyEval_a) + SIGNED(s2sumAHighB_uid376_invPolyEval_b));
    s2sumAHighB_uid376_invPolyEval_q <= s2sumAHighB_uid376_invPolyEval_o(31 downto 0);

    -- lowRangeB_uid374_invPolyEval(BITSELECT,373)@20
    lowRangeB_uid374_invPolyEval_in <= osig_uid438_pT2_uid373_invPolyEval_b(1 downto 0);
    lowRangeB_uid374_invPolyEval_b <= lowRangeB_uid374_invPolyEval_in(1 downto 0);

    -- s2_uid377_invPolyEval(BITJOIN,376)@20
    s2_uid377_invPolyEval_q <= s2sumAHighB_uid376_invPolyEval_q & lowRangeB_uid374_invPolyEval_b;

    -- fxpAtanXOXRes_uid114_block_rsrvd_fix(BITSELECT,113)@20
    fxpAtanXOXRes_uid114_block_rsrvd_fix_in <= s2_uid377_invPolyEval_q(31 downto 0);
    fxpAtanXOXRes_uid114_block_rsrvd_fix_b <= fxpAtanXOXRes_uid114_block_rsrvd_fix_in(31 downto 5);

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_notEnable(LOGICAL,645)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_nor(LOGICAL,646)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_nor_q <= not (redist28_oFracU_uid96_block_rsrvd_fix_q_6_notEnable_q or redist28_oFracU_uid96_block_rsrvd_fix_q_6_sticky_ena_q);

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_last(CONSTANT,642)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_last_q <= "011";

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmp(LOGICAL,643)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmp_q <= "1" WHEN redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_last_q = redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_q ELSE "0";

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmpReg(REG,644)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmpReg_q <= STD_LOGIC_VECTOR(redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_sticky_ena(REG,647)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist28_oFracU_uid96_block_rsrvd_fix_q_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist28_oFracU_uid96_block_rsrvd_fix_q_6_nor_q = "1") THEN
                redist28_oFracU_uid96_block_rsrvd_fix_q_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist28_oFracU_uid96_block_rsrvd_fix_q_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_enaAnd(LOGICAL,648)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_enaAnd_q <= redist28_oFracU_uid96_block_rsrvd_fix_q_6_sticky_ena_q and VCC_q;

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt(COUNTER,640)
    -- low=0, high=4, step=1, init=0
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_eq <= '1';
            ELSE
                redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_eq <= '0';
            END IF;
            IF (redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_eq = '1') THEN
                redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i <= redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i + 4;
            ELSE
                redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i <= redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_i, 3)));

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_wraddr(REG,641)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist28_oFracU_uid96_block_rsrvd_fix_q_6_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist28_oFracU_uid96_block_rsrvd_fix_q_6_wraddr_q <= STD_LOGIC_VECTOR(redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem(DUALMEM,639)
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_ia <= STD_LOGIC_VECTOR(oFracU_uid96_block_rsrvd_fix_q);
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_aa <= redist28_oFracU_uid96_block_rsrvd_fix_q_6_wraddr_q;
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_ab <= redist28_oFracU_uid96_block_rsrvd_fix_q_6_rdcnt_q;
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_reset0 <= areset;
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 24,
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
        clocken1 => redist28_oFracU_uid96_block_rsrvd_fix_q_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_reset0,
        clock1 => clk,
        address_a => redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_aa,
        data_a => redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_ab,
        q_b => redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_iq
    );
    redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_q <= redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_iq(23 downto 0);

    -- mulXAtanXOXRes_uid115_block_rsrvd_fix_cma(CHAINMULTADD,549)@20 + 2
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_reset <= areset;
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ena0 <= '1';
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ena1 <= mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ena0;
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_p(0) <= mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_a0(0) * mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_c0(0);
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_u(0) <= RESIZE(mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_p(0),51);
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_w(0) <= mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_u(0);
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_x(0) <= mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_w(0);
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_y(0) <= mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_x(0);
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_a0 <= (others => (others => '0'));
            mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ena0 = '1') THEN
                mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_a0(0) <= RESIZE(UNSIGNED(redist28_oFracU_uid96_block_rsrvd_fix_q_6_mem_q),24);
                mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(fxpAtanXOXRes_uid114_block_rsrvd_fix_b),27);
            END IF;
        END IF;
    END PROCESS;
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_ena1 = '1') THEN
                mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_s(0) <= mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_delay : dspba_delay
    GENERIC MAP ( width => 51, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_s(0)(50 downto 0)), xout => mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_qq, clk => clk, aclr => areset );
    mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_q <= STD_LOGIC_VECTOR(mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_qq(50 downto 0));

    -- normBit_uid116_block_rsrvd_fix(BITSELECT,115)@22
    normBit_uid116_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_q(49 downto 0));
    normBit_uid116_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(normBit_uid116_block_rsrvd_fix_in(49 downto 49));

    -- invNormBit_uid120_block_rsrvd_fix(LOGICAL,119)@22
    invNormBit_uid120_block_rsrvd_fix_q <= not (normBit_uid116_block_rsrvd_fix_b);

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_notEnable(LOGICAL,624)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_nor(LOGICAL,625)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_nor_q <= not (redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_notEnable_q or redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_sticky_ena_q);

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_last(CONSTANT,621)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_last_q <= "0100";

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmp(LOGICAL,622)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmp_b <= STD_LOGIC_VECTOR("0" & redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_q);
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmp_q <= "1" WHEN redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_last_q = redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmp_b ELSE "0";

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmpReg(REG,623)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmpReg_q <= STD_LOGIC_VECTOR(redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_sticky_ena(REG,626)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_nor_q = "1") THEN
                redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_enaAnd(LOGICAL,627)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_enaAnd_q <= redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_sticky_ena_q and VCC_q;

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt(COUNTER,619)
    -- low=0, high=5, step=1, init=0
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i = TO_UNSIGNED(4, 3)) THEN
                redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_eq <= '1';
            ELSE
                redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_eq <= '0';
            END IF;
            IF (redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_eq = '1') THEN
                redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i <= redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i + 3;
            ELSE
                redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i <= redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_i, 3)));

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_wraddr(REG,620)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_wraddr_q <= "101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_wraddr_q <= STD_LOGIC_VECTOR(redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem(DUALMEM,618)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_ia <= STD_LOGIC_VECTOR(expU_uid94_block_rsrvd_fix_merged_bit_select_b);
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_aa <= redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_wraddr_q;
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_ab <= redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_rdcnt_q;
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_reset0 <= areset;
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 3,
        numwords_a => 6,
        width_b => 8,
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
        clocken1 => redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_reset0,
        clock1 => clk,
        address_a => redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_aa,
        data_a => redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_ab,
        q_b => redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_iq
    );
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_q <= redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_iq(7 downto 0);

    -- redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_outputreg(DELAY,617)
    redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_outputreg : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_mem_q, xout => redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_outputreg_q, clk => clk, aclr => areset );

    -- expRPath3Ext_uid121_block_rsrvd_fix(SUB,120)@22
    expRPath3Ext_uid121_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_outputreg_q);
    expRPath3Ext_uid121_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000" & invNormBit_uid120_block_rsrvd_fix_q);
    expRPath3Ext_uid121_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expRPath3Ext_uid121_block_rsrvd_fix_a) - UNSIGNED(expRPath3Ext_uid121_block_rsrvd_fix_b));
    expRPath3Ext_uid121_block_rsrvd_fix_q <= expRPath3Ext_uid121_block_rsrvd_fix_o(8 downto 0);

    -- expRPath3PreRnd_uid122_block_rsrvd_fix(BITSELECT,121)@22
    expRPath3PreRnd_uid122_block_rsrvd_fix_in <= expRPath3Ext_uid121_block_rsrvd_fix_q(7 downto 0);
    expRPath3PreRnd_uid122_block_rsrvd_fix_b <= expRPath3PreRnd_uid122_block_rsrvd_fix_in(7 downto 0);

    -- redist27_expRPath3PreRnd_uid122_block_rsrvd_fix_b_1(DELAY,594)
    redist27_expRPath3PreRnd_uid122_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expRPath3PreRnd_uid122_block_rsrvd_fix_b, xout => redist27_expRPath3PreRnd_uid122_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- fracRPath3High_uid117_block_rsrvd_fix(BITSELECT,116)@22
    fracRPath3High_uid117_block_rsrvd_fix_in <= mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_q(48 downto 0);
    fracRPath3High_uid117_block_rsrvd_fix_b <= fracRPath3High_uid117_block_rsrvd_fix_in(48 downto 25);

    -- fracRPath3Low_uid118_block_rsrvd_fix(BITSELECT,117)@22
    fracRPath3Low_uid118_block_rsrvd_fix_in <= mulXAtanXOXRes_uid115_block_rsrvd_fix_cma_q(47 downto 0);
    fracRPath3Low_uid118_block_rsrvd_fix_b <= fracRPath3Low_uid118_block_rsrvd_fix_in(47 downto 24);

    -- fracRPath3Pre_uid119_block_rsrvd_fix(MUX,118)@22 + 1
    fracRPath3Pre_uid119_block_rsrvd_fix_s <= normBit_uid116_block_rsrvd_fix_b;
    fracRPath3Pre_uid119_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            fracRPath3Pre_uid119_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (fracRPath3Pre_uid119_block_rsrvd_fix_s) IS
                WHEN "0" => fracRPath3Pre_uid119_block_rsrvd_fix_q <= fracRPath3Low_uid118_block_rsrvd_fix_b;
                WHEN "1" => fracRPath3Pre_uid119_block_rsrvd_fix_q <= fracRPath3High_uid117_block_rsrvd_fix_b;
                WHEN OTHERS => fracRPath3Pre_uid119_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- expFracRPath3PreRnd_uid123_block_rsrvd_fix(BITJOIN,122)@23
    expFracRPath3PreRnd_uid123_block_rsrvd_fix_q <= redist27_expRPath3PreRnd_uid122_block_rsrvd_fix_b_1_q & fracRPath3Pre_uid119_block_rsrvd_fix_q;

    -- fracRPath3PostRnd_uid126_block_rsrvd_fix(ADD,125)@23
    fracRPath3PostRnd_uid126_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expFracRPath3PreRnd_uid123_block_rsrvd_fix_q);
    fracRPath3PostRnd_uid126_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000" & VCC_q);
    fracRPath3PostRnd_uid126_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(fracRPath3PostRnd_uid126_block_rsrvd_fix_a) + UNSIGNED(fracRPath3PostRnd_uid126_block_rsrvd_fix_b));
    fracRPath3PostRnd_uid126_block_rsrvd_fix_q <= fracRPath3PostRnd_uid126_block_rsrvd_fix_o(32 downto 0);

    -- fracRPath3_uid127_block_rsrvd_fix_merged_bit_select(BITSELECT,561)@23
    fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_in <= fracRPath3PostRnd_uid126_block_rsrvd_fix_q(31 downto 0);
    fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_b <= fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_in(23 downto 1);
    fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_c <= fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_in(31 downto 24);

    -- rightShiftStage2Idx1Rng1_uid503_fxpOp2Path2_uid135_block_rsrvd_fix(BITSELECT,502)@23
    rightShiftStage2Idx1Rng1_uid503_fxpOp2Path2_uid135_block_rsrvd_fix_b <= rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q(24 downto 1);

    -- rightShiftStage2Idx1_uid505_fxpOp2Path2_uid135_block_rsrvd_fix(BITJOIN,504)@23
    rightShiftStage2Idx1_uid505_fxpOp2Path2_uid135_block_rsrvd_fix_q <= GND_q & rightShiftStage2Idx1Rng1_uid503_fxpOp2Path2_uid135_block_rsrvd_fix_b;

    -- rightShiftStage1Idx3Rng6_uid498_fxpOp2Path2_uid135_block_rsrvd_fix(BITSELECT,497)@23
    rightShiftStage1Idx3Rng6_uid498_fxpOp2Path2_uid135_block_rsrvd_fix_b <= rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q(24 downto 6);

    -- rightShiftStage1Idx3_uid500_fxpOp2Path2_uid135_block_rsrvd_fix(BITJOIN,499)@23
    rightShiftStage1Idx3_uid500_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage1Idx3Pad6_uid499_fxpOp2Path2_uid135_block_rsrvd_fix_q & rightShiftStage1Idx3Rng6_uid498_fxpOp2Path2_uid135_block_rsrvd_fix_b;

    -- rightShiftStage1Idx2Rng4_uid495_fxpOp2Path2_uid135_block_rsrvd_fix(BITSELECT,494)@23
    rightShiftStage1Idx2Rng4_uid495_fxpOp2Path2_uid135_block_rsrvd_fix_b <= rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q(24 downto 4);

    -- rightShiftStage1Idx2_uid497_fxpOp2Path2_uid135_block_rsrvd_fix(BITJOIN,496)@23
    rightShiftStage1Idx2_uid497_fxpOp2Path2_uid135_block_rsrvd_fix_q <= leftShiftStage0Idx1Pad4_uid455_fxpU_uid108_block_rsrvd_fix_q & rightShiftStage1Idx2Rng4_uid495_fxpOp2Path2_uid135_block_rsrvd_fix_b;

    -- rightShiftStage1Idx1Rng2_uid492_fxpOp2Path2_uid135_block_rsrvd_fix(BITSELECT,491)@23
    rightShiftStage1Idx1Rng2_uid492_fxpOp2Path2_uid135_block_rsrvd_fix_b <= rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q(24 downto 2);

    -- rightShiftStage1Idx1_uid494_fxpOp2Path2_uid135_block_rsrvd_fix(BITJOIN,493)@23
    rightShiftStage1Idx1_uid494_fxpOp2Path2_uid135_block_rsrvd_fix_q <= padACst_uid168_block_rsrvd_fix_q & rightShiftStage1Idx1Rng2_uid492_fxpOp2Path2_uid135_block_rsrvd_fix_b;

    -- rightShiftStage0Idx3Rng24_uid487_fxpOp2Path2_uid135_block_rsrvd_fix(BITSELECT,486)@23
    rightShiftStage0Idx3Rng24_uid487_fxpOp2Path2_uid135_block_rsrvd_fix_b <= oFracRPath2_uid133_block_rsrvd_fix_q(24 downto 24);

    -- rightShiftStage0Idx3_uid489_fxpOp2Path2_uid135_block_rsrvd_fix(BITJOIN,488)@23
    rightShiftStage0Idx3_uid489_fxpOp2Path2_uid135_block_rsrvd_fix_q <= padConst_uid164_block_rsrvd_fix_q & rightShiftStage0Idx3Rng24_uid487_fxpOp2Path2_uid135_block_rsrvd_fix_b;

    -- rightShiftStage0Idx2Rng16_uid484_fxpOp2Path2_uid135_block_rsrvd_fix(BITSELECT,483)@23
    rightShiftStage0Idx2Rng16_uid484_fxpOp2Path2_uid135_block_rsrvd_fix_b <= oFracRPath2_uid133_block_rsrvd_fix_q(24 downto 16);

    -- rightShiftStage0Idx2_uid486_fxpOp2Path2_uid135_block_rsrvd_fix(BITJOIN,485)@23
    rightShiftStage0Idx2_uid486_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage0Idx2Pad16_uid485_fxpOp2Path2_uid135_block_rsrvd_fix_q & rightShiftStage0Idx2Rng16_uid484_fxpOp2Path2_uid135_block_rsrvd_fix_b;

    -- rightShiftStage0Idx1Rng8_uid481_fxpOp2Path2_uid135_block_rsrvd_fix(BITSELECT,480)@23
    rightShiftStage0Idx1Rng8_uid481_fxpOp2Path2_uid135_block_rsrvd_fix_b <= oFracRPath2_uid133_block_rsrvd_fix_q(24 downto 8);

    -- rightShiftStage0Idx1_uid483_fxpOp2Path2_uid135_block_rsrvd_fix(BITJOIN,482)@23
    rightShiftStage0Idx1_uid483_fxpOp2Path2_uid135_block_rsrvd_fix_q <= cstAllZWE_uid53_block_rsrvd_fix_q & rightShiftStage0Idx1Rng8_uid481_fxpOp2Path2_uid135_block_rsrvd_fix_b;

    -- oFracRPath2_uid133_block_rsrvd_fix(BITJOIN,132)@23
    oFracRPath2_uid133_block_rsrvd_fix_q <= VCC_q & fracRPath3Pre_uid119_block_rsrvd_fix_q;

    -- rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix(MUX,490)@23
    rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_b;
    rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_combproc: PROCESS (rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_s, oFracRPath2_uid133_block_rsrvd_fix_q, rightShiftStage0Idx1_uid483_fxpOp2Path2_uid135_block_rsrvd_fix_q, rightShiftStage0Idx2_uid486_fxpOp2Path2_uid135_block_rsrvd_fix_q, rightShiftStage0Idx3_uid489_fxpOp2Path2_uid135_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q <= oFracRPath2_uid133_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid483_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid486_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage0Idx3_uid489_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix(MUX,501)@23
    rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_c;
    rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_s, rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q, rightShiftStage1Idx1_uid494_fxpOp2Path2_uid135_block_rsrvd_fix_q, rightShiftStage1Idx2_uid497_fxpOp2Path2_uid135_block_rsrvd_fix_q, rightShiftStage1Idx3_uid500_fxpOp2Path2_uid135_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage0_uid491_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid494_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid497_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid500_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstWFP2_uid59_block_rsrvd_fix(CONSTANT,58)
    cstWFP2_uid59_block_rsrvd_fix_q <= "00011001";

    -- cstBiasMWF_uid56_block_rsrvd_fix(CONSTANT,55)
    cstBiasMWF_uid56_block_rsrvd_fix_q <= "01101000";

    -- shiftOut_uid130_block_rsrvd_fix(COMPARE,129)@22
    shiftOut_uid130_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & redist9_expU_uid94_block_rsrvd_fix_merged_bit_select_b_8_outputreg_q);
    shiftOut_uid130_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & cstBiasMWF_uid56_block_rsrvd_fix_q);
    shiftOut_uid130_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftOut_uid130_block_rsrvd_fix_a) - UNSIGNED(shiftOut_uid130_block_rsrvd_fix_b));
    shiftOut_uid130_block_rsrvd_fix_c(0) <= shiftOut_uid130_block_rsrvd_fix_o(9);

    -- shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged(SUB,477)@22 + 1
    shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_a <= STD_LOGIC_VECTOR("0" & cstBias_uid54_block_rsrvd_fix_q);
    shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_b <= STD_LOGIC_VECTOR("0" & expRPath3PreRnd_uid122_block_rsrvd_fix_b);
    shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_i <= "0" & cstWFP2_uid59_block_rsrvd_fix_q;
    shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (shiftOut_uid130_block_rsrvd_fix_c = "1") THEN
                shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_o <= shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_i;
            ELSE
                shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_o <= STD_LOGIC_VECTOR(UNSIGNED(shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_a) - UNSIGNED(shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_b));
            END IF;
        END IF;
    END PROCESS;
    shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_q <= shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_o(7 downto 0);

    -- sValPostSOutR_uid134_block_rsrvd_fix(BITSELECT,133)@23
    sValPostSOutR_uid134_block_rsrvd_fix_in <= shiftValPath2PreSub_uid129_block_rsrvd_fix_sValPostSOut_uid132_block_rsrvd_fix_merged_q(4 downto 0);
    sValPostSOutR_uid134_block_rsrvd_fix_b <= sValPostSOutR_uid134_block_rsrvd_fix_in(4 downto 0);

    -- rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select(BITSELECT,562)@23
    rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_b <= sValPostSOutR_uid134_block_rsrvd_fix_b(4 downto 3);
    rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_c <= sValPostSOutR_uid134_block_rsrvd_fix_b(2 downto 1);
    rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_d <= sValPostSOutR_uid134_block_rsrvd_fix_b(0 downto 0);

    -- rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix(MUX,506)@23
    rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid490_fxpOp2Path2_uid135_block_rsrvd_fix_merged_bit_select_d;
    rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_combproc: PROCESS (rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_s, rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q, rightShiftStage2Idx1_uid505_fxpOp2Path2_uid135_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_s) IS
            WHEN "0" => rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage1_uid502_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN "1" => rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid505_fxpOp2Path2_uid135_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- bPostPad_uid137_block_rsrvd_fix(BITJOIN,136)@23
    bPostPad_uid137_block_rsrvd_fix_q <= rightShiftStage2_uid507_fxpOp2Path2_uid135_block_rsrvd_fix_q & GND_q;

    -- path2Diff_uid138_block_rsrvd_fix(SUB,137)@23
    path2Diff_uid138_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & piO2_uid80_block_rsrvd_fix_q);
    path2Diff_uid138_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0" & bPostPad_uid137_block_rsrvd_fix_q);
    path2Diff_uid138_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(path2Diff_uid138_block_rsrvd_fix_a) - UNSIGNED(path2Diff_uid138_block_rsrvd_fix_b));
    path2Diff_uid138_block_rsrvd_fix_q <= path2Diff_uid138_block_rsrvd_fix_o(26 downto 0);

    -- normBitPath2Diff_uid139_block_rsrvd_fix(BITSELECT,138)@23
    normBitPath2Diff_uid139_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(path2Diff_uid138_block_rsrvd_fix_q(25 downto 0));
    normBitPath2Diff_uid139_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(normBitPath2Diff_uid139_block_rsrvd_fix_in(25 downto 25));

    -- expRPath2_uid143_block_rsrvd_fix(MUX,142)@23
    expRPath2_uid143_block_rsrvd_fix_s <= normBitPath2Diff_uid139_block_rsrvd_fix_b;
    expRPath2_uid143_block_rsrvd_fix_combproc: PROCESS (expRPath2_uid143_block_rsrvd_fix_s, cstBiasM1_uid55_block_rsrvd_fix_q, cstBias_uid54_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPath2_uid143_block_rsrvd_fix_s) IS
            WHEN "0" => expRPath2_uid143_block_rsrvd_fix_q <= cstBiasM1_uid55_block_rsrvd_fix_q;
            WHEN "1" => expRPath2_uid143_block_rsrvd_fix_q <= cstBias_uid54_block_rsrvd_fix_q;
            WHEN OTHERS => expRPath2_uid143_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- path2DiffHigh_uid140_block_rsrvd_fix(BITSELECT,139)@23
    path2DiffHigh_uid140_block_rsrvd_fix_in <= path2Diff_uid138_block_rsrvd_fix_q(24 downto 0);
    path2DiffHigh_uid140_block_rsrvd_fix_b <= path2DiffHigh_uid140_block_rsrvd_fix_in(24 downto 1);

    -- path2DiffLow_uid141_block_rsrvd_fix(BITSELECT,140)@23
    path2DiffLow_uid141_block_rsrvd_fix_in <= path2Diff_uid138_block_rsrvd_fix_q(23 downto 0);
    path2DiffLow_uid141_block_rsrvd_fix_b <= path2DiffLow_uid141_block_rsrvd_fix_in(23 downto 0);

    -- fracRPath2_uid142_block_rsrvd_fix(MUX,141)@23
    fracRPath2_uid142_block_rsrvd_fix_s <= normBitPath2Diff_uid139_block_rsrvd_fix_b;
    fracRPath2_uid142_block_rsrvd_fix_combproc: PROCESS (fracRPath2_uid142_block_rsrvd_fix_s, path2DiffLow_uid141_block_rsrvd_fix_b, path2DiffHigh_uid140_block_rsrvd_fix_b)
    BEGIN
        CASE (fracRPath2_uid142_block_rsrvd_fix_s) IS
            WHEN "0" => fracRPath2_uid142_block_rsrvd_fix_q <= path2DiffLow_uid141_block_rsrvd_fix_b;
            WHEN "1" => fracRPath2_uid142_block_rsrvd_fix_q <= path2DiffHigh_uid140_block_rsrvd_fix_b;
            WHEN OTHERS => fracRPath2_uid142_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expFracConc_uid146_block_rsrvd_fix(BITJOIN,145)@23
    expFracConc_uid146_block_rsrvd_fix_q <= expRPath2_uid143_block_rsrvd_fix_q & fracRPath2_uid142_block_rsrvd_fix_q;

    -- expFracRPath2PostRnd_uid147_block_rsrvd_fix(ADD,146)@23
    expFracRPath2PostRnd_uid147_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & expFracConc_uid146_block_rsrvd_fix_q);
    expFracRPath2PostRnd_uid147_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000" & VCC_q);
    expFracRPath2PostRnd_uid147_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expFracRPath2PostRnd_uid147_block_rsrvd_fix_a) + UNSIGNED(expFracRPath2PostRnd_uid147_block_rsrvd_fix_b));
    expFracRPath2PostRnd_uid147_block_rsrvd_fix_q <= expFracRPath2PostRnd_uid147_block_rsrvd_fix_o(32 downto 0);

    -- fracRPath2_uid148_block_rsrvd_fix_merged_bit_select(BITSELECT,563)@23
    fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_in <= expFracRPath2PostRnd_uid147_block_rsrvd_fix_q(31 downto 0);
    fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_b <= fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_in(23 downto 1);
    fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_c <= fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_in(31 downto 24);

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_notEnable(LOGICAL,666)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_nor(LOGICAL,667)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_nor_q <= not (redist34_fracX_uid48_block_rsrvd_fix_b_15_notEnable_q or redist34_fracX_uid48_block_rsrvd_fix_b_15_sticky_ena_q);

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_last(CONSTANT,663)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_last_q <= "0110";

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_cmp(LOGICAL,664)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_cmp_b <= STD_LOGIC_VECTOR("0" & redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_q);
    redist34_fracX_uid48_block_rsrvd_fix_b_15_cmp_q <= "1" WHEN redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_last_q = redist34_fracX_uid48_block_rsrvd_fix_b_15_cmp_b ELSE "0";

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_cmpReg(REG,665)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist34_fracX_uid48_block_rsrvd_fix_b_15_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist34_fracX_uid48_block_rsrvd_fix_b_15_cmpReg_q <= STD_LOGIC_VECTOR(redist34_fracX_uid48_block_rsrvd_fix_b_15_cmp_q);
        END IF;
    END PROCESS;

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_sticky_ena(REG,668)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist34_fracX_uid48_block_rsrvd_fix_b_15_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist34_fracX_uid48_block_rsrvd_fix_b_15_nor_q = "1") THEN
                redist34_fracX_uid48_block_rsrvd_fix_b_15_sticky_ena_q <= STD_LOGIC_VECTOR(redist34_fracX_uid48_block_rsrvd_fix_b_15_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_enaAnd(LOGICAL,669)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_enaAnd_q <= redist34_fracX_uid48_block_rsrvd_fix_b_15_sticky_ena_q and VCC_q;

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt(COUNTER,661)
    -- low=0, high=7, step=1, init=0
    redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_i <= TO_UNSIGNED(0, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_i <= redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_i, 3)));

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_wraddr(REG,662)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist34_fracX_uid48_block_rsrvd_fix_b_15_wraddr_q <= "111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist34_fracX_uid48_block_rsrvd_fix_b_15_wraddr_q <= STD_LOGIC_VECTOR(redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist34_fracX_uid48_block_rsrvd_fix_b_15_mem(DUALMEM,660)
    redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_ia <= STD_LOGIC_VECTOR(redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_q);
    redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_aa <= redist34_fracX_uid48_block_rsrvd_fix_b_15_wraddr_q;
    redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_ab <= redist34_fracX_uid48_block_rsrvd_fix_b_15_rdcnt_q;
    redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_reset0 <= areset;
    redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 23,
        widthad_a => 3,
        numwords_a => 8,
        width_b => 23,
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
        clocken1 => redist34_fracX_uid48_block_rsrvd_fix_b_15_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_reset0,
        clock1 => clk,
        address_a => redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_aa,
        data_a => redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_ab,
        q_b => redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_iq
    );
    redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_q <= redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_iq(22 downto 0);

    -- xyInInf_uid89_block_rsrvd_fix(LOGICAL,88)@8 + 1
    xyInInf_uid89_block_rsrvd_fix_qi <= excI_xIn_uid16_block_rsrvd_fix_q and excI_yIn_uid30_block_rsrvd_fix_q;
    xyInInf_uid89_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xyInInf_uid89_block_rsrvd_fix_qi, xout => xyInInf_uid89_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist29_xyInInf_uid89_block_rsrvd_fix_q_6(DELAY,596)
    redist29_xyInInf_uid89_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xyInInf_uid89_block_rsrvd_fix_q, xout => redist29_xyInInf_uid89_block_rsrvd_fix_q_6_q, clk => clk, aclr => areset );

    -- expXIsBias_uid78_block_rsrvd_fix(LOGICAL,77)@14
    expXIsBias_uid78_block_rsrvd_fix_q <= "1" WHEN expX_uid47_block_rsrvd_fix_b = cstBias_uid54_block_rsrvd_fix_q ELSE "0";

    -- updatedY_uid76_block_rsrvd_fix(BITJOIN,75)@14
    updatedY_uid76_block_rsrvd_fix_q <= cstZeroWF_uid8_block_rsrvd_fix_q & cstZeroWF_uid8_block_rsrvd_fix_q;

    -- fracXIsZero_uid75_block_rsrvd_fix(LOGICAL,76)@14
    fracXIsZero_uid75_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00000000000000000000000" & redist33_fracX_uid48_block_rsrvd_fix_b_6_mem_q);
    fracXIsZero_uid75_block_rsrvd_fix_q <= "1" WHEN fracXIsZero_uid75_block_rsrvd_fix_a = updatedY_uid76_block_rsrvd_fix_q ELSE "0";

    -- inIsOne_uid79_block_rsrvd_fix(LOGICAL,78)@14
    inIsOne_uid79_block_rsrvd_fix_q <= fracXIsZero_uid75_block_rsrvd_fix_q and expXIsBias_uid78_block_rsrvd_fix_q;

    -- arctanIsConst_uid90_block_rsrvd_fix(LOGICAL,89)@14
    arctanIsConst_uid90_block_rsrvd_fix_q <= excI_div_uid70_block_rsrvd_fix_q or inIsOne_uid79_block_rsrvd_fix_q or redist29_xyInInf_uid89_block_rsrvd_fix_q_6_q;

    -- biasMwShift_uid97_block_rsrvd_fix(CONSTANT,96)
    biasMwShift_uid97_block_rsrvd_fix_q <= "01110011";

    -- atanUIsU_uid98_block_rsrvd_fix(COMPARE,97)@14
    atanUIsU_uid98_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & biasMwShift_uid97_block_rsrvd_fix_q);
    atanUIsU_uid98_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expU_uid94_block_rsrvd_fix_merged_bit_select_b);
    atanUIsU_uid98_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(atanUIsU_uid98_block_rsrvd_fix_a) - UNSIGNED(atanUIsU_uid98_block_rsrvd_fix_b));
    atanUIsU_uid98_block_rsrvd_fix_n(0) <= not (atanUIsU_uid98_block_rsrvd_fix_o(9));

    -- pathSelBits_uid150_block_rsrvd_fix(BITJOIN,149)@14
    pathSelBits_uid150_block_rsrvd_fix_q <= arctanIsConst_uid90_block_rsrvd_fix_q & atanUIsU_uid98_block_rsrvd_fix_n & path2_uid91_block_rsrvd_fix_n;

    -- fracOutMuxSelEnc_uid151_block_rsrvd_fix(LOOKUP,150)@14 + 1
    fracOutMuxSelEnc_uid151_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "10";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (pathSelBits_uid150_block_rsrvd_fix_q) IS
                WHEN "000" => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "10";
                WHEN "001" => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "01";
                WHEN "010" => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "00";
                WHEN "011" => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "01";
                WHEN "100" => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "11";
                WHEN "101" => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "11";
                WHEN "110" => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "11";
                WHEN "111" => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= "11";
                WHEN OTHERS => -- unreachable
                               fracOutMuxSelEnc_uid151_block_rsrvd_fix_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- redist26_fracOutMuxSelEnc_uid151_block_rsrvd_fix_q_9(DELAY,593)
    redist26_fracOutMuxSelEnc_uid151_block_rsrvd_fix_q_9 : dspba_delay
    GENERIC MAP ( width => 2, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracOutMuxSelEnc_uid151_block_rsrvd_fix_q, xout => redist26_fracOutMuxSelEnc_uid151_block_rsrvd_fix_q_9_q, clk => clk, aclr => areset );

    -- fracRCalc_uid153_block_rsrvd_fix(MUX,152)@23 + 1
    fracRCalc_uid153_block_rsrvd_fix_s <= redist26_fracOutMuxSelEnc_uid151_block_rsrvd_fix_q_9_q;
    fracRCalc_uid153_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            fracRCalc_uid153_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (fracRCalc_uid153_block_rsrvd_fix_s) IS
                WHEN "00" => fracRCalc_uid153_block_rsrvd_fix_q <= redist34_fracX_uid48_block_rsrvd_fix_b_15_mem_q;
                WHEN "01" => fracRCalc_uid153_block_rsrvd_fix_q <= fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_b;
                WHEN "10" => fracRCalc_uid153_block_rsrvd_fix_q <= fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_b;
                WHEN "11" => fracRCalc_uid153_block_rsrvd_fix_q <= fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_b;
                WHEN OTHERS => fracRCalc_uid153_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist25_fracRCalc_uid153_block_rsrvd_fix_q_2(DELAY,592)
    redist25_fracRCalc_uid153_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRCalc_uid153_block_rsrvd_fix_q, xout => redist25_fracRCalc_uid153_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- oFracRCalc_uid163_block_rsrvd_fix(BITJOIN,162)@25
    oFracRCalc_uid163_block_rsrvd_fix_q <= VCC_q & redist25_fracRCalc_uid153_block_rsrvd_fix_q_2_q;

    -- rightPaddedIn_uid165_block_rsrvd_fix(BITJOIN,164)@25
    rightPaddedIn_uid165_block_rsrvd_fix_q <= oFracRCalc_uid163_block_rsrvd_fix_q & padConst_uid164_block_rsrvd_fix_q;

    -- rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix(MUX,521)@25
    rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_b;
    rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_combproc: PROCESS (rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_s, rightPaddedIn_uid165_block_rsrvd_fix_q, rightShiftStage0Idx1_uid514_fxpAlignedRes_uid164_block_rsrvd_fix_q, rightShiftStage0Idx2_uid517_fxpAlignedRes_uid164_block_rsrvd_fix_q, rightShiftStage0Idx3_uid520_fxpAlignedRes_uid164_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightPaddedIn_uid165_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid514_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid517_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage0Idx3_uid520_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix(MUX,532)@25
    rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_c;
    rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_combproc: PROCESS (rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_s, rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q, rightShiftStage1Idx1_uid525_fxpAlignedRes_uid164_block_rsrvd_fix_q, rightShiftStage1Idx2_uid528_fxpAlignedRes_uid164_block_rsrvd_fix_q, rightShiftStage1Idx3_uid531_fxpAlignedRes_uid164_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_s) IS
            WHEN "00" => rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage0_uid522_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN "01" => rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid525_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN "10" => rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid528_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN "11" => rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid531_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstWFP1_uid58_block_rsrvd_fix(CONSTANT,57)
    cstWFP1_uid58_block_rsrvd_fix_q <= "00011000";

    -- zwEwF_uid37_block_rsrvd_fix(CONSTANT,36)
    zwEwF_uid37_block_rsrvd_fix_q <= "0000000000000000000000000000000";

    -- yInExpFrac_uid40_block_rsrvd_fix(BITJOIN,39)@6
    yInExpFrac_uid40_block_rsrvd_fix_q <= exp_yIn_uid24_block_rsrvd_fix_b & frac_yIn_uid25_block_rsrvd_fix_b;

    -- yInZero_uid41_block_rsrvd_fix(LOGICAL,40)@6 + 1
    yInZero_uid41_block_rsrvd_fix_qi <= "1" WHEN yInExpFrac_uid40_block_rsrvd_fix_q = zwEwF_uid37_block_rsrvd_fix_q ELSE "0";
    yInZero_uid41_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => yInZero_uid41_block_rsrvd_fix_qi, xout => yInZero_uid41_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist37_yInZero_uid41_block_rsrvd_fix_q_8(DELAY,604)
    redist37_yInZero_uid41_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => yInZero_uid41_block_rsrvd_fix_q, xout => redist37_yInZero_uid41_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- redist38_yInZero_uid41_block_rsrvd_fix_q_18(DELAY,605)
    redist38_yInZero_uid41_block_rsrvd_fix_q_18 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist37_yInZero_uid41_block_rsrvd_fix_q_8_q, xout => redist38_yInZero_uid41_block_rsrvd_fix_q_18_q, clk => clk, aclr => areset );

    -- sOutAlignRes_uid158_block_rsrvd_fix(COMPARE,157)@24
    sOutAlignRes_uid158_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expRCalc_uid155_block_rsrvd_fix_q);
    sOutAlignRes_uid158_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & cstBiasMWF_uid56_block_rsrvd_fix_q);
    sOutAlignRes_uid158_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(sOutAlignRes_uid158_block_rsrvd_fix_a) - UNSIGNED(sOutAlignRes_uid158_block_rsrvd_fix_b));
    sOutAlignRes_uid158_block_rsrvd_fix_c(0) <= sOutAlignRes_uid158_block_rsrvd_fix_o(9);

    -- yInZOrsOutAlignRes_uid159_block_rsrvd_fix(LOGICAL,158)@24
    yInZOrsOutAlignRes_uid159_block_rsrvd_fix_q <= sOutAlignRes_uid158_block_rsrvd_fix_c or redist38_yInZero_uid41_block_rsrvd_fix_q_18_q;

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_notEnable(LOGICAL,676)
    redist35_expX_uid47_block_rsrvd_fix_b_9_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_nor(LOGICAL,677)
    redist35_expX_uid47_block_rsrvd_fix_b_9_nor_q <= not (redist35_expX_uid47_block_rsrvd_fix_b_9_notEnable_q or redist35_expX_uid47_block_rsrvd_fix_b_9_sticky_ena_q);

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_mem_last(CONSTANT,673)
    redist35_expX_uid47_block_rsrvd_fix_b_9_mem_last_q <= "0110";

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_cmp(LOGICAL,674)
    redist35_expX_uid47_block_rsrvd_fix_b_9_cmp_b <= STD_LOGIC_VECTOR("0" & redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_q);
    redist35_expX_uid47_block_rsrvd_fix_b_9_cmp_q <= "1" WHEN redist35_expX_uid47_block_rsrvd_fix_b_9_mem_last_q = redist35_expX_uid47_block_rsrvd_fix_b_9_cmp_b ELSE "0";

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_cmpReg(REG,675)
    redist35_expX_uid47_block_rsrvd_fix_b_9_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist35_expX_uid47_block_rsrvd_fix_b_9_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist35_expX_uid47_block_rsrvd_fix_b_9_cmpReg_q <= STD_LOGIC_VECTOR(redist35_expX_uid47_block_rsrvd_fix_b_9_cmp_q);
        END IF;
    END PROCESS;

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_sticky_ena(REG,678)
    redist35_expX_uid47_block_rsrvd_fix_b_9_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist35_expX_uid47_block_rsrvd_fix_b_9_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist35_expX_uid47_block_rsrvd_fix_b_9_nor_q = "1") THEN
                redist35_expX_uid47_block_rsrvd_fix_b_9_sticky_ena_q <= STD_LOGIC_VECTOR(redist35_expX_uid47_block_rsrvd_fix_b_9_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_enaAnd(LOGICAL,679)
    redist35_expX_uid47_block_rsrvd_fix_b_9_enaAnd_q <= redist35_expX_uid47_block_rsrvd_fix_b_9_sticky_ena_q and VCC_q;

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt(COUNTER,671)
    -- low=0, high=7, step=1, init=0
    redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_i <= TO_UNSIGNED(0, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_i <= redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_i, 3)));

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_wraddr(REG,672)
    redist35_expX_uid47_block_rsrvd_fix_b_9_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist35_expX_uid47_block_rsrvd_fix_b_9_wraddr_q <= "111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist35_expX_uid47_block_rsrvd_fix_b_9_wraddr_q <= STD_LOGIC_VECTOR(redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist35_expX_uid47_block_rsrvd_fix_b_9_mem(DUALMEM,670)
    redist35_expX_uid47_block_rsrvd_fix_b_9_mem_ia <= STD_LOGIC_VECTOR(expX_uid47_block_rsrvd_fix_b);
    redist35_expX_uid47_block_rsrvd_fix_b_9_mem_aa <= redist35_expX_uid47_block_rsrvd_fix_b_9_wraddr_q;
    redist35_expX_uid47_block_rsrvd_fix_b_9_mem_ab <= redist35_expX_uid47_block_rsrvd_fix_b_9_rdcnt_q;
    redist35_expX_uid47_block_rsrvd_fix_b_9_mem_reset0 <= areset;
    redist35_expX_uid47_block_rsrvd_fix_b_9_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 3,
        numwords_a => 8,
        width_b => 8,
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
        clocken1 => redist35_expX_uid47_block_rsrvd_fix_b_9_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist35_expX_uid47_block_rsrvd_fix_b_9_mem_reset0,
        clock1 => clk,
        address_a => redist35_expX_uid47_block_rsrvd_fix_b_9_mem_aa,
        data_a => redist35_expX_uid47_block_rsrvd_fix_b_9_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist35_expX_uid47_block_rsrvd_fix_b_9_mem_ab,
        q_b => redist35_expX_uid47_block_rsrvd_fix_b_9_mem_iq
    );
    redist35_expX_uid47_block_rsrvd_fix_b_9_mem_q <= redist35_expX_uid47_block_rsrvd_fix_b_9_mem_iq(7 downto 0);

    -- expRCalc_uid155_block_rsrvd_fix(MUX,154)@23 + 1
    expRCalc_uid155_block_rsrvd_fix_s <= redist26_fracOutMuxSelEnc_uid151_block_rsrvd_fix_q_9_q;
    expRCalc_uid155_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expRCalc_uid155_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (expRCalc_uid155_block_rsrvd_fix_s) IS
                WHEN "00" => expRCalc_uid155_block_rsrvd_fix_q <= redist35_expX_uid47_block_rsrvd_fix_b_9_mem_q;
                WHEN "01" => expRCalc_uid155_block_rsrvd_fix_q <= fracRPath2_uid148_block_rsrvd_fix_merged_bit_select_c;
                WHEN "10" => expRCalc_uid155_block_rsrvd_fix_q <= fracRPath3_uid127_block_rsrvd_fix_merged_bit_select_c;
                WHEN "11" => expRCalc_uid155_block_rsrvd_fix_q <= fracOutCst_uid152_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => expRCalc_uid155_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged(SUB,508)@24 + 1
    sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_a <= STD_LOGIC_VECTOR("0" & cstBias_uid54_block_rsrvd_fix_q);
    sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_b <= STD_LOGIC_VECTOR("0" & expRCalc_uid155_block_rsrvd_fix_q);
    sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_i <= "0" & cstWFP1_uid58_block_rsrvd_fix_q;
    sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (yInZOrsOutAlignRes_uid159_block_rsrvd_fix_q = "1") THEN
                sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_o <= sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_i;
            ELSE
                sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_o <= STD_LOGIC_VECTOR(UNSIGNED(sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_a) - UNSIGNED(sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_b));
            END IF;
        END IF;
    END PROCESS;
    sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_q <= sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_o(7 downto 0);

    -- sValPostSOutRange_uid162_block_rsrvd_fix(BITSELECT,161)@25
    sValPostSOutRange_uid162_block_rsrvd_fix_in <= sValAlignRes_uid157_block_rsrvd_fix_sValPostSAlignOut_uid161_block_rsrvd_fix_merged_q(4 downto 0);
    sValPostSOutRange_uid162_block_rsrvd_fix_b <= sValPostSOutRange_uid162_block_rsrvd_fix_in(4 downto 0);

    -- rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select(BITSELECT,564)@25
    rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_b <= sValPostSOutRange_uid162_block_rsrvd_fix_b(4 downto 3);
    rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_c <= sValPostSOutRange_uid162_block_rsrvd_fix_b(2 downto 1);
    rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_d <= sValPostSOutRange_uid162_block_rsrvd_fix_b(0 downto 0);

    -- rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix(MUX,537)@25
    rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_s <= rightShiftStageSel4Dto3_uid521_fxpAlignedRes_uid164_block_rsrvd_fix_merged_bit_select_d;
    rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_combproc: PROCESS (rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_s, rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q, rightShiftStage2Idx1_uid536_fxpAlignedRes_uid164_block_rsrvd_fix_q)
    BEGIN
        CASE (rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_s) IS
            WHEN "0" => rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage1_uid533_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN "1" => rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid536_fxpAlignedRes_uid164_block_rsrvd_fix_q;
            WHEN OTHERS => rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstPi_uid156_block_rsrvd_fix(CONSTANT,155)
    cstPi_uid156_block_rsrvd_fix_q <= "11001001000011111101101010100010001000010110100";

    -- aPostPad_uid169_block_rsrvd_fix(BITJOIN,168)@25
    aPostPad_uid169_block_rsrvd_fix_q <= cstPi_uid156_block_rsrvd_fix_q & padACst_uid168_block_rsrvd_fix_q;

    -- subRes_uid170_block_rsrvd_fix(SUB,169)@25
    subRes_uid170_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & aPostPad_uid169_block_rsrvd_fix_q);
    subRes_uid170_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & rightShiftStage2_uid538_fxpAlignedRes_uid164_block_rsrvd_fix_q);
    subRes_uid170_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(subRes_uid170_block_rsrvd_fix_a) - UNSIGNED(subRes_uid170_block_rsrvd_fix_b));
    subRes_uid170_block_rsrvd_fix_q <= subRes_uid170_block_rsrvd_fix_o(49 downto 0);

    -- subResNormBit_uid171_block_rsrvd_fix(BITSELECT,170)@25
    subResNormBit_uid171_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(subRes_uid170_block_rsrvd_fix_q(48 downto 0));
    subResNormBit_uid171_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(subResNormBit_uid171_block_rsrvd_fix_in(48 downto 48));

    -- expRSub_uid175_block_rsrvd_fix(MUX,174)@25
    expRSub_uid175_block_rsrvd_fix_s <= subResNormBit_uid171_block_rsrvd_fix_b;
    expRSub_uid175_block_rsrvd_fix_combproc: PROCESS (expRSub_uid175_block_rsrvd_fix_s, cstBias_uid54_block_rsrvd_fix_q, cstBiasP1_uid57_block_rsrvd_fix_q)
    BEGIN
        CASE (expRSub_uid175_block_rsrvd_fix_s) IS
            WHEN "0" => expRSub_uid175_block_rsrvd_fix_q <= cstBias_uid54_block_rsrvd_fix_q;
            WHEN "1" => expRSub_uid175_block_rsrvd_fix_q <= cstBiasP1_uid57_block_rsrvd_fix_q;
            WHEN OTHERS => expRSub_uid175_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist24_expRCalc_uid155_block_rsrvd_fix_q_2(DELAY,591)
    redist24_expRCalc_uid155_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => expRCalc_uid155_block_rsrvd_fix_q, xout => redist24_expRCalc_uid155_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- xInExpFrac_uid44_block_rsrvd_fix(BITJOIN,43)@6
    xInExpFrac_uid44_block_rsrvd_fix_q <= redist49_exp_xIn_uid10_block_rsrvd_fix_b_6_mem_q & redist47_frac_xIn_uid11_block_rsrvd_fix_b_6_mem_q;

    -- xInZero_uid45_block_rsrvd_fix(LOGICAL,44)@6 + 1
    xInZero_uid45_block_rsrvd_fix_qi <= "1" WHEN xInExpFrac_uid44_block_rsrvd_fix_q = zwEwF_uid37_block_rsrvd_fix_q ELSE "0";
    xInZero_uid45_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xInZero_uid45_block_rsrvd_fix_qi, xout => xInZero_uid45_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist36_xInZero_uid45_block_rsrvd_fix_q_8(DELAY,603)
    redist36_xInZero_uid45_block_rsrvd_fix_q_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => xInZero_uid45_block_rsrvd_fix_q, xout => redist36_xInZero_uid45_block_rsrvd_fix_q_8_q, clk => clk, aclr => areset );

    -- redist40_xInSign_uid36_block_rsrvd_fix_b_14(DELAY,607)
    redist40_xInSign_uid36_block_rsrvd_fix_b_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist39_xInSign_uid36_block_rsrvd_fix_b_8_q, xout => redist40_xInSign_uid36_block_rsrvd_fix_b_14_q, clk => clk, aclr => areset );

    -- xInIsLTEZero_uid176_block_rsrvd_fix(LOGICAL,175)@14 + 1
    xInIsLTEZero_uid176_block_rsrvd_fix_qi <= redist40_xInSign_uid36_block_rsrvd_fix_b_14_q or redist36_xInZero_uid45_block_rsrvd_fix_q_8_q;
    xInIsLTEZero_uid176_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xInIsLTEZero_uid176_block_rsrvd_fix_qi, xout => xInIsLTEZero_uid176_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist23_xInIsLTEZero_uid176_block_rsrvd_fix_q_11(DELAY,590)
    redist23_xInIsLTEZero_uid176_block_rsrvd_fix_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => xInIsLTEZero_uid176_block_rsrvd_fix_q, xout => redist23_xInIsLTEZero_uid176_block_rsrvd_fix_q_11_q, clk => clk, aclr => areset );

    -- expRFinal_uid178_block_rsrvd_fix(MUX,177)@25
    expRFinal_uid178_block_rsrvd_fix_s <= redist23_xInIsLTEZero_uid176_block_rsrvd_fix_q_11_q;
    expRFinal_uid178_block_rsrvd_fix_combproc: PROCESS (expRFinal_uid178_block_rsrvd_fix_s, redist24_expRCalc_uid155_block_rsrvd_fix_q_2_q, expRSub_uid175_block_rsrvd_fix_q)
    BEGIN
        CASE (expRFinal_uid178_block_rsrvd_fix_s) IS
            WHEN "0" => expRFinal_uid178_block_rsrvd_fix_q <= redist24_expRCalc_uid155_block_rsrvd_fix_q_2_q;
            WHEN "1" => expRFinal_uid178_block_rsrvd_fix_q <= expRSub_uid175_block_rsrvd_fix_q;
            WHEN OTHERS => expRFinal_uid178_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstAllZWE_uid53_block_rsrvd_fix(CONSTANT,52)
    cstAllZWE_uid53_block_rsrvd_fix_q <= "00000000";

    -- invXInSign_uid180_block_rsrvd_fix(LOGICAL,179)@14
    invXInSign_uid180_block_rsrvd_fix_q <= not (redist40_xInSign_uid36_block_rsrvd_fix_b_14_q);

    -- excRZero2_uid181_block_rsrvd_fix(LOGICAL,180)@14
    excRZero2_uid181_block_rsrvd_fix_q <= redist36_xInZero_uid45_block_rsrvd_fix_q_8_q and redist37_yInZero_uid41_block_rsrvd_fix_q_8_q and invXInSign_uid180_block_rsrvd_fix_q;

    -- invYInSign_uid179_block_rsrvd_fix(LOGICAL,178)@14
    invYInSign_uid179_block_rsrvd_fix_q <= not (redist42_yInSign_uid35_block_rsrvd_fix_b_8_q);

    -- excRZero1_uid182_block_rsrvd_fix(LOGICAL,181)@14
    excRZero1_uid182_block_rsrvd_fix_q <= excZ_div_uid460_uid66_block_rsrvd_fix_q and invYInSign_uid179_block_rsrvd_fix_q and invXInSign_uid180_block_rsrvd_fix_q;

    -- excRZero_uid183_block_rsrvd_fix(LOGICAL,182)@14 + 1
    excRZero_uid183_block_rsrvd_fix_qi <= excRZero1_uid182_block_rsrvd_fix_q or excRZero2_uid181_block_rsrvd_fix_q;
    excRZero_uid183_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRZero_uid183_block_rsrvd_fix_qi, xout => excRZero_uid183_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist22_excRZero_uid183_block_rsrvd_fix_q_11(DELAY,589)
    redist22_excRZero_uid183_block_rsrvd_fix_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 10, reset_kind => "ASYNC" )
    PORT MAP ( xin => excRZero_uid183_block_rsrvd_fix_q, xout => redist22_excRZero_uid183_block_rsrvd_fix_q_11_q, clk => clk, aclr => areset );

    -- excSelBits_uid185_block_rsrvd_fix(BITJOIN,184)@25
    excSelBits_uid185_block_rsrvd_fix_q <= redist21_excRNaN_uid184_block_rsrvd_fix_q_17_q & GND_q & redist22_excRZero_uid183_block_rsrvd_fix_q_11_q;

    -- outMuxSelEnc_uid186_block_rsrvd_fix(LOOKUP,185)@25
    outMuxSelEnc_uid186_block_rsrvd_fix_combproc: PROCESS (excSelBits_uid185_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excSelBits_uid185_block_rsrvd_fix_q) IS
            WHEN "000" => outMuxSelEnc_uid186_block_rsrvd_fix_q <= "01";
            WHEN "001" => outMuxSelEnc_uid186_block_rsrvd_fix_q <= "00";
            WHEN "010" => outMuxSelEnc_uid186_block_rsrvd_fix_q <= "10";
            WHEN "011" => outMuxSelEnc_uid186_block_rsrvd_fix_q <= "01";
            WHEN "100" => outMuxSelEnc_uid186_block_rsrvd_fix_q <= "11";
            WHEN "101" => outMuxSelEnc_uid186_block_rsrvd_fix_q <= "01";
            WHEN "110" => outMuxSelEnc_uid186_block_rsrvd_fix_q <= "01";
            WHEN "111" => outMuxSelEnc_uid186_block_rsrvd_fix_q <= "01";
            WHEN OTHERS => -- unreachable
                           outMuxSelEnc_uid186_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid189_block_rsrvd_fix(MUX,188)@25
    expRPostExc_uid189_block_rsrvd_fix_s <= outMuxSelEnc_uid186_block_rsrvd_fix_q;
    expRPostExc_uid189_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid189_block_rsrvd_fix_s, cstAllZWE_uid53_block_rsrvd_fix_q, expRFinal_uid178_block_rsrvd_fix_q, cstAllOWE_uid7_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid189_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid189_block_rsrvd_fix_q <= cstAllZWE_uid53_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid189_block_rsrvd_fix_q <= expRFinal_uid178_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid189_block_rsrvd_fix_q <= cstAllOWE_uid7_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid189_block_rsrvd_fix_q <= cstAllOWE_uid7_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid189_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- subResHigh_uid172_block_rsrvd_fix(BITSELECT,171)@25
    subResHigh_uid172_block_rsrvd_fix_in <= subRes_uid170_block_rsrvd_fix_q(47 downto 0);
    subResHigh_uid172_block_rsrvd_fix_b <= subResHigh_uid172_block_rsrvd_fix_in(47 downto 25);

    -- subResLow_uid173_block_rsrvd_fix(BITSELECT,172)@25
    subResLow_uid173_block_rsrvd_fix_in <= subRes_uid170_block_rsrvd_fix_q(46 downto 0);
    subResLow_uid173_block_rsrvd_fix_b <= subResLow_uid173_block_rsrvd_fix_in(46 downto 24);

    -- fracRSub_uid174_block_rsrvd_fix(MUX,173)@25
    fracRSub_uid174_block_rsrvd_fix_s <= subResNormBit_uid171_block_rsrvd_fix_b;
    fracRSub_uid174_block_rsrvd_fix_combproc: PROCESS (fracRSub_uid174_block_rsrvd_fix_s, subResLow_uid173_block_rsrvd_fix_b, subResHigh_uid172_block_rsrvd_fix_b)
    BEGIN
        CASE (fracRSub_uid174_block_rsrvd_fix_s) IS
            WHEN "0" => fracRSub_uid174_block_rsrvd_fix_q <= subResLow_uid173_block_rsrvd_fix_b;
            WHEN "1" => fracRSub_uid174_block_rsrvd_fix_q <= subResHigh_uid172_block_rsrvd_fix_b;
            WHEN OTHERS => fracRSub_uid174_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRFinal_uid177_block_rsrvd_fix(MUX,176)@25
    fracRFinal_uid177_block_rsrvd_fix_s <= redist23_xInIsLTEZero_uid176_block_rsrvd_fix_q_11_q;
    fracRFinal_uid177_block_rsrvd_fix_combproc: PROCESS (fracRFinal_uid177_block_rsrvd_fix_s, redist25_fracRCalc_uid153_block_rsrvd_fix_q_2_q, fracRSub_uid174_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRFinal_uid177_block_rsrvd_fix_s) IS
            WHEN "0" => fracRFinal_uid177_block_rsrvd_fix_q <= redist25_fracRCalc_uid153_block_rsrvd_fix_q_2_q;
            WHEN "1" => fracRFinal_uid177_block_rsrvd_fix_q <= fracRSub_uid174_block_rsrvd_fix_q;
            WHEN OTHERS => fracRFinal_uid177_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRPostExc_uid188_block_rsrvd_fix(MUX,187)@25
    fracRPostExc_uid188_block_rsrvd_fix_s <= outMuxSelEnc_uid186_block_rsrvd_fix_q;
    fracRPostExc_uid188_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid188_block_rsrvd_fix_s, cstZeroWF_uid8_block_rsrvd_fix_q, fracRFinal_uid177_block_rsrvd_fix_q, cstNaNWF_uid52_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid188_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid188_block_rsrvd_fix_q <= cstZeroWF_uid8_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid188_block_rsrvd_fix_q <= fracRFinal_uid177_block_rsrvd_fix_q;
            WHEN "10" => fracRPostExc_uid188_block_rsrvd_fix_q <= cstZeroWF_uid8_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid188_block_rsrvd_fix_q <= cstNaNWF_uid52_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid188_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid192_block_rsrvd_fix(BITJOIN,191)@25
    R_uid192_block_rsrvd_fix_q <= signR_uid191_block_rsrvd_fix_q & expRPostExc_uid189_block_rsrvd_fix_q & fracRPostExc_uid188_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,5)@25
    out_primWireOut <= R_uid192_block_rsrvd_fix_q;

END normal;
