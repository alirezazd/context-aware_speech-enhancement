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

-- VHDL created from floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_castA1Zd6oq3cd16oe0cp36hj0u
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
entity floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_castA1Zd6oq3cd16oe0cp36hj0u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- ufix32_en16
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_castA1Zd6oq3cd16oe0cp36hj0u;

architecture normal of floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB_castA1Zd6oq3cd16oe0cp36hj0u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal maxCount_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal inIsZero_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal msbIn_uid9_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expPreRnd_uid10_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid10_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expFracRnd_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (32 downto 0);
    signal sticky_uid16_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal sticky_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal nr_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rnd_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracR_uid20_block_rsrvd_fix_a : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracR_uid20_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracR_uid20_block_rsrvd_fix_o : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracR_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal fracR_uid21_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracR_uid21_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expR_uid22_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal udf_uid23_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal udf_uid23_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal udf_uid23_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal udf_uid23_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expInf_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal ovf_uid25_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal ovf_uid25_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal ovf_uid25_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal ovf_uid25_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelector_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracZ_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid28_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostExc_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal udfOrInZero_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelector_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal expZ_uid33_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid34_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid34_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPostExc_uid35_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid35_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal outRes_uid36_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid62_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid66_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid73_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid76_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid78_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_a : STD_LOGIC_VECTOR (7 downto 0);
    signal vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_o : STD_LOGIC_VECTOR (7 downto 0);
    signal vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal l_uid13_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (1 downto 0);
    signal l_uid13_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal l_uid13_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (23 downto 0);
    signal rVStage_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (27 downto 0);
    signal rVStage_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (29 downto 0);
    signal rVStage_uid72_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid72_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (30 downto 0);
    signal fracRnd_uid11_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (30 downto 0);
    signal fracRnd_uid11_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRnd_uid11_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (6 downto 0);
    signal redist0_fracRnd_uid11_block_rsrvd_fix_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist1_in_0_in_0_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- expInf_uid24_block_rsrvd_fix(CONSTANT,23)
    expInf_uid24_block_rsrvd_fix_q <= "11111111";

    -- expZ_uid33_block_rsrvd_fix(CONSTANT,32)
    expZ_uid33_block_rsrvd_fix_q <= "00000000";

    -- rVStage_uid72_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,89)@1
    rVStage_uid72_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_q(31 downto 31);
    rVStage_uid72_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_q(30 downto 0);

    -- cStage_uid76_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,75)@1
    cStage_uid76_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid72_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & GND_q;

    -- rVStage_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,88)@1
    rVStage_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q(31 downto 30);
    rVStage_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q(29 downto 0);

    -- zs_uid64_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,63)
    zs_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "00";

    -- cStage_uid69_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,68)@1
    cStage_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & zs_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q;

    -- rVStage_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,87)@1
    rVStage_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q(31 downto 28);
    rVStage_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q(27 downto 0);

    -- zs_uid57_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,56)
    zs_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "0000";

    -- cStage_uid62_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,61)@1
    cStage_uid62_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & zs_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q;

    -- rVStage_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,86)@1
    rVStage_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q(31 downto 24);
    rVStage_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q(23 downto 0);

    -- cStage_uid55_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,54)@1
    cStage_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & expZ_uid33_block_rsrvd_fix_q;

    -- rVStage_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,85)@1
    rVStage_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q(31 downto 16);
    rVStage_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q(15 downto 0);

    -- zs_uid43_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,42)
    zs_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "0000000000000000";

    -- cStage_uid48_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,47)@1
    cStage_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & zs_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q;

    -- zs_uid38_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,37)
    zs_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- redist1_in_0_in_0_1(DELAY,92)
    redist1_in_0_in_0_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_0, xout => redist1_in_0_in_0_1_q, clk => clk, aclr => areset );

    -- vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,39)@0 + 1
    vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_qi <= "1" WHEN in_0 = zs_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_q ELSE "0";
    vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_qi, xout => vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,41)@1
    vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_s, redist1_in_0_in_0_1_q, zs_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q <= redist1_in_0_in_0_1_q;
            WHEN "1" => vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q <= zs_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid45_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,44)@1
    vCount_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = zs_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,48)@1
    vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_s, vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q, cStage_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid48_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid52_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,51)@1
    vCount_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = expZ_uid33_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,55)@1
    vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_s, vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q, cStage_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid55_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid59_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,58)@1
    vCount_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid58_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = zs_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,62)@1
    vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_s, vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q, cStage_uid62_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid62_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid66_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,65)@1
    vCount_uid66_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = zs_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,69)@1
    vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid66_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_s, vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q, cStage_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid73_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,72)@1
    vCount_uid73_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid72_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = GND_q ELSE "0";

    -- vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,76)@1
    vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid73_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_s, vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_q, cStage_uid76_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid70_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid76_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRnd_uid11_block_rsrvd_fix_merged_bit_select(BITSELECT,90)@1
    fracRnd_uid11_block_rsrvd_fix_merged_bit_select_in <= vStagei_uid77_lzcShifterZ1_uid6_block_rsrvd_fix_q(30 downto 0);
    fracRnd_uid11_block_rsrvd_fix_merged_bit_select_b <= fracRnd_uid11_block_rsrvd_fix_merged_bit_select_in(30 downto 7);
    fracRnd_uid11_block_rsrvd_fix_merged_bit_select_c <= fracRnd_uid11_block_rsrvd_fix_merged_bit_select_in(6 downto 0);

    -- sticky_uid16_block_rsrvd_fix(LOGICAL,15)@1 + 1
    sticky_uid16_block_rsrvd_fix_qi <= "1" WHEN fracRnd_uid11_block_rsrvd_fix_merged_bit_select_c /= "0000000" ELSE "0";
    sticky_uid16_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sticky_uid16_block_rsrvd_fix_qi, xout => sticky_uid16_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- nr_uid17_block_rsrvd_fix(LOGICAL,16)@2
    nr_uid17_block_rsrvd_fix_q <= not (l_uid13_block_rsrvd_fix_merged_bit_select_c);

    -- l_uid13_block_rsrvd_fix_merged_bit_select(BITSELECT,84)@2
    l_uid13_block_rsrvd_fix_merged_bit_select_in <= STD_LOGIC_VECTOR(expFracRnd_uid12_block_rsrvd_fix_q(1 downto 0));
    l_uid13_block_rsrvd_fix_merged_bit_select_b <= STD_LOGIC_VECTOR(l_uid13_block_rsrvd_fix_merged_bit_select_in(1 downto 1));
    l_uid13_block_rsrvd_fix_merged_bit_select_c <= STD_LOGIC_VECTOR(l_uid13_block_rsrvd_fix_merged_bit_select_in(0 downto 0));

    -- rnd_uid18_block_rsrvd_fix(LOGICAL,17)@2
    rnd_uid18_block_rsrvd_fix_q <= l_uid13_block_rsrvd_fix_merged_bit_select_b or nr_uid17_block_rsrvd_fix_q or sticky_uid16_block_rsrvd_fix_q;

    -- maxCount_uid7_block_rsrvd_fix(CONSTANT,6)
    maxCount_uid7_block_rsrvd_fix_q <= "100000";

    -- vCount_uid78_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,77)@1
    vCount_uid78_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vCount_uid40_lzcShifterZ1_uid6_block_rsrvd_fix_q & vCount_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_q & vCount_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_q & vCount_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_q & vCount_uid66_lzcShifterZ1_uid6_block_rsrvd_fix_q & vCount_uid73_lzcShifterZ1_uid6_block_rsrvd_fix_q;

    -- vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix(COMPARE,79)@1
    vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & maxCount_uid7_block_rsrvd_fix_q);
    vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & vCount_uid78_lzcShifterZ1_uid6_block_rsrvd_fix_q);
    vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_a) - UNSIGNED(vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_b));
    vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_c(0) <= vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_o(7);

    -- vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,81)@1 + 1
    vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCountBig_uid80_lzcShifterZ1_uid6_block_rsrvd_fix_c;
    vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
                WHEN "0" => vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vCount_uid78_lzcShifterZ1_uid6_block_rsrvd_fix_q;
                WHEN "1" => vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_q <= maxCount_uid7_block_rsrvd_fix_q;
                WHEN OTHERS => vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- msbIn_uid9_block_rsrvd_fix(CONSTANT,8)
    msbIn_uid9_block_rsrvd_fix_q <= "10001110";

    -- expPreRnd_uid10_block_rsrvd_fix(SUB,9)@2
    expPreRnd_uid10_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & msbIn_uid9_block_rsrvd_fix_q);
    expPreRnd_uid10_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("000" & vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_q);
    expPreRnd_uid10_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expPreRnd_uid10_block_rsrvd_fix_a) - UNSIGNED(expPreRnd_uid10_block_rsrvd_fix_b));
    expPreRnd_uid10_block_rsrvd_fix_q <= expPreRnd_uid10_block_rsrvd_fix_o(8 downto 0);

    -- redist0_fracRnd_uid11_block_rsrvd_fix_merged_bit_select_b_1(DELAY,91)
    redist0_fracRnd_uid11_block_rsrvd_fix_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRnd_uid11_block_rsrvd_fix_merged_bit_select_b, xout => redist0_fracRnd_uid11_block_rsrvd_fix_merged_bit_select_b_1_q, clk => clk, aclr => areset );

    -- expFracRnd_uid12_block_rsrvd_fix(BITJOIN,11)@2
    expFracRnd_uid12_block_rsrvd_fix_q <= expPreRnd_uid10_block_rsrvd_fix_q & redist0_fracRnd_uid11_block_rsrvd_fix_merged_bit_select_b_1_q;

    -- expFracR_uid20_block_rsrvd_fix(ADD,19)@2
    expFracR_uid20_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => expFracRnd_uid12_block_rsrvd_fix_q(32)) & expFracRnd_uid12_block_rsrvd_fix_q));
    expFracR_uid20_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000000000000000000000000" & rnd_uid18_block_rsrvd_fix_q));
    expFracR_uid20_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expFracR_uid20_block_rsrvd_fix_a) + SIGNED(expFracR_uid20_block_rsrvd_fix_b));
    expFracR_uid20_block_rsrvd_fix_q <= expFracR_uid20_block_rsrvd_fix_o(33 downto 0);

    -- expR_uid22_block_rsrvd_fix(BITSELECT,21)@2
    expR_uid22_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracR_uid20_block_rsrvd_fix_q(33 downto 24));

    -- expR_uid34_block_rsrvd_fix(BITSELECT,33)@2
    expR_uid34_block_rsrvd_fix_in <= expR_uid22_block_rsrvd_fix_b(7 downto 0);
    expR_uid34_block_rsrvd_fix_b <= expR_uid34_block_rsrvd_fix_in(7 downto 0);

    -- ovf_uid25_block_rsrvd_fix(COMPARE,24)@2
    ovf_uid25_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => expR_uid22_block_rsrvd_fix_b(9)) & expR_uid22_block_rsrvd_fix_b));
    ovf_uid25_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & expInf_uid24_block_rsrvd_fix_q));
    ovf_uid25_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid25_block_rsrvd_fix_a) - SIGNED(ovf_uid25_block_rsrvd_fix_b));
    ovf_uid25_block_rsrvd_fix_n(0) <= not (ovf_uid25_block_rsrvd_fix_o(11));

    -- inIsZero_uid8_block_rsrvd_fix(LOGICAL,7)@2
    inIsZero_uid8_block_rsrvd_fix_q <= "1" WHEN vCountFinal_uid82_lzcShifterZ1_uid6_block_rsrvd_fix_q = maxCount_uid7_block_rsrvd_fix_q ELSE "0";

    -- udf_uid23_block_rsrvd_fix(COMPARE,22)@2
    udf_uid23_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & GND_q));
    udf_uid23_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => expR_uid22_block_rsrvd_fix_b(9)) & expR_uid22_block_rsrvd_fix_b));
    udf_uid23_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid23_block_rsrvd_fix_a) - SIGNED(udf_uid23_block_rsrvd_fix_b));
    udf_uid23_block_rsrvd_fix_n(0) <= not (udf_uid23_block_rsrvd_fix_o(11));

    -- udfOrInZero_uid29_block_rsrvd_fix(LOGICAL,28)@2
    udfOrInZero_uid29_block_rsrvd_fix_q <= udf_uid23_block_rsrvd_fix_n or inIsZero_uid8_block_rsrvd_fix_q;

    -- excSelector_uid30_block_rsrvd_fix(BITJOIN,29)@2
    excSelector_uid30_block_rsrvd_fix_q <= ovf_uid25_block_rsrvd_fix_n & udfOrInZero_uid29_block_rsrvd_fix_q;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- expRPostExc_uid35_block_rsrvd_fix(MUX,34)@2
    expRPostExc_uid35_block_rsrvd_fix_s <= excSelector_uid30_block_rsrvd_fix_q;
    expRPostExc_uid35_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid35_block_rsrvd_fix_s, expR_uid34_block_rsrvd_fix_b, expZ_uid33_block_rsrvd_fix_q, expInf_uid24_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid35_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid35_block_rsrvd_fix_q <= expR_uid34_block_rsrvd_fix_b;
            WHEN "01" => expRPostExc_uid35_block_rsrvd_fix_q <= expZ_uid33_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid35_block_rsrvd_fix_q <= expInf_uid24_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid35_block_rsrvd_fix_q <= expInf_uid24_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid35_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracZ_uid27_block_rsrvd_fix(CONSTANT,26)
    fracZ_uid27_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracR_uid21_block_rsrvd_fix(BITSELECT,20)@2
    fracR_uid21_block_rsrvd_fix_in <= expFracR_uid20_block_rsrvd_fix_q(23 downto 0);
    fracR_uid21_block_rsrvd_fix_b <= fracR_uid21_block_rsrvd_fix_in(23 downto 1);

    -- excSelector_uid26_block_rsrvd_fix(LOGICAL,25)@2
    excSelector_uid26_block_rsrvd_fix_q <= inIsZero_uid8_block_rsrvd_fix_q or ovf_uid25_block_rsrvd_fix_n or udf_uid23_block_rsrvd_fix_n;

    -- fracRPostExc_uid28_block_rsrvd_fix(MUX,27)@2
    fracRPostExc_uid28_block_rsrvd_fix_s <= excSelector_uid26_block_rsrvd_fix_q;
    fracRPostExc_uid28_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid28_block_rsrvd_fix_s, fracR_uid21_block_rsrvd_fix_b, fracZ_uid27_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid28_block_rsrvd_fix_s) IS
            WHEN "0" => fracRPostExc_uid28_block_rsrvd_fix_q <= fracR_uid21_block_rsrvd_fix_b;
            WHEN "1" => fracRPostExc_uid28_block_rsrvd_fix_q <= fracZ_uid27_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid28_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outRes_uid36_block_rsrvd_fix(BITJOIN,35)@2
    outRes_uid36_block_rsrvd_fix_q <= GND_q & expRPostExc_uid35_block_rsrvd_fix_q & fracRPostExc_uid28_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@2
    out_primWireOut <= outRes_uid36_block_rsrvd_fix_q;

END normal;
