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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale
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
entity DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale is
    port (
        in_1_amplitude_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_amplitude : in std_logic_vector(15 downto 0);  -- sfix16_en14
        in_3_noise_STD_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_4_noise_STD : in std_logic_vector(15 downto 0);  -- ufix16_en16
        out_1_scaled_signal_amplitude_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_scaled_noise_amplitude_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_3_scaled_amplitude : out std_logic_vector(15 downto 0);  -- ufix16_en15
        out_4_noise_count : out std_logic_vector(15 downto 0);  -- ufix16
        out_5_signal_count : out std_logic_vector(15 downto 0);  -- ufix16
        out_6_reset : out std_logic_vector(0 downto 0);  -- ufix1
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale;

architecture normal of DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_caA0Z46142i0m6140i0k62a5u is
        port (
            in_0 : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_caA1Z46142i0m6140i0k62a5u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA0Z0m6140i0k614004kii5u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal Abs2_mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Abs2_mux_x_q : STD_LOGIC_VECTOR (16 downto 0);
    signal Abs2_neg_x_a : STD_LOGIC_VECTOR (16 downto 0);
    signal Abs2_neg_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal Abs2_neg_x_o : STD_LOGIC_VECTOR (16 downto 0);
    signal Abs2_neg_x_q : STD_LOGIC_VECTOR (16 downto 0);
    signal Abs2_signBit_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal Abs2_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const5_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const6_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_cnt : UNSIGNED (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dec : UNSIGNED (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dn : UNSIGNED (16 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_en : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_i : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_inc : UNSIGNED (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_l : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_ld : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_s : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_up : UNSIGNED (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_pos_edge_dectector_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_pos_edge_dectector_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_CmpEQ1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_cnt : UNSIGNED (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dec : UNSIGNED (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dn : UNSIGNED (16 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_en : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_i : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_inc : UNSIGNED (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_l : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_ld : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_s : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_up : UNSIGNED (15 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Or1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_a : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_o : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_q : STD_LOGIC_VECTOR (16 downto 0);
    signal And1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal And1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal And2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal And3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CmpGE2_a : STD_LOGIC_VECTOR (19 downto 0);
    signal CmpGE2_b : STD_LOGIC_VECTOR (19 downto 0);
    signal CmpGE2_o : STD_LOGIC_VECTOR (19 downto 0);
    signal CmpGE2_n : STD_LOGIC_VECTOR (0 downto 0);
    signal Const5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Const6_q : STD_LOGIC_VECTOR (15 downto 0);
    signal Convert3_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Convert4_out_primWireOut : STD_LOGIC_VECTOR (15 downto 0);
    signal Counter1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Counter1_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of Counter1_i : signal is true;
    signal Math3_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mux2_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal Not2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux2_PreShift_1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal Mux2_PreShift_1_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal CmpGE2_PreShift_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal CmpGE2_PreShift_1_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal Mult_PostCast_primWireOut_rnd_sel_b : STD_LOGIC_VECTOR (15 downto 0);
    signal Mult_cma_reset : std_logic;
    type Mult_cma_a0type is array(NATURAL range <>) of UNSIGNED(15 downto 0);
    signal Mult_cma_a0 : Mult_cma_a0type(0 to 0);
    attribute preserve of Mult_cma_a0 : signal is true;
    type Mult_cma_c0type is array(NATURAL range <>) of UNSIGNED(2 downto 0);
    signal Mult_cma_c0 : Mult_cma_c0type(0 to 0);
    attribute preserve of Mult_cma_c0 : signal is true;
    type Mult_cma_rtype is array(NATURAL range <>) of UNSIGNED(9 downto 0);
    signal Mult_cma_r : Mult_cma_rtype(0 to 0);
    type Mult_cma_ptype is array(NATURAL range <>) of UNSIGNED(25 downto 0);
    signal Mult_cma_p : Mult_cma_ptype(0 to 0);
    signal Mult_cma_u : Mult_cma_ptype(0 to 0);
    signal Mult_cma_w : Mult_cma_ptype(0 to 0);
    signal Mult_cma_x : Mult_cma_ptype(0 to 0);
    signal Mult_cma_y : Mult_cma_ptype(0 to 0);
    signal Mult_cma_k0 : Mult_cma_rtype(0 to 7) := (
        0 => TO_UNSIGNED(973,10),
        others => (others => '0'));
    signal Mult_cma_s : Mult_cma_ptype(0 to 0);
    signal Mult_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal Mult_cma_q : STD_LOGIC_VECTOR (25 downto 0);
    signal Mult_cma_ena0 : std_logic;
    signal Mult_cma_ena1 : std_logic;
    signal redist1_Math3_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_GPIn2_in_1_amplitude_valid_31_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_GPIn2_in_1_amplitude_valid_32_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_Convert4_out_primWireOut_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist5_Convert4_out_primWireOut_3_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist6_Convert3_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_And2_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_And1_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist10_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_SampleDelay1_x_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_Abs2_PostCast_primWireOut_sel_x_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist13_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_reset0 : std_logic;
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i : signal is true;
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_eq : std_logic;
    attribute preserve of redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_eq : signal is true;
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_sticky_ena_q : signal is true;
    signal redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_GPIn2_in_1_amplitude_valid_31_outputreg_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const6_x(CONSTANT,11)
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const6_x_q <= "1111101000000000";

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const5_x(CONSTANT,10)
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const5_x_q <= "1111101000000001";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- redist2_GPIn2_in_1_amplitude_valid_31(DELAY,89)
    redist2_GPIn2_in_1_amplitude_valid_31 : dspba_delay
    GENERIC MAP ( width => 1, depth => 30, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_amplitude_valid, xout => redist2_GPIn2_in_1_amplitude_valid_31_q, clk => clk, aclr => areset );

    -- redist2_GPIn2_in_1_amplitude_valid_31_outputreg(DELAY,111)
    redist2_GPIn2_in_1_amplitude_valid_31_outputreg : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist2_GPIn2_in_1_amplitude_valid_31_q, xout => redist2_GPIn2_in_1_amplitude_valid_31_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_pos_edge_dectector_Xor_x(LOGICAL,23)@31
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_pos_edge_dectector_Xor_x_q <= redist2_GPIn2_in_1_amplitude_valid_31_outputreg_q xor redist3_GPIn2_in_1_amplitude_valid_32_q;

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_pos_edge_dectector_And_x(LOGICAL,21)@31
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_pos_edge_dectector_And_x_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_pos_edge_dectector_Xor_x_q and redist2_GPIn2_in_1_amplitude_valid_31_outputreg_q;

    -- Counter1(COUNTER,47)@31 + 1
    -- low=0, high=1, step=1, init=0
    Counter1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Counter1_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_pos_edge_dectector_And_x_q = "1") THEN
                Counter1_i <= Counter1_i + 1;
            END IF;
        END IF;
    END PROCESS;
    Counter1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(Counter1_i, 1)));

    -- redist3_GPIn2_in_1_amplitude_valid_32(DELAY,90)
    redist3_GPIn2_in_1_amplitude_valid_32 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist2_GPIn2_in_1_amplitude_valid_31_outputreg_q, xout => redist3_GPIn2_in_1_amplitude_valid_32_q, clk => clk, aclr => areset );

    -- And3(LOGICAL,39)@32
    And3_q <= redist3_GPIn2_in_1_amplitude_valid_32_q and Counter1_q;

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x(LOADABLECOUNTER,13)@32 + 1
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_en <= And3_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_ld <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_i <= STD_LOGIC_VECTOR("000000000000000" & GND_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_s <= STD_LOGIC_VECTOR("000000000000000" & VCC_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_l <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const5_x_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_up <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_cnt + DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_inc;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dn <= UNSIGNED(resize(unsigned(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_cnt(15 downto 0)), 17)) - UNSIGNED(resize(unsigned(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dec(15 downto 0)), 17));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_cnt <= "0000000000000000";
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_inc <= "0000000000000001";
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dec <= "1111101000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_ld = "1") THEN
                IF (FALSE and DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_s(15) = '1') THEN
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_inc <= UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_l) + UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_s);
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dec <= UNSIGNED(TO_UNSIGNED(0, 16)) - UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_s);
                ELSE
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_inc <= UNSIGNED(TO_UNSIGNED(0, 16)) + UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_s);
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dec <= UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_l) - UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_s);
                END IF;
            END IF;
            IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_ld = "1" or DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_en = "1") THEN
                IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_ld = "1") THEN
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_cnt <= UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_i);
                ELSE
                    IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dn(16) = '1') THEN
                        DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_cnt <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_up;
                    ELSE
                        DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_cnt <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_dn(15 downto 0);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_cnt);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x(LOGICAL,8)@33
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q <= "1" WHEN DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_LoadableCounter1_x_q = DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const6_x_q ELSE "0";

    -- redist11_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q_1(DELAY,98)
    redist11_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q, xout => redist11_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_And_x(LOGICAL,24)@32
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_And_x_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q and And2_q;

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_CmpEQ1_x(LOGICAL,25)@34
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_CmpEQ1_x_q <= "1" WHEN redist9_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q_1_q = DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const6_x_q ELSE "0";

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Or1_x(LOGICAL,31)@32
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Or1_x_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_CmpEQ1_x_q or DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q;

    -- Const5(FLOATCONSTANT,43)
    Const5_q <= "00111111001100110011001100110011";

    -- Abs2_neg_x(SUB,4)@0
    Abs2_neg_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 1 => GND_q(0)) & GND_q));
    Abs2_neg_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => in_2_amplitude(15)) & in_2_amplitude));
    Abs2_neg_x_o <= STD_LOGIC_VECTOR(SIGNED(Abs2_neg_x_a) - SIGNED(Abs2_neg_x_b));
    Abs2_neg_x_q <= Abs2_neg_x_o(16 downto 0);

    -- Abs2_signBit_x(BITSELECT,5)@0
    Abs2_signBit_x_b <= STD_LOGIC_VECTOR(in_2_amplitude(15 downto 15));

    -- Abs2_mux_x(MUX,3)@0
    Abs2_mux_x_s <= Abs2_signBit_x_b;
    Abs2_mux_x_combproc: PROCESS (Abs2_mux_x_s, in_2_amplitude, Abs2_neg_x_q)
    BEGIN
        CASE (Abs2_mux_x_s) IS
            WHEN "0" => Abs2_mux_x_q <= STD_LOGIC_VECTOR((16 downto 16 => in_2_amplitude(15)) & in_2_amplitude);
            WHEN "1" => Abs2_mux_x_q <= Abs2_neg_x_q;
            WHEN OTHERS => Abs2_mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- Abs2_PostCast_primWireOut_sel_x(BITSELECT,6)@0
    Abs2_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(Abs2_mux_x_q(15 downto 0));

    -- redist12_Abs2_PostCast_primWireOut_sel_x_b_1(DELAY,99)
    redist12_Abs2_PostCast_primWireOut_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Abs2_PostCast_primWireOut_sel_x_b, xout => redist12_Abs2_PostCast_primWireOut_sel_x_b_1_q, clk => clk, aclr => areset );

    -- Convert3(BLACKBOX,45)@1
    -- out out_primWireOut@2
    theConvert3 : floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_caA0Z46142i0m6140i0k62a5u
    PORT MAP (
        in_0 => redist12_Abs2_PostCast_primWireOut_sel_x_b_1_q,
        out_primWireOut => Convert3_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist6_Convert3_out_primWireOut_1(DELAY,93)
    redist6_Convert3_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert3_out_primWireOut, xout => redist6_Convert3_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Math3(BLACKBOX,50)@3
    -- out out_primWireOut@29
    theMath3 : floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_poA0Z0m6140i0k614004kii5u
    PORT MAP (
        in_0 => redist6_Convert3_out_primWireOut_1_q,
        in_1 => Const5_q,
        out_primWireOut => Math3_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist1_Math3_out_primWireOut_1(DELAY,88)
    redist1_Math3_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Math3_out_primWireOut, xout => redist1_Math3_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Convert4(BLACKBOX,46)@30
    -- out out_primWireOut@31
    theConvert4 : floatComponent_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_caA1Z46142i0m6140i0k62a5u
    PORT MAP (
        in_0 => redist1_Math3_out_primWireOut_1_q,
        out_primWireOut => Convert4_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist4_Convert4_out_primWireOut_1(DELAY,91)
    redist4_Convert4_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert4_out_primWireOut, xout => redist4_Convert4_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- CmpGE2_PreShift_1(BITSHIFT,57)@32
    CmpGE2_PreShift_1_qint <= redist4_Convert4_out_primWireOut_1_q & "0";
    CmpGE2_PreShift_1_q <= CmpGE2_PreShift_1_qint(16 downto 0);

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_notEnable(LOGICAL,107)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_nor(LOGICAL,108)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_nor_q <= not (redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_notEnable_q or redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_sticky_ena_q);

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_last(CONSTANT,104)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_last_q <= "011010";

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmp(LOGICAL,105)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmp_b <= STD_LOGIC_VECTOR("0" & redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_q);
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmp_q <= "1" WHEN redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_last_q = redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmp_b ELSE "0";

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmpReg(REG,106)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmpReg_q <= STD_LOGIC_VECTOR(redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmp_q);
        END IF;
    END PROCESS;

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_sticky_ena(REG,109)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_nor_q = "1") THEN
                redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_sticky_ena_q <= STD_LOGIC_VECTOR(redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_enaAnd(LOGICAL,110)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_enaAnd_q <= redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_sticky_ena_q and VCC_q;

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt(COUNTER,102)
    -- low=0, high=27, step=1, init=0
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i = TO_UNSIGNED(26, 5)) THEN
                redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_eq <= '1';
            ELSE
                redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_eq <= '0';
            END IF;
            IF (redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_eq = '1') THEN
                redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i <= redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i + 5;
            ELSE
                redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i <= redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_i, 5)));

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x(MUX,19)@0 + 1
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_s <= in_3_noise_STD_valid;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_q;
                WHEN "1" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_q <= in_4_noise_STD;
                WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- Mult_cma(CHAINMULTADD,86)@1 + 2
    Mult_cma_reset <= areset;
    Mult_cma_ena0 <= '1';
    Mult_cma_ena1 <= Mult_cma_ena0;
    -- altera synthesis_off
    Mult_cma_k0 <= (
        0 => TO_UNSIGNED(973,10),
        others => (others => '0'));
    -- altera synthesis_on
    Mult_cma_r(0) <= Mult_cma_k0(TO_INTEGER(Mult_cma_c0(0)));
    Mult_cma_p(0) <= Mult_cma_a0(0) * Mult_cma_r(0);
    Mult_cma_u(0) <= RESIZE(Mult_cma_p(0),26);
    Mult_cma_w(0) <= Mult_cma_u(0);
    Mult_cma_x(0) <= Mult_cma_w(0);
    Mult_cma_y(0) <= Mult_cma_x(0);
    Mult_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult_cma_a0 <= (others => (others => '0'));
            Mult_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult_cma_ena0 = '1') THEN
                Mult_cma_a0(0) <= RESIZE(UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_latch_0L_Mux_x_q),16);
                Mult_cma_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
        END IF;
    END PROCESS;
    Mult_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult_cma_ena1 = '1') THEN
                Mult_cma_s(0) <= Mult_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    Mult_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(Mult_cma_s(0)(25 downto 0)), xout => Mult_cma_qq, clk => clk, aclr => areset );
    Mult_cma_q <= STD_LOGIC_VECTOR(Mult_cma_qq(25 downto 0));

    -- Mult_PostCast_primWireOut_rnd_sel(BITSELECT,69)@3
    Mult_PostCast_primWireOut_rnd_sel_b <= Mult_cma_q(25 downto 10);

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_wraddr(REG,103)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_wraddr_q <= "11011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_wraddr_q <= STD_LOGIC_VECTOR(redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem(DUALMEM,101)
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_ia <= STD_LOGIC_VECTOR(Mult_PostCast_primWireOut_rnd_sel_b);
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_aa <= redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_wraddr_q;
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_ab <= redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_rdcnt_q;
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_reset0 <= areset;
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 5,
        numwords_a => 28,
        width_b => 16,
        widthad_b => 5,
        numwords_b => 28,
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
        clocken1 => redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_reset0,
        clock1 => clk,
        address_a => redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_aa,
        data_a => redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_ab,
        q_b => redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_iq
    );
    redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_q <= redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_iq(15 downto 0);

    -- Mux2_PreShift_1(BITSHIFT,56)@32
    Mux2_PreShift_1_qint <= redist0_Mult_PostCast_primWireOut_rnd_sel_b_29_mem_q & "00";
    Mux2_PreShift_1_q <= Mux2_PreShift_1_qint(17 downto 0);

    -- Const6(CONSTANT,44)
    Const6_q <= "0010111000010100";

    -- redist10_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_SampleDelay1_x_q_1(DELAY,97)
    redist10_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_SampleDelay1_x_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_q, xout => redist10_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_SampleDelay1_x_q_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x(MUX,16)@33
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_s <= redist10_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_SampleDelay1_x_q_1_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_combproc: PROCESS (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_s, DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q, VCC_q)
    BEGIN
        CASE (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q;
            WHEN "1" => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_q <= VCC_q;
            WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- Mux2(MUX,53)@32
    Mux2_s <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_bit_fuse_Mux1_x_q;
    Mux2_combproc: PROCESS (Mux2_s, Const6_q, Mux2_PreShift_1_q)
    BEGIN
        CASE (Mux2_s) IS
            WHEN "0" => Mux2_q <= STD_LOGIC_VECTOR("00" & Const6_q);
            WHEN "1" => Mux2_q <= Mux2_PreShift_1_q;
            WHEN OTHERS => Mux2_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- CmpGE2(COMPARE,40)@32
    CmpGE2_a <= STD_LOGIC_VECTOR("00" & Mux2_q);
    CmpGE2_b <= STD_LOGIC_VECTOR("000" & CmpGE2_PreShift_1_q);
    CmpGE2_o <= STD_LOGIC_VECTOR(UNSIGNED(CmpGE2_a) - UNSIGNED(CmpGE2_b));
    CmpGE2_n(0) <= not (CmpGE2_o(19));

    -- And2(LOGICAL,38)@32
    And2_q <= And3_q and CmpGE2_n;

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x(LOADABLECOUNTER,30)@32 + 1
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_en <= And2_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_ld <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Or1_x_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_i <= STD_LOGIC_VECTOR("000000000000000" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_And_x_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_s <= STD_LOGIC_VECTOR("000000000000000" & VCC_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_l <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const5_x_q;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_up <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_cnt + DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_inc;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dn <= UNSIGNED(resize(unsigned(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_cnt(15 downto 0)), 17)) - UNSIGNED(resize(unsigned(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dec(15 downto 0)), 17));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_cnt <= "0000000000000000";
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_inc <= "0000000000000001";
            DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dec <= "1111101000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_ld = "1") THEN
                IF (FALSE and DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_s(15) = '1') THEN
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_inc <= UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_l) + UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_s);
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dec <= UNSIGNED(TO_UNSIGNED(0, 16)) - UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_s);
                ELSE
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_inc <= UNSIGNED(TO_UNSIGNED(0, 16)) + UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_s);
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dec <= UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_l) - UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_s);
                END IF;
            END IF;
            IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_ld = "1" or DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_en = "1") THEN
                IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_ld = "1") THEN
                    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_cnt <= UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_i);
                ELSE
                    IF (DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dn(16) = '1') THEN
                        DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_cnt <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_up;
                    ELSE
                        DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_cnt <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_dn(15 downto 0);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_cnt);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x(SUB,33)@33
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_Const6_x_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q);
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_a) - UNSIGNED(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_b));
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_q <= DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_o(16 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x(BITSELECT,2)@33
    DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_x_q(15 downto 0));

    -- redist13_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x_b_1(DELAY,100)
    redist13_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x_b, xout => redist13_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x_b_1_q, clk => clk, aclr => areset );

    -- redist9_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q_1(DELAY,96)
    redist9_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q, xout => redist9_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q_1_q, clk => clk, aclr => areset );

    -- redist5_Convert4_out_primWireOut_3(DELAY,92)
    redist5_Convert4_out_primWireOut_3 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist4_Convert4_out_primWireOut_1_q, xout => redist5_Convert4_out_primWireOut_3_q, clk => clk, aclr => areset );

    -- redist7_And2_q_2(DELAY,94)
    redist7_And2_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => And2_q, xout => redist7_And2_q_2_q, clk => clk, aclr => areset );

    -- Not2(LOGICAL,54)@32
    Not2_q <= not (CmpGE2_n);

    -- And1(LOGICAL,37)@32 + 1
    And1_qi <= And3_q and Not2_q;
    And1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => And1_qi, xout => And1_q, clk => clk, aclr => areset );

    -- redist8_And1_q_2(DELAY,95)
    redist8_And1_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => And1_q, xout => redist8_And1_q_2_q, clk => clk, aclr => areset );

    -- GPOut3(GPOUT,49)@34
    out_1_scaled_signal_amplitude_valid <= redist8_And1_q_2_q;
    out_2_scaled_noise_amplitude_valid <= redist7_And2_q_2_q;
    out_3_scaled_amplitude <= redist5_Convert4_out_primWireOut_3_q;
    out_4_noise_count <= redist9_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_LoadableCounter1_x_q_1_q;
    out_5_signal_count <= redist13_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_sample_counter_Sub_PostCast_primWireOut_sel_x_b_1_q;
    out_6_reset <= redist11_DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_Frame_trigger_CmpEQ1_x_q_1_q;

END normal;
