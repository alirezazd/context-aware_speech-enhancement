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

-- VHDL created from DSPB_MMSE_dut_Output_IF
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
entity DSPB_MMSE_dut_Output_IF is
    port (
        in_1_Enhanced_Signal_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_Enhanced_Signal : in std_logic_vector(15 downto 0);  -- sfix16_en11
        in_4_Estimated_SNR_Db : in std_logic_vector(15 downto 0);  -- sfix16_en8
        in_3_Estimated_SNR_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : out std_logic_vector(15 downto 0);  -- sfix16_en8
        out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(8 downto 0);  -- ufix9
        out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(15 downto 0);  -- sfix16_en11
        out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(0 downto 0);  -- ufix1
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_Output_IF;

architecture normal of DSPB_MMSE_dut_Output_IF is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_DSPB_MMSE_dut_Output_IF_castBlock_typeSFixed_5_11_typeSFloatIEEE_A0Z6o00rf00p06of03p5d0u is
        port (
            in_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Convert_sel_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_a : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_b : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_o : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_a : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_b : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_o : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Const1_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_Not_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_CmpEQ_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_Const1_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_Const2_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_cnt : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dec : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dn : UNSIGNED (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_en : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_i : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_inc : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_l : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_ld : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_s : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_up : UNSIGNED (9 downto 0);
    signal And2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CmpEQ_b : STD_LOGIC_VECTOR (9 downto 0);
    signal CmpEQ_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CmpLT_a : STD_LOGIC_VECTOR (11 downto 0);
    signal CmpLT_b : STD_LOGIC_VECTOR (11 downto 0);
    signal CmpLT_o : STD_LOGIC_VECTOR (11 downto 0);
    signal CmpLT_c : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_q : STD_LOGIC_VECTOR (15 downto 0);
    signal Mux1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal Or_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_PreShift_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal Mux_PreShift_1_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal redist0_Mux_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist1_GPIn_in_1_Enhanced_Signal_Valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_GPIn_in_2_Enhanced_Signal_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist3_And2_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_q_3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x(GPOUT,49)@0
    out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x <= in_4_Estimated_SNR_Db;

    -- out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x(GPOUT,50)@0
    out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x <= in_3_Estimated_SNR_Valid;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- DSPB_MMSE_dut_Output_IF_addr_counter_Const1_x(CONSTANT,25)
    DSPB_MMSE_dut_Output_IF_addr_counter_Const1_x_q <= "1000000001";

    -- DSPB_MMSE_dut_Output_IF_addr_counter_Const2_x(CONSTANT,26)
    DSPB_MMSE_dut_Output_IF_addr_counter_Const2_x_q <= "1000000000";

    -- DSPB_MMSE_dut_Output_IF_addr_counter_CmpEQ_x(LOGICAL,24)@1
    DSPB_MMSE_dut_Output_IF_addr_counter_CmpEQ_x_q <= "1" WHEN DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_q = DSPB_MMSE_dut_Output_IF_addr_counter_Const2_x_q ELSE "0";

    -- DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x(LOADABLECOUNTER,29)@0 + 1
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_en <= in_1_Enhanced_Signal_Valid;
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_ld <= DSPB_MMSE_dut_Output_IF_addr_counter_CmpEQ_x_q;
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_i <= STD_LOGIC_VECTOR("000000000" & GND_q);
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_s <= STD_LOGIC_VECTOR("000000000" & VCC_q);
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_l <= DSPB_MMSE_dut_Output_IF_addr_counter_Const1_x_q;
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_up <= DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_cnt + DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_inc;
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dn <= UNSIGNED(resize(unsigned(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_cnt(9 downto 0)), 11)) - UNSIGNED(resize(unsigned(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dec(9 downto 0)), 11));
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_cnt <= "0000000000";
            DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_inc <= "0000000001";
            DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dec <= "1000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_ld = "1") THEN
                IF (FALSE and DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_s(9) = '1') THEN
                    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_inc <= UNSIGNED(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_l) + UNSIGNED(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_s);
                    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dec <= UNSIGNED(TO_UNSIGNED(0, 10)) - UNSIGNED(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_s);
                ELSE
                    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_inc <= UNSIGNED(TO_UNSIGNED(0, 10)) + UNSIGNED(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_s);
                    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dec <= UNSIGNED(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_l) - UNSIGNED(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_s);
                END IF;
            END IF;
            IF (DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_ld = "1" or DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_en = "1") THEN
                IF (DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_ld = "1") THEN
                    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_cnt <= UNSIGNED(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_i);
                ELSE
                    IF (DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dn(10) = '1') THEN
                        DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_cnt <= DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_up;
                    ELSE
                        DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_cnt <= DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_dn(9 downto 0);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_cnt);

    -- Convert_sel_x(BITSELECT,11)@1
    Convert_sel_x_b <= DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_q(8 downto 0);

    -- DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Const1_x(CONSTANT,15)
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Const1_x_q <= "110010001";

    -- CmpEQ(LOGICAL,37)@1
    CmpEQ_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Const1_x_q);
    CmpEQ_q <= "1" WHEN DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_q = CmpEQ_b ELSE "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- Mux1(MUX,47)@1
    Mux1_s <= CmpEQ_q;
    Mux1_combproc: PROCESS (Mux1_s, Convert_sel_x_b, GND_q)
    BEGIN
        CASE (Mux1_s) IS
            WHEN "0" => Mux1_q <= Convert_sel_x_b;
            WHEN "1" => Mux1_q <= STD_LOGIC_VECTOR("00000000" & GND_q);
            WHEN OTHERS => Mux1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x(GPOUT,51)@0
    out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x <= Mux1_q;

    -- Mux_PreShift_1(BITSHIFT,54)@1
    Mux_PreShift_1_qint <= VCC_q & "00000000000";
    Mux_PreShift_1_q <= Mux_PreShift_1_qint(11 downto 0);

    -- redist2_GPIn_in_2_Enhanced_Signal_1(DELAY,72)
    redist2_GPIn_in_2_Enhanced_Signal_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_2_Enhanced_Signal, xout => redist2_GPIn_in_2_Enhanced_Signal_1_q, clk => clk, aclr => areset );

    -- redist1_GPIn_in_1_Enhanced_Signal_Valid_1(DELAY,71)
    redist1_GPIn_in_1_Enhanced_Signal_Valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_Enhanced_Signal_Valid, xout => redist1_GPIn_in_1_Enhanced_Signal_Valid_1_q, clk => clk, aclr => areset );

    -- CmpLT(COMPARE,38)@1
    CmpLT_a <= STD_LOGIC_VECTOR("00" & DSPB_MMSE_dut_Output_IF_addr_counter_LoadableCounter_x_q);
    CmpLT_b <= STD_LOGIC_VECTOR("000" & DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Const1_x_q);
    CmpLT_o <= STD_LOGIC_VECTOR(UNSIGNED(CmpLT_a) - UNSIGNED(CmpLT_b));
    CmpLT_c(0) <= CmpLT_o(11);

    -- And2(LOGICAL,36)@1
    And2_q <= CmpLT_c and redist1_GPIn_in_1_Enhanced_Signal_Valid_1_q;

    -- DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_Not_x(LOGICAL,21)@1
    DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_Not_x_q <= not (And2_q);

    -- redist3_And2_q_1(DELAY,73)
    redist3_And2_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => And2_q, xout => redist3_And2_q_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_Xor_x(LOGICAL,23)@1
    DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_Xor_x_q <= And2_q xor redist3_And2_q_1_q;

    -- DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_And_x(LOGICAL,20)@1
    DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_And_x_q <= DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_Xor_x_q and DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_Not_x_q;

    -- Mux(MUX,46)@1
    Mux_s <= DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_And_x_q;
    Mux_combproc: PROCESS (Mux_s, redist2_GPIn_in_2_Enhanced_Signal_1_q, Mux_PreShift_1_q)
    BEGIN
        CASE (Mux_s) IS
            WHEN "0" => Mux_q <= redist2_GPIn_in_2_Enhanced_Signal_1_q;
            WHEN "1" => Mux_q <= STD_LOGIC_VECTOR("0000" & Mux_PreShift_1_q);
            WHEN OTHERS => Mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x(GPOUT,52)@0
    out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x <= Mux_q;

    -- Or_rsrvd_fix(LOGICAL,48)@1
    Or_rsrvd_fix_q <= DSPB_MMSE_dut_Output_IF_Neg_edge_dectector_And_x_q or And2_q;

    -- out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x(GPOUT,53)@0
    out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x <= Or_rsrvd_fix_q;

    -- DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x(LOGICAL,12)@1 + 1
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_qi <= DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_c and Or_rsrvd_fix_q and DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_c;
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_qi, xout => DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x(COMPARE,13)@1
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_a <= STD_LOGIC_VECTOR("00" & Mux1_q);
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_b <= STD_LOGIC_VECTOR("00" & DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Const1_x_q);
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_a) - UNSIGNED(DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_b));
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_c(0) <= DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT_x_o(10);

    -- DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x(COMPARE,14)@1
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_a <= STD_LOGIC_VECTOR("0000000000" & GND_q);
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_b <= STD_LOGIC_VECTOR("00" & Mux1_q);
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_a) - UNSIGNED(DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_b));
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_c(0) <= DSPB_MMSE_dut_Output_IF_DEBUG_LOG_CmpLT1_x_o(10);

    -- DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x(BLACKBOX,17)@2
    -- out out_primWireOut@3
    theDSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x : floatComponent_DSPB_MMSE_dut_Output_IF_castBlock_typeSFixed_5_11_typeSFloatIEEE_A0Z6o00rf00p06of03p5d0u
    PORT MAP (
        in_0 => redist0_Mux_q_1_q,
        out_primWireOut => DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x(MUX,18)@4 + 1
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_s <= redist5_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_q_3_q;
    DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_q <= DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_q;
                WHEN "1" => DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_q <= redist4_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x_out_primWireOut_1_q;
                WHEN OTHERS => DSPB_MMSE_dut_Output_IF_DEBUG_LOG_latch_0L_Mux_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist0_Mux_q_1(DELAY,70)
    redist0_Mux_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mux_q, xout => redist0_Mux_q_1_q, clk => clk, aclr => areset );

    -- redist4_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x_out_primWireOut_1(DELAY,74)
    redist4_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x_out_primWireOut, xout => redist4_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_Convert1_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- redist5_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_q_3(DELAY,75)
    redist5_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_q, xout => redist5_DSPB_MMSE_dut_Output_IF_DEBUG_LOG_And2_x_q_3_q, clk => clk, aclr => areset );

END normal;
