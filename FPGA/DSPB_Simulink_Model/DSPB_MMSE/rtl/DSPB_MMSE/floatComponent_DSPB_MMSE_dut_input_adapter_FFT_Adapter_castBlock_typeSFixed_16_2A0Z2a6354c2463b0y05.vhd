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

-- VHDL created from floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_16_2A0Z054c2a6354c2463b0y05
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
entity floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_16_2A0Z054c2a6354c2463b0y05 is
    port (
        in_0 : in std_logic_vector(37 downto 0);  -- sfix38_en22
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_16_2A0Z054c2a6354c2463b0y05;

architecture normal of floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_16_2A0Z054c2a6354c2463b0y05 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signX_uid6_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xXorSign_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (37 downto 0);
    signal xXorSign_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal yE_uid8_block_rsrvd_fix_a : STD_LOGIC_VECTOR (38 downto 0);
    signal yE_uid8_block_rsrvd_fix_b : STD_LOGIC_VECTOR (38 downto 0);
    signal yE_uid8_block_rsrvd_fix_o : STD_LOGIC_VECTOR (38 downto 0);
    signal yE_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (38 downto 0);
    signal y_uid9_block_rsrvd_fix_in : STD_LOGIC_VECTOR (37 downto 0);
    signal y_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (37 downto 0);
    signal maxCount_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal inIsZero_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal msbIn_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expPreRnd_uid14_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid14_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid14_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expFracRnd_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (32 downto 0);
    signal sticky_uid20_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal sticky_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal nr_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rnd_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracR_uid24_block_rsrvd_fix_a : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracR_uid24_block_rsrvd_fix_b : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracR_uid24_block_rsrvd_fix_o : STD_LOGIC_VECTOR (34 downto 0);
    signal expFracR_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (33 downto 0);
    signal fracR_uid25_block_rsrvd_fix_in : STD_LOGIC_VECTOR (23 downto 0);
    signal fracR_uid25_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expR_uid26_block_rsrvd_fix_b : STD_LOGIC_VECTOR (9 downto 0);
    signal udf_uid27_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal udf_uid27_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal udf_uid27_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal udf_uid27_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expInf_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal ovf_uid29_block_rsrvd_fix_a : STD_LOGIC_VECTOR (11 downto 0);
    signal ovf_uid29_block_rsrvd_fix_b : STD_LOGIC_VECTOR (11 downto 0);
    signal ovf_uid29_block_rsrvd_fix_o : STD_LOGIC_VECTOR (11 downto 0);
    signal ovf_uid29_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelector_uid30_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracZ_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid32_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostExc_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal udfOrInZero_uid33_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelector_uid34_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal expZ_uid37_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid38_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid38_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPostExc_uid39_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal outRes_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal zs_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vCount_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal zs_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal zs_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid72_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid75_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vCount_uid79_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (37 downto 0);
    signal vCount_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_a : STD_LOGIC_VECTOR (7 downto 0);
    signal vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_o : STD_LOGIC_VECTOR (7 downto 0);
    signal vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal rVStage_uid43_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rVStage_uid43_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal l_uid17_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (1 downto 0);
    signal l_uid17_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal l_uid17_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid50_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid50_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (21 downto 0);
    signal rVStage_uid57_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid57_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (29 downto 0);
    signal rVStage_uid64_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid64_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (33 downto 0);
    signal rVStage_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (35 downto 0);
    signal rVStage_uid78_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid78_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (36 downto 0);
    signal fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in : STD_LOGIC_VECTOR (36 downto 0);
    signal fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (23 downto 0);
    signal fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (12 downto 0);
    signal redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal redist1_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_signX_uid6_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    signX_uid6_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(37 downto 37));

    -- redist2_signX_uid6_block_rsrvd_fix_b_2(DELAY,100)
    redist2_signX_uid6_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid6_block_rsrvd_fix_b, xout => redist2_signX_uid6_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- expInf_uid28_block_rsrvd_fix(CONSTANT,27)
    expInf_uid28_block_rsrvd_fix_q <= "11111111";

    -- expZ_uid37_block_rsrvd_fix(CONSTANT,36)
    expZ_uid37_block_rsrvd_fix_q <= "00000000";

    -- rVStage_uid78_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,96)@1
    rVStage_uid78_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_q(37 downto 37);
    rVStage_uid78_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_q(36 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- cStage_uid82_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,81)@1
    cStage_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid78_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & GND_q;

    -- rVStage_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,95)@1
    rVStage_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_q(37 downto 36);
    rVStage_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_q(35 downto 0);

    -- zs_uid70_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,69)
    zs_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "00";

    -- cStage_uid75_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,74)@1
    cStage_uid75_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & zs_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q;

    -- rVStage_uid64_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,94)@1
    rVStage_uid64_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q(37 downto 34);
    rVStage_uid64_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q(33 downto 0);

    -- zs_uid63_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,62)
    zs_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "0000";

    -- cStage_uid68_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,67)@1
    cStage_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid64_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & zs_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q;

    -- rVStage_uid57_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,93)@1
    rVStage_uid57_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q(37 downto 30);
    rVStage_uid57_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q(29 downto 0);

    -- cStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,60)@1
    cStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid57_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & expZ_uid37_block_rsrvd_fix_q;

    -- rVStage_uid50_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,92)@1
    rVStage_uid50_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q(37 downto 22);
    rVStage_uid50_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q(21 downto 0);

    -- zs_uid49_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,48)
    zs_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "0000000000000000";

    -- cStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,53)@1
    cStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid50_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & zs_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q;

    -- rVStage_uid43_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,90)@0
    rVStage_uid43_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= y_uid9_block_rsrvd_fix_b(37 downto 6);
    rVStage_uid43_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= y_uid9_block_rsrvd_fix_b(5 downto 0);

    -- zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,41)
    zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "00000000000000000000000000000000";

    -- cStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,46)@0
    cStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid43_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q;

    -- xXorSign_uid7_block_rsrvd_fix(LOGICAL,6)@0
    xXorSign_uid7_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((37 downto 1 => signX_uid6_block_rsrvd_fix_b(0)) & signX_uid6_block_rsrvd_fix_b));
    xXorSign_uid7_block_rsrvd_fix_q <= in_0 xor xXorSign_uid7_block_rsrvd_fix_b;

    -- yE_uid8_block_rsrvd_fix(ADD,7)@0
    yE_uid8_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & xXorSign_uid7_block_rsrvd_fix_q);
    yE_uid8_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00000000000000000000000000000000000000" & signX_uid6_block_rsrvd_fix_b);
    yE_uid8_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(yE_uid8_block_rsrvd_fix_a) + UNSIGNED(yE_uid8_block_rsrvd_fix_b));
    yE_uid8_block_rsrvd_fix_q <= yE_uid8_block_rsrvd_fix_o(38 downto 0);

    -- y_uid9_block_rsrvd_fix(BITSELECT,8)@0
    y_uid9_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(yE_uid8_block_rsrvd_fix_q(37 downto 0));
    y_uid9_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(y_uid9_block_rsrvd_fix_in(37 downto 0));

    -- vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,43)@0
    vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid43_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,47)@0 + 1
    vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q <= y_uid9_block_rsrvd_fix_b;
                WHEN "1" => vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                WHEN OTHERS => vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- vCount_uid51_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,50)@1
    vCount_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid50_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = zs_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,54)@1
    vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_s, vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q, cStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid58_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,57)@1
    vCount_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid57_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = expZ_uid37_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,61)@1
    vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_s, vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q, cStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid65_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,64)@1
    vCount_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid64_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = zs_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,68)@1
    vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_s, vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q, cStage_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid72_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,71)@1
    vCount_uid72_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = zs_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q ELSE "0";

    -- vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,75)@1
    vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid72_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_s, vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_q, cStage_uid75_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid75_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- vCount_uid79_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,78)@1
    vCount_uid79_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid78_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = GND_q ELSE "0";

    -- vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,82)@1
    vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid79_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_s, vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_q, cStage_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRnd_uid15_block_rsrvd_fix_merged_bit_select(BITSELECT,97)@1
    fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in <= vStagei_uid83_lzcShifterZ1_uid10_block_rsrvd_fix_q(36 downto 0);
    fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b <= fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in(36 downto 13);
    fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c <= fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in(12 downto 0);

    -- sticky_uid20_block_rsrvd_fix(LOGICAL,19)@1 + 1
    sticky_uid20_block_rsrvd_fix_qi <= "1" WHEN fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c /= "0000000000000" ELSE "0";
    sticky_uid20_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => sticky_uid20_block_rsrvd_fix_qi, xout => sticky_uid20_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- nr_uid21_block_rsrvd_fix(LOGICAL,20)@2
    nr_uid21_block_rsrvd_fix_q <= not (l_uid17_block_rsrvd_fix_merged_bit_select_c);

    -- l_uid17_block_rsrvd_fix_merged_bit_select(BITSELECT,91)@2
    l_uid17_block_rsrvd_fix_merged_bit_select_in <= STD_LOGIC_VECTOR(expFracRnd_uid16_block_rsrvd_fix_q(1 downto 0));
    l_uid17_block_rsrvd_fix_merged_bit_select_b <= STD_LOGIC_VECTOR(l_uid17_block_rsrvd_fix_merged_bit_select_in(1 downto 1));
    l_uid17_block_rsrvd_fix_merged_bit_select_c <= STD_LOGIC_VECTOR(l_uid17_block_rsrvd_fix_merged_bit_select_in(0 downto 0));

    -- rnd_uid22_block_rsrvd_fix(LOGICAL,21)@2
    rnd_uid22_block_rsrvd_fix_q <= l_uid17_block_rsrvd_fix_merged_bit_select_b or nr_uid21_block_rsrvd_fix_q or sticky_uid20_block_rsrvd_fix_q;

    -- maxCount_uid11_block_rsrvd_fix(CONSTANT,10)
    maxCount_uid11_block_rsrvd_fix_q <= "100110";

    -- redist1_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,99)
    redist1_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q, xout => redist1_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vCount_uid84_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,83)@1
    vCount_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist1_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q & vCount_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q & vCount_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q & vCount_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q & vCount_uid72_lzcShifterZ1_uid10_block_rsrvd_fix_q & vCount_uid79_lzcShifterZ1_uid10_block_rsrvd_fix_q;

    -- vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix(COMPARE,85)@1
    vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & maxCount_uid11_block_rsrvd_fix_q);
    vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & vCount_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_q);
    vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_a) - UNSIGNED(vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_b));
    vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_c(0) <= vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_o(7);

    -- vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,87)@1 + 1
    vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCountBig_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_c;
    vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
                WHEN "0" => vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vCount_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                WHEN "1" => vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_q <= maxCount_uid11_block_rsrvd_fix_q;
                WHEN OTHERS => vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- msbIn_uid13_block_rsrvd_fix(CONSTANT,12)
    msbIn_uid13_block_rsrvd_fix_q <= "10001110";

    -- expPreRnd_uid14_block_rsrvd_fix(SUB,13)@2
    expPreRnd_uid14_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & msbIn_uid13_block_rsrvd_fix_q);
    expPreRnd_uid14_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("000" & vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_q);
    expPreRnd_uid14_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expPreRnd_uid14_block_rsrvd_fix_a) - UNSIGNED(expPreRnd_uid14_block_rsrvd_fix_b));
    expPreRnd_uid14_block_rsrvd_fix_q <= expPreRnd_uid14_block_rsrvd_fix_o(8 downto 0);

    -- redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_1(DELAY,98)
    redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b, xout => redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_1_q, clk => clk, aclr => areset );

    -- expFracRnd_uid16_block_rsrvd_fix(BITJOIN,15)@2
    expFracRnd_uid16_block_rsrvd_fix_q <= expPreRnd_uid14_block_rsrvd_fix_q & redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_1_q;

    -- expFracR_uid24_block_rsrvd_fix(ADD,23)@2
    expFracR_uid24_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 33 => expFracRnd_uid16_block_rsrvd_fix_q(32)) & expFracRnd_uid16_block_rsrvd_fix_q));
    expFracR_uid24_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000000000000000000000000" & rnd_uid22_block_rsrvd_fix_q));
    expFracR_uid24_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(expFracR_uid24_block_rsrvd_fix_a) + SIGNED(expFracR_uid24_block_rsrvd_fix_b));
    expFracR_uid24_block_rsrvd_fix_q <= expFracR_uid24_block_rsrvd_fix_o(33 downto 0);

    -- expR_uid26_block_rsrvd_fix(BITSELECT,25)@2
    expR_uid26_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(expFracR_uid24_block_rsrvd_fix_q(33 downto 24));

    -- expR_uid38_block_rsrvd_fix(BITSELECT,37)@2
    expR_uid38_block_rsrvd_fix_in <= expR_uid26_block_rsrvd_fix_b(7 downto 0);
    expR_uid38_block_rsrvd_fix_b <= expR_uid38_block_rsrvd_fix_in(7 downto 0);

    -- ovf_uid29_block_rsrvd_fix(COMPARE,28)@2
    ovf_uid29_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => expR_uid26_block_rsrvd_fix_b(9)) & expR_uid26_block_rsrvd_fix_b));
    ovf_uid29_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000" & expInf_uid28_block_rsrvd_fix_q));
    ovf_uid29_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid29_block_rsrvd_fix_a) - SIGNED(ovf_uid29_block_rsrvd_fix_b));
    ovf_uid29_block_rsrvd_fix_n(0) <= not (ovf_uid29_block_rsrvd_fix_o(11));

    -- inIsZero_uid12_block_rsrvd_fix(LOGICAL,11)@2
    inIsZero_uid12_block_rsrvd_fix_q <= "1" WHEN vCountFinal_uid88_lzcShifterZ1_uid10_block_rsrvd_fix_q = maxCount_uid11_block_rsrvd_fix_q ELSE "0";

    -- udf_uid27_block_rsrvd_fix(COMPARE,26)@2
    udf_uid27_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & GND_q));
    udf_uid27_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => expR_uid26_block_rsrvd_fix_b(9)) & expR_uid26_block_rsrvd_fix_b));
    udf_uid27_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid27_block_rsrvd_fix_a) - SIGNED(udf_uid27_block_rsrvd_fix_b));
    udf_uid27_block_rsrvd_fix_n(0) <= not (udf_uid27_block_rsrvd_fix_o(11));

    -- udfOrInZero_uid33_block_rsrvd_fix(LOGICAL,32)@2
    udfOrInZero_uid33_block_rsrvd_fix_q <= udf_uid27_block_rsrvd_fix_n or inIsZero_uid12_block_rsrvd_fix_q;

    -- excSelector_uid34_block_rsrvd_fix(BITJOIN,33)@2
    excSelector_uid34_block_rsrvd_fix_q <= ovf_uid29_block_rsrvd_fix_n & udfOrInZero_uid33_block_rsrvd_fix_q;

    -- expRPostExc_uid39_block_rsrvd_fix(MUX,38)@2
    expRPostExc_uid39_block_rsrvd_fix_s <= excSelector_uid34_block_rsrvd_fix_q;
    expRPostExc_uid39_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid39_block_rsrvd_fix_s, expR_uid38_block_rsrvd_fix_b, expZ_uid37_block_rsrvd_fix_q, expInf_uid28_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid39_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid39_block_rsrvd_fix_q <= expR_uid38_block_rsrvd_fix_b;
            WHEN "01" => expRPostExc_uid39_block_rsrvd_fix_q <= expZ_uid37_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid39_block_rsrvd_fix_q <= expInf_uid28_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid39_block_rsrvd_fix_q <= expInf_uid28_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid39_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracZ_uid31_block_rsrvd_fix(CONSTANT,30)
    fracZ_uid31_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracR_uid25_block_rsrvd_fix(BITSELECT,24)@2
    fracR_uid25_block_rsrvd_fix_in <= expFracR_uid24_block_rsrvd_fix_q(23 downto 0);
    fracR_uid25_block_rsrvd_fix_b <= fracR_uid25_block_rsrvd_fix_in(23 downto 1);

    -- excSelector_uid30_block_rsrvd_fix(LOGICAL,29)@2
    excSelector_uid30_block_rsrvd_fix_q <= inIsZero_uid12_block_rsrvd_fix_q or ovf_uid29_block_rsrvd_fix_n or udf_uid27_block_rsrvd_fix_n;

    -- fracRPostExc_uid32_block_rsrvd_fix(MUX,31)@2
    fracRPostExc_uid32_block_rsrvd_fix_s <= excSelector_uid30_block_rsrvd_fix_q;
    fracRPostExc_uid32_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid32_block_rsrvd_fix_s, fracR_uid25_block_rsrvd_fix_b, fracZ_uid31_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid32_block_rsrvd_fix_s) IS
            WHEN "0" => fracRPostExc_uid32_block_rsrvd_fix_q <= fracR_uid25_block_rsrvd_fix_b;
            WHEN "1" => fracRPostExc_uid32_block_rsrvd_fix_q <= fracZ_uid31_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid32_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outRes_uid40_block_rsrvd_fix(BITJOIN,39)@2
    outRes_uid40_block_rsrvd_fix_q <= redist2_signX_uid6_block_rsrvd_fix_b_2_q & expRPostExc_uid39_block_rsrvd_fix_q & fracRPostExc_uid32_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@2
    out_primWireOut <= outRes_uid40_block_rsrvd_fix_q;

END normal;
