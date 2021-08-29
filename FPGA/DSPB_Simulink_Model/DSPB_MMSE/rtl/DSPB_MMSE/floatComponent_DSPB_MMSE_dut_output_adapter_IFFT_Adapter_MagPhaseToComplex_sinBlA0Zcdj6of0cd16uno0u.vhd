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

-- VHDL created from floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA0Z0of0cdj6of0cd16uno0u
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
entity floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA0Z0of0cdj6of0cd16uno0u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA0Z0of0cdj6of0cd16uno0u;

architecture normal of floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA0Z0of0cdj6of0cd16uno0u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_x_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExpXIsMax_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal InvExpXIsZero_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
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
    signal cstBiasMwShiftM2_uid79_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal signX_uid82_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signXRR_uid85_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal sinXIsX_uid86_block_rsrvd_fix_a : STD_LOGIC_VECTOR (9 downto 0);
    signal sinXIsX_uid86_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal sinXIsX_uid86_block_rsrvd_fix_o : STD_LOGIC_VECTOR (9 downto 0);
    signal sinXIsX_uid86_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal sinXIsXRR_uid87_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal sinXIsXRR_uid87_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal sinXIsXRR_uid87_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal sinXIsXRR_uid87_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal intXParity_uid90_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal y_uid91_block_rsrvd_fix_in : STD_LOGIC_VECTOR (66 downto 0);
    signal y_uid91_block_rsrvd_fix_b : STD_LOGIC_VECTOR (65 downto 0);
    signal padACst_uid93_block_rsrvd_fix_q : STD_LOGIC_VECTOR (65 downto 0);
    signal aPostPad_uid94_block_rsrvd_fix_q : STD_LOGIC_VECTOR (66 downto 0);
    signal oneMinusY_uid95_block_rsrvd_fix_a : STD_LOGIC_VECTOR (67 downto 0);
    signal oneMinusY_uid95_block_rsrvd_fix_b : STD_LOGIC_VECTOR (67 downto 0);
    signal oneMinusY_uid95_block_rsrvd_fix_o : STD_LOGIC_VECTOR (67 downto 0);
    signal oneMinusY_uid95_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal cmpYToOneMinusY_uid97_block_rsrvd_fix_a : STD_LOGIC_VECTOR (69 downto 0);
    signal cmpYToOneMinusY_uid97_block_rsrvd_fix_b : STD_LOGIC_VECTOR (69 downto 0);
    signal cmpYToOneMinusY_uid97_block_rsrvd_fix_o : STD_LOGIC_VECTOR (69 downto 0);
    signal cmpYToOneMinusY_uid97_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal oMyBottom_uid98_block_rsrvd_fix_in : STD_LOGIC_VECTOR (64 downto 0);
    signal oMyBottom_uid98_block_rsrvd_fix_b : STD_LOGIC_VECTOR (64 downto 0);
    signal yBottom_uid99_block_rsrvd_fix_in : STD_LOGIC_VECTOR (64 downto 0);
    signal yBottom_uid99_block_rsrvd_fix_b : STD_LOGIC_VECTOR (64 downto 0);
    signal z_uid100_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal z_uid100_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal cPi_uid104_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal pHigh_uid106_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal p_uid107_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal p_uid107_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal msbuExpXRR_uid110_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signExtExpXRR_uid111_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal yAddr_uid116_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal zPPolyEval_uid117_block_rsrvd_fix_in : STD_LOGIC_VECTOR (56 downto 0);
    signal zPPolyEval_uid117_block_rsrvd_fix_b : STD_LOGIC_VECTOR (17 downto 0);
    signal fxpSinRes_uid119_block_rsrvd_fix_in : STD_LOGIC_VECTOR (30 downto 0);
    signal fxpSinRes_uid119_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal oFracXRRSmallXRR_uid120_block_rsrvd_fix_b : STD_LOGIC_VECTOR (25 downto 0);
    signal multSecondOperand_uid121_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal multSecondOperand_uid121_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal normBit_uid123_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highRes_uid124_block_rsrvd_fix_in : STD_LOGIC_VECTOR (50 downto 0);
    signal highRes_uid124_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal lowRes_uid125_block_rsrvd_fix_in : STD_LOGIC_VECTOR (49 downto 0);
    signal lowRes_uid125_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRCompPreRnd_uid126_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRCompPreRnd_uid126_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal expRCompFracRCompPreRnd_uid127_block_rsrvd_fix_q : STD_LOGIC_VECTOR (32 downto 0);
    signal concSinXIsXRRNormBit_uid130_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rndOp_uid133_block_rsrvd_fix_q : STD_LOGIC_VECTOR (25 downto 0);
    signal expRCompFracRComp_uid134_block_rsrvd_fix_a : STD_LOGIC_VECTOR (34 downto 0);
    signal expRCompFracRComp_uid134_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal expRCompFracRComp_uid134_block_rsrvd_fix_o : STD_LOGIC_VECTOR (34 downto 0);
    signal expRCompFracRComp_uid134_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal fracRComp_uid135_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRComp_uid135_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expRCompE_uid136_block_rsrvd_fix_in : STD_LOGIC_VECTOR (32 downto 0);
    signal expRCompE_uid136_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expRComp_uid137_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expRComp_uid137_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal udf_uid138_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid138_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid138_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid138_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal xRegAndUdf_uid139_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid140_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRNaN_uid141_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelBits_uid142_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal excSel_uid143_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracNaN_uid144_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid146_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid146_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid150_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid150_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal invSinXIsX_uid151_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invSinXIsXRR_uid152_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signComp_uid153_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid154_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signRFinal_uid155_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sinx_uid156_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal expFracX_uid158_px_uid21_block_rsrvd_fix_b : STD_LOGIC_VECTOR (30 downto 0);
    signal R_uid159_px_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid161_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid163_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid164_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid166_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid166_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid167_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid169_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid172_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid172_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid175_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid178_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid178_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal zs_uid179_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid181_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid184_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid184_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal zs_uid185_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid187_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid190_zCount_uid58_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid190_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid192_zCount_uid58_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid193_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid194_zCount_uid58_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal zs_uid196_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rVStage_uid197_lzcZ_uid102_block_rsrvd_fix_b : STD_LOGIC_VECTOR (63 downto 0);
    signal vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mO_uid199_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (62 downto 0);
    signal vStage_uid200_lzcZ_uid102_block_rsrvd_fix_in : STD_LOGIC_VECTOR (0 downto 0);
    signal vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid201_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (63 downto 0);
    signal vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal vCount_uid224_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid230_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid235_lzcZ_uid102_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid236_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid237_lzcZ_uid102_block_rsrvd_fix_q : STD_LOGIC_VECTOR (6 downto 0);
    signal yT1_uid251_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal lowRangeB_uid253_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid253_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid254_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal s1sumAHighB_uid255_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid255_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid255_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid255_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid256_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid259_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid259_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid260_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid261_invPolyEval_a : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid261_invPolyEval_b : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid261_invPolyEval_o : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid261_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal s2_uid262_invPolyEval_q : STD_LOGIC_VECTOR (32 downto 0);
    signal osig_uid265_pT1_uid252_invPolyEval_b : STD_LOGIC_VECTOR (13 downto 0);
    signal osig_uid268_pT2_uid258_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
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
    signal leftShiftStage0Idx1Rng16_uid289_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1Rng16_uid289_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage0Idx1_uid290_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage0Idx2Rng32_uid292_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage0Idx2Rng32_uid292_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (45 downto 0);
    signal leftShiftStage0Idx2_uid293_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage0Idx3Pad48_uid294_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx3Rng48_uid295_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx3Rng48_uid295_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx3_uid296_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage1Idx1Rng4_uid300_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (73 downto 0);
    signal leftShiftStage1Idx1Rng4_uid300_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (73 downto 0);
    signal leftShiftStage1Idx1_uid301_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage1Idx2Rng8_uid303_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (69 downto 0);
    signal leftShiftStage1Idx2Rng8_uid303_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (69 downto 0);
    signal leftShiftStage1Idx2_uid304_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage1Idx3Pad12_uid305_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx3Rng12_uid306_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage1Idx3Rng12_uid306_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage1Idx3_uid307_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage2Idx1Rng1_uid311_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (76 downto 0);
    signal leftShiftStage2Idx1Rng1_uid311_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (76 downto 0);
    signal leftShiftStage2Idx1_uid312_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage2Idx2Rng2_uid314_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (75 downto 0);
    signal leftShiftStage2Idx2Rng2_uid314_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (75 downto 0);
    signal leftShiftStage2Idx2_uid315_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage2Idx3Pad3_uid316_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage2Idx3Rng3_uid317_normMult_uid59_block_rsrvd_fix_in : STD_LOGIC_VECTOR (74 downto 0);
    signal leftShiftStage2Idx3Rng3_uid317_normMult_uid59_block_rsrvd_fix_b : STD_LOGIC_VECTOR (74 downto 0);
    signal leftShiftStage2Idx3_uid318_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (77 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_i : STD_LOGIC_VECTOR (8 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_q : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage0Idx1Rng4_uid326_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1Rng4_uid326_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx1_uid327_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx2Rng8_uid329_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx2Rng8_uid329_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx2_uid330_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx3Rng12_uid332_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx3Rng12_uid332_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage0Idx3_uid333_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage1Idx1Rng1_uid337_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage1Idx1Rng1_uid337_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (66 downto 0);
    signal leftShiftStage1Idx1_uid338_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage1Idx2Rng2_uid340_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage1Idx2Rng2_uid340_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (65 downto 0);
    signal leftShiftStage1Idx2_uid341_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage1Idx3Rng3_uid343_fxpX_uid77_block_rsrvd_fix_in : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx3Rng3_uid343_fxpX_uid77_block_rsrvd_fix_b : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx3_uid344_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx1Rng32_uid351_alignedZ_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (32 downto 0);
    signal leftShiftStage0Idx1Rng32_uid351_alignedZ_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal leftShiftStage0Idx1_uid352_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage0Idx2_uid355_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage0Idx3_uid356_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx1Rng8_uid360_alignedZ_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (56 downto 0);
    signal leftShiftStage1Idx1Rng8_uid360_alignedZ_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (56 downto 0);
    signal leftShiftStage1Idx1_uid361_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx2Rng16_uid363_alignedZ_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx2Rng16_uid363_alignedZ_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (48 downto 0);
    signal leftShiftStage1Idx2_uid364_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1Idx3Pad24_uid365_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal leftShiftStage1Idx3Rng24_uid366_alignedZ_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (40 downto 0);
    signal leftShiftStage1Idx3Rng24_uid366_alignedZ_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (40 downto 0);
    signal leftShiftStage1Idx3_uid367_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2Idx1Rng2_uid371_alignedZ_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage2Idx1Rng2_uid371_alignedZ_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage2Idx1_uid372_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2Idx2Rng4_uid374_alignedZ_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage2Idx2Rng4_uid374_alignedZ_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage2Idx2_uid375_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2Idx3Pad6_uid376_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal leftShiftStage2Idx3Rng6_uid377_alignedZ_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage2Idx3Rng6_uid377_alignedZ_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (58 downto 0);
    signal leftShiftStage2Idx3_uid378_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage3Idx1Rng1_uid382_alignedZ_uid103_block_rsrvd_fix_in : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3Idx1Rng1_uid382_alignedZ_uid103_block_rsrvd_fix_b : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage3Idx1_uid383_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_q : STD_LOGIC_VECTOR (64 downto 0);
    signal expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_a : STD_LOGIC_VECTOR (9 downto 0);
    signal expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_b : STD_LOGIC_VECTOR (9 downto 0);
    signal expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_i : STD_LOGIC_VECTOR (9 downto 0);
    signal expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_o : STD_LOGIC_VECTOR (9 downto 0);
    signal expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid239_sinXTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid239_sinXTables_lutmem_ia : STD_LOGIC_VECTOR (29 downto 0);
    signal memoryC0_uid239_sinXTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid239_sinXTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC0_uid239_sinXTables_lutmem_ir : STD_LOGIC_VECTOR (29 downto 0);
    signal memoryC0_uid239_sinXTables_lutmem_r : STD_LOGIC_VECTOR (29 downto 0);
    signal memoryC1_uid242_sinXTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid242_sinXTables_lutmem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC1_uid242_sinXTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid242_sinXTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC1_uid242_sinXTables_lutmem_ir : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC1_uid242_sinXTables_lutmem_r : STD_LOGIC_VECTOR (20 downto 0);
    signal memoryC2_uid245_sinXTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid245_sinXTables_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid245_sinXTables_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid245_sinXTables_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal memoryC2_uid245_sinXTables_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal memoryC2_uid245_sinXTables_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
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
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_reset : std_logic;
    type prodXY_uid264_pT1_uid252_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(12 downto 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_a0 : prodXY_uid264_pT1_uid252_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid264_pT1_uid252_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid264_pT1_uid252_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(12 downto 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_c0 : prodXY_uid264_pT1_uid252_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid264_pT1_uid252_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid264_pT1_uid252_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_l : prodXY_uid264_pT1_uid252_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid264_pT1_uid252_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(26 downto 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_p : prodXY_uid264_pT1_uid252_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_u : prodXY_uid264_pT1_uid252_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_w : prodXY_uid264_pT1_uid252_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_x : prodXY_uid264_pT1_uid252_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_y : prodXY_uid264_pT1_uid252_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_s : prodXY_uid264_pT1_uid252_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_q : STD_LOGIC_VECTOR (25 downto 0);
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid264_pT1_uid252_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_reset : std_logic;
    type prodXY_uid267_pT2_uid258_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_a0 : prodXY_uid267_pT2_uid258_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid267_pT2_uid258_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid267_pT2_uid258_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_c0 : prodXY_uid267_pT2_uid258_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid267_pT2_uid258_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid267_pT2_uid258_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_l : prodXY_uid267_pT2_uid258_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid267_pT2_uid258_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(41 downto 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_p : prodXY_uid267_pT2_uid258_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_u : prodXY_uid267_pT2_uid258_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_w : prodXY_uid267_pT2_uid258_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_x : prodXY_uid267_pT2_uid258_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_y : prodXY_uid267_pT2_uid258_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_s : prodXY_uid267_pT2_uid258_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_qq : STD_LOGIC_VECTOR (40 downto 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_q : STD_LOGIC_VECTOR (40 downto 0);
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid267_pT2_uid258_invPolyEval_cma_ena1 : std_logic;
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
    signal leftShiftStageSel3Dto2_uid334_fxpX_uid77_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel3Dto2_uid334_fxpX_uid77_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (30 downto 0);
    signal exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (22 downto 0);
    signal rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid174_zCount_uid58_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid174_zCount_uid58_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid217_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid217_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_e : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5_q : STD_LOGIC_VECTOR (22 downto 0);
    signal redist4_vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_vCount_uid175_zCount_uid58_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_vCount_uid169_zCount_uid58_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_vCount_uid163_zCount_uid58_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_zPPolyEval_uid117_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist14_yAddr_uid116_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist15_yAddr_uid116_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist17_z_uid100_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (64 downto 0);
    signal redist18_z_uid100_block_rsrvd_fix_q_2_q : STD_LOGIC_VECTOR (64 downto 0);
    signal redist19_intXParity_uid90_block_rsrvd_fix_b_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_sinXIsXRR_uid87_block_rsrvd_fix_n_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_sinXIsXRR_uid87_block_rsrvd_fix_n_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_signXRR_uid85_block_rsrvd_fix_b_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_expXRR_uid70_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist24_intBit_uid57_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_multFracBits_uid54_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (77 downto 0);
    signal redist26_xBranch_uid42_block_rsrvd_fix_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
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
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_reset0 : std_logic;
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_ia : STD_LOGIC_VECTOR (8 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_iq : STD_LOGIC_VECTOR (8 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_i : signal is true;
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_sticky_ena_q : signal is true;
    signal redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_reset0 : std_logic;
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_ia : STD_LOGIC_VECTOR (25 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_iq : STD_LOGIC_VECTOR (25 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i : signal is true;
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_eq : signal is true;
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_sticky_ena_q : signal is true;
    signal redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_reset0 : std_logic;
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_ia : STD_LOGIC_VECTOR (25 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_iq : STD_LOGIC_VECTOR (25 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_q : STD_LOGIC_VECTOR (25 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i : signal is true;
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_eq : std_logic;
    attribute preserve of redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_eq : signal is true;
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist16_pHigh_uid106_block_rsrvd_fix_b_4_sticky_ena_q : signal is true;
    signal redist16_pHigh_uid106_block_rsrvd_fix_b_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_in_0_in_0_14_mem_reset0 : std_logic;
    signal redist27_in_0_in_0_14_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist27_in_0_in_0_14_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist27_in_0_in_0_14_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist27_in_0_in_0_14_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist27_in_0_in_0_14_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist27_in_0_in_0_14_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist27_in_0_in_0_14_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist27_in_0_in_0_14_rdcnt_i : signal is true;
    signal redist27_in_0_in_0_14_rdcnt_eq : std_logic;
    attribute preserve of redist27_in_0_in_0_14_rdcnt_eq : signal is true;
    signal redist27_in_0_in_0_14_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist27_in_0_in_0_14_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist27_in_0_in_0_14_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist27_in_0_in_0_14_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_in_0_in_0_14_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_in_0_in_0_14_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_in_0_in_0_14_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_in_0_in_0_14_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist27_in_0_in_0_14_sticky_ena_q : signal is true;
    signal redist27_in_0_in_0_14_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- leftShiftStage1Idx3Rng3_uid343_fxpX_uid77_block_rsrvd_fix(BITSELECT,342)@6
    leftShiftStage1Idx3Rng3_uid343_fxpX_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q(64 downto 0);
    leftShiftStage1Idx3Rng3_uid343_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng3_uid343_fxpX_uid77_block_rsrvd_fix_in(64 downto 0);

    -- leftShiftStage2Idx3Pad3_uid316_normMult_uid59_block_rsrvd_fix(CONSTANT,315)
    leftShiftStage2Idx3Pad3_uid316_normMult_uid59_block_rsrvd_fix_q <= "000";

    -- leftShiftStage1Idx3_uid344_fxpX_uid77_block_rsrvd_fix(BITJOIN,343)@6
    leftShiftStage1Idx3_uid344_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng3_uid343_fxpX_uid77_block_rsrvd_fix_b & leftShiftStage2Idx3Pad3_uid316_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng2_uid340_fxpX_uid77_block_rsrvd_fix(BITSELECT,339)@6
    leftShiftStage1Idx2Rng2_uid340_fxpX_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q(65 downto 0);
    leftShiftStage1Idx2Rng2_uid340_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng2_uid340_fxpX_uid77_block_rsrvd_fix_in(65 downto 0);

    -- zs_uid185_zCount_uid58_block_rsrvd_fix(CONSTANT,184)
    zs_uid185_zCount_uid58_block_rsrvd_fix_q <= "00";

    -- leftShiftStage1Idx2_uid341_fxpX_uid77_block_rsrvd_fix(BITJOIN,340)@6
    leftShiftStage1Idx2_uid341_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng2_uid340_fxpX_uid77_block_rsrvd_fix_b & zs_uid185_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng1_uid337_fxpX_uid77_block_rsrvd_fix(BITSELECT,336)@6
    leftShiftStage1Idx1Rng1_uid337_fxpX_uid77_block_rsrvd_fix_in <= leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q(66 downto 0);
    leftShiftStage1Idx1Rng1_uid337_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng1_uid337_fxpX_uid77_block_rsrvd_fix_in(66 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- leftShiftStage1Idx1_uid338_fxpX_uid77_block_rsrvd_fix(BITJOIN,337)@6
    leftShiftStage1Idx1_uid338_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng1_uid337_fxpX_uid77_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage0Idx3Rng12_uid332_fxpX_uid77_block_rsrvd_fix(BITSELECT,331)@6
    leftShiftStage0Idx3Rng12_uid332_fxpX_uid77_block_rsrvd_fix_in <= extendedFracX_uid76_block_rsrvd_fix_q(55 downto 0);
    leftShiftStage0Idx3Rng12_uid332_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng12_uid332_fxpX_uid77_block_rsrvd_fix_in(55 downto 0);

    -- leftShiftStage1Idx3Pad12_uid305_normMult_uid59_block_rsrvd_fix(CONSTANT,304)
    leftShiftStage1Idx3Pad12_uid305_normMult_uid59_block_rsrvd_fix_q <= "000000000000";

    -- leftShiftStage0Idx3_uid333_fxpX_uid77_block_rsrvd_fix(BITJOIN,332)@6
    leftShiftStage0Idx3_uid333_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng12_uid332_fxpX_uid77_block_rsrvd_fix_b & leftShiftStage1Idx3Pad12_uid305_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng8_uid329_fxpX_uid77_block_rsrvd_fix(BITSELECT,328)@6
    leftShiftStage0Idx2Rng8_uid329_fxpX_uid77_block_rsrvd_fix_in <= extendedFracX_uid76_block_rsrvd_fix_q(59 downto 0);
    leftShiftStage0Idx2Rng8_uid329_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng8_uid329_fxpX_uid77_block_rsrvd_fix_in(59 downto 0);

    -- cstAllZWE_uid8_block_rsrvd_fix(CONSTANT,7)
    cstAllZWE_uid8_block_rsrvd_fix_q <= "00000000";

    -- leftShiftStage0Idx2_uid330_fxpX_uid77_block_rsrvd_fix(BITJOIN,329)@6
    leftShiftStage0Idx2_uid330_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng8_uid329_fxpX_uid77_block_rsrvd_fix_b & cstAllZWE_uid8_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng4_uid326_fxpX_uid77_block_rsrvd_fix(BITSELECT,325)@6
    leftShiftStage0Idx1Rng4_uid326_fxpX_uid77_block_rsrvd_fix_in <= extendedFracX_uid76_block_rsrvd_fix_q(63 downto 0);
    leftShiftStage0Idx1Rng4_uid326_fxpX_uid77_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng4_uid326_fxpX_uid77_block_rsrvd_fix_in(63 downto 0);

    -- zs_uid179_zCount_uid58_block_rsrvd_fix(CONSTANT,178)
    zs_uid179_zCount_uid58_block_rsrvd_fix_q <= "0000";

    -- leftShiftStage0Idx1_uid327_fxpX_uid77_block_rsrvd_fix(BITJOIN,326)@6
    leftShiftStage0Idx1_uid327_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng4_uid326_fxpX_uid77_block_rsrvd_fix_b & zs_uid179_zCount_uid58_block_rsrvd_fix_q;

    -- cstZwShiftP1_uid69_block_rsrvd_fix(CONSTANT,68)
    cstZwShiftP1_uid69_block_rsrvd_fix_q <= "00000000000000";

    -- expFracX_uid158_px_uid21_block_rsrvd_fix(BITSELECT,157)@0
    expFracX_uid158_px_uid21_block_rsrvd_fix_b <= in_0(30 downto 0);

    -- R_uid159_px_uid21_block_rsrvd_fix(BITJOIN,158)@0
    R_uid159_px_uid21_block_rsrvd_fix_q <= GND_q & expFracX_uid158_px_uid21_block_rsrvd_fix_b;

    -- exp_fpx_uid26_block_rsrvd_fix_merged_bit_select(BITSELECT,398)@0
    exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_in <= R_uid159_px_uid21_block_rsrvd_fix_q(30 downto 0);
    exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b <= exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_in(30 downto 23);
    exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c <= exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_in(22 downto 0);

    -- redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2(DELAY,411)
    redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 23, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c, xout => redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2_q, clk => clk, aclr => areset );

    -- oFracX_uid52_block_rsrvd_fix(BITJOIN,51)@2
    oFracX_uid52_block_rsrvd_fix_q <= VCC_q & redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2_q;

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

    -- rrTable_uid48_block_rsrvd_fix_lutmem(DUALMEM,270)@0 + 2
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA1Zrsrvd_fix_lutmem.hex"),
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

    -- rrTable_uid47_block_rsrvd_fix_lutmem(DUALMEM,269)@0 + 2
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA0Zrsrvd_fix_lutmem.hex"),
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

    -- prod_uid53_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,396)@2
    prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_b <= os_uid49_block_rsrvd_fix_q(26 downto 0);
    prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_c <= os_uid49_block_rsrvd_fix_q(79 downto 54);
    prod_uid53_block_rsrvd_fix_bs1_merged_bit_select_d <= os_uid49_block_rsrvd_fix_q(53 downto 27);

    -- prod_uid53_block_rsrvd_fix_im6_cma(CHAINMULTADD,395)@2 + 2
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

    -- prod_uid53_block_rsrvd_fix_align_11(BITSHIFT,282)@4
    prod_uid53_block_rsrvd_fix_align_11_qint <= prod_uid53_block_rsrvd_fix_im6_cma_q & "000000000000000000000000000";
    prod_uid53_block_rsrvd_fix_align_11_q <= prod_uid53_block_rsrvd_fix_align_11_qint(77 downto 0);

    -- prod_uid53_block_rsrvd_fix_im3_cma(CHAINMULTADD,394)@2 + 2
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

    -- prod_uid53_block_rsrvd_fix_align_9(BITSHIFT,280)@4
    prod_uid53_block_rsrvd_fix_align_9_qint <= prod_uid53_block_rsrvd_fix_im3_cma_q & "000";
    prod_uid53_block_rsrvd_fix_align_9_q <= prod_uid53_block_rsrvd_fix_align_9_qint(52 downto 0);

    -- prod_uid53_block_rsrvd_fix_im0_cma(CHAINMULTADD,393)@2 + 2
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

    -- prod_uid53_block_rsrvd_fix_join_10(BITJOIN,281)@4
    prod_uid53_block_rsrvd_fix_join_10_q <= prod_uid53_block_rsrvd_fix_align_9_q & prod_uid53_block_rsrvd_fix_im0_cma_q;

    -- prod_uid53_block_rsrvd_fix_result_add_0_0(ADD,284)@4
    prod_uid53_block_rsrvd_fix_result_add_0_0_a <= STD_LOGIC_VECTOR("0" & prod_uid53_block_rsrvd_fix_join_10_q);
    prod_uid53_block_rsrvd_fix_result_add_0_0_b <= STD_LOGIC_VECTOR("000000000000000000000000000" & prod_uid53_block_rsrvd_fix_align_11_q);
    prod_uid53_block_rsrvd_fix_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(prod_uid53_block_rsrvd_fix_result_add_0_0_a) + UNSIGNED(prod_uid53_block_rsrvd_fix_result_add_0_0_b));
    prod_uid53_block_rsrvd_fix_result_add_0_0_q <= prod_uid53_block_rsrvd_fix_result_add_0_0_o(104 downto 0);

    -- multFracBits_uid54_block_rsrvd_fix(BITSELECT,53)@4
    multFracBits_uid54_block_rsrvd_fix_in <= prod_uid53_block_rsrvd_fix_result_add_0_0_q(77 downto 0);
    multFracBits_uid54_block_rsrvd_fix_b <= multFracBits_uid54_block_rsrvd_fix_in(77 downto 0);

    -- redist25_multFracBits_uid54_block_rsrvd_fix_b_1(DELAY,435)
    redist25_multFracBits_uid54_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 78, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => multFracBits_uid54_block_rsrvd_fix_b, xout => redist25_multFracBits_uid54_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- intBit_uid57_block_rsrvd_fix(BITSELECT,56)@5
    intBit_uid57_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(redist25_multFracBits_uid54_block_rsrvd_fix_b_1_q(77 downto 77));

    -- redist24_intBit_uid57_block_rsrvd_fix_b_1(DELAY,434)
    redist24_intBit_uid57_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => intBit_uid57_block_rsrvd_fix_b, xout => redist24_intBit_uid57_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_notEnable(LOGICAL,444)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_nor(LOGICAL,445)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_nor_q <= not (redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_notEnable_q or redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_q);

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_last(CONSTANT,441)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_last_q <= "010";

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp(LOGICAL,442)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_b <= STD_LOGIC_VECTOR("0" & redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_q);
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_q <= "1" WHEN redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_last_q = redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_b ELSE "0";

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg(REG,443)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmpReg_q <= STD_LOGIC_VECTOR(redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena(REG,446)
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

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_enaAnd(LOGICAL,447)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_enaAnd_q <= redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_sticky_ena_q and VCC_q;

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt(COUNTER,439)
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

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr(REG,440)
    redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr_q <= "11";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_wraddr_q <= STD_LOGIC_VECTOR(redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem(DUALMEM,438)
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

    -- redist26_xBranch_uid42_block_rsrvd_fix_q_5(DELAY,436)
    redist26_xBranch_uid42_block_rsrvd_fix_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xBranch_uid42_block_rsrvd_fix_q, xout => redist26_xBranch_uid42_block_rsrvd_fix_q_5_q, clk => clk, aclr => areset );

    -- zs_uid161_zCount_uid58_block_rsrvd_fix(CONSTANT,160)
    zs_uid161_zCount_uid58_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- multFracBitsTopLow_uid55_block_rsrvd_fix(BITSELECT,54)@4
    multFracBitsTopLow_uid55_block_rsrvd_fix_in <= multFracBits_uid54_block_rsrvd_fix_b(76 downto 0);
    multFracBitsTopLow_uid55_block_rsrvd_fix_b <= multFracBitsTopLow_uid55_block_rsrvd_fix_in(76 downto 46);

    -- multFracBitsTop_uid56_block_rsrvd_fix(BITJOIN,55)@4
    multFracBitsTop_uid56_block_rsrvd_fix_q <= GND_q & multFracBitsTopLow_uid55_block_rsrvd_fix_b;

    -- vCount_uid163_zCount_uid58_block_rsrvd_fix(LOGICAL,162)@4
    vCount_uid163_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN multFracBitsTop_uid56_block_rsrvd_fix_q = zs_uid161_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- redist11_vCount_uid163_zCount_uid58_block_rsrvd_fix_q_1(DELAY,421)
    redist11_vCount_uid163_zCount_uid58_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid163_zCount_uid58_block_rsrvd_fix_q, xout => redist11_vCount_uid163_zCount_uid58_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid167_zCount_uid58_block_rsrvd_fix(CONSTANT,166)
    zs_uid167_zCount_uid58_block_rsrvd_fix_q <= "0000000000000000";

    -- mO_uid164_zCount_uid58_block_rsrvd_fix(CONSTANT,163)
    mO_uid164_zCount_uid58_block_rsrvd_fix_q <= "11111111111111111111111111111111";

    -- vStagei_uid166_zCount_uid58_block_rsrvd_fix(MUX,165)@4
    vStagei_uid166_zCount_uid58_block_rsrvd_fix_s <= vCount_uid163_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid166_zCount_uid58_block_rsrvd_fix_combproc: PROCESS (vStagei_uid166_zCount_uid58_block_rsrvd_fix_s, multFracBitsTop_uid56_block_rsrvd_fix_q, mO_uid164_zCount_uid58_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid166_zCount_uid58_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid166_zCount_uid58_block_rsrvd_fix_q <= multFracBitsTop_uid56_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid166_zCount_uid58_block_rsrvd_fix_q <= mO_uid164_zCount_uid58_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid166_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select(BITSELECT,399)@4
    rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid166_zCount_uid58_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid166_zCount_uid58_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid169_zCount_uid58_block_rsrvd_fix(LOGICAL,168)@4
    vCount_uid169_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_b = zs_uid167_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- redist10_vCount_uid169_zCount_uid58_block_rsrvd_fix_q_1(DELAY,420)
    redist10_vCount_uid169_zCount_uid58_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid169_zCount_uid58_block_rsrvd_fix_q, xout => redist10_vCount_uid169_zCount_uid58_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid172_zCount_uid58_block_rsrvd_fix(MUX,171)@4
    vStagei_uid172_zCount_uid58_block_rsrvd_fix_s <= vCount_uid169_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid172_zCount_uid58_block_rsrvd_fix_combproc: PROCESS (vStagei_uid172_zCount_uid58_block_rsrvd_fix_s, rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_b, rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid172_zCount_uid58_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid172_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid172_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid168_zCount_uid58_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid172_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid174_zCount_uid58_block_rsrvd_fix_merged_bit_select(BITSELECT,400)@4
    rVStage_uid174_zCount_uid58_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid172_zCount_uid58_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid174_zCount_uid58_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid172_zCount_uid58_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid175_zCount_uid58_block_rsrvd_fix(LOGICAL,174)@4
    vCount_uid175_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid174_zCount_uid58_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid8_block_rsrvd_fix_q ELSE "0";

    -- redist9_vCount_uid175_zCount_uid58_block_rsrvd_fix_q_1(DELAY,419)
    redist9_vCount_uid175_zCount_uid58_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid175_zCount_uid58_block_rsrvd_fix_q, xout => redist9_vCount_uid175_zCount_uid58_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid178_zCount_uid58_block_rsrvd_fix(MUX,177)@4 + 1
    vStagei_uid178_zCount_uid58_block_rsrvd_fix_s <= vCount_uid175_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid178_zCount_uid58_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid178_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid178_zCount_uid58_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid178_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid174_zCount_uid58_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid178_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid174_zCount_uid58_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid178_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select(BITSELECT,401)@5
    rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid178_zCount_uid58_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid178_zCount_uid58_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid181_zCount_uid58_block_rsrvd_fix(LOGICAL,180)@5
    vCount_uid181_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_b = zs_uid179_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid184_zCount_uid58_block_rsrvd_fix(MUX,183)@5
    vStagei_uid184_zCount_uid58_block_rsrvd_fix_s <= vCount_uid181_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid184_zCount_uid58_block_rsrvd_fix_combproc: PROCESS (vStagei_uid184_zCount_uid58_block_rsrvd_fix_s, rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_b, rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid184_zCount_uid58_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid184_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid184_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid180_zCount_uid58_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid184_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select(BITSELECT,402)@5
    rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid184_zCount_uid58_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid184_zCount_uid58_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid187_zCount_uid58_block_rsrvd_fix(LOGICAL,186)@5
    vCount_uid187_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_b = zs_uid185_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid190_zCount_uid58_block_rsrvd_fix(MUX,189)@5
    vStagei_uid190_zCount_uid58_block_rsrvd_fix_s <= vCount_uid187_zCount_uid58_block_rsrvd_fix_q;
    vStagei_uid190_zCount_uid58_block_rsrvd_fix_combproc: PROCESS (vStagei_uid190_zCount_uid58_block_rsrvd_fix_s, rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_b, rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid190_zCount_uid58_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid190_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid190_zCount_uid58_block_rsrvd_fix_q <= rVStage_uid186_zCount_uid58_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid190_zCount_uid58_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid192_zCount_uid58_block_rsrvd_fix(BITSELECT,191)@5
    rVStage_uid192_zCount_uid58_block_rsrvd_fix_b <= vStagei_uid190_zCount_uid58_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid193_zCount_uid58_block_rsrvd_fix(LOGICAL,192)@5
    vCount_uid193_zCount_uid58_block_rsrvd_fix_q <= "1" WHEN rVStage_uid192_zCount_uid58_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid194_zCount_uid58_block_rsrvd_fix(BITJOIN,193)@5
    r_uid194_zCount_uid58_block_rsrvd_fix_q <= redist11_vCount_uid163_zCount_uid58_block_rsrvd_fix_q_1_q & redist10_vCount_uid169_zCount_uid58_block_rsrvd_fix_q_1_q & redist9_vCount_uid175_zCount_uid58_block_rsrvd_fix_q_1_q & vCount_uid181_zCount_uid58_block_rsrvd_fix_q & vCount_uid187_zCount_uid58_block_rsrvd_fix_q & vCount_uid193_zCount_uid58_block_rsrvd_fix_q;

    -- biasM1_uid40_block_rsrvd_fix(CONSTANT,39)
    biasM1_uid40_block_rsrvd_fix_q <= "01111110";

    -- expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged(SUB,321)@5 + 1
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_a <= STD_LOGIC_VECTOR("0" & biasM1_uid40_block_rsrvd_fix_q);
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_b <= STD_LOGIC_VECTOR("000" & r_uid194_zCount_uid58_block_rsrvd_fix_q);
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_i <= "0" & redist0_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_b_5_mem_q;
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist26_xBranch_uid42_block_rsrvd_fix_q_5_q = "1") THEN
                expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o <= expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_i;
            ELSE
                expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o <= STD_LOGIC_VECTOR(UNSIGNED(expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_a) - UNSIGNED(expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_b));
            END IF;
        END IF;
    END PROCESS;
    expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_q <= expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_o(7 downto 0);

    -- redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5(DELAY,412)
    redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5 : dspba_delay
    GENERIC MAP ( width => 23, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist1_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_2_q, xout => redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5_q, clk => clk, aclr => areset );

    -- ZerosGB_uid63_block_rsrvd_fix(CONSTANT,62)
    ZerosGB_uid63_block_rsrvd_fix_q <= "000000000000000000000000000000";

    -- fracXRExt_uid64_block_rsrvd_fix(BITJOIN,63)@5
    fracXRExt_uid64_block_rsrvd_fix_q <= redist2_exp_fpx_uid26_block_rsrvd_fix_merged_bit_select_c_5_q & ZerosGB_uid63_block_rsrvd_fix_q;

    -- leftShiftStage2Idx3Rng3_uid317_normMult_uid59_block_rsrvd_fix(BITSELECT,316)@5
    leftShiftStage2Idx3Rng3_uid317_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q(74 downto 0);
    leftShiftStage2Idx3Rng3_uid317_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage2Idx3Rng3_uid317_normMult_uid59_block_rsrvd_fix_in(74 downto 0);

    -- leftShiftStage2Idx3_uid318_normMult_uid59_block_rsrvd_fix(BITJOIN,317)@5
    leftShiftStage2Idx3_uid318_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx3Rng3_uid317_normMult_uid59_block_rsrvd_fix_b & leftShiftStage2Idx3Pad3_uid316_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage2Idx2Rng2_uid314_normMult_uid59_block_rsrvd_fix(BITSELECT,313)@5
    leftShiftStage2Idx2Rng2_uid314_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q(75 downto 0);
    leftShiftStage2Idx2Rng2_uid314_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage2Idx2Rng2_uid314_normMult_uid59_block_rsrvd_fix_in(75 downto 0);

    -- leftShiftStage2Idx2_uid315_normMult_uid59_block_rsrvd_fix(BITJOIN,314)@5
    leftShiftStage2Idx2_uid315_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx2Rng2_uid314_normMult_uid59_block_rsrvd_fix_b & zs_uid185_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage2Idx1Rng1_uid311_normMult_uid59_block_rsrvd_fix(BITSELECT,310)@5
    leftShiftStage2Idx1Rng1_uid311_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q(76 downto 0);
    leftShiftStage2Idx1Rng1_uid311_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage2Idx1Rng1_uid311_normMult_uid59_block_rsrvd_fix_in(76 downto 0);

    -- leftShiftStage2Idx1_uid312_normMult_uid59_block_rsrvd_fix(BITJOIN,311)@5
    leftShiftStage2Idx1_uid312_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx1Rng1_uid311_normMult_uid59_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid306_normMult_uid59_block_rsrvd_fix(BITSELECT,305)@5
    leftShiftStage1Idx3Rng12_uid306_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q(65 downto 0);
    leftShiftStage1Idx3Rng12_uid306_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng12_uid306_normMult_uid59_block_rsrvd_fix_in(65 downto 0);

    -- leftShiftStage1Idx3_uid307_normMult_uid59_block_rsrvd_fix(BITJOIN,306)@5
    leftShiftStage1Idx3_uid307_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng12_uid306_normMult_uid59_block_rsrvd_fix_b & leftShiftStage1Idx3Pad12_uid305_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng8_uid303_normMult_uid59_block_rsrvd_fix(BITSELECT,302)@5
    leftShiftStage1Idx2Rng8_uid303_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q(69 downto 0);
    leftShiftStage1Idx2Rng8_uid303_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng8_uid303_normMult_uid59_block_rsrvd_fix_in(69 downto 0);

    -- leftShiftStage1Idx2_uid304_normMult_uid59_block_rsrvd_fix(BITJOIN,303)@5
    leftShiftStage1Idx2_uid304_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng8_uid303_normMult_uid59_block_rsrvd_fix_b & cstAllZWE_uid8_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng4_uid300_normMult_uid59_block_rsrvd_fix(BITSELECT,299)@5
    leftShiftStage1Idx1Rng4_uid300_normMult_uid59_block_rsrvd_fix_in <= leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q(73 downto 0);
    leftShiftStage1Idx1Rng4_uid300_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng4_uid300_normMult_uid59_block_rsrvd_fix_in(73 downto 0);

    -- leftShiftStage1Idx1_uid301_normMult_uid59_block_rsrvd_fix(BITJOIN,300)@5
    leftShiftStage1Idx1_uid301_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng4_uid300_normMult_uid59_block_rsrvd_fix_b & zs_uid179_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3Rng48_uid295_normMult_uid59_block_rsrvd_fix(BITSELECT,294)@5
    leftShiftStage0Idx3Rng48_uid295_normMult_uid59_block_rsrvd_fix_in <= redist25_multFracBits_uid54_block_rsrvd_fix_b_1_q(29 downto 0);
    leftShiftStage0Idx3Rng48_uid295_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage0Idx3Rng48_uid295_normMult_uid59_block_rsrvd_fix_in(29 downto 0);

    -- leftShiftStage0Idx3Pad48_uid294_normMult_uid59_block_rsrvd_fix(CONSTANT,293)
    leftShiftStage0Idx3Pad48_uid294_normMult_uid59_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid296_normMult_uid59_block_rsrvd_fix(BITJOIN,295)@5
    leftShiftStage0Idx3_uid296_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx3Rng48_uid295_normMult_uid59_block_rsrvd_fix_b & leftShiftStage0Idx3Pad48_uid294_normMult_uid59_block_rsrvd_fix_q;

    -- leftShiftStage0Idx2Rng32_uid292_normMult_uid59_block_rsrvd_fix(BITSELECT,291)@5
    leftShiftStage0Idx2Rng32_uid292_normMult_uid59_block_rsrvd_fix_in <= redist25_multFracBits_uid54_block_rsrvd_fix_b_1_q(45 downto 0);
    leftShiftStage0Idx2Rng32_uid292_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage0Idx2Rng32_uid292_normMult_uid59_block_rsrvd_fix_in(45 downto 0);

    -- leftShiftStage0Idx2_uid293_normMult_uid59_block_rsrvd_fix(BITJOIN,292)@5
    leftShiftStage0Idx2_uid293_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx2Rng32_uid292_normMult_uid59_block_rsrvd_fix_b & zs_uid161_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng16_uid289_normMult_uid59_block_rsrvd_fix(BITSELECT,288)@5
    leftShiftStage0Idx1Rng16_uid289_normMult_uid59_block_rsrvd_fix_in <= redist25_multFracBits_uid54_block_rsrvd_fix_b_1_q(61 downto 0);
    leftShiftStage0Idx1Rng16_uid289_normMult_uid59_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng16_uid289_normMult_uid59_block_rsrvd_fix_in(61 downto 0);

    -- leftShiftStage0Idx1_uid290_normMult_uid59_block_rsrvd_fix(BITJOIN,289)@5
    leftShiftStage0Idx1_uid290_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng16_uid289_normMult_uid59_block_rsrvd_fix_b & zs_uid167_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix(MUX,297)@5
    leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_s, redist25_multFracBits_uid54_block_rsrvd_fix_b_1_q, leftShiftStage0Idx1_uid290_normMult_uid59_block_rsrvd_fix_q, leftShiftStage0Idx2_uid293_normMult_uid59_block_rsrvd_fix_q, leftShiftStage0Idx3_uid296_normMult_uid59_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q <= redist25_multFracBits_uid54_block_rsrvd_fix_b_1_q;
            WHEN "01" => leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid290_normMult_uid59_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid293_normMult_uid59_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid296_normMult_uid59_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix(MUX,308)@5
    leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_s, leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q, leftShiftStage1Idx1_uid301_normMult_uid59_block_rsrvd_fix_q, leftShiftStage1Idx2_uid304_normMult_uid59_block_rsrvd_fix_q, leftShiftStage1Idx3_uid307_normMult_uid59_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage0_uid298_normMult_uid59_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid301_normMult_uid59_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid304_normMult_uid59_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid307_normMult_uid59_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select(BITSELECT,403)@5
    leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_b <= r_uid194_zCount_uid58_block_rsrvd_fix_q(5 downto 4);
    leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_c <= r_uid194_zCount_uid58_block_rsrvd_fix_q(3 downto 2);
    leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_d <= r_uid194_zCount_uid58_block_rsrvd_fix_q(1 downto 0);

    -- leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix(MUX,319)@5
    leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_s <= leftShiftStageSel5Dto4_uid297_normMult_uid59_block_rsrvd_fix_merged_bit_select_d;
    leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_combproc: PROCESS (leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_s, leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q, leftShiftStage2Idx1_uid312_normMult_uid59_block_rsrvd_fix_q, leftShiftStage2Idx2_uid315_normMult_uid59_block_rsrvd_fix_q, leftShiftStage2Idx3_uid318_normMult_uid59_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage1_uid309_normMult_uid59_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid312_normMult_uid59_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx2_uid315_normMult_uid59_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_q <= leftShiftStage2Idx3_uid318_normMult_uid59_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracCompOut_uid60_block_rsrvd_fix(BITSELECT,59)@5
    fracCompOut_uid60_block_rsrvd_fix_in <= leftShiftStage2_uid320_normMult_uid59_block_rsrvd_fix_q(76 downto 0);
    fracCompOut_uid60_block_rsrvd_fix_b <= fracCompOut_uid60_block_rsrvd_fix_in(76 downto 24);

    -- finalFrac_uid65_block_rsrvd_fix(MUX,64)@5 + 1
    finalFrac_uid65_block_rsrvd_fix_s <= redist26_xBranch_uid42_block_rsrvd_fix_q_5_q;
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
    RRangeRed_uid67_block_rsrvd_fix_q <= redist24_intBit_uid57_block_rsrvd_fix_b_1_q & expCompOutExt_uid61_block_rsrvd_fix_finalExp_uid66_block_rsrvd_fix_merged_q & finalFrac_uid65_block_rsrvd_fix_q;

    -- fracXRR_uid71_block_rsrvd_fix(BITSELECT,70)@6
    fracXRR_uid71_block_rsrvd_fix_in <= RRangeRed_uid67_block_rsrvd_fix_q(52 downto 0);
    fracXRR_uid71_block_rsrvd_fix_b <= fracXRR_uid71_block_rsrvd_fix_in(52 downto 0);

    -- oFracXRR_uid73_block_rsrvd_fix(BITJOIN,72)@6
    oFracXRR_uid73_block_rsrvd_fix_q <= VCC_q & fracXRR_uid71_block_rsrvd_fix_b;

    -- extendedFracX_uid76_block_rsrvd_fix(BITJOIN,75)@6
    extendedFracX_uid76_block_rsrvd_fix_q <= cstZwShiftP1_uid69_block_rsrvd_fix_q & oFracXRR_uid73_block_rsrvd_fix_q;

    -- leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix(MUX,334)@6
    leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_s <= leftShiftStageSel3Dto2_uid334_fxpX_uid77_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_s, extendedFracX_uid76_block_rsrvd_fix_q, leftShiftStage0Idx1_uid327_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage0Idx2_uid330_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage0Idx3_uid333_fxpX_uid77_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q <= extendedFracX_uid76_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid327_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid330_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid333_fxpX_uid77_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstBiasMwShiftM2_uid68_block_rsrvd_fix(CONSTANT,67)
    cstBiasMwShiftM2_uid68_block_rsrvd_fix_q <= "01110000";

    -- expXRR_uid70_block_rsrvd_fix(BITSELECT,69)@6
    expXRR_uid70_block_rsrvd_fix_in <= RRangeRed_uid67_block_rsrvd_fix_q(60 downto 0);
    expXRR_uid70_block_rsrvd_fix_b <= expXRR_uid70_block_rsrvd_fix_in(60 downto 53);

    -- fxpXShiftValExt_uid74_block_rsrvd_fix(SUB,73)@6
    fxpXShiftValExt_uid74_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 8 => expXRR_uid70_block_rsrvd_fix_b(7)) & expXRR_uid70_block_rsrvd_fix_b));
    fxpXShiftValExt_uid74_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & cstBiasMwShiftM2_uid68_block_rsrvd_fix_q));
    fxpXShiftValExt_uid74_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(fxpXShiftValExt_uid74_block_rsrvd_fix_a) - SIGNED(fxpXShiftValExt_uid74_block_rsrvd_fix_b));
    fxpXShiftValExt_uid74_block_rsrvd_fix_q <= fxpXShiftValExt_uid74_block_rsrvd_fix_o(9 downto 0);

    -- fxpXShiftVal_uid75_block_rsrvd_fix(BITSELECT,74)@6
    fxpXShiftVal_uid75_block_rsrvd_fix_in <= fxpXShiftValExt_uid74_block_rsrvd_fix_q(3 downto 0);
    fxpXShiftVal_uid75_block_rsrvd_fix_b <= fxpXShiftVal_uid75_block_rsrvd_fix_in(3 downto 0);

    -- leftShiftStageSel3Dto2_uid334_fxpX_uid77_block_rsrvd_fix_merged_bit_select(BITSELECT,397)@6
    leftShiftStageSel3Dto2_uid334_fxpX_uid77_block_rsrvd_fix_merged_bit_select_b <= fxpXShiftVal_uid75_block_rsrvd_fix_b(3 downto 2);
    leftShiftStageSel3Dto2_uid334_fxpX_uid77_block_rsrvd_fix_merged_bit_select_c <= fxpXShiftVal_uid75_block_rsrvd_fix_b(1 downto 0);

    -- leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix(MUX,345)@6
    leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_s <= leftShiftStageSel3Dto2_uid334_fxpX_uid77_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_s, leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage1Idx1_uid338_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage1Idx2_uid341_fxpX_uid77_block_rsrvd_fix_q, leftShiftStage1Idx3_uid344_fxpX_uid77_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage0_uid335_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid338_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid341_fxpX_uid77_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid344_fxpX_uid77_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- intXParity_uid90_block_rsrvd_fix(BITSELECT,89)@6
    intXParity_uid90_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_q(67 downto 67));

    -- redist19_intXParity_uid90_block_rsrvd_fix_b_8(DELAY,429)
    redist19_intXParity_uid90_block_rsrvd_fix_b_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => intXParity_uid90_block_rsrvd_fix_b, xout => redist19_intXParity_uid90_block_rsrvd_fix_b_8_q, clk => clk, aclr => areset );

    -- redist27_in_0_in_0_14_notEnable(LOGICAL,484)
    redist27_in_0_in_0_14_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist27_in_0_in_0_14_nor(LOGICAL,485)
    redist27_in_0_in_0_14_nor_q <= not (redist27_in_0_in_0_14_notEnable_q or redist27_in_0_in_0_14_sticky_ena_q);

    -- redist27_in_0_in_0_14_mem_last(CONSTANT,481)
    redist27_in_0_in_0_14_mem_last_q <= "01011";

    -- redist27_in_0_in_0_14_cmp(LOGICAL,482)
    redist27_in_0_in_0_14_cmp_b <= STD_LOGIC_VECTOR("0" & redist27_in_0_in_0_14_rdcnt_q);
    redist27_in_0_in_0_14_cmp_q <= "1" WHEN redist27_in_0_in_0_14_mem_last_q = redist27_in_0_in_0_14_cmp_b ELSE "0";

    -- redist27_in_0_in_0_14_cmpReg(REG,483)
    redist27_in_0_in_0_14_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist27_in_0_in_0_14_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist27_in_0_in_0_14_cmpReg_q <= STD_LOGIC_VECTOR(redist27_in_0_in_0_14_cmp_q);
        END IF;
    END PROCESS;

    -- redist27_in_0_in_0_14_sticky_ena(REG,486)
    redist27_in_0_in_0_14_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist27_in_0_in_0_14_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist27_in_0_in_0_14_nor_q = "1") THEN
                redist27_in_0_in_0_14_sticky_ena_q <= STD_LOGIC_VECTOR(redist27_in_0_in_0_14_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist27_in_0_in_0_14_enaAnd(LOGICAL,487)
    redist27_in_0_in_0_14_enaAnd_q <= redist27_in_0_in_0_14_sticky_ena_q and VCC_q;

    -- redist27_in_0_in_0_14_rdcnt(COUNTER,479)
    -- low=0, high=12, step=1, init=0
    redist27_in_0_in_0_14_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist27_in_0_in_0_14_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist27_in_0_in_0_14_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist27_in_0_in_0_14_rdcnt_i = TO_UNSIGNED(11, 4)) THEN
                redist27_in_0_in_0_14_rdcnt_eq <= '1';
            ELSE
                redist27_in_0_in_0_14_rdcnt_eq <= '0';
            END IF;
            IF (redist27_in_0_in_0_14_rdcnt_eq = '1') THEN
                redist27_in_0_in_0_14_rdcnt_i <= redist27_in_0_in_0_14_rdcnt_i + 4;
            ELSE
                redist27_in_0_in_0_14_rdcnt_i <= redist27_in_0_in_0_14_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist27_in_0_in_0_14_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist27_in_0_in_0_14_rdcnt_i, 4)));

    -- redist27_in_0_in_0_14_wraddr(REG,480)
    redist27_in_0_in_0_14_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist27_in_0_in_0_14_wraddr_q <= "1100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist27_in_0_in_0_14_wraddr_q <= STD_LOGIC_VECTOR(redist27_in_0_in_0_14_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist27_in_0_in_0_14_mem(DUALMEM,478)
    redist27_in_0_in_0_14_mem_ia <= STD_LOGIC_VECTOR(in_0);
    redist27_in_0_in_0_14_mem_aa <= redist27_in_0_in_0_14_wraddr_q;
    redist27_in_0_in_0_14_mem_ab <= redist27_in_0_in_0_14_rdcnt_q;
    redist27_in_0_in_0_14_mem_reset0 <= areset;
    redist27_in_0_in_0_14_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 13,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 13,
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
        clocken1 => redist27_in_0_in_0_14_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist27_in_0_in_0_14_mem_reset0,
        clock1 => clk,
        address_a => redist27_in_0_in_0_14_mem_aa,
        data_a => redist27_in_0_in_0_14_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist27_in_0_in_0_14_mem_ab,
        q_b => redist27_in_0_in_0_14_mem_iq
    );
    redist27_in_0_in_0_14_mem_q <= redist27_in_0_in_0_14_mem_iq(31 downto 0);

    -- exp_x_uid9_block_rsrvd_fix(BITSELECT,8)@14
    exp_x_uid9_block_rsrvd_fix_b <= redist27_in_0_in_0_14_mem_q(30 downto 23);

    -- sinXIsX_uid86_block_rsrvd_fix(COMPARE,85)@14
    sinXIsX_uid86_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & cwFo2_uid39_block_rsrvd_fix_q);
    sinXIsX_uid86_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & exp_x_uid9_block_rsrvd_fix_b);
    sinXIsX_uid86_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(sinXIsX_uid86_block_rsrvd_fix_a) - UNSIGNED(sinXIsX_uid86_block_rsrvd_fix_b));
    sinXIsX_uid86_block_rsrvd_fix_n(0) <= not (sinXIsX_uid86_block_rsrvd_fix_o(9));

    -- invSinXIsX_uid151_block_rsrvd_fix(LOGICAL,150)@14
    invSinXIsX_uid151_block_rsrvd_fix_q <= not (sinXIsX_uid86_block_rsrvd_fix_n);

    -- redist23_expXRR_uid70_block_rsrvd_fix_b_2(DELAY,433)
    redist23_expXRR_uid70_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => expXRR_uid70_block_rsrvd_fix_b, xout => redist23_expXRR_uid70_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- cstBiasMwShiftM2_uid79_block_rsrvd_fix(CONSTANT,78)
    cstBiasMwShiftM2_uid79_block_rsrvd_fix_q <= "01110001";

    -- sinXIsXRR_uid87_block_rsrvd_fix(COMPARE,86)@8
    sinXIsXRR_uid87_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & cstBiasMwShiftM2_uid79_block_rsrvd_fix_q));
    sinXIsXRR_uid87_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 8 => redist23_expXRR_uid70_block_rsrvd_fix_b_2_q(7)) & redist23_expXRR_uid70_block_rsrvd_fix_b_2_q));
    sinXIsXRR_uid87_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(sinXIsXRR_uid87_block_rsrvd_fix_a) - SIGNED(sinXIsXRR_uid87_block_rsrvd_fix_b));
    sinXIsXRR_uid87_block_rsrvd_fix_n(0) <= not (sinXIsXRR_uid87_block_rsrvd_fix_o(10));

    -- redist20_sinXIsXRR_uid87_block_rsrvd_fix_n_4(DELAY,430)
    redist20_sinXIsXRR_uid87_block_rsrvd_fix_n_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => sinXIsXRR_uid87_block_rsrvd_fix_n, xout => redist20_sinXIsXRR_uid87_block_rsrvd_fix_n_4_q, clk => clk, aclr => areset );

    -- redist21_sinXIsXRR_uid87_block_rsrvd_fix_n_6(DELAY,431)
    redist21_sinXIsXRR_uid87_block_rsrvd_fix_n_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist20_sinXIsXRR_uid87_block_rsrvd_fix_n_4_q, xout => redist21_sinXIsXRR_uid87_block_rsrvd_fix_n_6_q, clk => clk, aclr => areset );

    -- invSinXIsXRR_uid152_block_rsrvd_fix(LOGICAL,151)@14
    invSinXIsXRR_uid152_block_rsrvd_fix_q <= not (redist21_sinXIsXRR_uid87_block_rsrvd_fix_n_6_q);

    -- expXIsMax_uid12_block_rsrvd_fix(LOGICAL,11)@14
    expXIsMax_uid12_block_rsrvd_fix_q <= "1" WHEN exp_x_uid9_block_rsrvd_fix_b = cstAllOWE_uid6_block_rsrvd_fix_q ELSE "0";

    -- invExpXIsMax_uid17_block_rsrvd_fix(LOGICAL,16)@14
    invExpXIsMax_uid17_block_rsrvd_fix_q <= not (expXIsMax_uid12_block_rsrvd_fix_q);

    -- excZ_x_uid11_block_rsrvd_fix(LOGICAL,10)@14
    excZ_x_uid11_block_rsrvd_fix_q <= "1" WHEN exp_x_uid9_block_rsrvd_fix_b = cstAllZWE_uid8_block_rsrvd_fix_q ELSE "0";

    -- InvExpXIsZero_uid18_block_rsrvd_fix(LOGICAL,17)@14
    InvExpXIsZero_uid18_block_rsrvd_fix_q <= not (excZ_x_uid11_block_rsrvd_fix_q);

    -- excR_x_uid19_block_rsrvd_fix(LOGICAL,18)@14
    excR_x_uid19_block_rsrvd_fix_q <= InvExpXIsZero_uid18_block_rsrvd_fix_q and invExpXIsMax_uid17_block_rsrvd_fix_q;

    -- signComp_uid153_block_rsrvd_fix(LOGICAL,152)@14
    signComp_uid153_block_rsrvd_fix_q <= excR_x_uid19_block_rsrvd_fix_q and invSinXIsXRR_uid152_block_rsrvd_fix_q and invSinXIsX_uid151_block_rsrvd_fix_q and redist19_intXParity_uid90_block_rsrvd_fix_b_8_q;

    -- signX_uid82_block_rsrvd_fix(BITSELECT,81)@14
    signX_uid82_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(redist27_in_0_in_0_14_mem_q(31 downto 31));

    -- signR_uid154_block_rsrvd_fix(LOGICAL,153)@14
    signR_uid154_block_rsrvd_fix_q <= signX_uid82_block_rsrvd_fix_b xor signComp_uid153_block_rsrvd_fix_q;

    -- signXRR_uid85_block_rsrvd_fix(BITSELECT,84)@6
    signXRR_uid85_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(RRangeRed_uid67_block_rsrvd_fix_q(61 downto 61));

    -- redist22_signXRR_uid85_block_rsrvd_fix_b_8(DELAY,432)
    redist22_signXRR_uid85_block_rsrvd_fix_b_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => signXRR_uid85_block_rsrvd_fix_b, xout => redist22_signXRR_uid85_block_rsrvd_fix_b_8_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signRFinal_uid155_block_rsrvd_fix(LOGICAL,154)@14
    signRFinal_uid155_block_rsrvd_fix_q <= redist22_signXRR_uid85_block_rsrvd_fix_b_8_q xor signR_uid154_block_rsrvd_fix_q;

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_notEnable(LOGICAL,464)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_nor(LOGICAL,465)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_nor_q <= not (redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_notEnable_q or redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_sticky_ena_q);

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_last(CONSTANT,461)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_last_q <= "011";

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmp(LOGICAL,462)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmp_q <= "1" WHEN redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_last_q = redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_q ELSE "0";

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmpReg(REG,463)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_sticky_ena(REG,466)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_nor_q = "1") THEN
                redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_enaAnd(LOGICAL,467)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_enaAnd_q <= redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_sticky_ena_q and VCC_q;

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt(COUNTER,459)
    -- low=0, high=4, step=1, init=0
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_eq <= '1';
            ELSE
                redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_eq = '1') THEN
                redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i <= redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i + 4;
            ELSE
                redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i <= redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_i, 3)));

    -- oFracXRRSmallXRR_uid120_block_rsrvd_fix(BITSELECT,119)@6
    oFracXRRSmallXRR_uid120_block_rsrvd_fix_b <= oFracXRR_uid73_block_rsrvd_fix_q(53 downto 28);

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_wraddr(REG,460)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem(DUALMEM,458)
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_ia <= STD_LOGIC_VECTOR(oFracXRRSmallXRR_uid120_block_rsrvd_fix_b);
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_aa <= redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_wraddr_q;
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_ab <= redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_rdcnt_q;
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_reset0 <= areset;
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 26,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 26,
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
        clocken1 => redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_reset0,
        clock1 => clk,
        address_a => redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_aa,
        data_a => redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_ab,
        q_b => redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_iq
    );
    redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_q <= redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_iq(25 downto 0);

    -- y_uid91_block_rsrvd_fix(BITSELECT,90)@6
    y_uid91_block_rsrvd_fix_in <= leftShiftStage1_uid346_fxpX_uid77_block_rsrvd_fix_q(66 downto 0);
    y_uid91_block_rsrvd_fix_b <= y_uid91_block_rsrvd_fix_in(66 downto 1);

    -- padACst_uid93_block_rsrvd_fix(CONSTANT,92)
    padACst_uid93_block_rsrvd_fix_q <= "000000000000000000000000000000000000000000000000000000000000000000";

    -- aPostPad_uid94_block_rsrvd_fix(BITJOIN,93)@6
    aPostPad_uid94_block_rsrvd_fix_q <= VCC_q & padACst_uid93_block_rsrvd_fix_q;

    -- oneMinusY_uid95_block_rsrvd_fix(SUB,94)@6
    oneMinusY_uid95_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & aPostPad_uid94_block_rsrvd_fix_q);
    oneMinusY_uid95_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & y_uid91_block_rsrvd_fix_b);
    oneMinusY_uid95_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(oneMinusY_uid95_block_rsrvd_fix_a) - UNSIGNED(oneMinusY_uid95_block_rsrvd_fix_b));
    oneMinusY_uid95_block_rsrvd_fix_q <= oneMinusY_uid95_block_rsrvd_fix_o(67 downto 0);

    -- oMyBottom_uid98_block_rsrvd_fix(BITSELECT,97)@6
    oMyBottom_uid98_block_rsrvd_fix_in <= oneMinusY_uid95_block_rsrvd_fix_q(64 downto 0);
    oMyBottom_uid98_block_rsrvd_fix_b <= oMyBottom_uid98_block_rsrvd_fix_in(64 downto 0);

    -- yBottom_uid99_block_rsrvd_fix(BITSELECT,98)@6
    yBottom_uid99_block_rsrvd_fix_in <= y_uid91_block_rsrvd_fix_b(64 downto 0);
    yBottom_uid99_block_rsrvd_fix_b <= yBottom_uid99_block_rsrvd_fix_in(64 downto 0);

    -- cmpYToOneMinusY_uid97_block_rsrvd_fix(COMPARE,96)@6
    cmpYToOneMinusY_uid97_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & oneMinusY_uid95_block_rsrvd_fix_q);
    cmpYToOneMinusY_uid97_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000" & y_uid91_block_rsrvd_fix_b);
    cmpYToOneMinusY_uid97_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(cmpYToOneMinusY_uid97_block_rsrvd_fix_a) - UNSIGNED(cmpYToOneMinusY_uid97_block_rsrvd_fix_b));
    cmpYToOneMinusY_uid97_block_rsrvd_fix_c(0) <= cmpYToOneMinusY_uid97_block_rsrvd_fix_o(69);

    -- z_uid100_block_rsrvd_fix(MUX,99)@6
    z_uid100_block_rsrvd_fix_s <= cmpYToOneMinusY_uid97_block_rsrvd_fix_c;
    z_uid100_block_rsrvd_fix_combproc: PROCESS (z_uid100_block_rsrvd_fix_s, yBottom_uid99_block_rsrvd_fix_b, oMyBottom_uid98_block_rsrvd_fix_b)
    BEGIN
        CASE (z_uid100_block_rsrvd_fix_s) IS
            WHEN "0" => z_uid100_block_rsrvd_fix_q <= yBottom_uid99_block_rsrvd_fix_b;
            WHEN "1" => z_uid100_block_rsrvd_fix_q <= oMyBottom_uid98_block_rsrvd_fix_b;
            WHEN OTHERS => z_uid100_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- yAddr_uid116_block_rsrvd_fix(BITSELECT,115)@6
    yAddr_uid116_block_rsrvd_fix_b <= z_uid100_block_rsrvd_fix_q(64 downto 57);

    -- memoryC2_uid245_sinXTables_lutmem(DUALMEM,389)@6 + 2
    -- in j@20000000
    memoryC2_uid245_sinXTables_lutmem_aa <= yAddr_uid116_block_rsrvd_fix_b;
    memoryC2_uid245_sinXTables_lutmem_reset0 <= areset;
    memoryC2_uid245_sinXTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA2ZinXTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid245_sinXTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid245_sinXTables_lutmem_aa,
        q_a => memoryC2_uid245_sinXTables_lutmem_ir
    );
    memoryC2_uid245_sinXTables_lutmem_r <= memoryC2_uid245_sinXTables_lutmem_ir(12 downto 0);

    -- redist17_z_uid100_block_rsrvd_fix_q_1(DELAY,427)
    redist17_z_uid100_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 65, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => z_uid100_block_rsrvd_fix_q, xout => redist17_z_uid100_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- redist18_z_uid100_block_rsrvd_fix_q_2(DELAY,428)
    redist18_z_uid100_block_rsrvd_fix_q_2 : dspba_delay
    GENERIC MAP ( width => 65, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist17_z_uid100_block_rsrvd_fix_q_1_q, xout => redist18_z_uid100_block_rsrvd_fix_q_2_q, clk => clk, aclr => areset );

    -- zPPolyEval_uid117_block_rsrvd_fix(BITSELECT,116)@8
    zPPolyEval_uid117_block_rsrvd_fix_in <= redist18_z_uid100_block_rsrvd_fix_q_2_q(56 downto 0);
    zPPolyEval_uid117_block_rsrvd_fix_b <= zPPolyEval_uid117_block_rsrvd_fix_in(56 downto 39);

    -- yT1_uid251_invPolyEval(BITSELECT,250)@8
    yT1_uid251_invPolyEval_b <= zPPolyEval_uid117_block_rsrvd_fix_b(17 downto 5);

    -- prodXY_uid264_pT1_uid252_invPolyEval_cma(CHAINMULTADD,391)@8 + 2
    prodXY_uid264_pT1_uid252_invPolyEval_cma_reset <= areset;
    prodXY_uid264_pT1_uid252_invPolyEval_cma_ena0 <= '1';
    prodXY_uid264_pT1_uid252_invPolyEval_cma_ena1 <= prodXY_uid264_pT1_uid252_invPolyEval_cma_ena0;
    prodXY_uid264_pT1_uid252_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid264_pT1_uid252_invPolyEval_cma_a0(0),14));
    prodXY_uid264_pT1_uid252_invPolyEval_cma_p(0) <= prodXY_uid264_pT1_uid252_invPolyEval_cma_l(0) * prodXY_uid264_pT1_uid252_invPolyEval_cma_c0(0);
    prodXY_uid264_pT1_uid252_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid264_pT1_uid252_invPolyEval_cma_p(0),27);
    prodXY_uid264_pT1_uid252_invPolyEval_cma_w(0) <= prodXY_uid264_pT1_uid252_invPolyEval_cma_u(0);
    prodXY_uid264_pT1_uid252_invPolyEval_cma_x(0) <= prodXY_uid264_pT1_uid252_invPolyEval_cma_w(0);
    prodXY_uid264_pT1_uid252_invPolyEval_cma_y(0) <= prodXY_uid264_pT1_uid252_invPolyEval_cma_x(0);
    prodXY_uid264_pT1_uid252_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid264_pT1_uid252_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid264_pT1_uid252_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid264_pT1_uid252_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid264_pT1_uid252_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid251_invPolyEval_b),13);
                prodXY_uid264_pT1_uid252_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid245_sinXTables_lutmem_r),13);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid264_pT1_uid252_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid264_pT1_uid252_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid264_pT1_uid252_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid264_pT1_uid252_invPolyEval_cma_s(0) <= prodXY_uid264_pT1_uid252_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid264_pT1_uid252_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid264_pT1_uid252_invPolyEval_cma_s(0)(25 downto 0)), xout => prodXY_uid264_pT1_uid252_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid264_pT1_uid252_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid264_pT1_uid252_invPolyEval_cma_qq(25 downto 0));

    -- osig_uid265_pT1_uid252_invPolyEval(BITSELECT,264)@10
    osig_uid265_pT1_uid252_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid264_pT1_uid252_invPolyEval_cma_q(25 downto 12));

    -- highBBits_uid254_invPolyEval(BITSELECT,253)@10
    highBBits_uid254_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid265_pT1_uid252_invPolyEval_b(13 downto 1));

    -- redist14_yAddr_uid116_block_rsrvd_fix_b_2(DELAY,424)
    redist14_yAddr_uid116_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid116_block_rsrvd_fix_b, xout => redist14_yAddr_uid116_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid242_sinXTables_lutmem(DUALMEM,388)@8 + 2
    -- in j@20000000
    memoryC1_uid242_sinXTables_lutmem_aa <= redist14_yAddr_uid116_block_rsrvd_fix_b_2_q;
    memoryC1_uid242_sinXTables_lutmem_reset0 <= areset;
    memoryC1_uid242_sinXTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA1ZinXTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid242_sinXTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid242_sinXTables_lutmem_aa,
        q_a => memoryC1_uid242_sinXTables_lutmem_ir
    );
    memoryC1_uid242_sinXTables_lutmem_r <= memoryC1_uid242_sinXTables_lutmem_ir(20 downto 0);

    -- s1sumAHighB_uid255_invPolyEval(ADD,254)@10
    s1sumAHighB_uid255_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => memoryC1_uid242_sinXTables_lutmem_r(20)) & memoryC1_uid242_sinXTables_lutmem_r));
    s1sumAHighB_uid255_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 13 => highBBits_uid254_invPolyEval_b(12)) & highBBits_uid254_invPolyEval_b));
    s1sumAHighB_uid255_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid255_invPolyEval_a) + SIGNED(s1sumAHighB_uid255_invPolyEval_b));
    s1sumAHighB_uid255_invPolyEval_q <= s1sumAHighB_uid255_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid253_invPolyEval(BITSELECT,252)@10
    lowRangeB_uid253_invPolyEval_in <= osig_uid265_pT1_uid252_invPolyEval_b(0 downto 0);
    lowRangeB_uid253_invPolyEval_b <= lowRangeB_uid253_invPolyEval_in(0 downto 0);

    -- s1_uid256_invPolyEval(BITJOIN,255)@10
    s1_uid256_invPolyEval_q <= s1sumAHighB_uid255_invPolyEval_q & lowRangeB_uid253_invPolyEval_b;

    -- redist13_zPPolyEval_uid117_block_rsrvd_fix_b_2(DELAY,423)
    redist13_zPPolyEval_uid117_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => zPPolyEval_uid117_block_rsrvd_fix_b, xout => redist13_zPPolyEval_uid117_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- prodXY_uid267_pT2_uid258_invPolyEval_cma(CHAINMULTADD,392)@10 + 2
    prodXY_uid267_pT2_uid258_invPolyEval_cma_reset <= areset;
    prodXY_uid267_pT2_uid258_invPolyEval_cma_ena0 <= '1';
    prodXY_uid267_pT2_uid258_invPolyEval_cma_ena1 <= prodXY_uid267_pT2_uid258_invPolyEval_cma_ena0;
    prodXY_uid267_pT2_uid258_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid267_pT2_uid258_invPolyEval_cma_a0(0),19));
    prodXY_uid267_pT2_uid258_invPolyEval_cma_p(0) <= prodXY_uid267_pT2_uid258_invPolyEval_cma_l(0) * prodXY_uid267_pT2_uid258_invPolyEval_cma_c0(0);
    prodXY_uid267_pT2_uid258_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid267_pT2_uid258_invPolyEval_cma_p(0),42);
    prodXY_uid267_pT2_uid258_invPolyEval_cma_w(0) <= prodXY_uid267_pT2_uid258_invPolyEval_cma_u(0);
    prodXY_uid267_pT2_uid258_invPolyEval_cma_x(0) <= prodXY_uid267_pT2_uid258_invPolyEval_cma_w(0);
    prodXY_uid267_pT2_uid258_invPolyEval_cma_y(0) <= prodXY_uid267_pT2_uid258_invPolyEval_cma_x(0);
    prodXY_uid267_pT2_uid258_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid267_pT2_uid258_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid267_pT2_uid258_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid267_pT2_uid258_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid267_pT2_uid258_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist13_zPPolyEval_uid117_block_rsrvd_fix_b_2_q),18);
                prodXY_uid267_pT2_uid258_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid256_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid267_pT2_uid258_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid267_pT2_uid258_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid267_pT2_uid258_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid267_pT2_uid258_invPolyEval_cma_s(0) <= prodXY_uid267_pT2_uid258_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid267_pT2_uid258_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 41, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid267_pT2_uid258_invPolyEval_cma_s(0)(40 downto 0)), xout => prodXY_uid267_pT2_uid258_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid267_pT2_uid258_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid267_pT2_uid258_invPolyEval_cma_qq(40 downto 0));

    -- osig_uid268_pT2_uid258_invPolyEval(BITSELECT,267)@12
    osig_uid268_pT2_uid258_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid267_pT2_uid258_invPolyEval_cma_q(40 downto 17));

    -- highBBits_uid260_invPolyEval(BITSELECT,259)@12
    highBBits_uid260_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid268_pT2_uid258_invPolyEval_b(23 downto 2));

    -- redist15_yAddr_uid116_block_rsrvd_fix_b_4(DELAY,425)
    redist15_yAddr_uid116_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist14_yAddr_uid116_block_rsrvd_fix_b_2_q, xout => redist15_yAddr_uid116_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid239_sinXTables_lutmem(DUALMEM,387)@10 + 2
    -- in j@20000000
    memoryC0_uid239_sinXTables_lutmem_aa <= redist15_yAddr_uid116_block_rsrvd_fix_b_4_q;
    memoryC0_uid239_sinXTables_lutmem_reset0 <= areset;
    memoryC0_uid239_sinXTables_lutmem_dmem : altera_syncram
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
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA0ZinXTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid239_sinXTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid239_sinXTables_lutmem_aa,
        q_a => memoryC0_uid239_sinXTables_lutmem_ir
    );
    memoryC0_uid239_sinXTables_lutmem_r <= memoryC0_uid239_sinXTables_lutmem_ir(29 downto 0);

    -- s2sumAHighB_uid261_invPolyEval(ADD,260)@12
    s2sumAHighB_uid261_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => memoryC0_uid239_sinXTables_lutmem_r(29)) & memoryC0_uid239_sinXTables_lutmem_r));
    s2sumAHighB_uid261_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 22 => highBBits_uid260_invPolyEval_b(21)) & highBBits_uid260_invPolyEval_b));
    s2sumAHighB_uid261_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid261_invPolyEval_a) + SIGNED(s2sumAHighB_uid261_invPolyEval_b));
    s2sumAHighB_uid261_invPolyEval_q <= s2sumAHighB_uid261_invPolyEval_o(30 downto 0);

    -- lowRangeB_uid259_invPolyEval(BITSELECT,258)@12
    lowRangeB_uid259_invPolyEval_in <= osig_uid268_pT2_uid258_invPolyEval_b(1 downto 0);
    lowRangeB_uid259_invPolyEval_b <= lowRangeB_uid259_invPolyEval_in(1 downto 0);

    -- s2_uid262_invPolyEval(BITJOIN,261)@12
    s2_uid262_invPolyEval_q <= s2sumAHighB_uid261_invPolyEval_q & lowRangeB_uid259_invPolyEval_b;

    -- fxpSinRes_uid119_block_rsrvd_fix(BITSELECT,118)@12
    fxpSinRes_uid119_block_rsrvd_fix_in <= s2_uid262_invPolyEval_q(30 downto 0);
    fxpSinRes_uid119_block_rsrvd_fix_b <= fxpSinRes_uid119_block_rsrvd_fix_in(30 downto 5);

    -- multSecondOperand_uid121_block_rsrvd_fix(MUX,120)@12
    multSecondOperand_uid121_block_rsrvd_fix_s <= redist20_sinXIsXRR_uid87_block_rsrvd_fix_n_4_q;
    multSecondOperand_uid121_block_rsrvd_fix_combproc: PROCESS (multSecondOperand_uid121_block_rsrvd_fix_s, fxpSinRes_uid119_block_rsrvd_fix_b, redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_q)
    BEGIN
        CASE (multSecondOperand_uid121_block_rsrvd_fix_s) IS
            WHEN "0" => multSecondOperand_uid121_block_rsrvd_fix_q <= fxpSinRes_uid119_block_rsrvd_fix_b;
            WHEN "1" => multSecondOperand_uid121_block_rsrvd_fix_q <= redist12_oFracXRRSmallXRR_uid120_block_rsrvd_fix_b_6_mem_q;
            WHEN OTHERS => multSecondOperand_uid121_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cPi_uid104_block_rsrvd_fix(CONSTANT,103)
    cPi_uid104_block_rsrvd_fix_q <= "11001001000011111101101011";

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_notEnable(LOGICAL,474)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_nor(LOGICAL,475)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_nor_q <= not (redist16_pHigh_uid106_block_rsrvd_fix_b_4_notEnable_q or redist16_pHigh_uid106_block_rsrvd_fix_b_4_sticky_ena_q);

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_last(CONSTANT,471)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_last_q <= "01";

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmp(LOGICAL,472)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmp_q <= "1" WHEN redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_last_q = redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_q ELSE "0";

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmpReg(REG,473)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmpReg_q <= STD_LOGIC_VECTOR(redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmp_q);
        END IF;
    END PROCESS;

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_sticky_ena(REG,476)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_pHigh_uid106_block_rsrvd_fix_b_4_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist16_pHigh_uid106_block_rsrvd_fix_b_4_nor_q = "1") THEN
                redist16_pHigh_uid106_block_rsrvd_fix_b_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist16_pHigh_uid106_block_rsrvd_fix_b_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_enaAnd(LOGICAL,477)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_enaAnd_q <= redist16_pHigh_uid106_block_rsrvd_fix_b_4_sticky_ena_q and VCC_q;

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt(COUNTER,469)
    -- low=0, high=2, step=1, init=0
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_eq <= '1';
            ELSE
                redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_eq <= '0';
            END IF;
            IF (redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_eq = '1') THEN
                redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i <= redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i + 2;
            ELSE
                redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i <= redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_i, 2)));

    -- leftShiftStage3Idx1Rng1_uid382_alignedZ_uid103_block_rsrvd_fix(BITSELECT,381)@8
    leftShiftStage3Idx1Rng1_uid382_alignedZ_uid103_block_rsrvd_fix_in <= leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q(63 downto 0);
    leftShiftStage3Idx1Rng1_uid382_alignedZ_uid103_block_rsrvd_fix_b <= leftShiftStage3Idx1Rng1_uid382_alignedZ_uid103_block_rsrvd_fix_in(63 downto 0);

    -- leftShiftStage3Idx1_uid383_alignedZ_uid103_block_rsrvd_fix(BITJOIN,382)@8
    leftShiftStage3Idx1_uid383_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage3Idx1Rng1_uid382_alignedZ_uid103_block_rsrvd_fix_b & GND_q;

    -- leftShiftStage2Idx3Rng6_uid377_alignedZ_uid103_block_rsrvd_fix(BITSELECT,376)@8
    leftShiftStage2Idx3Rng6_uid377_alignedZ_uid103_block_rsrvd_fix_in <= leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q(58 downto 0);
    leftShiftStage2Idx3Rng6_uid377_alignedZ_uid103_block_rsrvd_fix_b <= leftShiftStage2Idx3Rng6_uid377_alignedZ_uid103_block_rsrvd_fix_in(58 downto 0);

    -- leftShiftStage2Idx3Pad6_uid376_alignedZ_uid103_block_rsrvd_fix(CONSTANT,375)
    leftShiftStage2Idx3Pad6_uid376_alignedZ_uid103_block_rsrvd_fix_q <= "000000";

    -- leftShiftStage2Idx3_uid378_alignedZ_uid103_block_rsrvd_fix(BITJOIN,377)@8
    leftShiftStage2Idx3_uid378_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage2Idx3Rng6_uid377_alignedZ_uid103_block_rsrvd_fix_b & leftShiftStage2Idx3Pad6_uid376_alignedZ_uid103_block_rsrvd_fix_q;

    -- leftShiftStage2Idx2Rng4_uid374_alignedZ_uid103_block_rsrvd_fix(BITSELECT,373)@8
    leftShiftStage2Idx2Rng4_uid374_alignedZ_uid103_block_rsrvd_fix_in <= leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q(60 downto 0);
    leftShiftStage2Idx2Rng4_uid374_alignedZ_uid103_block_rsrvd_fix_b <= leftShiftStage2Idx2Rng4_uid374_alignedZ_uid103_block_rsrvd_fix_in(60 downto 0);

    -- leftShiftStage2Idx2_uid375_alignedZ_uid103_block_rsrvd_fix(BITJOIN,374)@8
    leftShiftStage2Idx2_uid375_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage2Idx2Rng4_uid374_alignedZ_uid103_block_rsrvd_fix_b & zs_uid179_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage2Idx1Rng2_uid371_alignedZ_uid103_block_rsrvd_fix(BITSELECT,370)@8
    leftShiftStage2Idx1Rng2_uid371_alignedZ_uid103_block_rsrvd_fix_in <= leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q(62 downto 0);
    leftShiftStage2Idx1Rng2_uid371_alignedZ_uid103_block_rsrvd_fix_b <= leftShiftStage2Idx1Rng2_uid371_alignedZ_uid103_block_rsrvd_fix_in(62 downto 0);

    -- leftShiftStage2Idx1_uid372_alignedZ_uid103_block_rsrvd_fix(BITJOIN,371)@8
    leftShiftStage2Idx1_uid372_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage2Idx1Rng2_uid371_alignedZ_uid103_block_rsrvd_fix_b & zs_uid185_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage1Idx3Rng24_uid366_alignedZ_uid103_block_rsrvd_fix(BITSELECT,365)@8
    leftShiftStage1Idx3Rng24_uid366_alignedZ_uid103_block_rsrvd_fix_in <= leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q(40 downto 0);
    leftShiftStage1Idx3Rng24_uid366_alignedZ_uid103_block_rsrvd_fix_b <= leftShiftStage1Idx3Rng24_uid366_alignedZ_uid103_block_rsrvd_fix_in(40 downto 0);

    -- leftShiftStage1Idx3Pad24_uid365_alignedZ_uid103_block_rsrvd_fix(CONSTANT,364)
    leftShiftStage1Idx3Pad24_uid365_alignedZ_uid103_block_rsrvd_fix_q <= "000000000000000000000000";

    -- leftShiftStage1Idx3_uid367_alignedZ_uid103_block_rsrvd_fix(BITJOIN,366)@8
    leftShiftStage1Idx3_uid367_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage1Idx3Rng24_uid366_alignedZ_uid103_block_rsrvd_fix_b & leftShiftStage1Idx3Pad24_uid365_alignedZ_uid103_block_rsrvd_fix_q;

    -- leftShiftStage1Idx2Rng16_uid363_alignedZ_uid103_block_rsrvd_fix(BITSELECT,362)@8
    leftShiftStage1Idx2Rng16_uid363_alignedZ_uid103_block_rsrvd_fix_in <= leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q(48 downto 0);
    leftShiftStage1Idx2Rng16_uid363_alignedZ_uid103_block_rsrvd_fix_b <= leftShiftStage1Idx2Rng16_uid363_alignedZ_uid103_block_rsrvd_fix_in(48 downto 0);

    -- leftShiftStage1Idx2_uid364_alignedZ_uid103_block_rsrvd_fix(BITJOIN,363)@8
    leftShiftStage1Idx2_uid364_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage1Idx2Rng16_uid363_alignedZ_uid103_block_rsrvd_fix_b & zs_uid167_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage1Idx1Rng8_uid360_alignedZ_uid103_block_rsrvd_fix(BITSELECT,359)@8
    leftShiftStage1Idx1Rng8_uid360_alignedZ_uid103_block_rsrvd_fix_in <= leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q(56 downto 0);
    leftShiftStage1Idx1Rng8_uid360_alignedZ_uid103_block_rsrvd_fix_b <= leftShiftStage1Idx1Rng8_uid360_alignedZ_uid103_block_rsrvd_fix_in(56 downto 0);

    -- leftShiftStage1Idx1_uid361_alignedZ_uid103_block_rsrvd_fix(BITJOIN,360)@8
    leftShiftStage1Idx1_uid361_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage1Idx1Rng8_uid360_alignedZ_uid103_block_rsrvd_fix_b & cstAllZWE_uid8_block_rsrvd_fix_q;

    -- leftShiftStage0Idx3_uid356_alignedZ_uid103_block_rsrvd_fix(CONSTANT,355)
    leftShiftStage0Idx3_uid356_alignedZ_uid103_block_rsrvd_fix_q <= "00000000000000000000000000000000000000000000000000000000000000000";

    -- vStage_uid200_lzcZ_uid102_block_rsrvd_fix(BITSELECT,199)@7
    vStage_uid200_lzcZ_uid102_block_rsrvd_fix_in <= redist17_z_uid100_block_rsrvd_fix_q_1_q(0 downto 0);
    vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b <= vStage_uid200_lzcZ_uid102_block_rsrvd_fix_in(0 downto 0);

    -- redist7_vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b_1(DELAY,417)
    redist7_vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b, xout => redist7_vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- zs_uid196_lzcZ_uid102_block_rsrvd_fix(CONSTANT,195)
    zs_uid196_lzcZ_uid102_block_rsrvd_fix_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx2_uid355_alignedZ_uid103_block_rsrvd_fix(BITJOIN,354)@8
    leftShiftStage0Idx2_uid355_alignedZ_uid103_block_rsrvd_fix_q <= redist7_vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b_1_q & zs_uid196_lzcZ_uid102_block_rsrvd_fix_q;

    -- leftShiftStage0Idx1Rng32_uid351_alignedZ_uid103_block_rsrvd_fix(BITSELECT,350)@8
    leftShiftStage0Idx1Rng32_uid351_alignedZ_uid103_block_rsrvd_fix_in <= redist18_z_uid100_block_rsrvd_fix_q_2_q(32 downto 0);
    leftShiftStage0Idx1Rng32_uid351_alignedZ_uid103_block_rsrvd_fix_b <= leftShiftStage0Idx1Rng32_uid351_alignedZ_uid103_block_rsrvd_fix_in(32 downto 0);

    -- leftShiftStage0Idx1_uid352_alignedZ_uid103_block_rsrvd_fix(BITJOIN,351)@8
    leftShiftStage0Idx1_uid352_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage0Idx1Rng32_uid351_alignedZ_uid103_block_rsrvd_fix_b & zs_uid161_zCount_uid58_block_rsrvd_fix_q;

    -- leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix(MUX,357)@8
    leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_b;
    leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_combproc: PROCESS (leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_s, redist18_z_uid100_block_rsrvd_fix_q_2_q, leftShiftStage0Idx1_uid352_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage0Idx2_uid355_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage0Idx3_uid356_alignedZ_uid103_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q <= redist18_z_uid100_block_rsrvd_fix_q_2_q;
            WHEN "01" => leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid352_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid355_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid356_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix(MUX,368)@8
    leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_c;
    leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_combproc: PROCESS (leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_s, leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage1Idx1_uid361_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage1Idx2_uid364_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage1Idx3_uid367_alignedZ_uid103_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage0_uid358_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage1Idx1_uid361_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage1Idx2_uid364_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage1Idx3_uid367_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix(MUX,379)@8
    leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_d;
    leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_combproc: PROCESS (leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_s, leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage2Idx1_uid372_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage2Idx2_uid375_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage2Idx3_uid378_alignedZ_uid103_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_s) IS
            WHEN "00" => leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage1_uid369_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "01" => leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid372_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "10" => leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage2Idx2_uid375_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "11" => leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage2Idx3_uid378_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid197_lzcZ_uid102_block_rsrvd_fix(BITSELECT,196)@7
    rVStage_uid197_lzcZ_uid102_block_rsrvd_fix_b <= redist17_z_uid100_block_rsrvd_fix_q_1_q(64 downto 1);

    -- vCount_uid198_lzcZ_uid102_block_rsrvd_fix(LOGICAL,197)@7
    vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q <= "1" WHEN rVStage_uid197_lzcZ_uid102_block_rsrvd_fix_b = zs_uid196_lzcZ_uid102_block_rsrvd_fix_q ELSE "0";

    -- redist8_vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q_1(DELAY,418)
    redist8_vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q, xout => redist8_vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- mO_uid199_lzcZ_uid102_block_rsrvd_fix(CONSTANT,198)
    mO_uid199_lzcZ_uid102_block_rsrvd_fix_q <= "111111111111111111111111111111111111111111111111111111111111111";

    -- cStage_uid201_lzcZ_uid102_block_rsrvd_fix(BITJOIN,200)@7
    cStage_uid201_lzcZ_uid102_block_rsrvd_fix_q <= vStage_uid200_lzcZ_uid102_block_rsrvd_fix_b & mO_uid199_lzcZ_uid102_block_rsrvd_fix_q;

    -- vStagei_uid203_lzcZ_uid102_block_rsrvd_fix(MUX,202)@7
    vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_s <= vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q;
    vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_combproc: PROCESS (vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_s, rVStage_uid197_lzcZ_uid102_block_rsrvd_fix_b, cStage_uid201_lzcZ_uid102_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid197_lzcZ_uid102_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_q <= cStage_uid201_lzcZ_uid102_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select(BITSELECT,404)@7
    rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_q(63 downto 32);
    rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid203_lzcZ_uid102_block_rsrvd_fix_q(31 downto 0);

    -- vCount_uid206_lzcZ_uid102_block_rsrvd_fix(LOGICAL,205)@7
    vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q <= "1" WHEN rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b = zs_uid161_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- redist6_vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q_1(DELAY,416)
    redist6_vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q, xout => redist6_vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid209_lzcZ_uid102_block_rsrvd_fix(MUX,208)@7
    vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_s <= vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q;
    vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_combproc: PROCESS (vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_s, rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b, rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid205_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select(BITSELECT,405)@7
    rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid209_lzcZ_uid102_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid212_lzcZ_uid102_block_rsrvd_fix(LOGICAL,211)@7
    vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q <= "1" WHEN rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b = zs_uid167_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- redist5_vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q_1(DELAY,415)
    redist5_vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q, xout => redist5_vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid215_lzcZ_uid102_block_rsrvd_fix(MUX,214)@7
    vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_s <= vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q;
    vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_combproc: PROCESS (vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_s, rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b, rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid211_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid217_lzcZ_uid102_block_rsrvd_fix_merged_bit_select(BITSELECT,406)@7
    rVStage_uid217_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid217_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid215_lzcZ_uid102_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid218_lzcZ_uid102_block_rsrvd_fix(LOGICAL,217)@7
    vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q <= "1" WHEN rVStage_uid217_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b = cstAllZWE_uid8_block_rsrvd_fix_q ELSE "0";

    -- redist4_vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q_1(DELAY,414)
    redist4_vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q, xout => redist4_vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid221_lzcZ_uid102_block_rsrvd_fix(MUX,220)@7 + 1
    vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_s <= vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q;
    vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid217_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b;
                WHEN "1" => vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid217_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c;
                WHEN OTHERS => vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select(BITSELECT,407)@8
    rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_q(7 downto 4);
    rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid221_lzcZ_uid102_block_rsrvd_fix_q(3 downto 0);

    -- vCount_uid224_lzcZ_uid102_block_rsrvd_fix(LOGICAL,223)@8
    vCount_uid224_lzcZ_uid102_block_rsrvd_fix_q <= "1" WHEN rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b = zs_uid179_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid227_lzcZ_uid102_block_rsrvd_fix(MUX,226)@8
    vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_s <= vCount_uid224_lzcZ_uid102_block_rsrvd_fix_q;
    vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_combproc: PROCESS (vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_s, rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b, rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid223_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select(BITSELECT,408)@8
    rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_q(3 downto 2);
    rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid227_lzcZ_uid102_block_rsrvd_fix_q(1 downto 0);

    -- vCount_uid230_lzcZ_uid102_block_rsrvd_fix(LOGICAL,229)@8
    vCount_uid230_lzcZ_uid102_block_rsrvd_fix_q <= "1" WHEN rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b = zs_uid185_zCount_uid58_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid233_lzcZ_uid102_block_rsrvd_fix(MUX,232)@8
    vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_s <= vCount_uid230_lzcZ_uid102_block_rsrvd_fix_q;
    vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_combproc: PROCESS (vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_s, rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b, rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c)
    BEGIN
        CASE (vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_b;
            WHEN "1" => vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_q <= rVStage_uid229_lzcZ_uid102_block_rsrvd_fix_merged_bit_select_c;
            WHEN OTHERS => vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid235_lzcZ_uid102_block_rsrvd_fix(BITSELECT,234)@8
    rVStage_uid235_lzcZ_uid102_block_rsrvd_fix_b <= vStagei_uid233_lzcZ_uid102_block_rsrvd_fix_q(1 downto 1);

    -- vCount_uid236_lzcZ_uid102_block_rsrvd_fix(LOGICAL,235)@8
    vCount_uid236_lzcZ_uid102_block_rsrvd_fix_q <= "1" WHEN rVStage_uid235_lzcZ_uid102_block_rsrvd_fix_b = GND_q ELSE "0";

    -- r_uid237_lzcZ_uid102_block_rsrvd_fix(BITJOIN,236)@8
    r_uid237_lzcZ_uid102_block_rsrvd_fix_q <= redist8_vCount_uid198_lzcZ_uid102_block_rsrvd_fix_q_1_q & redist6_vCount_uid206_lzcZ_uid102_block_rsrvd_fix_q_1_q & redist5_vCount_uid212_lzcZ_uid102_block_rsrvd_fix_q_1_q & redist4_vCount_uid218_lzcZ_uid102_block_rsrvd_fix_q_1_q & vCount_uid224_lzcZ_uid102_block_rsrvd_fix_q & vCount_uid230_lzcZ_uid102_block_rsrvd_fix_q & vCount_uid236_lzcZ_uid102_block_rsrvd_fix_q;

    -- leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select(BITSELECT,409)@8
    leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_b <= r_uid237_lzcZ_uid102_block_rsrvd_fix_q(6 downto 5);
    leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_c <= r_uid237_lzcZ_uid102_block_rsrvd_fix_q(4 downto 3);
    leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_d <= r_uid237_lzcZ_uid102_block_rsrvd_fix_q(2 downto 1);
    leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_e <= r_uid237_lzcZ_uid102_block_rsrvd_fix_q(0 downto 0);

    -- leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix(MUX,384)@8
    leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_s <= leftShiftStageSel6Dto5_uid357_alignedZ_uid103_block_rsrvd_fix_merged_bit_select_e;
    leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_combproc: PROCESS (leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_s, leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q, leftShiftStage3Idx1_uid383_alignedZ_uid103_block_rsrvd_fix_q)
    BEGIN
        CASE (leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_s) IS
            WHEN "0" => leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage2_uid380_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN "1" => leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_q <= leftShiftStage3Idx1_uid383_alignedZ_uid103_block_rsrvd_fix_q;
            WHEN OTHERS => leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- pHigh_uid106_block_rsrvd_fix(BITSELECT,105)@8
    pHigh_uid106_block_rsrvd_fix_b <= leftShiftStage3_uid385_alignedZ_uid103_block_rsrvd_fix_q(64 downto 39);

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_wraddr(REG,470)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist16_pHigh_uid106_block_rsrvd_fix_b_4_wraddr_q <= "10";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist16_pHigh_uid106_block_rsrvd_fix_b_4_wraddr_q <= STD_LOGIC_VECTOR(redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem(DUALMEM,468)
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_ia <= STD_LOGIC_VECTOR(pHigh_uid106_block_rsrvd_fix_b);
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_aa <= redist16_pHigh_uid106_block_rsrvd_fix_b_4_wraddr_q;
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_ab <= redist16_pHigh_uid106_block_rsrvd_fix_b_4_rdcnt_q;
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_reset0 <= areset;
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_dmem : altera_syncram
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
        clocken1 => redist16_pHigh_uid106_block_rsrvd_fix_b_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_reset0,
        clock1 => clk,
        address_a => redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_aa,
        data_a => redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_ab,
        q_b => redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_iq
    );
    redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_q <= redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_iq(25 downto 0);

    -- p_uid107_block_rsrvd_fix(MUX,106)@12
    p_uid107_block_rsrvd_fix_s <= redist20_sinXIsXRR_uid87_block_rsrvd_fix_n_4_q;
    p_uid107_block_rsrvd_fix_combproc: PROCESS (p_uid107_block_rsrvd_fix_s, redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_q, cPi_uid104_block_rsrvd_fix_q)
    BEGIN
        CASE (p_uid107_block_rsrvd_fix_s) IS
            WHEN "0" => p_uid107_block_rsrvd_fix_q <= redist16_pHigh_uid106_block_rsrvd_fix_b_4_mem_q;
            WHEN "1" => p_uid107_block_rsrvd_fix_q <= cPi_uid104_block_rsrvd_fix_q;
            WHEN OTHERS => p_uid107_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- mul2xSinRes_uid122_block_rsrvd_fix_cma(CHAINMULTADD,390)@12 + 2
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
                mul2xSinRes_uid122_block_rsrvd_fix_cma_a0(0) <= RESIZE(UNSIGNED(p_uid107_block_rsrvd_fix_q),26);
                mul2xSinRes_uid122_block_rsrvd_fix_cma_c0(0) <= RESIZE(UNSIGNED(multSecondOperand_uid121_block_rsrvd_fix_q),26);
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

    -- concSinXIsXRRNormBit_uid130_block_rsrvd_fix(BITJOIN,129)@14
    concSinXIsXRRNormBit_uid130_block_rsrvd_fix_q <= redist21_sinXIsXRR_uid87_block_rsrvd_fix_n_6_q & normBit_uid123_block_rsrvd_fix_b;

    -- rndOp_uid133_block_rsrvd_fix(BITJOIN,132)@14
    rndOp_uid133_block_rsrvd_fix_q <= concSinXIsXRRNormBit_uid130_block_rsrvd_fix_q & cstZeroWF_uid7_block_rsrvd_fix_q & VCC_q;

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_notEnable(LOGICAL,454)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_nor(LOGICAL,455)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_nor_q <= not (redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_notEnable_q or redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_sticky_ena_q);

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_last(CONSTANT,451)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_last_q <= "010";

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmp(LOGICAL,452)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmp_b <= STD_LOGIC_VECTOR("0" & redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_q);
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmp_q <= "1" WHEN redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_last_q = redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmp_b ELSE "0";

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmpReg(REG,453)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmpReg_q <= STD_LOGIC_VECTOR(redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_sticky_ena(REG,456)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_nor_q = "1") THEN
                redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_enaAnd(LOGICAL,457)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_enaAnd_q <= redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_sticky_ena_q and VCC_q;

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt(COUNTER,449)
    -- low=0, high=3, step=1, init=0
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_i <= redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_i, 2)));

    -- msbuExpXRR_uid110_block_rsrvd_fix(BITSELECT,109)@8
    msbuExpXRR_uid110_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(redist23_expXRR_uid70_block_rsrvd_fix_b_2_q(7 downto 7));

    -- signExtExpXRR_uid111_block_rsrvd_fix(BITJOIN,110)@8
    signExtExpXRR_uid111_block_rsrvd_fix_q <= msbuExpXRR_uid110_block_rsrvd_fix_b & redist23_expXRR_uid70_block_rsrvd_fix_b_2_q;

    -- expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged(SUB,386)@8 + 1
    expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00" & biasM1_uid40_block_rsrvd_fix_q));
    expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & r_uid237_lzcZ_uid102_block_rsrvd_fix_q));
    expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_i <= "0" & signExtExpXRR_uid111_block_rsrvd_fix_q;
    expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (sinXIsXRR_uid87_block_rsrvd_fix_n = "1") THEN
                expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_o <= expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_i;
            ELSE
                expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_o <= STD_LOGIC_VECTOR(SIGNED(expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_a) - SIGNED(expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_b));
            END IF;
        END IF;
    END PROCESS;
    expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q <= expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_o(8 downto 0);

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_wraddr(REG,450)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_wraddr_q <= "11";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_wraddr_q <= STD_LOGIC_VECTOR(redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem(DUALMEM,448)
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_ia <= STD_LOGIC_VECTOR(expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q);
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_aa <= redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_wraddr_q;
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_ab <= redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_rdcnt_q;
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_reset0 <= areset;
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 9,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 9,
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
        clocken1 => redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_reset0,
        clock1 => clk,
        address_a => redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_aa,
        data_a => redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_ab,
        q_b => redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_iq
    );
    redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_q <= redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_iq(8 downto 0);

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
    expRCompFracRCompPreRnd_uid127_block_rsrvd_fix_q <= redist3_expHardCase_uid109_block_rsrvd_fix_expP_uid114_block_rsrvd_fix_merged_q_5_mem_q & fracRCompPreRnd_uid126_block_rsrvd_fix_q;

    -- expRCompFracRComp_uid134_block_rsrvd_fix(ADD,133)@14
    expRCompFracRComp_uid134_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => expRCompFracRCompPreRnd_uid127_block_rsrvd_fix_q(32)) & expRCompFracRCompPreRnd_uid127_block_rsrvd_fix_q));
    expRCompFracRComp_uid134_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000" & rndOp_uid133_block_rsrvd_fix_q));
    expRCompFracRComp_uid134_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expRCompFracRComp_uid134_block_rsrvd_fix_a) + SIGNED(expRCompFracRComp_uid134_block_rsrvd_fix_b));
    expRCompFracRComp_uid134_block_rsrvd_fix_q <= expRCompFracRComp_uid134_block_rsrvd_fix_o(33 downto 0);

    -- expRCompE_uid136_block_rsrvd_fix(BITSELECT,135)@14
    expRCompE_uid136_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(expRCompFracRComp_uid134_block_rsrvd_fix_q(32 downto 0));
    expRCompE_uid136_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expRCompE_uid136_block_rsrvd_fix_in(32 downto 24));

    -- expRComp_uid137_block_rsrvd_fix(BITSELECT,136)@14
    expRComp_uid137_block_rsrvd_fix_in <= expRCompE_uid136_block_rsrvd_fix_b(7 downto 0);
    expRComp_uid137_block_rsrvd_fix_b <= expRComp_uid137_block_rsrvd_fix_in(7 downto 0);

    -- frac_x_uid10_block_rsrvd_fix(BITSELECT,9)@14
    frac_x_uid10_block_rsrvd_fix_b <= redist27_in_0_in_0_14_mem_q(22 downto 0);

    -- fracXIsZero_uid13_block_rsrvd_fix(LOGICAL,12)@14
    fracXIsZero_uid13_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid7_block_rsrvd_fix_q = frac_x_uid10_block_rsrvd_fix_b ELSE "0";

    -- excI_x_uid15_block_rsrvd_fix(LOGICAL,14)@14
    excI_x_uid15_block_rsrvd_fix_q <= expXIsMax_uid12_block_rsrvd_fix_q and fracXIsZero_uid13_block_rsrvd_fix_q;

    -- fracXIsNotZero_uid14_block_rsrvd_fix(LOGICAL,13)@14
    fracXIsNotZero_uid14_block_rsrvd_fix_q <= not (fracXIsZero_uid13_block_rsrvd_fix_q);

    -- excN_x_uid16_block_rsrvd_fix(LOGICAL,15)@14
    excN_x_uid16_block_rsrvd_fix_q <= expXIsMax_uid12_block_rsrvd_fix_q and fracXIsNotZero_uid14_block_rsrvd_fix_q;

    -- excRNaN_uid141_block_rsrvd_fix(LOGICAL,140)@14
    excRNaN_uid141_block_rsrvd_fix_q <= excN_x_uid16_block_rsrvd_fix_q or excI_x_uid15_block_rsrvd_fix_q;

    -- udf_uid138_block_rsrvd_fix(COMPARE,137)@14
    udf_uid138_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000" & GND_q));
    udf_uid138_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => expRCompE_uid136_block_rsrvd_fix_b(8)) & expRCompE_uid136_block_rsrvd_fix_b));
    udf_uid138_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid138_block_rsrvd_fix_a) - SIGNED(udf_uid138_block_rsrvd_fix_b));
    udf_uid138_block_rsrvd_fix_n(0) <= not (udf_uid138_block_rsrvd_fix_o(10));

    -- xRegAndUdf_uid139_block_rsrvd_fix(LOGICAL,138)@14
    xRegAndUdf_uid139_block_rsrvd_fix_q <= excR_x_uid19_block_rsrvd_fix_q and udf_uid138_block_rsrvd_fix_n;

    -- excRZero_uid140_block_rsrvd_fix(LOGICAL,139)@14
    excRZero_uid140_block_rsrvd_fix_q <= excZ_x_uid11_block_rsrvd_fix_q or xRegAndUdf_uid139_block_rsrvd_fix_q;

    -- excSelBits_uid142_block_rsrvd_fix(BITJOIN,141)@14
    excSelBits_uid142_block_rsrvd_fix_q <= excRNaN_uid141_block_rsrvd_fix_q & excRZero_uid140_block_rsrvd_fix_q & sinXIsX_uid86_block_rsrvd_fix_n;

    -- excSel_uid143_block_rsrvd_fix(LOOKUP,142)@14
    excSel_uid143_block_rsrvd_fix_combproc: PROCESS (excSelBits_uid142_block_rsrvd_fix_q)
    BEGIN
        -- Begin reserved scope level
        CASE (excSelBits_uid142_block_rsrvd_fix_q) IS
            WHEN "000" => excSel_uid143_block_rsrvd_fix_q <= "00";
            WHEN "001" => excSel_uid143_block_rsrvd_fix_q <= "01";
            WHEN "010" => excSel_uid143_block_rsrvd_fix_q <= "10";
            WHEN "011" => excSel_uid143_block_rsrvd_fix_q <= "10";
            WHEN "100" => excSel_uid143_block_rsrvd_fix_q <= "11";
            WHEN "101" => excSel_uid143_block_rsrvd_fix_q <= "11";
            WHEN "110" => excSel_uid143_block_rsrvd_fix_q <= "00";
            WHEN "111" => excSel_uid143_block_rsrvd_fix_q <= "00";
            WHEN OTHERS => -- unreachable
                           excSel_uid143_block_rsrvd_fix_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- expRPostExc_uid150_block_rsrvd_fix(MUX,149)@14
    expRPostExc_uid150_block_rsrvd_fix_s <= excSel_uid143_block_rsrvd_fix_q;
    expRPostExc_uid150_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid150_block_rsrvd_fix_s, expRComp_uid137_block_rsrvd_fix_b, exp_x_uid9_block_rsrvd_fix_b, cstAllZWE_uid8_block_rsrvd_fix_q, cstAllOWE_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid150_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid150_block_rsrvd_fix_q <= expRComp_uid137_block_rsrvd_fix_b;
            WHEN "01" => expRPostExc_uid150_block_rsrvd_fix_q <= exp_x_uid9_block_rsrvd_fix_b;
            WHEN "10" => expRPostExc_uid150_block_rsrvd_fix_q <= cstAllZWE_uid8_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid150_block_rsrvd_fix_q <= cstAllOWE_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid150_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracNaN_uid144_block_rsrvd_fix(CONSTANT,143)
    fracNaN_uid144_block_rsrvd_fix_q <= "00000000000000000000001";

    -- fracRComp_uid135_block_rsrvd_fix(BITSELECT,134)@14
    fracRComp_uid135_block_rsrvd_fix_in <= expRCompFracRComp_uid134_block_rsrvd_fix_q(23 downto 0);
    fracRComp_uid135_block_rsrvd_fix_b <= fracRComp_uid135_block_rsrvd_fix_in(23 downto 1);

    -- fracRPostExc_uid146_block_rsrvd_fix(MUX,145)@14
    fracRPostExc_uid146_block_rsrvd_fix_s <= excSel_uid143_block_rsrvd_fix_q;
    fracRPostExc_uid146_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid146_block_rsrvd_fix_s, fracRComp_uid135_block_rsrvd_fix_b, frac_x_uid10_block_rsrvd_fix_b, cstZeroWF_uid7_block_rsrvd_fix_q, fracNaN_uid144_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid146_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid146_block_rsrvd_fix_q <= fracRComp_uid135_block_rsrvd_fix_b;
            WHEN "01" => fracRPostExc_uid146_block_rsrvd_fix_q <= frac_x_uid10_block_rsrvd_fix_b;
            WHEN "10" => fracRPostExc_uid146_block_rsrvd_fix_q <= cstZeroWF_uid7_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid146_block_rsrvd_fix_q <= fracNaN_uid144_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid146_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- sinx_uid156_block_rsrvd_fix(BITJOIN,155)@14
    sinx_uid156_block_rsrvd_fix_q <= signRFinal_uid155_block_rsrvd_fix_q & expRPostExc_uid150_block_rsrvd_fix_q & fracRPostExc_uid146_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@14
    out_primWireOut <= sinx_uid156_block_rsrvd_fix_q;

END normal;
