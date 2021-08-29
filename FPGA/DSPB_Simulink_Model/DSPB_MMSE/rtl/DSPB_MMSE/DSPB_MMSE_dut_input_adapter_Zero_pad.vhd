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

-- VHDL created from DSPB_MMSE_dut_input_adapter_Zero_pad
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
entity DSPB_MMSE_dut_input_adapter_Zero_pad is
    port (
        in_1_Input_Signal_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_Input_Signal : in std_logic_vector(15 downto 0);  -- sfix16_en14
        out_1_Input_Signal_Valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_Input_Signal_x : out std_logic_vector(15 downto 0);  -- sfix16_en14
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_input_adapter_Zero_pad;

architecture normal of DSPB_MMSE_dut_input_adapter_Zero_pad is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_Not_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_a : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_i : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_o : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_a : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_o : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Const5_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Const_rsrvd_fix_q : STD_LOGIC_VECTOR (6 downto 0);
    signal Mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_q : STD_LOGIC_VECTOR (15 downto 0);
    signal Or_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal Or_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_PreShift_0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal Mux_PreShift_0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal redist0_GPIn1_in_1_Input_Signal_Valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_1_q : STD_LOGIC_VECTOR (15 downto 0);

begin


    -- redist1_GPIn1_in_2_Input_Signal_1(DELAY,30)
    redist1_GPIn1_in_2_Input_Signal_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_2_Input_Signal, xout => redist1_GPIn1_in_2_Input_Signal_1_q, clk => clk, aclr => areset );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- Mux_PreShift_0(BITSHIFT,27)@1
    Mux_PreShift_0_qint <= GND_q & "00000000000000";
    Mux_PreShift_0_q <= Mux_PreShift_0_qint(14 downto 0);

    -- redist0_GPIn1_in_1_Input_Signal_Valid_1(DELAY,29)
    redist0_GPIn1_in_1_Input_Signal_Valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_Input_Signal_Valid, xout => redist0_GPIn1_in_1_Input_Signal_Valid_1_q, clk => clk, aclr => areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- Mux(MUX,25)@1 + 1
    Mux_s <= redist0_GPIn1_in_1_Input_Signal_Valid_1_q;
    Mux_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mux_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (Mux_s) IS
                WHEN "0" => Mux_q <= STD_LOGIC_VECTOR("0" & Mux_PreShift_0_q);
                WHEN "1" => Mux_q <= redist1_GPIn1_in_2_Input_Signal_1_q;
                WHEN OTHERS => Mux_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_Not_x(LOGICAL,5)@0
    DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_Not_x_q <= not (in_1_Input_Signal_Valid);

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_Xor_x(LOGICAL,7)@0
    DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_Xor_x_q <= in_1_Input_Signal_Valid xor redist0_GPIn1_in_1_Input_Signal_Valid_1_q;

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_And_x(LOGICAL,4)@0
    DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_And_x_q <= DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_Xor_x_q and DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_Not_x_q;

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x(MUX,18)@0 + 1
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_s <= DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_And_x_q;
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_q <= DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_q;
                WHEN "1" => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_q <= DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_And_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- Const_rsrvd_fix(CONSTANT,21)
    Const_rsrvd_fix_q <= "1110000";

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Const5_x(CONSTANT,14)
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Const5_x_q <= "11";

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_BitExtract_x(BITSELECT,11)@0
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_BitExtract_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b(7 downto 7));

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x(MUX,16)@0
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_s <= DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_BitExtract_x_b;
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_s, DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Const5_x_q, GND_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_q <= DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Const5_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_q <= STD_LOGIC_VECTOR("0" & GND_q);
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x(ADD,8)@0 + 1
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 8 => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b(7)) & DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b));
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 2 => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_q(1)) & DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_Mux_x_q));
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_i <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & Const_rsrvd_fix_q));
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_Zero_pad_Neg_edge_dectector_And_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_o <= DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_a) + SIGNED(DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_q <= DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_o(8 downto 0);

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,2)@1
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_x_q(7 downto 0));

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x(COMPARE,12)@1
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 8 => DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b(7)) & DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_AddSLoad_PostCast_primWireOut_sel_x_b));
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000" & VCC_q));
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_b));
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_o(9));

    -- DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_And_x(LOGICAL,10)@1
    DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_And_x_q <= DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_CmpGE_x_n and DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_latch_0L_Mux_x_q;

    -- Or_rsrvd_fix(LOGICAL,26)@1 + 1
    Or_rsrvd_fix_qi <= redist0_GPIn1_in_1_Input_Signal_Valid_1_q or DSPB_MMSE_dut_input_adapter_Zero_pad_StretchPulse_And_x_q;
    Or_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Or_rsrvd_fix_qi, xout => Or_rsrvd_fix_q, clk => clk, aclr => areset );

    -- GPOut(GPOUT,24)@2
    out_1_Input_Signal_Valid_x <= Or_rsrvd_fix_q;
    out_2_Input_Signal_x <= Mux_q;

END normal;
