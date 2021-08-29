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

-- VHDL created from DSPB_MMSE_dut_input_adapter_FFT_Adapter
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
entity DSPB_MMSE_dut_input_adapter_FFT_Adapter is
    port (
        in_2_real_FFT_In : in std_logic_vector(18 downto 0);  -- sfix19_en11
        in_2_imag_FFT_In : in std_logic_vector(18 downto 0);  -- sfix19_en11
        in_1_FFT_In_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_1_Spectrum_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_Magnitude_Spectrum : out std_logic_vector(17 downto 0);  -- ufix18_en11
        out_3_Power_Spectrum : out std_logic_vector(35 downto 0);  -- ufix36_en22
        out_4_Phase_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_5_Phase : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_input_adapter_FFT_Adapter;

architecture normal of DSPB_MMSE_dut_input_adapter_FFT_Adapter is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFloatIEEE_A0Z054c2a6354c2463b0y05 is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(17 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_8_11A0Z054c2a6354c2463b0y05 is
        port (
            in_0 : in std_logic_vector(18 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_16_2A0Z054c2a6354c2463b0y05 is
        port (
            in_0 : in std_logic_vector(37 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;



    component floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_sqrtBlock_typeSFloatIEEE_A0Zv20054c2a6354c2469bx is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0Z0iuq0cp0ju20cp0jtj0u is
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
    signal Convert1_sel_x_in : STD_LOGIC_VECTOR (37 downto 0);
    signal Convert1_sel_x_b : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Const2_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_x_b : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Const2_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_CmpEQ_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_Const1_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_Const2_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_cnt : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dec : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dn : UNSIGNED (10 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_en : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_i : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_inc : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_l : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_ld : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_s : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_up : UNSIGNED (9 downto 0);
    signal And1_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal And1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CmpEQ_a : STD_LOGIC_VECTOR (9 downto 0);
    signal CmpEQ_q : STD_LOGIC_VECTOR (0 downto 0);
    signal CmpGE1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal CmpGE1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal CmpGE1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal CmpGE1_n : STD_LOGIC_VECTOR (0 downto 0);
    signal Const6_q : STD_LOGIC_VECTOR (8 downto 0);
    signal Convert3_out_primWireOut : STD_LOGIC_VECTOR (17 downto 0);
    signal Convert4_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Convert5_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Convert6_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_q : STD_LOGIC_VECTOR (17 downto 0);
    signal Mux1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal Sqrt_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Trig_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_PreShift_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_PreShift_1_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_PreShift_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_PreShift_1_qint : STD_LOGIC_VECTOR (22 downto 0);
    signal Mult1_Add_Mult2_merged_cma_reset : std_logic;
    type Mult1_Add_Mult2_merged_cma_a0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal Mult1_Add_Mult2_merged_cma_a0 : Mult1_Add_Mult2_merged_cma_a0type(0 to 1);
    attribute preserve : boolean;
    attribute preserve of Mult1_Add_Mult2_merged_cma_a0 : signal is true;
    signal Mult1_Add_Mult2_merged_cma_c0 : Mult1_Add_Mult2_merged_cma_a0type(0 to 1);
    attribute preserve of Mult1_Add_Mult2_merged_cma_c0 : signal is true;
    type Mult1_Add_Mult2_merged_cma_ptype is array(NATURAL range <>) of SIGNED(37 downto 0);
    signal Mult1_Add_Mult2_merged_cma_p : Mult1_Add_Mult2_merged_cma_ptype(0 to 1);
    type Mult1_Add_Mult2_merged_cma_utype is array(NATURAL range <>) of SIGNED(38 downto 0);
    signal Mult1_Add_Mult2_merged_cma_u : Mult1_Add_Mult2_merged_cma_utype(0 to 1);
    signal Mult1_Add_Mult2_merged_cma_w : Mult1_Add_Mult2_merged_cma_utype(0 to 0);
    signal Mult1_Add_Mult2_merged_cma_x : Mult1_Add_Mult2_merged_cma_utype(0 to 0);
    signal Mult1_Add_Mult2_merged_cma_y : Mult1_Add_Mult2_merged_cma_utype(0 to 0);
    signal Mult1_Add_Mult2_merged_cma_s : Mult1_Add_Mult2_merged_cma_utype(0 to 0);
    signal Mult1_Add_Mult2_merged_cma_qq : STD_LOGIC_VECTOR (38 downto 0);
    signal Mult1_Add_Mult2_merged_cma_q : STD_LOGIC_VECTOR (38 downto 0);
    signal Mult1_Add_Mult2_merged_cma_ena0 : std_logic;
    signal Mult1_Add_Mult2_merged_cma_ena1 : std_logic;
    signal redist0_Mult1_Add_Mult2_merged_cma_q_1_q : STD_LOGIC_VECTOR (38 downto 0);
    signal redist1_Trig_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_Sqrt_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_Convert6_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_Convert5_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Convert4_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_Convert3_out_primWireOut_1_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist8_GPIn1_cunroll_x_in_1_FFT_In_Valid_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_GPIn1_cunroll_x_in_1_FFT_In_Valid_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_GPIn1_cunroll_x_in_1_FFT_In_Valid_28_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_outputreg_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_reset0 : std_logic;
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_ia : STD_LOGIC_VECTOR (18 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_iq : STD_LOGIC_VECTOR (18 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_i : signal is true;
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_sticky_ena_q : signal is true;
    signal redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_reset0 : std_logic;
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i : signal is true;
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_eq : std_logic;
    attribute preserve of redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_eq : signal is true;
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_sticky_ena_q : signal is true;
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Const2_x(CONSTANT,10)
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Const2_x_q <= "0000000000000000000001";

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_notEnable(LOGICAL,77)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_nor(LOGICAL,78)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_nor_q <= not (redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_notEnable_q or redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_sticky_ena_q);

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_last(CONSTANT,74)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_last_q <= "01000";

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmp(LOGICAL,75)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmp_b <= STD_LOGIC_VECTOR("0" & redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_q);
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmp_q <= "1" WHEN redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_last_q = redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmp_b ELSE "0";

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmpReg(REG,76)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmpReg_q <= STD_LOGIC_VECTOR(redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmp_q);
        END IF;
    END PROCESS;

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_sticky_ena(REG,79)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_nor_q = "1") THEN
                redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_sticky_ena_q <= STD_LOGIC_VECTOR(redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_enaAnd(LOGICAL,80)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_enaAnd_q <= redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_sticky_ena_q and VCC_q;

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt(COUNTER,72)
    -- low=0, high=9, step=1, init=0
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i = TO_UNSIGNED(8, 4)) THEN
                redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_eq <= '1';
            ELSE
                redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_eq <= '0';
            END IF;
            IF (redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_eq = '1') THEN
                redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i <= redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i + 7;
            ELSE
                redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i <= redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_i, 4)));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- Mult1_Add_Mult2_merged_cma(CHAINMULTADD,47)@0 + 2
    Mult1_Add_Mult2_merged_cma_reset <= areset;
    Mult1_Add_Mult2_merged_cma_ena0 <= '1';
    Mult1_Add_Mult2_merged_cma_ena1 <= Mult1_Add_Mult2_merged_cma_ena0;
    Mult1_Add_Mult2_merged_cma_p(0) <= Mult1_Add_Mult2_merged_cma_a0(0) * Mult1_Add_Mult2_merged_cma_c0(0);
    Mult1_Add_Mult2_merged_cma_p(1) <= Mult1_Add_Mult2_merged_cma_a0(1) * Mult1_Add_Mult2_merged_cma_c0(1);
    Mult1_Add_Mult2_merged_cma_u(0) <= RESIZE(Mult1_Add_Mult2_merged_cma_p(0),39);
    Mult1_Add_Mult2_merged_cma_u(1) <= RESIZE(Mult1_Add_Mult2_merged_cma_p(1),39);
    Mult1_Add_Mult2_merged_cma_w(0) <= Mult1_Add_Mult2_merged_cma_u(0) + Mult1_Add_Mult2_merged_cma_u(1);
    Mult1_Add_Mult2_merged_cma_x(0) <= Mult1_Add_Mult2_merged_cma_w(0);
    Mult1_Add_Mult2_merged_cma_y(0) <= Mult1_Add_Mult2_merged_cma_x(0);
    Mult1_Add_Mult2_merged_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult1_Add_Mult2_merged_cma_a0 <= (others => (others => '0'));
            Mult1_Add_Mult2_merged_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult1_Add_Mult2_merged_cma_ena0 = '1') THEN
                Mult1_Add_Mult2_merged_cma_a0(0) <= RESIZE(SIGNED(in_2_imag_FFT_In),19);
                Mult1_Add_Mult2_merged_cma_a0(1) <= RESIZE(SIGNED(in_2_real_FFT_In),19);
                Mult1_Add_Mult2_merged_cma_c0(0) <= RESIZE(SIGNED(in_2_imag_FFT_In),19);
                Mult1_Add_Mult2_merged_cma_c0(1) <= RESIZE(SIGNED(in_2_real_FFT_In),19);
            END IF;
        END IF;
    END PROCESS;
    Mult1_Add_Mult2_merged_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult1_Add_Mult2_merged_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult1_Add_Mult2_merged_cma_ena1 = '1') THEN
                Mult1_Add_Mult2_merged_cma_s(0) <= Mult1_Add_Mult2_merged_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    Mult1_Add_Mult2_merged_cma_delay : dspba_delay
    GENERIC MAP ( width => 39, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(Mult1_Add_Mult2_merged_cma_s(0)(38 downto 0)), xout => Mult1_Add_Mult2_merged_cma_qq, clk => clk, aclr => areset );
    Mult1_Add_Mult2_merged_cma_q <= STD_LOGIC_VECTOR(Mult1_Add_Mult2_merged_cma_qq(38 downto 0));

    -- redist0_Mult1_Add_Mult2_merged_cma_q_1(DELAY,48)
    redist0_Mult1_Add_Mult2_merged_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 39, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult1_Add_Mult2_merged_cma_q, xout => redist0_Mult1_Add_Mult2_merged_cma_q_1_q, clk => clk, aclr => areset );

    -- Convert1_sel_x(BITSELECT,3)@3
    Convert1_sel_x_in <= STD_LOGIC_VECTOR(redist0_Mult1_Add_Mult2_merged_cma_q_1_q(37 downto 0));
    Convert1_sel_x_b <= STD_LOGIC_VECTOR(Convert1_sel_x_in(35 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_PreShift_1(BITSHIFT,43)@3
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_PreShift_1_qint <= GND_q & "0000000000000000000000";
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_PreShift_1_q <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_PreShift_1_qint(22 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_x(LOGICAL,8)@3
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_x_b <= STD_LOGIC_VECTOR("0000000000000" & DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_PreShift_1_q);
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_x_q <= "1" WHEN Convert1_sel_x_b = DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_x_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x(MUX,11)@3 + 1
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_s <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_CmpEQ1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q <= Convert1_sel_x_b;
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q <= STD_LOGIC_VECTOR("00000000000000" & DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Const2_x_q);
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_wraddr(REG,73)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_wraddr_q <= "1001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_wraddr_q <= STD_LOGIC_VECTOR(redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem(DUALMEM,71)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q);
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_aa <= redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_wraddr_q;
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_ab <= redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_rdcnt_q;
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_reset0 <= areset;
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 4,
        numwords_a => 10,
        width_b => 36,
        widthad_b => 4,
        numwords_b => 10,
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
        clocken1 => redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_reset0,
        clock1 => clk,
        address_a => redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_aa,
        data_a => redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_ab,
        q_b => redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_iq
    );
    redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_q <= redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_iq(35 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_Const1_x(CONSTANT,13)
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_Const1_x_q <= "1000000001";

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_Const2_x(CONSTANT,14)
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_Const2_x_q <= "1000000000";

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_CmpEQ_x(LOGICAL,12)@15
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_CmpEQ_x_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_q = DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_Const2_x_q ELSE "0";

    -- redist8_GPIn1_cunroll_x_in_1_FFT_In_Valid_14(DELAY,56)
    redist8_GPIn1_cunroll_x_in_1_FFT_In_Valid_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_FFT_In_Valid, xout => redist8_GPIn1_cunroll_x_in_1_FFT_In_Valid_14_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x(LOADABLECOUNTER,17)@14 + 1
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_en <= redist8_GPIn1_cunroll_x_in_1_FFT_In_Valid_14_q;
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_ld <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_CmpEQ_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_i <= STD_LOGIC_VECTOR("000000000" & GND_q);
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_s <= STD_LOGIC_VECTOR("000000000" & VCC_q);
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_l <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_Const1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_up <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_cnt + DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_inc;
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dn <= UNSIGNED(resize(unsigned(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_cnt(9 downto 0)), 11)) - UNSIGNED(resize(unsigned(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dec(9 downto 0)), 11));
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_cnt <= "0000000000";
            DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_inc <= "0000000001";
            DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dec <= "1000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_ld = "1") THEN
                IF (FALSE and DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_s(9) = '1') THEN
                    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_inc <= UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_l) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_s);
                    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dec <= UNSIGNED(TO_UNSIGNED(0, 10)) - UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_s);
                ELSE
                    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_inc <= UNSIGNED(TO_UNSIGNED(0, 10)) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_s);
                    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dec <= UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_l) - UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_s);
                END IF;
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_ld = "1" or DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_en = "1") THEN
                IF (DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_ld = "1") THEN
                    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_cnt <= UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_i);
                ELSE
                    IF (DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dn(10) = '1') THEN
                        DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_cnt <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_up;
                    ELSE
                        DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_cnt <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_dn(9 downto 0);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_cnt);

    -- CmpEQ(LOGICAL,22)@15
    CmpEQ_a <= STD_LOGIC_VECTOR("000000000" & VCC_q);
    CmpEQ_q <= "1" WHEN CmpEQ_a = DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_q ELSE "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- Mux1(MUX,37)@15 + 1
    Mux1_s <= CmpEQ_q;
    Mux1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mux1_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (Mux1_s) IS
                WHEN "0" => Mux1_q <= redist11_DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Mux1_x_q_12_mem_q;
                WHEN "1" => Mux1_q <= STD_LOGIC_VECTOR("00000000000000" & DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator1_Const2_x_q);
                WHEN OTHERS => Mux1_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Const2_x(CONSTANT,6)
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Const2_x_q <= "00000000001";

    -- Convert5(BLACKBOX,30)@3
    -- out out_primWireOut@5
    theConvert5 : floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_16_2A0Z054c2a6354c2463b0y05
    PORT MAP (
        in_0 => redist0_Mult1_Add_Mult2_merged_cma_q_1_q(37 downto 0),
        out_primWireOut => Convert5_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist4_Convert5_out_primWireOut_1(DELAY,52)
    redist4_Convert5_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert5_out_primWireOut, xout => redist4_Convert5_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Sqrt(BLACKBOX,38)@6
    -- out out_primWireOut@12
    theSqrt : floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_sqrtBlock_typeSFloatIEEE_A0Zv20054c2a6354c2469bx
    PORT MAP (
        in_0 => redist4_Convert5_out_primWireOut_1_q,
        out_primWireOut => Sqrt_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist2_Sqrt_out_primWireOut_1(DELAY,50)
    redist2_Sqrt_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Sqrt_out_primWireOut, xout => redist2_Sqrt_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Convert3(BLACKBOX,28)@13
    -- out out_primWireOut@14
    theConvert3 : floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFloatIEEE_A0Z054c2a6354c2463b0y05
    PORT MAP (
        in_0 => redist2_Sqrt_out_primWireOut_1_q,
        out_primWireOut => Convert3_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist6_Convert3_out_primWireOut_1(DELAY,54)
    redist6_Convert3_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert3_out_primWireOut, xout => redist6_Convert3_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_PreShift_1(BITSHIFT,42)@15
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_PreShift_1_qint <= GND_q & "00000000000";
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_PreShift_1_q <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_PreShift_1_qint(11 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_x(LOGICAL,4)@15
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_x_b <= STD_LOGIC_VECTOR("000000" & DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_PreShift_1_q);
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_x_q <= "1" WHEN redist6_Convert3_out_primWireOut_1_q = DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_x_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x(MUX,7)@15
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_s <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_CmpEQ1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_s, redist6_Convert3_out_primWireOut_1_q, DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Const2_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_q <= redist6_Convert3_out_primWireOut_1_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_q <= STD_LOGIC_VECTOR("0000000" & DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Const2_x_q);
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- Mux(MUX,36)@15 + 1
    Mux_s <= CmpEQ_q;
    Mux_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mux_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (Mux_s) IS
                WHEN "0" => Mux_q <= DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Mux1_x_q;
                WHEN "1" => Mux_q <= STD_LOGIC_VECTOR("0000000" & DSPB_MMSE_dut_input_adapter_FFT_Adapter_Zero_Eliminator0_Const2_x_q);
                WHEN OTHERS => Mux_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- Const6(CONSTANT,26)
    Const6_q <= "100000000";

    -- CmpGE1(COMPARE,23)@15
    CmpGE1_a <= STD_LOGIC_VECTOR("000" & Const6_q);
    CmpGE1_b <= STD_LOGIC_VECTOR("00" & DSPB_MMSE_dut_input_adapter_FFT_Adapter_counter_LoadableCounter_x_q);
    CmpGE1_o <= STD_LOGIC_VECTOR(UNSIGNED(CmpGE1_a) - UNSIGNED(CmpGE1_b));
    CmpGE1_n(0) <= not (CmpGE1_o(11));

    -- redist9_GPIn1_cunroll_x_in_1_FFT_In_Valid_15(DELAY,57)
    redist9_GPIn1_cunroll_x_in_1_FFT_In_Valid_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist8_GPIn1_cunroll_x_in_1_FFT_In_Valid_14_q, xout => redist9_GPIn1_cunroll_x_in_1_FFT_In_Valid_15_q, clk => clk, aclr => areset );

    -- And1(LOGICAL,21)@15 + 1
    And1_qi <= redist9_GPIn1_cunroll_x_in_1_FFT_In_Valid_15_q and CmpGE1_n;
    And1_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => And1_qi, xout => And1_q, clk => clk, aclr => areset );

    -- GPOut(GPOUT,32)@16
    out_1_Spectrum_Valid <= And1_q;
    out_2_Magnitude_Spectrum <= Mux_q;
    out_3_Power_Spectrum <= Mux1_q;

    -- Convert6(BLACKBOX,31)@0
    -- out out_primWireOut@1
    theConvert6 : floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_8_11A0Z054c2a6354c2463b0y05
    PORT MAP (
        in_0 => in_2_real_FFT_In,
        out_primWireOut => Convert6_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist3_Convert6_out_primWireOut_1(DELAY,51)
    redist3_Convert6_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert6_out_primWireOut, xout => redist3_Convert6_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_notEnable(LOGICAL,67)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_nor(LOGICAL,68)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_nor_q <= not (redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_notEnable_q or redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_sticky_ena_q);

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_last(CONSTANT,64)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_last_q <= "010";

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmp(LOGICAL,65)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmp_b <= STD_LOGIC_VECTOR("0" & redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_q);
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmp_q <= "1" WHEN redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_last_q = redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmp_b ELSE "0";

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmpReg(REG,66)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmpReg_q <= STD_LOGIC_VECTOR(redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_sticky_ena(REG,69)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_nor_q = "1") THEN
                redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_enaAnd(LOGICAL,70)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_enaAnd_q <= redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_sticky_ena_q and VCC_q;

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt(COUNTER,62)
    -- low=0, high=3, step=1, init=0
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_i <= redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_i, 2)));

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_wraddr(REG,63)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_wraddr_q <= "11";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_wraddr_q <= STD_LOGIC_VECTOR(redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem(DUALMEM,61)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_ia <= STD_LOGIC_VECTOR(in_2_imag_FFT_In);
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_aa <= redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_wraddr_q;
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_ab <= redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_rdcnt_q;
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_reset0 <= areset;
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 19,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 19,
        widthad_b => 2,
        numwords_b => 4,
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
        clocken1 => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_reset0,
        clock1 => clk,
        address_a => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_aa,
        data_a => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_ab,
        q_b => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_iq
    );
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_q <= redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_iq(18 downto 0);

    -- redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_outputreg(DELAY,60)
    redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_outputreg : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_mem_q, xout => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_outputreg_q, clk => clk, aclr => areset );

    -- Convert4(BLACKBOX,29)@6
    -- out out_primWireOut@7
    theConvert4 : floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_castBlock_typeSFixed_8_11A0Z054c2a6354c2463b0y05
    PORT MAP (
        in_0 => redist7_GPIn1_cunroll_x_in_2_imag_FFT_In_6_outputreg_q,
        out_primWireOut => Convert4_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist5_Convert4_out_primWireOut_1(DELAY,53)
    redist5_Convert4_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert4_out_primWireOut, xout => redist5_Convert4_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Trig(BLACKBOX,39)@2
    -- in in_0@8
    -- out out_primWireOut@27
    theTrig : floatComponent_DSPB_MMSE_dut_input_adapter_FFT_Adapter_arcTan2Block_typeSFloatIEA0Z0iuq0cp0ju20cp0jtj0u
    PORT MAP (
        in_0 => redist5_Convert4_out_primWireOut_1_q,
        in_1 => redist3_Convert6_out_primWireOut_1_q,
        out_primWireOut => Trig_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist1_Trig_out_primWireOut_1(DELAY,49)
    redist1_Trig_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Trig_out_primWireOut, xout => redist1_Trig_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- redist10_GPIn1_cunroll_x_in_1_FFT_In_Valid_28(DELAY,58)
    redist10_GPIn1_cunroll_x_in_1_FFT_In_Valid_28 : dspba_delay
    GENERIC MAP ( width => 1, depth => 13, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_GPIn1_cunroll_x_in_1_FFT_In_Valid_15_q, xout => redist10_GPIn1_cunroll_x_in_1_FFT_In_Valid_28_q, clk => clk, aclr => areset );

    -- GPOut1(GPOUT,33)@28
    out_4_Phase_Valid <= redist10_GPIn1_cunroll_x_in_1_FFT_In_Valid_28_q;
    out_5_Phase <= redist1_Trig_out_primWireOut_1_q;

END normal;
