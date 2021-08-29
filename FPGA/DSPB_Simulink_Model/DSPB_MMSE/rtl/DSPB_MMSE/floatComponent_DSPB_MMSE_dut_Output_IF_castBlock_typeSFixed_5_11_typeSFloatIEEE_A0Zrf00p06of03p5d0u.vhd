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

-- VHDL created from floatComponent_DSPB_MMSE_dut_Output_IF_castBlock_typeSFixed_5_11_typeSFloatIEEE_A0Z6o00rf00p06of03p5d0u
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
entity floatComponent_DSPB_MMSE_dut_Output_IF_castBlock_typeSFixed_5_11_typeSFloatIEEE_A0Z6o00rf00p06of03p5d0u is
    port (
        in_0 : in std_logic_vector(15 downto 0);  -- sfix16_en11
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_Output_IF_castBlock_typeSFixed_5_11_typeSFloatIEEE_A0Z6o00rf00p06of03p5d0u;

architecture normal of floatComponent_DSPB_MMSE_dut_Output_IF_castBlock_typeSFixed_5_11_typeSFloatIEEE_A0Z6o00rf00p06of03p5d0u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signX_uid6_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal xXorSign_uid7_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal xXorSign_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal yE_uid8_block_rsrvd_fix_a : STD_LOGIC_VECTOR (16 downto 0);
    signal yE_uid8_block_rsrvd_fix_b : STD_LOGIC_VECTOR (16 downto 0);
    signal yE_uid8_block_rsrvd_fix_o : STD_LOGIC_VECTOR (16 downto 0);
    signal yE_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (16 downto 0);
    signal y_uid9_block_rsrvd_fix_in : STD_LOGIC_VECTOR (15 downto 0);
    signal y_uid9_block_rsrvd_fix_b : STD_LOGIC_VECTOR (15 downto 0);
    signal maxCount_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal inIsZero_uid12_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal msbIn_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expPreRnd_uid14_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid14_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid14_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal zP_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal fracRU_uid16_block_rsrvd_fix_in : STD_LOGIC_VECTOR (14 downto 0);
    signal fracRU_uid16_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal fracRR_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal udf_uid19_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid19_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid19_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid19_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expInf_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal ovf_uid21_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid21_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid21_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid21_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelector_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracZ_uid23_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid24_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostExc_uid24_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal udfOrInZero_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelector_uid26_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal expR_uid30_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid30_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPostExc_uid31_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal outRes_uid32_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal zs_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_a : STD_LOGIC_VECTOR (6 downto 0);
    signal vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (6 downto 0);
    signal vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_o : STD_LOGIC_VECTOR (6 downto 0);
    signal vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (11 downto 0);
    signal rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (14 downto 0);
    signal redist0_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_signX_uid6_block_rsrvd_fix_b_1_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    signX_uid6_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(15 downto 15));

    -- redist3_signX_uid6_block_rsrvd_fix_b_1(DELAY,80)
    redist3_signX_uid6_block_rsrvd_fix_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signX_uid6_block_rsrvd_fix_b, xout => redist3_signX_uid6_block_rsrvd_fix_b_1_q, clk => clk, aclr => areset );

    -- expInf_uid20_block_rsrvd_fix(CONSTANT,19)
    expInf_uid20_block_rsrvd_fix_q <= "11111111";

    -- zP_uid15_block_rsrvd_fix(CONSTANT,14)
    zP_uid15_block_rsrvd_fix_q <= "00000000";

    -- maxCount_uid11_block_rsrvd_fix(CONSTANT,10)
    maxCount_uid11_block_rsrvd_fix_q <= "10000";

    -- zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,33)
    zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "0000000000000000";

    -- xXorSign_uid7_block_rsrvd_fix(LOGICAL,6)@0
    xXorSign_uid7_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => signX_uid6_block_rsrvd_fix_b(0)) & signX_uid6_block_rsrvd_fix_b));
    xXorSign_uid7_block_rsrvd_fix_q <= in_0 xor xXorSign_uid7_block_rsrvd_fix_b;

    -- yE_uid8_block_rsrvd_fix(ADD,7)@0
    yE_uid8_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & xXorSign_uid7_block_rsrvd_fix_q);
    yE_uid8_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000000000000000" & signX_uid6_block_rsrvd_fix_b);
    yE_uid8_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(yE_uid8_block_rsrvd_fix_a) + UNSIGNED(yE_uid8_block_rsrvd_fix_b));
    yE_uid8_block_rsrvd_fix_q <= yE_uid8_block_rsrvd_fix_o(16 downto 0);

    -- y_uid9_block_rsrvd_fix(BITSELECT,8)@0
    y_uid9_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(yE_uid8_block_rsrvd_fix_q(15 downto 0));
    y_uid9_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(y_uid9_block_rsrvd_fix_in(15 downto 0));

    -- vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,35)@0
    vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN y_uid9_block_rsrvd_fix_b = zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q ELSE "0";

    -- redist2_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,79)
    redist2_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q, xout => redist2_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,37)@0
    vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_s, y_uid9_block_rsrvd_fix_b, zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q <= y_uid9_block_rsrvd_fix_b;
            WHEN "1" => vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q <= zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,73)@0
    rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q(15 downto 8);
    rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q(7 downto 0);

    -- vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,40)@0
    vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = zP_uid15_block_rsrvd_fix_q ELSE "0";

    -- redist1_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,78)
    redist1_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q, xout => redist1_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,45)
    zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "0000";

    -- cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,43)@0
    cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & zP_uid15_block_rsrvd_fix_q;

    -- vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,44)@0
    vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_s, vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q, cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,74)@0
    rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q(15 downto 12);
    rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q(11 downto 0);

    -- vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,47)@0
    vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q ELSE "0";

    -- redist0_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,77)
    redist0_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q, xout => redist0_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid53_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,52)
    zs_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "00";

    -- cStage_uid51_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,50)@0
    cStage_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q;

    -- vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,51)@0 + 1
    vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                WHEN "1" => vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                WHEN OTHERS => vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,75)@1
    rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q(15 downto 14);
    rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q(13 downto 0);

    -- vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,54)@1
    vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = zs_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q ELSE "0";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,57)@1
    cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & zs_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q;

    -- vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,58)@1
    vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_s, vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q, cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,76)@1
    rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q(15 downto 15);
    rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q(14 downto 0);

    -- vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,61)@1
    vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q <= "1" WHEN rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = GND_q ELSE "0";

    -- vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,66)@1
    vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist2_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q & redist1_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q & redist0_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q & vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q & vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q;

    -- vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix(COMPARE,68)@1
    vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & maxCount_uid11_block_rsrvd_fix_q);
    vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q);
    vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_a) - UNSIGNED(vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_b));
    vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_c(0) <= vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_o(6);

    -- vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,70)@1
    vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_c;
    vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_s, vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q, maxCount_uid11_block_rsrvd_fix_q)
    BEGIN
        CASE (vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q <= maxCount_uid11_block_rsrvd_fix_q;
            WHEN OTHERS => vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- msbIn_uid13_block_rsrvd_fix(CONSTANT,12)
    msbIn_uid13_block_rsrvd_fix_q <= "10000011";

    -- expPreRnd_uid14_block_rsrvd_fix(SUB,13)@1
    expPreRnd_uid14_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & msbIn_uid13_block_rsrvd_fix_q);
    expPreRnd_uid14_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000" & vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q);
    expPreRnd_uid14_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expPreRnd_uid14_block_rsrvd_fix_a) - UNSIGNED(expPreRnd_uid14_block_rsrvd_fix_b));
    expPreRnd_uid14_block_rsrvd_fix_q <= expPreRnd_uid14_block_rsrvd_fix_o(8 downto 0);

    -- expR_uid30_block_rsrvd_fix(BITSELECT,29)@1
    expR_uid30_block_rsrvd_fix_in <= expPreRnd_uid14_block_rsrvd_fix_q(7 downto 0);
    expR_uid30_block_rsrvd_fix_b <= expR_uid30_block_rsrvd_fix_in(7 downto 0);

    -- ovf_uid21_block_rsrvd_fix(COMPARE,20)@1
    ovf_uid21_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => expPreRnd_uid14_block_rsrvd_fix_q(8)) & expPreRnd_uid14_block_rsrvd_fix_q));
    ovf_uid21_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & expInf_uid20_block_rsrvd_fix_q));
    ovf_uid21_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid21_block_rsrvd_fix_a) - SIGNED(ovf_uid21_block_rsrvd_fix_b));
    ovf_uid21_block_rsrvd_fix_n(0) <= not (ovf_uid21_block_rsrvd_fix_o(10));

    -- inIsZero_uid12_block_rsrvd_fix(LOGICAL,11)@1
    inIsZero_uid12_block_rsrvd_fix_q <= "1" WHEN vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q = maxCount_uid11_block_rsrvd_fix_q ELSE "0";

    -- udf_uid19_block_rsrvd_fix(COMPARE,18)@1
    udf_uid19_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000" & GND_q));
    udf_uid19_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => expPreRnd_uid14_block_rsrvd_fix_q(8)) & expPreRnd_uid14_block_rsrvd_fix_q));
    udf_uid19_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid19_block_rsrvd_fix_a) - SIGNED(udf_uid19_block_rsrvd_fix_b));
    udf_uid19_block_rsrvd_fix_n(0) <= not (udf_uid19_block_rsrvd_fix_o(10));

    -- udfOrInZero_uid25_block_rsrvd_fix(LOGICAL,24)@1
    udfOrInZero_uid25_block_rsrvd_fix_q <= udf_uid19_block_rsrvd_fix_n or inIsZero_uid12_block_rsrvd_fix_q;

    -- excSelector_uid26_block_rsrvd_fix(BITJOIN,25)@1
    excSelector_uid26_block_rsrvd_fix_q <= ovf_uid21_block_rsrvd_fix_n & udfOrInZero_uid25_block_rsrvd_fix_q;

    -- expRPostExc_uid31_block_rsrvd_fix(MUX,30)@1
    expRPostExc_uid31_block_rsrvd_fix_s <= excSelector_uid26_block_rsrvd_fix_q;
    expRPostExc_uid31_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid31_block_rsrvd_fix_s, expR_uid30_block_rsrvd_fix_b, zP_uid15_block_rsrvd_fix_q, expInf_uid20_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid31_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid31_block_rsrvd_fix_q <= expR_uid30_block_rsrvd_fix_b;
            WHEN "01" => expRPostExc_uid31_block_rsrvd_fix_q <= zP_uid15_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid31_block_rsrvd_fix_q <= expInf_uid20_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid31_block_rsrvd_fix_q <= expInf_uid20_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid31_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracZ_uid23_block_rsrvd_fix(CONSTANT,22)
    fracZ_uid23_block_rsrvd_fix_q <= "00000000000000000000000";

    -- cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,64)@1
    cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q <= rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c & GND_q;

    -- vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,65)@1
    vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_s <= vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_combproc: PROCESS (vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_s, vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q, cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRU_uid16_block_rsrvd_fix(BITSELECT,15)@1
    fracRU_uid16_block_rsrvd_fix_in <= vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q(14 downto 0);
    fracRU_uid16_block_rsrvd_fix_b <= fracRU_uid16_block_rsrvd_fix_in(14 downto 0);

    -- fracRR_uid17_block_rsrvd_fix(BITJOIN,16)@1
    fracRR_uid17_block_rsrvd_fix_q <= fracRU_uid16_block_rsrvd_fix_b & zP_uid15_block_rsrvd_fix_q;

    -- excSelector_uid22_block_rsrvd_fix(LOGICAL,21)@1
    excSelector_uid22_block_rsrvd_fix_q <= inIsZero_uid12_block_rsrvd_fix_q or ovf_uid21_block_rsrvd_fix_n or udf_uid19_block_rsrvd_fix_n;

    -- fracRPostExc_uid24_block_rsrvd_fix(MUX,23)@1
    fracRPostExc_uid24_block_rsrvd_fix_s <= excSelector_uid22_block_rsrvd_fix_q;
    fracRPostExc_uid24_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid24_block_rsrvd_fix_s, fracRR_uid17_block_rsrvd_fix_q, fracZ_uid23_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid24_block_rsrvd_fix_s) IS
            WHEN "0" => fracRPostExc_uid24_block_rsrvd_fix_q <= fracRR_uid17_block_rsrvd_fix_q;
            WHEN "1" => fracRPostExc_uid24_block_rsrvd_fix_q <= fracZ_uid23_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid24_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outRes_uid32_block_rsrvd_fix(BITJOIN,31)@1
    outRes_uid32_block_rsrvd_fix_q <= redist3_signX_uid6_block_rsrvd_fix_b_1_q & expRPostExc_uid31_block_rsrvd_fix_q & fracRPostExc_uid24_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@1
    out_primWireOut <= outRes_uid32_block_rsrvd_fix_q;

END normal;
