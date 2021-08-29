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

-- VHDL created from DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror
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
entity DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror is
    port (
        in_1_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_input_spectrum : in std_logic_vector(31 downto 0);  -- float32_m23
        out_1_valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_output_spectrum : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror;

architecture normal of DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_Pos_edgeDetect_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_Pos_edgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_a : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_b : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_i : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_o : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_Const_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_CmpEQ_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const1_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const2_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const5_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_cnt : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dec : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dn : UNSIGNED (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_en : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_i : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_inc : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_l : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_ld : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_s : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_up : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_a : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_b : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_o : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_CmpEQ_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Const1_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_cnt : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dec : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dn : UNSIGNED (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_en : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_i : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_inc : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_l : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_ld : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_s : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_up : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_a : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_b : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_o : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal Sub_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal CmpEQ_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CmpEQ1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Const_rsrvd_fix_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DualMem_reset0 : std_logic;
    signal DualMem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal DualMem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal DualMem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal DualMem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal DualMem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DualMem_ib : STD_LOGIC_VECTOR (31 downto 0);
    signal Mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_q : STD_LOGIC_VECTOR (9 downto 0);
    signal Mux1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal Sub_a : STD_LOGIC_VECTOR (10 downto 0);
    signal Sub_b : STD_LOGIC_VECTOR (10 downto 0);
    signal Sub_o : STD_LOGIC_VECTOR (10 downto 0);
    signal Sub_q : STD_LOGIC_VECTOR (10 downto 0);
    signal redist0_SampleDelay_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_SampleDelay_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_GPIn_in_1_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_GPIn_in_2_input_spectrum_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_DualMem_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_CmpEQ_q_1_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const5_x(CONSTANT,22)
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const5_x_q <= "0000000001";

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Const1_x(CONSTANT,27)
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Const1_x_q <= "1000000001";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_Const_x(CONSTANT,14)
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_Const_x_q <= "1000000000";

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_CmpEQ_x(LOGICAL,26)@1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_CmpEQ_x_q <= "1" WHEN DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_q = DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_Const_x_q ELSE "0";

    -- Const_rsrvd_fix(CONSTANT,43)
    Const_rsrvd_fix_q <= "0011111111";

    -- CmpEQ(LOGICAL,41)@1
    CmpEQ_q <= "1" WHEN Const_rsrvd_fix_q = DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_PostCast_primWireOut_sel_x_b ELSE "0";

    -- redist5_CmpEQ_q_1(DELAY,65)
    redist5_CmpEQ_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => CmpEQ_q, xout => redist5_CmpEQ_q_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_Pos_edgeDetect_Xor_x(LOGICAL,10)@1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_Pos_edgeDetect_Xor_x_q <= CmpEQ_q xor redist5_CmpEQ_q_1_q;

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_Pos_edgeDetect_And_x(LOGICAL,8)@1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_Pos_edgeDetect_And_x_q <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_Pos_edgeDetect_Xor_x_q and CmpEQ_q;

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x(ADD,11)@1 + 1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x_b);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_b <= STD_LOGIC_VECTOR("0000000000" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_BitExtract_x_b);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_i <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_Const_x_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_Pos_edgeDetect_And_x_q = "1") THEN
                DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_o <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_a) + UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_q <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_o(10 downto 0);

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,2)@2
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_x_q(9 downto 0);

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_BitExtract_x(BITSELECT,13)@2
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_BitExtract_x_b <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x_b(9 downto 9);

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x(LOADABLECOUNTER,32)@0 + 1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_en <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_BitExtract_x_b;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_ld <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_CmpEQ_x_q;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_i <= STD_LOGIC_VECTOR("000000000" & GND_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_s <= STD_LOGIC_VECTOR("000000000" & VCC_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_l <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Const1_x_q;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_up <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_cnt + DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_inc;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dn <= UNSIGNED(resize(unsigned(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_cnt(9 downto 0)), 11)) - UNSIGNED(resize(unsigned(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dec(9 downto 0)), 11));
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_cnt <= "0000000000";
            DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_inc <= "0000000001";
            DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dec <= "1000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_ld = "1") THEN
                IF (FALSE and DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_s(9) = '1') THEN
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_inc <= UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_l) + UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_s);
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dec <= UNSIGNED(TO_UNSIGNED(0, 10)) - UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_s);
                ELSE
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_inc <= UNSIGNED(TO_UNSIGNED(0, 10)) + UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_s);
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dec <= UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_l) - UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_s);
                END IF;
            END IF;
            IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_ld = "1" or DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_en = "1") THEN
                IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_ld = "1") THEN
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_cnt <= UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_i);
                ELSE
                    IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dn(10) = '1') THEN
                        DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_cnt <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_up;
                    ELSE
                        DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_cnt <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_dn(9 downto 0);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_cnt);

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x(SUB,34)@1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_LoadableCounter_x_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const5_x_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_a) - UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_b));
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_q <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_o(10 downto 0);

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_PostCast_primWireOut_sel_x(BITSELECT,7)@1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_x_q(9 downto 0));

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const1_x(CONSTANT,18)
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const1_x_q <= "0100000001";

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const2_x(CONSTANT,19)
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const2_x_q <= "0100000000";

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_CmpEQ_x(LOGICAL,17)@1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_CmpEQ_x_q <= "1" WHEN DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_q = DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const2_x_q ELSE "0";

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x(LOADABLECOUNTER,23)@0 + 1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_en <= in_1_valid;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_ld <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_CmpEQ_x_q;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_i <= STD_LOGIC_VECTOR("000000000" & GND_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_s <= STD_LOGIC_VECTOR("000000000" & VCC_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_l <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const1_x_q;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_up <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_cnt + DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_inc;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dn <= UNSIGNED(resize(unsigned(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_cnt(9 downto 0)), 11)) - UNSIGNED(resize(unsigned(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dec(9 downto 0)), 11));
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_cnt <= "0000000000";
            DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_inc <= "0000000001";
            DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dec <= "0100000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_ld = "1") THEN
                IF (FALSE and DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_s(9) = '1') THEN
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_inc <= UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_l) + UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_s);
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dec <= UNSIGNED(TO_UNSIGNED(0, 10)) - UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_s);
                ELSE
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_inc <= UNSIGNED(TO_UNSIGNED(0, 10)) + UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_s);
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dec <= UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_l) - UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_s);
                END IF;
            END IF;
            IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_ld = "1" or DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_en = "1") THEN
                IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_ld = "1") THEN
                    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_cnt <= UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_i);
                ELSE
                    IF (DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dn(10) = '1') THEN
                        DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_cnt <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_up;
                    ELSE
                        DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_cnt <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_dn(9 downto 0);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_cnt);

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x(SUB,25)@1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_LoadableCounter_x_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const5_x_q);
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_a) - UNSIGNED(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_b));
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_q <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_o(10 downto 0);

    -- DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_PostCast_primWireOut_sel_x(BITSELECT,5)@1
    DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_x_q(9 downto 0));

    -- redist0_SampleDelay_q_1(DELAY,60)
    redist0_SampleDelay_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_BitExtract_x_b, xout => redist0_SampleDelay_q_1_q, clk => clk, aclr => areset );

    -- Mux(MUX,49)@1
    Mux_s <= redist0_SampleDelay_q_1_q;
    Mux_combproc: PROCESS (Mux_s, DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_PostCast_primWireOut_sel_x_b, DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_PostCast_primWireOut_sel_x_b)
    BEGIN
        CASE (Mux_s) IS
            WHEN "0" => Mux_q <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_PostCast_primWireOut_sel_x_b;
            WHEN "1" => Mux_q <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter1_Sub_PostCast_primWireOut_sel_x_b;
            WHEN OTHERS => Mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist3_GPIn_in_2_input_spectrum_1(DELAY,63)
    redist3_GPIn_in_2_input_spectrum_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_2_input_spectrum, xout => redist3_GPIn_in_2_input_spectrum_1_q, clk => clk, aclr => areset );

    -- redist2_GPIn_in_1_valid_1(DELAY,62)
    redist2_GPIn_in_1_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_valid, xout => redist2_GPIn_in_1_valid_1_q, clk => clk, aclr => areset );

    -- Sub(SUB,52)@1
    Sub_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_Const_x_q);
    Sub_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Sub_PostCast_primWireOut_sel_x_b);
    Sub_o <= STD_LOGIC_VECTOR(UNSIGNED(Sub_a) - UNSIGNED(Sub_b));
    Sub_q <= Sub_o(10 downto 0);

    -- Sub_PostCast_primWireOut_sel_x(BITSELECT,35)@1
    Sub_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(Sub_q(9 downto 0));

    -- CmpEQ1(LOGICAL,42)@1
    CmpEQ1_q <= "1" WHEN DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_PulseMultiplier_Const_x_q = Sub_PostCast_primWireOut_sel_x_b ELSE "0";

    -- Mux1(MUX,50)@1
    Mux1_s <= CmpEQ1_q;
    Mux1_combproc: PROCESS (Mux1_s, Sub_PostCast_primWireOut_sel_x_b, DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const2_x_q)
    BEGIN
        CASE (Mux1_s) IS
            WHEN "0" => Mux1_q <= Sub_PostCast_primWireOut_sel_x_b;
            WHEN "1" => Mux1_q <= DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_addr_counter_Const2_x_q;
            WHEN OTHERS => Mux1_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DualMem(DUALMEM,46)@1 + 2
    DualMem_ia <= STD_LOGIC_VECTOR(redist3_GPIn_in_2_input_spectrum_1_q);
    DualMem_aa <= Mux1_q(8 downto 0);
    DualMem_ib <= STD_LOGIC_VECTOR(redist3_GPIn_in_2_input_spectrum_1_q);
    DualMem_ab <= Mux_q(8 downto 0);
    DualMem_reset0 <= areset;
    DualMem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "BIDIR_DUAL_PORT",
        width_a => 32,
        widthad_a => 9,
        numwords_a => 512,
        width_b => 32,
        widthad_b => 9,
        numwords_b => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_port_b => "NEW_DATA_NO_NBE_READ",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_DualMem.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => DualMem_reset0,
        clock0 => clk,
        address_a => DualMem_aa,
        data_a => DualMem_ia,
        wren_a => redist2_GPIn_in_1_valid_1_q(0),
        rden_a => '0',
        address_b => DualMem_ab,
        data_b => DualMem_ib,
        wren_b => redist2_GPIn_in_1_valid_1_q(0),
        q_b => DualMem_iq
    );
    DualMem_q <= DualMem_iq(31 downto 0);

    -- redist4_DualMem_q_1(DELAY,64)
    redist4_DualMem_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DualMem_q, xout => redist4_DualMem_q_1_q, clk => clk, aclr => areset );

    -- redist1_SampleDelay_q_4(DELAY,61)
    redist1_SampleDelay_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist0_SampleDelay_q_1_q, xout => redist1_SampleDelay_q_4_q, clk => clk, aclr => areset );

    -- GPOut(GPOUT,48)@4
    out_1_valid_x <= redist1_SampleDelay_q_4_q;
    out_2_output_spectrum <= redist4_DualMem_q_1_q;

END normal;
