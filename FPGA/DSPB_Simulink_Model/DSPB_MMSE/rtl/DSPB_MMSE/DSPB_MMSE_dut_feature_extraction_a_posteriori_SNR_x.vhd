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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_x
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
entity DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_x is
    port (
        in_1_noisy_spectrum_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_3_noisy_power_spectrum : in std_logic_vector(35 downto 0);  -- ufix36_en22
        in_2_noisy_magnitude_spectrum : in std_logic_vector(17 downto 0);  -- ufix18_en11
        out_1_noise_power_snr_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_a_posteriori_snr : out std_logic_vector(31 downto 0);  -- float32_m23
        out_3_noise_power_spectrum : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_x;

architecture normal of DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_x is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_castBlock_typeUA0Zqcd06uqqcdo6u2oct30u is
        port (
            in_0 : in std_logic_vector(35 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;



    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_divideBlock_typA0Ze2a150g24ad20454ck5u is
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
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_i : UNSIGNED (8 downto 0);
    attribute preserve of DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_x_b : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Const2_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_q : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_x_b : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_q : STD_LOGIC_VECTOR (35 downto 0);
    signal And_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal And1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CmpLT_a : STD_LOGIC_VECTOR (20 downto 0);
    signal CmpLT_b : STD_LOGIC_VECTOR (20 downto 0);
    signal CmpLT_o : STD_LOGIC_VECTOR (20 downto 0);
    signal CmpLT_c : STD_LOGIC_VECTOR (0 downto 0);
    signal CmpLT1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal CmpLT1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal CmpLT1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal CmpLT1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal Convert_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Convert1_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Divide_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal FIFO_reset : std_logic;
    signal FIFO_f : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO_e : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO_t : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO_q : STD_LOGIC_VECTOR (17 downto 0);
    signal FIFO_empty : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO_v : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_q : STD_LOGIC_VECTOR (17 downto 0);
    signal Mux1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_a : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_b : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_o : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_PreShift_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_PreShift_1_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_PreShift_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_PreShift_1_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal Mult1_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal Mult1_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal Mult1_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult1_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult1_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult1_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult1_shift2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult1_shift2_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult1_add_3_a : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult1_add_3_b : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult1_add_3_o : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult1_add_3_q : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult1_shift4_q : STD_LOGIC_VECTOR (24 downto 0);
    signal Mult1_shift4_qint : STD_LOGIC_VECTOR (24 downto 0);
    signal Mult1_add_5_a : STD_LOGIC_VECTOR (25 downto 0);
    signal Mult1_add_5_b : STD_LOGIC_VECTOR (25 downto 0);
    signal Mult1_add_5_o : STD_LOGIC_VECTOR (25 downto 0);
    signal Mult1_add_5_q : STD_LOGIC_VECTOR (25 downto 0);
    signal Mult1_PostCast_primWireOut_rnd_sel_in : STD_LOGIC_VECTOR (24 downto 0);
    signal Mult1_PostCast_primWireOut_rnd_sel_b : STD_LOGIC_VECTOR (18 downto 0);
    signal Mult2_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal Mult2_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal Mult2_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult2_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult2_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult2_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult2_shift2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult2_shift2_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult2_sub_3_a : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult2_sub_3_b : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult2_sub_3_o : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult2_sub_3_q : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult2_shift4_q : STD_LOGIC_VECTOR (25 downto 0);
    signal Mult2_shift4_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal Mult2_add_5_a : STD_LOGIC_VECTOR (26 downto 0);
    signal Mult2_add_5_b : STD_LOGIC_VECTOR (26 downto 0);
    signal Mult2_add_5_o : STD_LOGIC_VECTOR (26 downto 0);
    signal Mult2_add_5_q : STD_LOGIC_VECTOR (26 downto 0);
    signal Mult2_PostCast_primWireOut_rnd_sel_in : STD_LOGIC_VECTOR (24 downto 0);
    signal Mult2_PostCast_primWireOut_rnd_sel_b : STD_LOGIC_VECTOR (17 downto 0);
    signal Mult4_PostCast_primWireOut_rnd_sel_in : STD_LOGIC_VECTOR (26 downto 0);
    signal Mult4_PostCast_primWireOut_rnd_sel_b : STD_LOGIC_VECTOR (17 downto 0);
    signal Mult5_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal Mult5_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal Mult5_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult5_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult5_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult5_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult5_shift2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult5_shift2_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal Mult5_add_3_a : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult5_add_3_b : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult5_add_3_o : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult5_add_3_q : STD_LOGIC_VECTOR (21 downto 0);
    signal Mult5_PostCast_primWireOut_rnd_sel_in : STD_LOGIC_VECTOR (24 downto 0);
    signal Mult5_PostCast_primWireOut_rnd_sel_b : STD_LOGIC_VECTOR (17 downto 0);
    signal Mult_cma_reset : std_logic;
    type Mult_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal Mult_cma_a0 : Mult_cma_a0type(0 to 0);
    attribute preserve of Mult_cma_a0 : signal is true;
    signal Mult_cma_c0 : Mult_cma_a0type(0 to 0);
    attribute preserve of Mult_cma_c0 : signal is true;
    type Mult_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal Mult_cma_p : Mult_cma_ptype(0 to 0);
    signal Mult_cma_u : Mult_cma_ptype(0 to 0);
    signal Mult_cma_w : Mult_cma_ptype(0 to 0);
    signal Mult_cma_x : Mult_cma_ptype(0 to 0);
    signal Mult_cma_y : Mult_cma_ptype(0 to 0);
    signal Mult_cma_s : Mult_cma_ptype(0 to 0);
    signal Mult_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal Mult_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal Mult_cma_ena0 : std_logic;
    signal Mult_cma_ena1 : std_logic;
    signal Mult4_cma_reset : std_logic;
    signal Mult4_cma_a0 : Mult_cma_a0type(0 to 0);
    attribute preserve of Mult4_cma_a0 : signal is true;
    type Mult4_cma_c0type is array(NATURAL range <>) of UNSIGNED(2 downto 0);
    signal Mult4_cma_c0 : Mult4_cma_c0type(0 to 0);
    attribute preserve of Mult4_cma_c0 : signal is true;
    type Mult4_cma_rtype is array(NATURAL range <>) of UNSIGNED(9 downto 0);
    signal Mult4_cma_r : Mult4_cma_rtype(0 to 0);
    type Mult4_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal Mult4_cma_p : Mult4_cma_ptype(0 to 0);
    signal Mult4_cma_u : Mult4_cma_ptype(0 to 0);
    signal Mult4_cma_w : Mult4_cma_ptype(0 to 0);
    signal Mult4_cma_x : Mult4_cma_ptype(0 to 0);
    signal Mult4_cma_y : Mult4_cma_ptype(0 to 0);
    signal Mult4_cma_k0 : Mult4_cma_rtype(0 to 7) := (
        0 => TO_UNSIGNED(461,10),
        others => (others => '0'));
    signal Mult4_cma_s : Mult4_cma_ptype(0 to 0);
    signal Mult4_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal Mult4_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal Mult4_cma_ena0 : std_logic;
    signal Mult4_cma_ena1 : std_logic;
    signal redist0_Mult5_PostCast_primWireOut_rnd_sel_b_1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist1_Mux_q_2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist2_GPIn1_in_1_noisy_spectrum_valid_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_GPIn1_in_2_noisy_magnitude_spectrum_1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist4_Divide_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_Convert_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_SampleDelay_x_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal SampleDelay1_mem_reset0 : std_logic;
    signal SampleDelay1_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal SampleDelay1_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal SampleDelay1_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal SampleDelay1_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal SampleDelay1_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal SampleDelay1_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal SampleDelay1_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of SampleDelay1_rdcnt_i : signal is true;
    signal SampleDelay1_rdcnt_eq : std_logic;
    attribute preserve of SampleDelay1_rdcnt_eq : signal is true;
    signal SampleDelay1_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal SampleDelay1_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal SampleDelay1_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal SampleDelay1_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal SampleDelay1_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal SampleDelay1_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal SampleDelay1_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of SampleDelay1_sticky_ena_q : signal is true;
    signal SampleDelay1_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_Convert1_out_primWireOut_12_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Convert1_out_primWireOut_12_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Convert1_out_primWireOut_12_mem_reset0 : std_logic;
    signal redist5_Convert1_out_primWireOut_12_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Convert1_out_primWireOut_12_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_Convert1_out_primWireOut_12_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_Convert1_out_primWireOut_12_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Convert1_out_primWireOut_12_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Convert1_out_primWireOut_12_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_Convert1_out_primWireOut_12_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist5_Convert1_out_primWireOut_12_rdcnt_i : signal is true;
    signal redist5_Convert1_out_primWireOut_12_rdcnt_eq : std_logic;
    attribute preserve of redist5_Convert1_out_primWireOut_12_rdcnt_eq : signal is true;
    signal redist5_Convert1_out_primWireOut_12_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_Convert1_out_primWireOut_12_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_Convert1_out_primWireOut_12_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_Convert1_out_primWireOut_12_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_Convert1_out_primWireOut_12_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_Convert1_out_primWireOut_12_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_Convert1_out_primWireOut_12_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist5_Convert1_out_primWireOut_12_sticky_ena_q : signal is true;
    signal redist5_Convert1_out_primWireOut_12_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_Convert_out_primWireOut_13_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_Convert_out_primWireOut_13_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_Convert_out_primWireOut_13_mem_reset0 : std_logic;
    signal redist7_Convert_out_primWireOut_13_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_Convert_out_primWireOut_13_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_Convert_out_primWireOut_13_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_Convert_out_primWireOut_13_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_Convert_out_primWireOut_13_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_Convert_out_primWireOut_13_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_Convert_out_primWireOut_13_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist7_Convert_out_primWireOut_13_rdcnt_i : signal is true;
    signal redist7_Convert_out_primWireOut_13_rdcnt_eq : std_logic;
    attribute preserve of redist7_Convert_out_primWireOut_13_rdcnt_eq : signal is true;
    signal redist7_Convert_out_primWireOut_13_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_Convert_out_primWireOut_13_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist7_Convert_out_primWireOut_13_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_Convert_out_primWireOut_13_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_Convert_out_primWireOut_13_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_Convert_out_primWireOut_13_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_Convert_out_primWireOut_13_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist7_Convert_out_primWireOut_13_sticky_ena_q : signal is true;
    signal redist7_Convert_out_primWireOut_13_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist7_Convert_out_primWireOut_13_notEnable(LOGICAL,148)
    redist7_Convert_out_primWireOut_13_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist7_Convert_out_primWireOut_13_nor(LOGICAL,149)
    redist7_Convert_out_primWireOut_13_nor_q <= not (redist7_Convert_out_primWireOut_13_notEnable_q or redist7_Convert_out_primWireOut_13_sticky_ena_q);

    -- redist7_Convert_out_primWireOut_13_mem_last(CONSTANT,145)
    redist7_Convert_out_primWireOut_13_mem_last_q <= "0111";

    -- redist7_Convert_out_primWireOut_13_cmp(LOGICAL,146)
    redist7_Convert_out_primWireOut_13_cmp_q <= "1" WHEN redist7_Convert_out_primWireOut_13_mem_last_q = redist7_Convert_out_primWireOut_13_rdcnt_q ELSE "0";

    -- redist7_Convert_out_primWireOut_13_cmpReg(REG,147)
    redist7_Convert_out_primWireOut_13_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_Convert_out_primWireOut_13_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist7_Convert_out_primWireOut_13_cmpReg_q <= STD_LOGIC_VECTOR(redist7_Convert_out_primWireOut_13_cmp_q);
        END IF;
    END PROCESS;

    -- redist7_Convert_out_primWireOut_13_sticky_ena(REG,150)
    redist7_Convert_out_primWireOut_13_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_Convert_out_primWireOut_13_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist7_Convert_out_primWireOut_13_nor_q = "1") THEN
                redist7_Convert_out_primWireOut_13_sticky_ena_q <= STD_LOGIC_VECTOR(redist7_Convert_out_primWireOut_13_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_Convert_out_primWireOut_13_enaAnd(LOGICAL,151)
    redist7_Convert_out_primWireOut_13_enaAnd_q <= redist7_Convert_out_primWireOut_13_sticky_ena_q and VCC_q;

    -- redist7_Convert_out_primWireOut_13_rdcnt(COUNTER,143)
    -- low=0, high=8, step=1, init=0
    redist7_Convert_out_primWireOut_13_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_Convert_out_primWireOut_13_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist7_Convert_out_primWireOut_13_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist7_Convert_out_primWireOut_13_rdcnt_i = TO_UNSIGNED(7, 4)) THEN
                redist7_Convert_out_primWireOut_13_rdcnt_eq <= '1';
            ELSE
                redist7_Convert_out_primWireOut_13_rdcnt_eq <= '0';
            END IF;
            IF (redist7_Convert_out_primWireOut_13_rdcnt_eq = '1') THEN
                redist7_Convert_out_primWireOut_13_rdcnt_i <= redist7_Convert_out_primWireOut_13_rdcnt_i + 8;
            ELSE
                redist7_Convert_out_primWireOut_13_rdcnt_i <= redist7_Convert_out_primWireOut_13_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist7_Convert_out_primWireOut_13_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist7_Convert_out_primWireOut_13_rdcnt_i, 4)));

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Const2_x(CONSTANT,16)
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Const2_x_q <= "0000000000000000000001";

    -- redist3_GPIn1_in_2_noisy_magnitude_spectrum_1(DELAY,111)
    redist3_GPIn1_in_2_noisy_magnitude_spectrum_1 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_2_noisy_magnitude_spectrum, xout => redist3_GPIn1_in_2_noisy_magnitude_spectrum_1_q, clk => clk, aclr => areset );

    -- Mult5_shift2(BITSHIFT,87)@1
    Mult5_shift2_qint <= redist3_GPIn1_in_2_noisy_magnitude_spectrum_1_q & "000";
    Mult5_shift2_q <= Mult5_shift2_qint(20 downto 0);

    -- Mult5_shift0(BITSHIFT,85)@1
    Mult5_shift0_qint <= redist3_GPIn1_in_2_noisy_magnitude_spectrum_1_q & "00";
    Mult5_shift0_q <= Mult5_shift0_qint(19 downto 0);

    -- Mult5_add_1(ADD,86)@1
    Mult5_add_1_a <= STD_LOGIC_VECTOR("000" & redist3_GPIn1_in_2_noisy_magnitude_spectrum_1_q);
    Mult5_add_1_b <= STD_LOGIC_VECTOR("0" & Mult5_shift0_q);
    Mult5_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(Mult5_add_1_a) + UNSIGNED(Mult5_add_1_b));
    Mult5_add_1_q <= Mult5_add_1_o(20 downto 0);

    -- Mult5_add_3(ADD,88)@1
    Mult5_add_3_a <= STD_LOGIC_VECTOR("0" & Mult5_add_1_q);
    Mult5_add_3_b <= STD_LOGIC_VECTOR("0" & Mult5_shift2_q);
    Mult5_add_3_o <= STD_LOGIC_VECTOR(UNSIGNED(Mult5_add_3_a) + UNSIGNED(Mult5_add_3_b));
    Mult5_add_3_q <= Mult5_add_3_o(21 downto 0);

    -- Mult5_PostCast_primWireOut_rnd_sel(BITSELECT,89)@1
    Mult5_PostCast_primWireOut_rnd_sel_in <= STD_LOGIC_VECTOR("000" & Mult5_add_3_q);
    Mult5_PostCast_primWireOut_rnd_sel_b <= Mult5_PostCast_primWireOut_rnd_sel_in(24 downto 7);

    -- redist0_Mult5_PostCast_primWireOut_rnd_sel_b_1(DELAY,108)
    redist0_Mult5_PostCast_primWireOut_rnd_sel_b_1 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult5_PostCast_primWireOut_rnd_sel_b, xout => redist0_Mult5_PostCast_primWireOut_rnd_sel_b_1_q, clk => clk, aclr => areset );

    -- And_rsrvd_fix(LOGICAL,27)@0
    And_rsrvd_fix_q <= in_1_noisy_spectrum_valid and DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_q;

    -- SampleDelay1_notEnable(LOGICAL,124)@0
    SampleDelay1_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- SampleDelay1_nor(LOGICAL,125)@0
    SampleDelay1_nor_q <= not (SampleDelay1_notEnable_q or SampleDelay1_sticky_ena_q);

    -- SampleDelay1_mem_last(CONSTANT,121)
    SampleDelay1_mem_last_q <= "01111";

    -- SampleDelay1_cmp(LOGICAL,122)@0
    SampleDelay1_cmp_q <= "1" WHEN SampleDelay1_mem_last_q = SampleDelay1_rdcnt_q ELSE "0";

    -- SampleDelay1_cmpReg(REG,123)@0 + 1
    SampleDelay1_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            SampleDelay1_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            SampleDelay1_cmpReg_q <= STD_LOGIC_VECTOR(SampleDelay1_cmp_q);
        END IF;
    END PROCESS;

    -- SampleDelay1_sticky_ena(REG,126)@0 + 1
    SampleDelay1_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            SampleDelay1_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (SampleDelay1_nor_q = "1") THEN
                SampleDelay1_sticky_ena_q <= STD_LOGIC_VECTOR(SampleDelay1_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- SampleDelay1_enaAnd(LOGICAL,127)@0
    SampleDelay1_enaAnd_q <= SampleDelay1_sticky_ena_q and VCC_q;

    -- SampleDelay1_rdcnt(COUNTER,119)@0 + 1
    -- low=0, high=16, step=1, init=0
    SampleDelay1_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            SampleDelay1_rdcnt_i <= TO_UNSIGNED(0, 5);
            SampleDelay1_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (SampleDelay1_rdcnt_i = TO_UNSIGNED(15, 5)) THEN
                SampleDelay1_rdcnt_eq <= '1';
            ELSE
                SampleDelay1_rdcnt_eq <= '0';
            END IF;
            IF (SampleDelay1_rdcnt_eq = '1') THEN
                SampleDelay1_rdcnt_i <= SampleDelay1_rdcnt_i + 16;
            ELSE
                SampleDelay1_rdcnt_i <= SampleDelay1_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    SampleDelay1_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(SampleDelay1_rdcnt_i, 5)));

    -- SampleDelay1_wraddr(REG,120)@0 + 1
    SampleDelay1_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            SampleDelay1_wraddr_q <= "10000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            SampleDelay1_wraddr_q <= STD_LOGIC_VECTOR(SampleDelay1_rdcnt_q);
        END IF;
    END PROCESS;

    -- SampleDelay1_mem(DUALMEM,118)@0 + 2
    SampleDelay1_mem_ia <= Mux1_q;
    SampleDelay1_mem_aa <= SampleDelay1_wraddr_q;
    SampleDelay1_mem_ab <= SampleDelay1_rdcnt_q;
    SampleDelay1_mem_reset0 <= areset;
    SampleDelay1_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 5,
        numwords_a => 17,
        width_b => 18,
        widthad_b => 5,
        numwords_b => 17,
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
        clocken1 => SampleDelay1_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => SampleDelay1_mem_reset0,
        clock1 => clk,
        address_a => SampleDelay1_mem_aa,
        data_a => SampleDelay1_mem_ia,
        wren_a => VCC_q(0),
        address_b => SampleDelay1_mem_ab,
        q_b => SampleDelay1_mem_iq
    );
    SampleDelay1_mem_q <= SampleDelay1_mem_iq(17 downto 0);

    -- FIFO(FIFO,36)@0
    FIFO_reset <= areset;
    FIFO_fifo : scfifo
    GENERIC MAP (
        add_ram_output_register => "ON",
        almost_empty_value => 1,
        almost_full_value => 256,
        intended_device_family => "Cyclone V",
        lpm_numwords => 256,
        lpm_showahead => "ON",
        lpm_type => "scfifo",
        lpm_width => 18,
        lpm_widthu => 8,
        overflow_checking => "ON",
        underflow_checking => "ON",
        use_eab => "ON"
    )
    PORT MAP (
        rdreq => And_rsrvd_fix_q(0),
        aclr => FIFO_reset,
        clock => clk,
        wrreq => redist2_GPIn1_in_1_noisy_spectrum_valid_21_q(0),
        data => SampleDelay1_mem_q,
        almost_full => FIFO_f(0),
        almost_empty => FIFO_t(0),
        empty => FIFO_empty(0),
        q => FIFO_q
    );
    FIFO_v <= not (FIFO_empty);
    FIFO_e <= not (FIFO_t);

    -- redist8_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1(DELAY,116)
    redist8_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b, xout => redist8_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x(COUNTER,11)@0 + 1
    -- low=0, high=511, step=1, init=0
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_i <= TO_UNSIGNED(0, 9);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (in_1_noisy_spectrum_valid = "1") THEN
                DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_i <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_i, 9)));

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x(BITSELECT,10)@1
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_Counter_x_q(8 downto 8);

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x(LOGICAL,13)@1
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x_q <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b xor redist8_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1_q;

    -- redist9_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_SampleDelay_x_q_1(DELAY,117)
    redist9_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_SampleDelay_x_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_q, xout => redist9_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_SampleDelay_x_q_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x(MUX,7)@1
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_s <= redist9_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_SampleDelay_x_q_1_q;
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_combproc: PROCESS (DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_s, DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x_q, GND_q)
    BEGIN
        CASE (DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_q <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x_q;
            WHEN "1" => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_q <= GND_q;
            WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x(COUNTER,6)@1 + 1
    -- low=0, high=1, step=1, init=0
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Mux_x_q = "1") THEN
                DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_i <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_i, 1)));

    -- Mux(MUX,48)@0
    Mux_s <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Frame_Fuse_Counter_x_q;
    Mux_combproc: PROCESS (Mux_s, in_2_noisy_magnitude_spectrum, FIFO_q)
    BEGIN
        CASE (Mux_s) IS
            WHEN "0" => Mux_q <= in_2_noisy_magnitude_spectrum;
            WHEN "1" => Mux_q <= FIFO_q;
            WHEN OTHERS => Mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- Mult4_cma(CHAINMULTADD,107)@0 + 2
    Mult4_cma_reset <= areset;
    Mult4_cma_ena0 <= '1';
    Mult4_cma_ena1 <= Mult4_cma_ena0;
    -- altera synthesis_off
    Mult4_cma_k0 <= (
        0 => TO_UNSIGNED(461,10),
        others => (others => '0'));
    -- altera synthesis_on
    Mult4_cma_r(0) <= Mult4_cma_k0(TO_INTEGER(Mult4_cma_c0(0)));
    Mult4_cma_p(0) <= Mult4_cma_a0(0) * Mult4_cma_r(0);
    Mult4_cma_u(0) <= RESIZE(Mult4_cma_p(0),28);
    Mult4_cma_w(0) <= Mult4_cma_u(0);
    Mult4_cma_x(0) <= Mult4_cma_w(0);
    Mult4_cma_y(0) <= Mult4_cma_x(0);
    Mult4_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult4_cma_a0 <= (others => (others => '0'));
            Mult4_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult4_cma_ena0 = '1') THEN
                Mult4_cma_a0(0) <= RESIZE(UNSIGNED(Mux_q),18);
                Mult4_cma_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
        END IF;
    END PROCESS;
    Mult4_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult4_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult4_cma_ena1 = '1') THEN
                Mult4_cma_s(0) <= Mult4_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    Mult4_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(Mult4_cma_s(0)(27 downto 0)), xout => Mult4_cma_qq, clk => clk, aclr => areset );
    Mult4_cma_q <= STD_LOGIC_VECTOR(Mult4_cma_qq(27 downto 0));

    -- Mult4_PostCast_primWireOut_rnd_sel(BITSELECT,84)@2
    Mult4_PostCast_primWireOut_rnd_sel_in <= Mult4_cma_q(26 downto 0);
    Mult4_PostCast_primWireOut_rnd_sel_b <= Mult4_PostCast_primWireOut_rnd_sel_in(26 downto 9);

    -- tmp(ADD,56)@2
    tmp_a <= Mult4_PostCast_primWireOut_rnd_sel_b;
    tmp_b <= redist0_Mult5_PostCast_primWireOut_rnd_sel_b_1_q;
    tmp_o <= STD_LOGIC_VECTOR(UNSIGNED(tmp_a) + UNSIGNED(tmp_b));
    tmp_q <= tmp_o(17 downto 0);

    -- redist1_Mux_q_2(DELAY,109)
    redist1_Mux_q_2 : dspba_delay
    GENERIC MAP ( width => 18, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mux_q, xout => redist1_Mux_q_2_q, clk => clk, aclr => areset );

    -- Mult2_shift2(BITSHIFT,71)@2
    Mult2_shift2_qint <= tmp_q & "000";
    Mult2_shift2_q <= Mult2_shift2_qint(20 downto 0);

    -- Mult2_sub_3(SUB,72)@2
    Mult2_sub_3_a <= STD_LOGIC_VECTOR("0" & Mult2_shift2_q);
    Mult2_sub_3_b <= STD_LOGIC_VECTOR("0000" & tmp_q);
    Mult2_sub_3_o <= STD_LOGIC_VECTOR(UNSIGNED(Mult2_sub_3_a) - UNSIGNED(Mult2_sub_3_b));
    Mult2_sub_3_q <= Mult2_sub_3_o(21 downto 0);

    -- Mult2_shift4(BITSHIFT,73)@2
    Mult2_shift4_qint <= Mult2_sub_3_q & "0000";
    Mult2_shift4_q <= Mult2_shift4_qint(25 downto 0);

    -- Mult2_shift0(BITSHIFT,69)@2
    Mult2_shift0_qint <= tmp_q & "00";
    Mult2_shift0_q <= Mult2_shift0_qint(19 downto 0);

    -- Mult2_sub_1(SUB,70)@2
    Mult2_sub_1_a <= STD_LOGIC_VECTOR("000" & tmp_q);
    Mult2_sub_1_b <= STD_LOGIC_VECTOR("0" & Mult2_shift0_q);
    Mult2_sub_1_o <= STD_LOGIC_VECTOR(UNSIGNED(Mult2_sub_1_a) - UNSIGNED(Mult2_sub_1_b));
    Mult2_sub_1_q <= Mult2_sub_1_o(20 downto 0);

    -- Mult2_add_5(ADD,74)@2
    Mult2_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 21 => Mult2_sub_1_q(20)) & Mult2_sub_1_q));
    Mult2_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => Mult2_shift4_q(25)) & Mult2_shift4_q));
    Mult2_add_5_o <= STD_LOGIC_VECTOR(SIGNED(Mult2_add_5_a) + SIGNED(Mult2_add_5_b));
    Mult2_add_5_q <= Mult2_add_5_o(26 downto 0);

    -- Mult2_PostCast_primWireOut_rnd_sel(BITSELECT,75)@2
    Mult2_PostCast_primWireOut_rnd_sel_in <= Mult2_add_5_q(24 downto 0);
    Mult2_PostCast_primWireOut_rnd_sel_b <= Mult2_PostCast_primWireOut_rnd_sel_in(24 downto 7);

    -- CmpLT1(COMPARE,30)@2
    CmpLT1_a <= STD_LOGIC_VECTOR("00" & Mult2_PostCast_primWireOut_rnd_sel_b);
    CmpLT1_b <= STD_LOGIC_VECTOR("00" & redist1_Mux_q_2_q);
    CmpLT1_o <= STD_LOGIC_VECTOR(UNSIGNED(CmpLT1_a) - UNSIGNED(CmpLT1_b));
    CmpLT1_c(0) <= CmpLT1_o(19);

    -- Mult1_shift2(BITSHIFT,64)@2
    Mult1_shift2_qint <= tmp_q & "000";
    Mult1_shift2_q <= Mult1_shift2_qint(20 downto 0);

    -- Mult1_add_3(ADD,65)@2
    Mult1_add_3_a <= STD_LOGIC_VECTOR("0000" & tmp_q);
    Mult1_add_3_b <= STD_LOGIC_VECTOR("0" & Mult1_shift2_q);
    Mult1_add_3_o <= STD_LOGIC_VECTOR(UNSIGNED(Mult1_add_3_a) + UNSIGNED(Mult1_add_3_b));
    Mult1_add_3_q <= Mult1_add_3_o(21 downto 0);

    -- Mult1_shift4(BITSHIFT,66)@2
    Mult1_shift4_qint <= Mult1_add_3_q & "000";
    Mult1_shift4_q <= Mult1_shift4_qint(24 downto 0);

    -- Mult1_shift0(BITSHIFT,62)@2
    Mult1_shift0_qint <= tmp_q & "00";
    Mult1_shift0_q <= Mult1_shift0_qint(19 downto 0);

    -- Mult1_add_1(ADD,63)@2
    Mult1_add_1_a <= STD_LOGIC_VECTOR("000" & tmp_q);
    Mult1_add_1_b <= STD_LOGIC_VECTOR("0" & Mult1_shift0_q);
    Mult1_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(Mult1_add_1_a) + UNSIGNED(Mult1_add_1_b));
    Mult1_add_1_q <= Mult1_add_1_o(20 downto 0);

    -- Mult1_add_5(ADD,67)@2
    Mult1_add_5_a <= STD_LOGIC_VECTOR("00000" & Mult1_add_1_q);
    Mult1_add_5_b <= STD_LOGIC_VECTOR("0" & Mult1_shift4_q);
    Mult1_add_5_o <= STD_LOGIC_VECTOR(UNSIGNED(Mult1_add_5_a) + UNSIGNED(Mult1_add_5_b));
    Mult1_add_5_q <= Mult1_add_5_o(25 downto 0);

    -- Mult1_PostCast_primWireOut_rnd_sel(BITSELECT,68)@2
    Mult1_PostCast_primWireOut_rnd_sel_in <= Mult1_add_5_q(24 downto 0);
    Mult1_PostCast_primWireOut_rnd_sel_b <= Mult1_PostCast_primWireOut_rnd_sel_in(24 downto 6);

    -- CmpLT(COMPARE,29)@2
    CmpLT_a <= STD_LOGIC_VECTOR("000" & redist1_Mux_q_2_q);
    CmpLT_b <= STD_LOGIC_VECTOR("00" & Mult1_PostCast_primWireOut_rnd_sel_b);
    CmpLT_o <= STD_LOGIC_VECTOR(UNSIGNED(CmpLT_a) - UNSIGNED(CmpLT_b));
    CmpLT_c(0) <= CmpLT_o(20);

    -- And1(LOGICAL,28)@2
    And1_q <= CmpLT_c and CmpLT1_c;

    -- Mux1(MUX,49)@2 + 1
    Mux1_s <= And1_q;
    Mux1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mux1_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (Mux1_s) IS
                WHEN "0" => Mux1_q <= redist1_Mux_q_2_q;
                WHEN "1" => Mux1_q <= tmp_q;
                WHEN OTHERS => Mux1_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- Mult_cma(CHAINMULTADD,106)@3 + 2
    Mult_cma_reset <= areset;
    Mult_cma_ena0 <= '1';
    Mult_cma_ena1 <= Mult_cma_ena0;
    Mult_cma_p(0) <= Mult_cma_a0(0) * Mult_cma_c0(0);
    Mult_cma_u(0) <= RESIZE(Mult_cma_p(0),36);
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
                Mult_cma_a0(0) <= RESIZE(UNSIGNED(Mux1_q),18);
                Mult_cma_c0(0) <= RESIZE(UNSIGNED(Mux1_q),18);
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
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(Mult_cma_s(0)(35 downto 0)), xout => Mult_cma_qq, clk => clk, aclr => areset );
    Mult_cma_q <= STD_LOGIC_VECTOR(Mult_cma_qq(35 downto 0));

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_PreShift_1(BITSHIFT,57)@5
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_PreShift_1_qint <= GND_q & "0000000000000000000000";
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_PreShift_1_q <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_PreShift_1_qint(22 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_x(LOGICAL,14)@5
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_x_b <= STD_LOGIC_VECTOR("0000000000000" & DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_PreShift_1_q);
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_x_q <= "1" WHEN Mult_cma_q = DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_x_b ELSE "0";

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x(MUX,17)@5 + 1
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_s <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_CmpEQ1_x_q;
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_q <= Mult_cma_q;
                WHEN "1" => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_q <= STD_LOGIC_VECTOR("00000000000000" & DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Const2_x_q);
                WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- Convert(BLACKBOX,33)@6
    -- out out_primWireOut@8
    theConvert : floatComponent_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_castBlock_typeUA0Zqcd06uqqcdo6u2oct30u
    PORT MAP (
        in_0 => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Mux1_x_q,
        out_primWireOut => Convert_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist6_Convert_out_primWireOut_1(DELAY,114)
    redist6_Convert_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert_out_primWireOut, xout => redist6_Convert_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- redist7_Convert_out_primWireOut_13_inputreg(DELAY,140)
    redist7_Convert_out_primWireOut_13_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist6_Convert_out_primWireOut_1_q, xout => redist7_Convert_out_primWireOut_13_inputreg_q, clk => clk, aclr => areset );

    -- redist7_Convert_out_primWireOut_13_wraddr(REG,144)
    redist7_Convert_out_primWireOut_13_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_Convert_out_primWireOut_13_wraddr_q <= "1000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist7_Convert_out_primWireOut_13_wraddr_q <= STD_LOGIC_VECTOR(redist7_Convert_out_primWireOut_13_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist7_Convert_out_primWireOut_13_mem(DUALMEM,142)
    redist7_Convert_out_primWireOut_13_mem_ia <= STD_LOGIC_VECTOR(redist7_Convert_out_primWireOut_13_inputreg_q);
    redist7_Convert_out_primWireOut_13_mem_aa <= redist7_Convert_out_primWireOut_13_wraddr_q;
    redist7_Convert_out_primWireOut_13_mem_ab <= redist7_Convert_out_primWireOut_13_rdcnt_q;
    redist7_Convert_out_primWireOut_13_mem_reset0 <= areset;
    redist7_Convert_out_primWireOut_13_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 9,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 9,
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
        clocken1 => redist7_Convert_out_primWireOut_13_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist7_Convert_out_primWireOut_13_mem_reset0,
        clock1 => clk,
        address_a => redist7_Convert_out_primWireOut_13_mem_aa,
        data_a => redist7_Convert_out_primWireOut_13_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist7_Convert_out_primWireOut_13_mem_ab,
        q_b => redist7_Convert_out_primWireOut_13_mem_iq
    );
    redist7_Convert_out_primWireOut_13_mem_q <= redist7_Convert_out_primWireOut_13_mem_iq(31 downto 0);

    -- redist7_Convert_out_primWireOut_13_outputreg(DELAY,141)
    redist7_Convert_out_primWireOut_13_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist7_Convert_out_primWireOut_13_mem_q, xout => redist7_Convert_out_primWireOut_13_outputreg_q, clk => clk, aclr => areset );

    -- redist5_Convert1_out_primWireOut_12_notEnable(LOGICAL,136)
    redist5_Convert1_out_primWireOut_12_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist5_Convert1_out_primWireOut_12_nor(LOGICAL,137)
    redist5_Convert1_out_primWireOut_12_nor_q <= not (redist5_Convert1_out_primWireOut_12_notEnable_q or redist5_Convert1_out_primWireOut_12_sticky_ena_q);

    -- redist5_Convert1_out_primWireOut_12_mem_last(CONSTANT,133)
    redist5_Convert1_out_primWireOut_12_mem_last_q <= "0111";

    -- redist5_Convert1_out_primWireOut_12_cmp(LOGICAL,134)
    redist5_Convert1_out_primWireOut_12_cmp_q <= "1" WHEN redist5_Convert1_out_primWireOut_12_mem_last_q = redist5_Convert1_out_primWireOut_12_rdcnt_q ELSE "0";

    -- redist5_Convert1_out_primWireOut_12_cmpReg(REG,135)
    redist5_Convert1_out_primWireOut_12_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist5_Convert1_out_primWireOut_12_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist5_Convert1_out_primWireOut_12_cmpReg_q <= STD_LOGIC_VECTOR(redist5_Convert1_out_primWireOut_12_cmp_q);
        END IF;
    END PROCESS;

    -- redist5_Convert1_out_primWireOut_12_sticky_ena(REG,138)
    redist5_Convert1_out_primWireOut_12_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist5_Convert1_out_primWireOut_12_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist5_Convert1_out_primWireOut_12_nor_q = "1") THEN
                redist5_Convert1_out_primWireOut_12_sticky_ena_q <= STD_LOGIC_VECTOR(redist5_Convert1_out_primWireOut_12_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_Convert1_out_primWireOut_12_enaAnd(LOGICAL,139)
    redist5_Convert1_out_primWireOut_12_enaAnd_q <= redist5_Convert1_out_primWireOut_12_sticky_ena_q and VCC_q;

    -- redist5_Convert1_out_primWireOut_12_rdcnt(COUNTER,131)
    -- low=0, high=8, step=1, init=0
    redist5_Convert1_out_primWireOut_12_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist5_Convert1_out_primWireOut_12_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist5_Convert1_out_primWireOut_12_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist5_Convert1_out_primWireOut_12_rdcnt_i = TO_UNSIGNED(7, 4)) THEN
                redist5_Convert1_out_primWireOut_12_rdcnt_eq <= '1';
            ELSE
                redist5_Convert1_out_primWireOut_12_rdcnt_eq <= '0';
            END IF;
            IF (redist5_Convert1_out_primWireOut_12_rdcnt_eq = '1') THEN
                redist5_Convert1_out_primWireOut_12_rdcnt_i <= redist5_Convert1_out_primWireOut_12_rdcnt_i + 8;
            ELSE
                redist5_Convert1_out_primWireOut_12_rdcnt_i <= redist5_Convert1_out_primWireOut_12_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist5_Convert1_out_primWireOut_12_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist5_Convert1_out_primWireOut_12_rdcnt_i, 4)));

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_PreShift_1(BITSHIFT,58)@0
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_PreShift_1_qint <= GND_q & "0000000000000000000000";
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_PreShift_1_q <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_PreShift_1_qint(22 downto 0);

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_x(LOGICAL,18)@0
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_x_b <= STD_LOGIC_VECTOR("0000000000000" & DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_PreShift_1_q);
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_x_q <= "1" WHEN in_3_noisy_power_spectrum = DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_x_b ELSE "0";

    -- DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x(MUX,21)@0 + 1
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_s <= DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_CmpEQ1_x_q;
    DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_q <= in_3_noisy_power_spectrum;
                WHEN "1" => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_q <= STD_LOGIC_VECTOR("00000000000000" & DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator_Const2_x_q);
                WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- Convert1(BLACKBOX,34)@1
    -- out out_primWireOut@3
    theConvert1 : floatComponent_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_castBlock_typeUA0Zqcd06uqqcdo6u2oct30u
    PORT MAP (
        in_0 => DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_Zero_Eliminator1_Mux1_x_q,
        out_primWireOut => Convert1_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist5_Convert1_out_primWireOut_12_inputreg(DELAY,128)
    redist5_Convert1_out_primWireOut_12_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert1_out_primWireOut, xout => redist5_Convert1_out_primWireOut_12_inputreg_q, clk => clk, aclr => areset );

    -- redist5_Convert1_out_primWireOut_12_wraddr(REG,132)
    redist5_Convert1_out_primWireOut_12_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist5_Convert1_out_primWireOut_12_wraddr_q <= "1000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist5_Convert1_out_primWireOut_12_wraddr_q <= STD_LOGIC_VECTOR(redist5_Convert1_out_primWireOut_12_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist5_Convert1_out_primWireOut_12_mem(DUALMEM,130)
    redist5_Convert1_out_primWireOut_12_mem_ia <= STD_LOGIC_VECTOR(redist5_Convert1_out_primWireOut_12_inputreg_q);
    redist5_Convert1_out_primWireOut_12_mem_aa <= redist5_Convert1_out_primWireOut_12_wraddr_q;
    redist5_Convert1_out_primWireOut_12_mem_ab <= redist5_Convert1_out_primWireOut_12_rdcnt_q;
    redist5_Convert1_out_primWireOut_12_mem_reset0 <= areset;
    redist5_Convert1_out_primWireOut_12_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 9,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 9,
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
        clocken1 => redist5_Convert1_out_primWireOut_12_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist5_Convert1_out_primWireOut_12_mem_reset0,
        clock1 => clk,
        address_a => redist5_Convert1_out_primWireOut_12_mem_aa,
        data_a => redist5_Convert1_out_primWireOut_12_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist5_Convert1_out_primWireOut_12_mem_ab,
        q_b => redist5_Convert1_out_primWireOut_12_mem_iq
    );
    redist5_Convert1_out_primWireOut_12_mem_q <= redist5_Convert1_out_primWireOut_12_mem_iq(31 downto 0);

    -- redist5_Convert1_out_primWireOut_12_outputreg(DELAY,129)
    redist5_Convert1_out_primWireOut_12_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist5_Convert1_out_primWireOut_12_mem_q, xout => redist5_Convert1_out_primWireOut_12_outputreg_q, clk => clk, aclr => areset );

    -- Divide(BLACKBOX,35)@9
    -- in in_0@15
    -- out out_primWireOut@20
    theDivide : floatComponent_DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_divideBlock_typA0Ze2a150g24ad20454ck5u
    PORT MAP (
        in_0 => redist5_Convert1_out_primWireOut_12_outputreg_q,
        in_1 => redist6_Convert_out_primWireOut_1_q,
        out_primWireOut => Divide_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist4_Divide_out_primWireOut_1(DELAY,112)
    redist4_Divide_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Divide_out_primWireOut, xout => redist4_Divide_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- redist2_GPIn1_in_1_noisy_spectrum_valid_21(DELAY,110)
    redist2_GPIn1_in_1_noisy_spectrum_valid_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 21, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_noisy_spectrum_valid, xout => redist2_GPIn1_in_1_noisy_spectrum_valid_21_q, clk => clk, aclr => areset );

    -- GPOut1(GPOUT,38)@21
    out_1_noise_power_snr_valid <= redist2_GPIn1_in_1_noisy_spectrum_valid_21_q;
    out_2_a_posteriori_snr <= redist4_Divide_out_primWireOut_1_q;
    out_3_noise_power_spectrum <= redist7_Convert_out_primWireOut_13_outputreg_q;

END normal;
