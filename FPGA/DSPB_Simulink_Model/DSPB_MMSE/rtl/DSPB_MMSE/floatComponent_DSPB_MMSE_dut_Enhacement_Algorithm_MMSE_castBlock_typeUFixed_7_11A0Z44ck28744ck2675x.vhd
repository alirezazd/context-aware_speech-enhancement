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

-- VHDL created from floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x
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
entity floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x is
    port (
        in_0 : in std_logic_vector(17 downto 0);  -- ufix18_en11
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x;

architecture normal of floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal maxCount_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal inIsZero_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal msbIn_uid9_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expPreRnd_uid10_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid10_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expPreRnd_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal zP_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (5 downto 0);
    signal fracRU_uid12_block_rsrvd_fix_in : STD_LOGIC_VECTOR (16 downto 0);
    signal fracRU_uid12_block_rsrvd_fix_b : STD_LOGIC_VECTOR (16 downto 0);
    signal fracRR_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal udf_uid15_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid15_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid15_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal udf_uid15_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal expInf_uid16_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal ovf_uid17_block_rsrvd_fix_a : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid17_block_rsrvd_fix_b : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid17_block_rsrvd_fix_o : STD_LOGIC_VECTOR (10 downto 0);
    signal ovf_uid17_block_rsrvd_fix_n : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelector_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracZ_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracRPostExc_uid20_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fracRPostExc_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal udfOrInZero_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excSelector_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal expZ_uid25_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid26_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid26_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal expRPostExc_uid27_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal outRes_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal zs_uid30_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (15 downto 0);
    signal vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid35_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal zs_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (3 downto 0);
    signal vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal zs_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal vCount_uid53_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal vCount_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cStage_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (17 downto 0);
    signal vCount_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_a : STD_LOGIC_VECTOR (6 downto 0);
    signal vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_b : STD_LOGIC_VECTOR (6 downto 0);
    signal vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_o : STD_LOGIC_VECTOR (6 downto 0);
    signal vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (4 downto 0);
    signal rVStage_uid31_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid31_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rVStage_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal rVStage_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rVStage_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal rVStage_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rVStage_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (15 downto 0);
    signal rVStage_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rVStage_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal redist0_vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- expInf_uid16_block_rsrvd_fix(CONSTANT,15)
    expInf_uid16_block_rsrvd_fix_q <= "11111111";

    -- expZ_uid25_block_rsrvd_fix(CONSTANT,24)
    expZ_uid25_block_rsrvd_fix_q <= "00000000";

    -- maxCount_uid7_block_rsrvd_fix(CONSTANT,6)
    maxCount_uid7_block_rsrvd_fix_q <= "10010";

    -- zs_uid30_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,29)
    zs_uid30_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "0000000000000000";

    -- rVStage_uid31_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,71)@0
    rVStage_uid31_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= in_0(17 downto 2);
    rVStage_uid31_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= in_0(1 downto 0);

    -- vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,31)@0
    vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid31_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = zs_uid30_lzcShifterZ1_uid6_block_rsrvd_fix_q ELSE "0";

    -- redist2_vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q_1(DELAY,78)
    redist2_vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q, xout => redist2_vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- cStage_uid35_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,34)@0
    cStage_uid35_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid31_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & zs_uid30_lzcShifterZ1_uid6_block_rsrvd_fix_q;

    -- vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,35)@0
    vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_s, in_0, cStage_uid35_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_q <= in_0;
            WHEN "1" => vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid35_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,72)@0
    rVStage_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_q(17 downto 10);
    rVStage_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_q(9 downto 0);

    -- vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,38)@0
    vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = expZ_uid25_block_rsrvd_fix_q ELSE "0";

    -- redist1_vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q_1(DELAY,77)
    redist1_vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q, xout => redist1_vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid44_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,43)
    zs_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "0000";

    -- cStage_uid42_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,41)@0
    cStage_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid38_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & expZ_uid25_block_rsrvd_fix_q;

    -- vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,42)@0
    vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_s, vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_q, cStage_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid36_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid42_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,73)@0
    rVStage_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q(17 downto 14);
    rVStage_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q(13 downto 0);

    -- vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,45)@0
    vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = zs_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_q ELSE "0";

    -- redist0_vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q_1(DELAY,76)
    redist0_vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q, xout => redist0_vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q, clk => clk, aclr => areset );

    -- zs_uid51_lzcShifterZ1_uid6_block_rsrvd_fix(CONSTANT,50)
    zs_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "00";

    -- cStage_uid49_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,48)@0
    cStage_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid45_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & zs_uid44_lzcShifterZ1_uid6_block_rsrvd_fix_q;

    -- vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,49)@0 + 1
    vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
                WHEN "0" => vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid43_lzcShifterZ1_uid6_block_rsrvd_fix_q;
                WHEN "1" => vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid49_lzcShifterZ1_uid6_block_rsrvd_fix_q;
                WHEN OTHERS => vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- rVStage_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,74)@1
    rVStage_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q(17 downto 16);
    rVStage_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q(15 downto 0);

    -- vCount_uid53_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,52)@1
    vCount_uid53_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = zs_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_q ELSE "0";

    -- cStage_uid56_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,55)@1
    cStage_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid52_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & zs_uid51_lzcShifterZ1_uid6_block_rsrvd_fix_q;

    -- vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,56)@1
    vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid53_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_s, vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q, cStage_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid50_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid56_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rVStage_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select(BITSELECT,75)@1
    rVStage_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b <= vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q(17 downto 17);
    rVStage_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c <= vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q(16 downto 0);

    -- vCount_uid60_lzcShifterZ1_uid6_block_rsrvd_fix(LOGICAL,59)@1
    vCount_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q <= "1" WHEN rVStage_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_b = GND_q ELSE "0";

    -- vCount_uid65_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,64)@1
    vCount_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_q <= redist2_vCount_uid32_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q & redist1_vCount_uid39_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q & redist0_vCount_uid46_lzcShifterZ1_uid6_block_rsrvd_fix_q_1_q & vCount_uid53_lzcShifterZ1_uid6_block_rsrvd_fix_q & vCount_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q;

    -- vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix(COMPARE,66)@1
    vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & maxCount_uid7_block_rsrvd_fix_q);
    vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & vCount_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_q);
    vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_a) - UNSIGNED(vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_b));
    vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_c(0) <= vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_o(6);

    -- vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,68)@1
    vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCountBig_uid67_lzcShifterZ1_uid6_block_rsrvd_fix_c;
    vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_s, vCount_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_q, maxCount_uid7_block_rsrvd_fix_q)
    BEGIN
        CASE (vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vCount_uid65_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q <= maxCount_uid7_block_rsrvd_fix_q;
            WHEN OTHERS => vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- msbIn_uid9_block_rsrvd_fix(CONSTANT,8)
    msbIn_uid9_block_rsrvd_fix_q <= "10000101";

    -- expPreRnd_uid10_block_rsrvd_fix(SUB,9)@1
    expPreRnd_uid10_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & msbIn_uid9_block_rsrvd_fix_q);
    expPreRnd_uid10_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("0000" & vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q);
    expPreRnd_uid10_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expPreRnd_uid10_block_rsrvd_fix_a) - UNSIGNED(expPreRnd_uid10_block_rsrvd_fix_b));
    expPreRnd_uid10_block_rsrvd_fix_q <= expPreRnd_uid10_block_rsrvd_fix_o(8 downto 0);

    -- expR_uid26_block_rsrvd_fix(BITSELECT,25)@1
    expR_uid26_block_rsrvd_fix_in <= expPreRnd_uid10_block_rsrvd_fix_q(7 downto 0);
    expR_uid26_block_rsrvd_fix_b <= expR_uid26_block_rsrvd_fix_in(7 downto 0);

    -- ovf_uid17_block_rsrvd_fix(COMPARE,16)@1
    ovf_uid17_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => expPreRnd_uid10_block_rsrvd_fix_q(8)) & expPreRnd_uid10_block_rsrvd_fix_q));
    ovf_uid17_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & expInf_uid16_block_rsrvd_fix_q));
    ovf_uid17_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(ovf_uid17_block_rsrvd_fix_a) - SIGNED(ovf_uid17_block_rsrvd_fix_b));
    ovf_uid17_block_rsrvd_fix_n(0) <= not (ovf_uid17_block_rsrvd_fix_o(10));

    -- inIsZero_uid8_block_rsrvd_fix(LOGICAL,7)@1
    inIsZero_uid8_block_rsrvd_fix_q <= "1" WHEN vCountFinal_uid69_lzcShifterZ1_uid6_block_rsrvd_fix_q = maxCount_uid7_block_rsrvd_fix_q ELSE "0";

    -- udf_uid15_block_rsrvd_fix(COMPARE,14)@1
    udf_uid15_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000" & GND_q));
    udf_uid15_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 9 => expPreRnd_uid10_block_rsrvd_fix_q(8)) & expPreRnd_uid10_block_rsrvd_fix_q));
    udf_uid15_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(SIGNED(udf_uid15_block_rsrvd_fix_a) - SIGNED(udf_uid15_block_rsrvd_fix_b));
    udf_uid15_block_rsrvd_fix_n(0) <= not (udf_uid15_block_rsrvd_fix_o(10));

    -- udfOrInZero_uid21_block_rsrvd_fix(LOGICAL,20)@1
    udfOrInZero_uid21_block_rsrvd_fix_q <= udf_uid15_block_rsrvd_fix_n or inIsZero_uid8_block_rsrvd_fix_q;

    -- excSelector_uid22_block_rsrvd_fix(BITJOIN,21)@1
    excSelector_uid22_block_rsrvd_fix_q <= ovf_uid17_block_rsrvd_fix_n & udfOrInZero_uid21_block_rsrvd_fix_q;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- expRPostExc_uid27_block_rsrvd_fix(MUX,26)@1
    expRPostExc_uid27_block_rsrvd_fix_s <= excSelector_uid22_block_rsrvd_fix_q;
    expRPostExc_uid27_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid27_block_rsrvd_fix_s, expR_uid26_block_rsrvd_fix_b, expZ_uid25_block_rsrvd_fix_q, expInf_uid16_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid27_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid27_block_rsrvd_fix_q <= expR_uid26_block_rsrvd_fix_b;
            WHEN "01" => expRPostExc_uid27_block_rsrvd_fix_q <= expZ_uid25_block_rsrvd_fix_q;
            WHEN "10" => expRPostExc_uid27_block_rsrvd_fix_q <= expInf_uid16_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid27_block_rsrvd_fix_q <= expInf_uid16_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid27_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracZ_uid19_block_rsrvd_fix(CONSTANT,18)
    fracZ_uid19_block_rsrvd_fix_q <= "00000000000000000000000";

    -- cStage_uid63_lzcShifterZ1_uid6_block_rsrvd_fix(BITJOIN,62)@1
    cStage_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q <= rVStage_uid59_lzcShifterZ1_uid6_block_rsrvd_fix_merged_bit_select_c & GND_q;

    -- vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix(MUX,63)@1
    vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_s <= vCount_uid60_lzcShifterZ1_uid6_block_rsrvd_fix_q;
    vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_combproc: PROCESS (vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_s, vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q, cStage_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_s) IS
            WHEN "0" => vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q <= vStagei_uid57_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN "1" => vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q <= cStage_uid63_lzcShifterZ1_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- fracRU_uid12_block_rsrvd_fix(BITSELECT,11)@1
    fracRU_uid12_block_rsrvd_fix_in <= vStagei_uid64_lzcShifterZ1_uid6_block_rsrvd_fix_q(16 downto 0);
    fracRU_uid12_block_rsrvd_fix_b <= fracRU_uid12_block_rsrvd_fix_in(16 downto 0);

    -- zP_uid11_block_rsrvd_fix(CONSTANT,10)
    zP_uid11_block_rsrvd_fix_q <= "000000";

    -- fracRR_uid13_block_rsrvd_fix(BITJOIN,12)@1
    fracRR_uid13_block_rsrvd_fix_q <= fracRU_uid12_block_rsrvd_fix_b & zP_uid11_block_rsrvd_fix_q;

    -- excSelector_uid18_block_rsrvd_fix(LOGICAL,17)@1
    excSelector_uid18_block_rsrvd_fix_q <= inIsZero_uid8_block_rsrvd_fix_q or ovf_uid17_block_rsrvd_fix_n or udf_uid15_block_rsrvd_fix_n;

    -- fracRPostExc_uid20_block_rsrvd_fix(MUX,19)@1
    fracRPostExc_uid20_block_rsrvd_fix_s <= excSelector_uid18_block_rsrvd_fix_q;
    fracRPostExc_uid20_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid20_block_rsrvd_fix_s, fracRR_uid13_block_rsrvd_fix_q, fracZ_uid19_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid20_block_rsrvd_fix_s) IS
            WHEN "0" => fracRPostExc_uid20_block_rsrvd_fix_q <= fracRR_uid13_block_rsrvd_fix_q;
            WHEN "1" => fracRPostExc_uid20_block_rsrvd_fix_q <= fracZ_uid19_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid20_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- outRes_uid28_block_rsrvd_fix(BITJOIN,27)@1
    outRes_uid28_block_rsrvd_fix_q <= GND_q & expRPostExc_uid27_block_rsrvd_fix_q & fracRPostExc_uid20_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@1
    out_primWireOut <= outRes_uid28_block_rsrvd_fix_q;

END normal;
