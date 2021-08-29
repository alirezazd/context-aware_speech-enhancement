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

-- VHDL created from DSPB_MMSE_dut_input_IF
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
entity DSPB_MMSE_dut_input_IF is
    port (
        out_1_Noisy_Signal_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_Noisy_Signal : out std_logic_vector(15 downto 0);  -- sfix16_en14
        in_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(15 downto 0);  -- sfix16_en14
        out_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x : out std_logic_vector(8 downto 0);  -- ufix9
        out_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x : out std_logic_vector(15 downto 0);  -- sfix16_en14
        out_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x : out std_logic_vector(0 downto 0);  -- ufix1
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_input_IF;

architecture normal of DSPB_MMSE_dut_input_IF is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_IF_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_a : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_b : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_i : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_o : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_a : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_b : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_o : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_Const5_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_CmpEQ_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_Const1_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_Const2_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_cnt : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dec : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dn : UNSIGNED (10 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_en : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_i : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_inc : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_l : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_ld : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_s : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_up : UNSIGNED (9 downto 0);
    signal And_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Const2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal Const3_q : STD_LOGIC_VECTOR (1 downto 0);
    signal frame_ready_q : STD_LOGIC_VECTOR (0 downto 0);
    signal frame_ready1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal frame_ready1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal frame_ready1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal frame_ready_PreShift_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal frame_ready_PreShift_1_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal redist0_frame_ready1_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_frame_ready_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_SampleDelay_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q_3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist1_frame_ready_q_1(DELAY,59)
    redist1_frame_ready_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frame_ready_q, xout => redist1_frame_ready_q_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_IF_EdgeDetect_Xor_x(LOGICAL,10)@4
    DSPB_MMSE_dut_input_IF_EdgeDetect_Xor_x_q <= frame_ready_q xor redist1_frame_ready_q_1_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- DSPB_MMSE_dut_input_IF_addr_counter_Const1_x(CONSTANT,24)
    DSPB_MMSE_dut_input_IF_addr_counter_Const1_x_q <= "0110010001";

    -- DSPB_MMSE_dut_input_IF_addr_counter_Const2_x(CONSTANT,25)
    DSPB_MMSE_dut_input_IF_addr_counter_Const2_x_q <= "110010000";

    -- DSPB_MMSE_dut_input_IF_addr_counter_CmpEQ_x(LOGICAL,23)@2
    DSPB_MMSE_dut_input_IF_addr_counter_CmpEQ_x_q <= "1" WHEN DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_PostCast_primWireOut_sel_x_b = DSPB_MMSE_dut_input_IF_addr_counter_Const2_x_q ELSE "0";

    -- DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x(LOADABLECOUNTER,28)@1 + 1
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_en <= DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q;
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_ld <= DSPB_MMSE_dut_input_IF_addr_counter_CmpEQ_x_q;
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_i <= STD_LOGIC_VECTOR("000000000" & GND_q);
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_s <= STD_LOGIC_VECTOR("000000000" & VCC_q);
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_l <= DSPB_MMSE_dut_input_IF_addr_counter_Const1_x_q;
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_up <= DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_cnt + DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_inc;
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dn <= UNSIGNED(resize(unsigned(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_cnt(9 downto 0)), 11)) - UNSIGNED(resize(unsigned(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dec(9 downto 0)), 11));
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_cnt <= "0000000000";
            DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_inc <= "0000000001";
            DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dec <= "0110010000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_ld = "1") THEN
                IF (FALSE and DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_s(9) = '1') THEN
                    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_inc <= UNSIGNED(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_l) + UNSIGNED(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_s);
                    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dec <= UNSIGNED(TO_UNSIGNED(0, 10)) - UNSIGNED(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_s);
                ELSE
                    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_inc <= UNSIGNED(TO_UNSIGNED(0, 10)) + UNSIGNED(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_s);
                    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dec <= UNSIGNED(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_l) - UNSIGNED(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_s);
                END IF;
            END IF;
            IF (DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_ld = "1" or DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_en = "1") THEN
                IF (DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_ld = "1") THEN
                    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_cnt <= UNSIGNED(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_i);
                ELSE
                    IF (DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dn(10) = '1') THEN
                        DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_cnt <= DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_up;
                    ELSE
                        DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_cnt <= DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_dn(9 downto 0);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_cnt);

    -- DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_PostCast_primWireOut_sel_x(BITSELECT,4)@2
    DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_x_q(8 downto 0);

    -- frame_ready1(LOGICAL,42)@2 + 1
    frame_ready1_b <= STD_LOGIC_VECTOR("00000000" & GND_q);
    frame_ready1_qi <= "1" WHEN DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_PostCast_primWireOut_sel_x_b = frame_ready1_b ELSE "0";
    frame_ready1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frame_ready1_qi, xout => frame_ready1_q, clk => clk, aclr => areset );

    -- redist0_frame_ready1_q_2(DELAY,58)
    redist0_frame_ready1_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => frame_ready1_q, xout => redist0_frame_ready1_q_2_q, clk => clk, aclr => areset );

    -- Const3(CONSTANT,36)
    Const3_q <= "01";

    -- frame_ready_PreShift_1(BITSHIFT,47)@4
    frame_ready_PreShift_1_qint <= Const3_q & "00000000000000";
    frame_ready_PreShift_1_q <= frame_ready_PreShift_1_qint(15 downto 0);

    -- frame_ready(LOGICAL,41)@4
    frame_ready_q <= "1" WHEN in_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x = frame_ready_PreShift_1_q ELSE "0";

    -- And_rsrvd_fix(LOGICAL,33)@4
    And_rsrvd_fix_q <= frame_ready_q and redist0_frame_ready1_q_2_q and DSPB_MMSE_dut_input_IF_EdgeDetect_Xor_x_q;

    -- DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x(MUX,21)@0 + 1
    DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_s <= And_rsrvd_fix_q;
    DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_q <= DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_q;
                WHEN "1" => DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_q <= And_rsrvd_fix_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_IF_StretchPulse_Const5_x(CONSTANT,17)
    DSPB_MMSE_dut_input_IF_StretchPulse_Const5_x_q <= "11";

    -- DSPB_MMSE_dut_input_IF_StretchPulse_BitExtract_x(BITSELECT,14)@0
    DSPB_MMSE_dut_input_IF_StretchPulse_BitExtract_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b(9 downto 9));

    -- DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x(MUX,19)@0
    DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_s <= DSPB_MMSE_dut_input_IF_StretchPulse_BitExtract_x_b;
    DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_combproc: PROCESS (DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_s, DSPB_MMSE_dut_input_IF_StretchPulse_Const5_x_q, GND_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_q <= DSPB_MMSE_dut_input_IF_StretchPulse_Const5_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_q <= STD_LOGIC_VECTOR("0" & GND_q);
            WHEN OTHERS => DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x(ADD,11)@0 + 1
    DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b(9)) & DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b));
    DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 2 => DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_q(1)) & DSPB_MMSE_dut_input_IF_StretchPulse_Mux_x_q));
    DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_i <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & DSPB_MMSE_dut_input_IF_addr_counter_Const2_x_q));
    DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (And_rsrvd_fix_q = "1") THEN
                DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_o <= DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_a) + SIGNED(DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_q <= DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_o(10 downto 0);

    -- DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,2)@1
    DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_x_q(9 downto 0));

    -- DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x(COMPARE,15)@1
    DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 10 => DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b(9)) & DSPB_MMSE_dut_input_IF_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b));
    DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000" & VCC_q));
    DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_a) - SIGNED(DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_b));
    DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_n(0) <= not (DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_o(11));

    -- DSPB_MMSE_dut_input_IF_StretchPulse_And_x(LOGICAL,13)@1
    DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q <= DSPB_MMSE_dut_input_IF_StretchPulse_CmpGE_x_n and DSPB_MMSE_dut_input_IF_StretchPulse_latch_0L_Mux_x_q;

    -- redist3_DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q_3(DELAY,61)
    redist3_DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q, xout => redist3_DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q_3_q, clk => clk, aclr => areset );

    -- GPOut(GPOUT,38)@4
    out_1_Noisy_Signal_Valid <= redist3_DSPB_MMSE_dut_input_IF_StretchPulse_And_x_q_3_q;
    out_2_Noisy_Signal <= in_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x;

    -- out_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x(GPOUT,44)@0
    out_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x <= DSPB_MMSE_dut_input_IF_addr_counter_LoadableCounter_PostCast_primWireOut_sel_x_b;

    -- Const2(CONSTANT,35)
    Const2_q <= "0000000000000000";

    -- out_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x(GPOUT,45)@0
    out_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x <= Const2_q;

    -- redist2_SampleDelay_q_1(DELAY,60)
    redist2_SampleDelay_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => And_rsrvd_fix_q, xout => redist2_SampleDelay_q_1_q, clk => clk, aclr => areset );

    -- out_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x(GPOUT,46)@0
    out_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x <= redist2_SampleDelay_q_1_q;

END normal;
