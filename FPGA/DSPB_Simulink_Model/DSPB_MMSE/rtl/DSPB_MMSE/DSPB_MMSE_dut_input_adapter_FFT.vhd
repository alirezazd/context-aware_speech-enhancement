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

-- VHDL created from DSPB_MMSE_dut_input_adapter_FFT
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
entity DSPB_MMSE_dut_input_adapter_FFT is
    port (
        out_1_Valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_real_Output : out std_logic_vector(18 downto 0);  -- sfix19_en11
        out_2_imag_Output : out std_logic_vector(18 downto 0);  -- sfix19_en11
        in_1_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_Input : in std_logic_vector(15 downto 0);  -- sfix16_en14
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_input_adapter_FFT;

architecture normal of DSPB_MMSE_dut_input_adapter_FFT is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_imag_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_real_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_imag_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_real_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_imag_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_real_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_imag_sel_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_real_sel_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal Convert_imag_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal Convert_real_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_q : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_q : STD_LOGIC_VECTOR (2 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_i : UNSIGNED (2 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_i : UNSIGNED (1 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_i : UNSIGNED (4 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_i : UNSIGNED (4 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_a : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_i : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_o : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_q : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_Const_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_i : UNSIGNED (3 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_q : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_i : UNSIGNED (6 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_q : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_i : UNSIGNED (6 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_a : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_i : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_o : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_Const_x_q : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_q : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_i : UNSIGNED (5 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_q : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_i : UNSIGNED (5 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_a : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_b : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_i : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_o : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_q : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_Const_x_q : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_i : UNSIGNED (8 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_i : UNSIGNED (8 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_a : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_i : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_o : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_Const_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_And_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_i : UNSIGNED (7 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_i : UNSIGNED (7 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_a : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_i : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_o : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_Const_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_q : STD_LOGIC_VECTOR (2 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_i : UNSIGNED (2 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_i : UNSIGNED (4 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_i : UNSIGNED (8 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_a : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_b : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_i : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_o : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_BitReverse_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_CmpEQ_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroAngle_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroIndex_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_reset0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_aa : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_ab : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_ir : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_r : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q12_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_a : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_o : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Xnor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_ZeroData_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_i : UNSIGNED (8 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ExtractCount_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_reset0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_i : UNSIGNED (9 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_i : UNSIGNED (9 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_i : UNSIGNED (9 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_a : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_b : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_i : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_o : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_Const_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_a : STD_LOGIC_VECTOR (16 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_o : STD_LOGIC_VECTOR (16 downto 0);
    signal dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_q : STD_LOGIC_VECTOR (16 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (21 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q : STD_LOGIC_VECTOR (20 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_a : STD_LOGIC_VECTOR (16 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_b : STD_LOGIC_VECTOR (16 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_o : STD_LOGIC_VECTOR (16 downto 0);
    signal dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_q : STD_LOGIC_VECTOR (16 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x_q : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_a : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_o : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_a : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_o : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_a : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_o : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_a : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_o : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_a : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_o : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select_in : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_keep_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_comp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_hi_select_in : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_hi_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_a : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_o : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select_in : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_keep_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_comp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_hi_select_in : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_hi_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_a : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_o : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select_in : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_keep_select_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_comp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_hi_select_in : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_hi_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select_in : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_keep_select_b : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_comp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_hi_select_in : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_hi_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select_in : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_keep_select_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_comp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_hi_select_in : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_hi_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_a : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_o : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select_in : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_keep_select_b : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_comp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_hi_select_in : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_hi_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_a : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_o : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_reset : std_logic;
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type is array(NATURAL range <>) of SIGNED(17 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0 : signal is true;
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_c0type is array(NATURAL range <>) of SIGNED(16 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_c0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_c0type(0 to 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_c0 : signal is true;
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_p : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_u : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_w : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_x : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_y : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_s : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_qq : STD_LOGIC_VECTOR (34 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_q : STD_LOGIC_VECTOR (34 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ena0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_reset : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_a0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_a0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_c0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_c0type(0 to 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_c0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_p : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_u : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_w : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_x : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_y : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_s : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ptype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_qq : STD_LOGIC_VECTOR (34 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_q : STD_LOGIC_VECTOR (34 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_ena0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_reset : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_a0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_a0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_c0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_c0 : signal is true;
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ptype is array(NATURAL range <>) of SIGNED(35 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_p : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ptype(0 to 1);
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype is array(NATURAL range <>) of SIGNED(43 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_u : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_w : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_x : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_y : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_z : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_s : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ena0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_reset : std_logic;
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_c0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_c0 : signal is true;
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ptype is array(NATURAL range <>) of SIGNED(36 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_p : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ptype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_u : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_w : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_x : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_y : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_z : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_s : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ena0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_reset : std_logic;
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0type is array(NATURAL range <>) of SIGNED(19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_c0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_c0 : signal is true;
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ptype is array(NATURAL range <>) of SIGNED(37 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_p : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ptype(0 to 1);
    type DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype is array(NATURAL range <>) of SIGNED(63 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_u : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_w : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_x : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_y : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_z : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_s : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_qq : STD_LOGIC_VECTOR (38 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_q : STD_LOGIC_VECTOR (38 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ena0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_reset : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_a0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_a0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_c0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_c0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_p : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ptype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_u : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_w : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_x : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_y : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_z : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_s : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_qq : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_q : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_ena0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_reset : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_a0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_a0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_c0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_c0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_p : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ptype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_u : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_w : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_x : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_y : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_z : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_s : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_ena0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_reset : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_a0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_a0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_c0 : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0type(0 to 1);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_c0 : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_p : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ptype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_u : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 1);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_w : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_x : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_y : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_z : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_s : DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_utype(0 to 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_qq : STD_LOGIC_VECTOR (38 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_q : STD_LOGIC_VECTOR (38 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_ena0 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_ena1 : std_logic;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_bias_q : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_trunc_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_trunc_qint : STD_LOGIC_VECTOR (34 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_shift_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_shift_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_trunc_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_trunc_qint : STD_LOGIC_VECTOR (34 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_a : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_o : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_shift_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_shift_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_shift_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_shift_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_bs_in : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_bs_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_shift_q : STD_LOGIC_VECTOR (19 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_shift_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_bs_in : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_bs_b : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_shift_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_shift_qint : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_bs_in : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_bs_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_shift_q : STD_LOGIC_VECTOR (20 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_shift_qint : STD_LOGIC_VECTOR (36 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_bs_in : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_bs_b : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_shift_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_shift_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_bs_in : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_bs_b : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_shift_q : STD_LOGIC_VECTOR (21 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_shift_qint : STD_LOGIC_VECTOR (37 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_bs_in : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_bs_b : STD_LOGIC_VECTOR (22 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_c : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BitExtract1_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BitExtract1_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BitExtract1_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BitExtract1_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BitExtract1_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BitExtract1_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_b : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_c : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_c : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract2_x_merged_bit_select_b : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract2_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract1_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract1_x_merged_bit_select_c : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_c : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b_2_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_GPIn1_in_1_Valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_GPIn1_in_1_Valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist20_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist21_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist28_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist31_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist32_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist33_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist34_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist47_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q_2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist48_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist51_Convert_real_sel_x_b_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist52_Convert_imag_sel_x_b_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : UNSIGNED (7 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : UNSIGNED (7 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : UNSIGNED (6 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : UNSIGNED (6 downto 0);
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : std_logic;
    attribute preserve of DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq : signal is true;
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_GPIn1_in_2_Input_3_mem_reset0 : std_logic;
    signal redist5_GPIn1_in_2_Input_3_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist5_GPIn1_in_2_Input_3_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_GPIn1_in_2_Input_3_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_GPIn1_in_2_Input_3_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist5_GPIn1_in_2_Input_3_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist5_GPIn1_in_2_Input_3_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_GPIn1_in_2_Input_3_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist5_GPIn1_in_2_Input_3_rdcnt_i : signal is true;
    signal redist5_GPIn1_in_2_Input_3_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_GPIn1_in_2_Input_3_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_GPIn1_in_2_Input_3_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_GPIn1_in_2_Input_3_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_GPIn1_in_2_Input_3_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist5_GPIn1_in_2_Input_3_sticky_ena_q : signal is true;
    signal redist5_GPIn1_in_2_Input_3_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_outputreg_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_reset0 : std_logic;
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_aa : STD_LOGIC_VECTOR (6 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_ab : STD_LOGIC_VECTOR (6 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_iq : STD_LOGIC_VECTOR (20 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i : UNSIGNED (6 downto 0);
    attribute preserve of redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i : signal is true;
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_eq : std_logic;
    attribute preserve of redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_eq : signal is true;
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_wraddr_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_last_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmp_b : STD_LOGIC_VECTOR (7 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_outputreg_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_reset0 : std_logic;
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_aa : STD_LOGIC_VECTOR (6 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_ab : STD_LOGIC_VECTOR (6 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_iq : STD_LOGIC_VECTOR (20 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i : UNSIGNED (6 downto 0);
    attribute preserve of redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i : signal is true;
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_eq : std_logic;
    attribute preserve of redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_eq : signal is true;
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_wraddr_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_last_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmp_b : STD_LOGIC_VECTOR (7 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_reset0 : std_logic;
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_ia : STD_LOGIC_VECTOR (21 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_iq : STD_LOGIC_VECTOR (21 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i : UNSIGNED (7 downto 0);
    attribute preserve of redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i : signal is true;
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_eq : std_logic;
    attribute preserve of redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_eq : signal is true;
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_wraddr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_last_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmp_b : STD_LOGIC_VECTOR (8 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_reset0 : std_logic;
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_ia : STD_LOGIC_VECTOR (21 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_iq : STD_LOGIC_VECTOR (21 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_q : STD_LOGIC_VECTOR (21 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i : UNSIGNED (7 downto 0);
    attribute preserve of redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i : signal is true;
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_eq : std_logic;
    attribute preserve of redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_eq : signal is true;
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_wraddr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_last_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmp_b : STD_LOGIC_VECTOR (8 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_outputreg_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_reset0 : std_logic;
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_iq : STD_LOGIC_VECTOR (19 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i : signal is true;
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_eq : std_logic;
    attribute preserve of redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_eq : signal is true;
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_sticky_ena_q : signal is true;
    signal redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_outputreg_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_reset0 : std_logic;
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_iq : STD_LOGIC_VECTOR (19 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i : signal is true;
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_eq : std_logic;
    attribute preserve of redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_eq : signal is true;
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_sticky_ena_q : signal is true;
    signal redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_outputreg_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_reset0 : std_logic;
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_iq : STD_LOGIC_VECTOR (20 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i : signal is true;
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_eq : std_logic;
    attribute preserve of redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_eq : signal is true;
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_wraddr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_outputreg_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_reset0 : std_logic;
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_ia : STD_LOGIC_VECTOR (20 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_iq : STD_LOGIC_VECTOR (20 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i : UNSIGNED (5 downto 0);
    attribute preserve of redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i : signal is true;
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_eq : std_logic;
    attribute preserve of redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_eq : signal is true;
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_wraddr_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_last_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmp_b : STD_LOGIC_VECTOR (6 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_outputreg_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_reset0 : std_logic;
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_ia : STD_LOGIC_VECTOR (18 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_iq : STD_LOGIC_VECTOR (18 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i : signal is true;
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_eq : std_logic;
    attribute preserve of redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_eq : signal is true;
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_sticky_ena_q : signal is true;
    signal redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_outputreg_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_reset0 : std_logic;
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_ia : STD_LOGIC_VECTOR (18 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_iq : STD_LOGIC_VECTOR (18 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i : signal is true;
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_eq : std_logic;
    attribute preserve of redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_eq : signal is true;
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_sticky_ena_q : signal is true;
    signal redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_outputreg_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_reset0 : std_logic;
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_iq : STD_LOGIC_VECTOR (19 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i : signal is true;
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_eq : std_logic;
    attribute preserve of redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_eq : signal is true;
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_sticky_ena_q : signal is true;
    signal redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_outputreg_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_reset0 : std_logic;
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_iq : STD_LOGIC_VECTOR (19 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_q : STD_LOGIC_VECTOR (19 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i : signal is true;
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_eq : std_logic;
    attribute preserve of redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_eq : signal is true;
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_sticky_ena_q : signal is true;
    signal redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_outputreg_q : STD_LOGIC_VECTOR (18 downto 0);
    signal redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_outputreg_q : STD_LOGIC_VECTOR (18 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_Const_x(CONSTANT,262)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_Const_x_q <= "1000000";

    -- redist30_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b_1(DELAY,838)
    redist30_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b, xout => redist30_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_Const_x(CONSTANT,276)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_Const_x_q <= "100000";

    -- redist25_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1(DELAY,833)
    redist25_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b, xout => redist25_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_Const_x(CONSTANT,228)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_Const_x_q <= "10000";

    -- redist34_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b_1(DELAY,842)
    redist34_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b, xout => redist34_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_Const_x(CONSTANT,488)
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_Const_x_q <= "1000000000";

    -- redist18_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b_1(DELAY,826)
    redist18_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b, xout => redist18_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x(COUNTER,482)@0 + 1
    -- low=0, high=1023, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_i <= TO_UNSIGNED(0, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (in_1_Valid = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_i, 10)));

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x(BITSELECT,481)@1
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_Counter_x_q(9 downto 9);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_EdgeDetect_Xor_x(LOGICAL,484)@1
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_EdgeDetect_Xor_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b xor redist18_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_BitExtract1_x_b_1_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x(ADD,485)@1 + 1
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_b <= STD_LOGIC_VECTOR("0000000000" & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_i <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_Const_x_q);
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseDivider_EdgeDetect_Xor_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_o <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_a) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_o(10 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,177)@2
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_x_q(9 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x(BITSELECT,487)@2
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_AddSLoad_PostCast_primWireOut_sel_x_b(9 downto 9);

    -- redist6_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_2(DELAY,814)
    redist6_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b, xout => redist6_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_2_q, clk => clk, aclr => areset );

    -- redist7_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_3(DELAY,815)
    redist7_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist6_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_2_q, xout => redist7_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_3_q, clk => clk, aclr => areset );

    -- redist8_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_5(DELAY,816)
    redist8_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist7_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_3_q, xout => redist8_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_5_q, clk => clk, aclr => areset );

    -- redist9_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_6(DELAY,817)
    redist9_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist8_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_5_q, xout => redist9_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_6_q, clk => clk, aclr => areset );

    -- redist10_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_7(DELAY,818)
    redist10_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_7 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_6_q, xout => redist10_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_7_q, clk => clk, aclr => areset );

    -- redist11_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_9(DELAY,819)
    redist11_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist10_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_7_q, xout => redist11_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_9_q, clk => clk, aclr => areset );

    -- redist12_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_13(DELAY,820)
    redist12_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist11_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_9_q, xout => redist12_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_13_q, clk => clk, aclr => areset );

    -- redist13_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_15(DELAY,821)
    redist13_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist12_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_13_q, xout => redist13_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_15_q, clk => clk, aclr => areset );

    -- redist14_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_16(DELAY,822)
    redist14_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist13_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_15_q, xout => redist14_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_16_q, clk => clk, aclr => areset );

    -- redist15_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_21(DELAY,823)
    redist15_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist14_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_16_q, xout => redist15_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_21_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x(COUNTER,222)@8 + 1
    -- low=0, high=31, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_i <= TO_UNSIGNED(0, 5);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist15_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_21_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_i, 5)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x(BITSELECT,221)@9
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_Counter_x_q(4 downto 4);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_EdgeDetect_Xor_x(LOGICAL,224)@9
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_EdgeDetect_Xor_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b xor redist34_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_BitExtract1_x_b_1_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x(ADD,225)@8 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_b <= STD_LOGIC_VECTOR("00000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_i <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_Const_x_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PD_EdgeDetect_Xor_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_o <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_a) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_o(5 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,57)@9
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_x_q(4 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x(BITSELECT,227)@9
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b(4 downto 4);

    -- redist31_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_1(DELAY,839)
    redist31_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b, xout => redist31_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_1_q, clk => clk, aclr => areset );

    -- redist32_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_3(DELAY,840)
    redist32_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist31_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_1_q, xout => redist32_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_3_q, clk => clk, aclr => areset );

    -- redist33_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_4(DELAY,841)
    redist33_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist32_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_3_q, xout => redist33_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_4_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x(COUNTER,270)@13 + 1
    -- low=0, high=63, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_i <= TO_UNSIGNED(0, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist33_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_4_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_i, 6)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x(BITSELECT,269)@14
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_Counter_x_q(5 downto 5);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_EdgeDetect_Xor_x(LOGICAL,272)@14
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_EdgeDetect_Xor_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b xor redist25_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x(ADD,273)@13 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_b <= STD_LOGIC_VECTOR("000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_i <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_Const_x_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PD_EdgeDetect_Xor_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_o <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_a) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_o(6 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,83)@14
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_x_q(5 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x(BITSELECT,275)@14
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b(5 downto 5);

    -- redist24_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b_1(DELAY,832)
    redist24_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b, xout => redist24_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x(COUNTER,256)@15 + 1
    -- low=0, high=127, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_i <= TO_UNSIGNED(0, 7);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist24_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b_1_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_i, 7)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x(BITSELECT,255)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_Counter_x_q(6 downto 6);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_EdgeDetect_Xor_x(LOGICAL,258)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_EdgeDetect_Xor_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b xor redist30_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_BitExtract1_x_b_1_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x(ADD,259)@15 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_b <= STD_LOGIC_VECTOR("0000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_i <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_Const_x_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PD_EdgeDetect_Xor_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_o <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_a) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_o(7 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,74)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_x_q(6 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x(BITSELECT,261)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b(6 downto 6);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x(COUNTER,435)@16 + 1
    -- low=0, high=511, step=1, init=511
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_i <= TO_UNSIGNED(511, 9);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_i, 9)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ExtractCount_x(BITSELECT,436)@17
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ExtractCount_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Counter_x_q(8 downto 5);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x(LOOKUP,157)@17
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ExtractCount_x_b)
    BEGIN
        -- Begin reserved scope level
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ExtractCount_x_b) IS
            WHEN "0000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "010000000000000000";
            WHEN "0001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "010000000000000000";
            WHEN "0010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "010000000000000000";
            WHEN "0011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "010000000000000000";
            WHEN "0100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "010000000000000000";
            WHEN "0101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "001011010100000101";
            WHEN "0110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "000000000000000000";
            WHEN "0111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "110100101011111011";
            WHEN "1000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "010000000000000000";
            WHEN "1001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "001110110010000011";
            WHEN "1010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "001011010100000101";
            WHEN "1011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "000110000111111000";
            WHEN "1100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "010000000000000000";
            WHEN "1101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "000110000111111000";
            WHEN "1110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "110100101011111011";
            WHEN "1111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= "110001001101111101";
            WHEN OTHERS => -- unreachable
                           DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x(SUB,421)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_PostCast_primWireOut_sel_x(BITSELECT,149)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_x_q(17 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_ZeroData_x(CONSTANT,431)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_ZeroData_x_q <= "000000000000000000";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroAngle_x(CONSTANT,411)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroAngle_x_q <= "000000000";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroIndex_x(CONSTANT,413)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroIndex_x_q <= "00000";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x(COUNTER,400)@9 + 1
    -- low=0, high=511, step=1, init=511
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_i <= TO_UNSIGNED(511, 9);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_i, 9)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select(BITSELECT,803)@10
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_q(4 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Counter_x_q(8 downto 5);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_CmpEQ_x(LOGICAL,406)@10
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_CmpEQ_x_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_b = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroIndex_x_q ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_BitReverse_x(LOGICAL,405)@10
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_BitReverse_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_c(0 downto 0) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_c(1 downto 1) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_c(2 downto 2) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ExtractIndex_x_merged_bit_select_c(3 downto 3);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x(MUX,409)@10
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_s <= redist31_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_1_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroAngle_x_q, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_BitReverse_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroAngle_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_q <= STD_LOGIC_VECTOR("00000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_BitReverse_x_q);
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x(ADD,403)@10 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_PostCast_primWireOut_sel_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_Mux_x_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_i <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_ZeroAngle_x_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_CmpEQ_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_o <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_a) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_o(9 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,148)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_x_q(8 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select(BITSELECT,798)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_PostCast_primWireOut_sel_x_b(8 downto 7);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleAngle_TA_implementation_AddSLoad_PostCast_primWireOut_sel_x_b(6 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x(SUB,429)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_a <= STD_LOGIC_VECTOR("0000000" & GND_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_c);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_a) - UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_o(7 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select(BITSELECT,804)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_q(7 downto 7);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Sub_x_q(6 downto 0);

    -- redist0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_b_2(DELAY,808)
    redist0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_b, xout => redist0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_b_2_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x(MUX,417)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_s <= redist0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_b_2_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_ZeroData_x_q, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_ZeroData_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x(DUALMEM,424)@11 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_aa <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_c;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_ab <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NonZero_x_merged_bit_select_c;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_reset0 <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "BIDIR_DUAL_PORT",
        width_a => 18,
        widthad_a => 7,
        numwords_a => 128,
        width_b => 18,
        widthad_b => 7,
        numwords_b => 128,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_input_adapter_FFT_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_PiA0ZtimizedDualMem_x.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_reset0,
        clock0 => clk,
        address_a => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_aa,
        wren_a => '0',
        q_a => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_ir,
        address_b => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_ab,
        wren_b => '0',
        q_b => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_iq
    );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_iq(17 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_r <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_ir(17 downto 0);

    -- redist2_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b_2(DELAY,810)
    redist2_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b_2 : dspba_delay
    GENERIC MAP ( width => 2, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b, xout => redist2_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b_2_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select(BITSELECT,807)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_b <= redist2_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b_2_q(0 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_c <= redist2_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_BitExtract5_x_merged_bit_select_b_2_q(1 downto 1);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x(MUX,433)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_b;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_r, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_r;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q12_x(LOGICAL,425)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q12_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_b xor DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_c;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x(MUX,419)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q12_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_q, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_PostCast_primWireOut_sel_x_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateCos_PostCast_primWireOut_sel_x_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x(COUNTER,364)@8 + 1
    -- low=0, high=31, step=1, init=31
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_i <= TO_UNSIGNED(31, 5);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist12_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_13_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_i, 5)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x(LOOKUP,122)@9
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_q)
    BEGIN
        -- Begin reserved scope level
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_q) IS
            WHEN "00000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "00001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "00010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "00011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "00100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "00101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "00110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "00111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "01000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "01001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "001110110010000011";
            WHEN "01010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "001011010100000101";
            WHEN "01011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "000110000111111000";
            WHEN "01100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "000000000000000000";
            WHEN "01101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "111001111000001000";
            WHEN "01110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "110100101011111011";
            WHEN "01111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "110001001101111101";
            WHEN "10000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "10001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "001111101100010101";
            WHEN "10010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "001110110010000011";
            WHEN "10011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "001101010011011011";
            WHEN "10100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "001011010100000101";
            WHEN "10101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "001000111000111010";
            WHEN "10110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "000110000111111000";
            WHEN "10111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "000011000111110001";
            WHEN "11000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "010000000000000000";
            WHEN "11001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "001101010011011011";
            WHEN "11010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "000110000111111000";
            WHEN "11011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "111100111000001111";
            WHEN "11100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "110100101011111011";
            WHEN "11101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "110000010011101011";
            WHEN "11110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "110001001101111101";
            WHEN "11111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= "110111000111000110";
            WHEN OTHERS => -- unreachable
                           DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_bias(CONSTANT,776)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_bias_q <= "01";

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x(CHOOSEBITS,493)@3
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract2_x_merged_bit_select_b;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(0 downto 0) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(1 downto 1) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(2 downto 2) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(3 downto 3) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(4 downto 4) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(5 downto 5) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(6 downto 6) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(7 downto 7) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_a(8 downto 8);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x(CHOOSEBITS,492)@3
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract2_x_merged_bit_select_b;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(8 downto 8) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(7 downto 7) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(6 downto 6) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(5 downto 5) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(4 downto 4) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(3 downto 3) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(2 downto 2) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(1 downto 1) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_a(0 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x(COUNTER,479)@2 + 1
    -- low=0, high=1023, step=1, init=511
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_i <= TO_UNSIGNED(511, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_i, 10)));

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract2_x_merged_bit_select(BITSELECT,805)@3
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract2_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_q(8 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract2_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadCounter_x_q(9 downto 9);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x(MUX,491)@3
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_s <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract2_x_merged_bit_select_c;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_s, DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_q, DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm0_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Perm1_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist5_GPIn1_in_2_Input_3_notEnable(LOGICAL,1015)
    redist5_GPIn1_in_2_Input_3_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist5_GPIn1_in_2_Input_3_nor(LOGICAL,1016)
    redist5_GPIn1_in_2_Input_3_nor_q <= not (redist5_GPIn1_in_2_Input_3_notEnable_q or redist5_GPIn1_in_2_Input_3_sticky_ena_q);

    -- redist5_GPIn1_in_2_Input_3_cmpReg(REG,1014)
    redist5_GPIn1_in_2_Input_3_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist5_GPIn1_in_2_Input_3_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist5_GPIn1_in_2_Input_3_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist5_GPIn1_in_2_Input_3_sticky_ena(REG,1017)
    redist5_GPIn1_in_2_Input_3_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist5_GPIn1_in_2_Input_3_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist5_GPIn1_in_2_Input_3_nor_q = "1") THEN
                redist5_GPIn1_in_2_Input_3_sticky_ena_q <= STD_LOGIC_VECTOR(redist5_GPIn1_in_2_Input_3_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_GPIn1_in_2_Input_3_enaAnd(LOGICAL,1018)
    redist5_GPIn1_in_2_Input_3_enaAnd_q <= redist5_GPIn1_in_2_Input_3_sticky_ena_q and VCC_q;

    -- redist5_GPIn1_in_2_Input_3_rdcnt(COUNTER,1012)
    -- low=0, high=1, step=1, init=0
    redist5_GPIn1_in_2_Input_3_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist5_GPIn1_in_2_Input_3_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist5_GPIn1_in_2_Input_3_rdcnt_i <= redist5_GPIn1_in_2_Input_3_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist5_GPIn1_in_2_Input_3_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist5_GPIn1_in_2_Input_3_rdcnt_i, 1)));

    -- redist5_GPIn1_in_2_Input_3_wraddr(REG,1013)
    redist5_GPIn1_in_2_Input_3_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist5_GPIn1_in_2_Input_3_wraddr_q <= "1";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist5_GPIn1_in_2_Input_3_wraddr_q <= STD_LOGIC_VECTOR(redist5_GPIn1_in_2_Input_3_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist5_GPIn1_in_2_Input_3_mem(DUALMEM,1011)
    redist5_GPIn1_in_2_Input_3_mem_ia <= STD_LOGIC_VECTOR(in_2_Input);
    redist5_GPIn1_in_2_Input_3_mem_aa <= redist5_GPIn1_in_2_Input_3_wraddr_q;
    redist5_GPIn1_in_2_Input_3_mem_ab <= redist5_GPIn1_in_2_Input_3_rdcnt_q;
    redist5_GPIn1_in_2_Input_3_mem_reset0 <= areset;
    redist5_GPIn1_in_2_Input_3_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 16,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => redist5_GPIn1_in_2_Input_3_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist5_GPIn1_in_2_Input_3_mem_reset0,
        clock1 => clk,
        address_a => redist5_GPIn1_in_2_Input_3_mem_aa,
        data_a => redist5_GPIn1_in_2_Input_3_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist5_GPIn1_in_2_Input_3_mem_ab,
        q_b => redist5_GPIn1_in_2_Input_3_mem_iq
    );
    redist5_GPIn1_in_2_Input_3_mem_q <= redist5_GPIn1_in_2_Input_3_mem_iq(15 downto 0);

    -- redist3_GPIn1_in_1_Valid_2(DELAY,811)
    redist3_GPIn1_in_1_Valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_Valid, xout => redist3_GPIn1_in_1_Valid_2_q, clk => clk, aclr => areset );

    -- redist4_GPIn1_in_1_Valid_3(DELAY,812)
    redist4_GPIn1_in_1_Valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist3_GPIn1_in_1_Valid_2_q, xout => redist4_GPIn1_in_1_Valid_3_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x(CHOOSEBITS,496)@3
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract1_x_merged_bit_select_c;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(0 downto 0) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(1 downto 1) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(2 downto 2) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(3 downto 3) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(4 downto 4) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(5 downto 5) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(6 downto 6) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(7 downto 7) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_a(8 downto 8);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x(CHOOSEBITS,495)@3
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract1_x_merged_bit_select_c;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(8 downto 8) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(7 downto 7) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(6 downto 6) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(5 downto 5) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(4 downto 4) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(3 downto 3) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(2 downto 2) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(1 downto 1) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_a(0 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x(COUNTER,480)@2 + 1
    -- low=0, high=1023, step=1, init=1023
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_i <= TO_UNSIGNED(1023, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist3_GPIn1_in_1_Valid_2_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_i, 10)));

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract1_x_merged_bit_select(BITSELECT,806)@3
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract1_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_q(9 downto 9);
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract1_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteCounter_x_q(8 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x(MUX,494)@3
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_s <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_BitExtract1_x_merged_bit_select_b;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_s, DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_q, DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm0_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Perm1_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x(DUALMEM,478)@3 + 2
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_ia <= STD_LOGIC_VECTOR(redist5_GPIn1_in_2_Input_3_mem_q);
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_aa <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_WriteAddr_Mux_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_ab <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_ReadAddr_Mux_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_reset0 <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 9,
        numwords_a => 512,
        width_b => 16,
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
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_input_adapter_FFT_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_reset0,
        clock0 => clk,
        address_a => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_aa,
        data_a => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_ia,
        wren_a => redist4_GPIn1_in_1_Valid_3_q(0),
        address_b => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_ab,
        q_b => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_iq
    );
    DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q <= DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_iq(15 downto 0);

    -- redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1(DELAY,827)
    redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q, xout => redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1_q, clk => clk, aclr => areset );

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x(ADD,520)@5
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1_q(15)) & redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q(15)) & DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_o(16 downto 0);

    -- redist20_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_2(DELAY,828)
    redist20_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_2 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1_q, xout => redist20_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_2_q, clk => clk, aclr => areset );

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x(SUB,543)@6
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => redist20_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_2_q(15)) & redist20_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_2_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1_q(15)) & redist19_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_DualMem_x_q_1_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_o(16 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x(COUNTER,182)@4 + 1
    -- low=0, high=1, step=1, init=1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_i <= TO_UNSIGNED(1, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist6_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_2_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_i, 1)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_And_x(LOGICAL,180)@5
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_And_x_q <= redist7_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_3_q and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_Counter_x_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x(MUX,183)@5
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_s, dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_AddSubFused_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x(COUNTER,335)@4 + 1
    -- low=0, high=7, step=1, init=7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_i <= TO_UNSIGNED(7, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist7_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_3_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_i, 3)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x(LOOKUP,108)@5
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_q)
    BEGIN
        -- Begin reserved scope level
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_q) IS
            WHEN "000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= "000000000000000000";
            WHEN "001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= "000000000000000000";
            WHEN "010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= "000000000000000000";
            WHEN "011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= "110000000000000000";
            WHEN "100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= "000000000000000000";
            WHEN "101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= "110100101011111011";
            WHEN "110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= "000000000000000000";
            WHEN "111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= "110100101011111011";
            WHEN OTHERS => -- unreachable
                           DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma(CHAINMULTADD,768)@5 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_reset <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ena0 <= '1';
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ena1 <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ena0;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_p(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0(0) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_c0(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_u(0) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_p(0),35);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_w(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_u(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_x(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_w(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_y(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_x(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0 <= (others => (others => '0'));
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ena0 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_a0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_imag_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_c0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_q),17);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_ena1 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_s(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_delay : dspba_delay
    GENERIC MAP ( width => 35, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_s(0)(34 downto 0)), xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_qq, clk => clk, aclr => areset );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_qq(34 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_trunc(BITSHIFT,777)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_trunc_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_imagMult1_x_cma_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_trunc_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_trunc_qint(34 downto 15);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add(ADD,778)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_trunc_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_trunc_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 2 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_bias_q(1)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_bias_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_a) + SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_shift(BITSHIFT,779)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_shift_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_add_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_shift_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_shift_qint(20 downto 1);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x(BITSELECT,18)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_shift_q(16 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_imag_sel_x(BITSELECT,4)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(redist48_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_2_q(16 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x(ADD,500)@7
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o(17 downto 0);

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x(SUB,523)@7
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o(17 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x(MUX,42)@7 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_sel_x_b);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist48_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_2(DELAY,856)
    redist48_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_2 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q, xout => redist48_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_2_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x(COUNTER,199)@6 + 1
    -- low=0, high=3, step=1, init=3
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_i <= TO_UNSIGNED(3, 2);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist8_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_5_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_i, 2)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BitExtract1_x(BITSELECT,198)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_Counter_x_q(1 downto 1);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_And_x(LOGICAL,197)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_And_x_q <= redist9_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_6_q and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BitExtract1_x_b;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x(MUX,44)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_s, redist48_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_2_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= redist48_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_2_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x(LOOKUP,109)@5
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_q)
    BEGIN
        -- Begin reserved scope level
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Counter_x_q) IS
            WHEN "000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= "010000000000000000";
            WHEN "001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= "010000000000000000";
            WHEN "010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= "010000000000000000";
            WHEN "011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= "000000000000000000";
            WHEN "100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= "010000000000000000";
            WHEN "101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= "001011010100000101";
            WHEN "110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= "010000000000000000";
            WHEN "111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= "110100101011111011";
            WHEN OTHERS => -- unreachable
                           DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma(CHAINMULTADD,769)@5 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_reset <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_ena0 <= '1';
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_ena1 <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_ena0;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_p(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_a0(0) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_c0(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_u(0) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_p(0),35);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_w(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_u(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_x(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_w(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_y(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_x(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_a0 <= (others => (others => '0'));
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_ena0 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_a0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_LUT_real_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_c0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT1_BFU_BFU_implementation_MuxB1_x_q),17);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_ena1 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_s(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_delay : dspba_delay
    GENERIC MAP ( width => 35, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_s(0)(34 downto 0)), xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_qq, clk => clk, aclr => areset );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_qq(34 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_trunc(BITSHIFT,782)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_trunc_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_Mult_realMult1_x_cma_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_trunc_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_trunc_qint(34 downto 15);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add(ADD,783)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_trunc_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_trunc_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 2 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_bias_q(1)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_imag_rnd_x_bias_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_a) + SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_shift(BITSHIFT,784)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_shift_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_add_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_shift_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_shift_qint(20 downto 1);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x(BITSELECT,19)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_rnd_x_shift_q(16 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_real_sel_x(BITSELECT,5)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b <= STD_LOGIC_VECTOR(redist47_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q_2_q(16 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x(ADD,501)@7
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o(17 downto 0);

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x(SUB,524)@7
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o(17 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x(MUX,43)@7 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= STD_LOGIC_VECTOR((17 downto 17 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x_b(16)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle1_ConvertOut_real_sel_x_b);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist47_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q_2(DELAY,855)
    redist47_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q_2 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q, xout => redist47_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q_2_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x(MUX,45)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_s, redist47_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q_2_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= redist47_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_FBMux_real_x_q_2_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x(COUNTER,195)@6 + 1
    -- low=0, high=7, step=1, init=7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_i <= TO_UNSIGNED(7, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist10_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_7_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_i, 3)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select(BITSELECT,799)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_q(2 downto 2);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_Counter_x_q(1 downto 1);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And_x(LOGICAL,189)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_c and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x(MUX,205)@7 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_q;
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_real_sel_x(BITSELECT,3)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_real_sel_x_b <= STD_LOGIC_VECTOR(redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_outputreg_q(17 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x(ADD,499)@8
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_real_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_o(18 downto 0);

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x(SUB,522)@8
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_real_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x(MUX,37)@8 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q <= STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux3_x_q);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4(DELAY,857)
    redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4 : dspba_delay
    GENERIC MAP ( width => 19, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q, xout => redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_q, clk => clk, aclr => areset );

    -- redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_outputreg(DELAY,1149)
    redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_outputreg : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_q, xout => redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_outputreg_q, clk => clk, aclr => areset );

    -- redist1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b_1(DELAY,809)
    redist1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b, xout => redist1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And1_x(LOGICAL,190)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And1_x_q <= redist11_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_9_q and redist1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BitExtract1_x_merged_bit_select_b_1_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x(MUX,39)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_s, redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_q <= redist49_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_real_x_q_4_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_real_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_hi_select(BITSELECT,725)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_hi_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_q(1 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_hi_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_hi_select_in(1 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select(BITSELECT,722)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_q(0 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select_in(0 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_comp(LOGICAL,724)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_comp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select_b = VCC_q ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux(MUX,727)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_comp_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select_b, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_hi_select_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_round_select_b;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_hi_select_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_keep_select(BITSELECT,723)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_keep_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_real_x_q(18 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add(ADD,728)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_keep_select_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_keep_select_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_mux_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_a) + SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_sel_x(BITSELECT,21)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_q(17 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x(CONSTANT,594)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x_q <= "011111111111111111";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x(COMPARE,599)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_o(20));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_x(LOGICAL,538)@8
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_hcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x(CONSTANT,596)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x_q <= "100000000000000000";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x(COMPARE,601)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_o(20));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_x(LOGICAL,515)@8
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_lcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x(SELECTOR,603)@8 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_sel_x_b);
            IF (dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x_q);
            END IF;
            IF (dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x(LOOKUP,121)@9
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_q)
    BEGIN
        -- Begin reserved scope level
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Counter_x_q) IS
            WHEN "00000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "00001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "00010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "00011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "00100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "00101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "00110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "00111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "01000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "01001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "111001111000001000";
            WHEN "01010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110100101011111011";
            WHEN "01011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110001001101111101";
            WHEN "01100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110000000000000000";
            WHEN "01101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110001001101111101";
            WHEN "01110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110100101011111011";
            WHEN "01111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "111001111000001000";
            WHEN "10000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "10001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "111100111000001111";
            WHEN "10010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "111001111000001000";
            WHEN "10011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110111000111000110";
            WHEN "10100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110100101011111011";
            WHEN "10101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110010101100100101";
            WHEN "10110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110001001101111101";
            WHEN "10111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110000010011101011";
            WHEN "11000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000000000000000000";
            WHEN "11001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110111000111000110";
            WHEN "11010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110001001101111101";
            WHEN "11011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110000010011101011";
            WHEN "11100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "110100101011111011";
            WHEN "11101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "111100111000001111";
            WHEN "11110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "000110000111111000";
            WHEN "11111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= "001101010011011011";
            WHEN OTHERS => -- unreachable
                           DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x(SUB,208)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_real_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x(BITSELECT,49)@7
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_x_q(17 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x(MUX,206)@7 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_FFT1_BFU_BFU_implementation_OutMux_imag_x_q;
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_imag_sel_x(BITSELECT,2)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_outputreg_q(17 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x(ADD,498)@8
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_imag_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_o(18 downto 0);

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x(SUB,521)@8
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_imag_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x(MUX,36)@8 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q <= STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_TrivialTwiddle_Mux4_x_q);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4(DELAY,858)
    redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4 : dspba_delay
    GENERIC MAP ( width => 19, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q, xout => redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_q, clk => clk, aclr => areset );

    -- redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_outputreg(DELAY,1150)
    redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_outputreg : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_q, xout => redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x(MUX,38)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_s, redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_q <= redist50_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_FBMux_imag_x_q_4_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_AddSubFused1_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_hi_select(BITSELECT,717)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_hi_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_q(1 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_hi_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_hi_select_in(1 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select(BITSELECT,714)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_q(0 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select_in(0 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_comp(LOGICAL,716)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_comp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select_b = VCC_q ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux(MUX,719)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_comp_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select_b, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_hi_select_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_round_select_b;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_hi_select_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_keep_select(BITSELECT,715)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_keep_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_OutMux_imag_x_q(18 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add(ADD,720)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_keep_select_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_keep_select_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("0000000000000000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_mux_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_a) + SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_sel_x(BITSELECT,20)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_q(17 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x(COMPARE,593)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_o(20));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_x(LOGICAL,537)@8
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x(COMPARE,595)@8
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_o(20));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_x(LOGICAL,514)@8
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x(SELECTOR,597)@8 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_sel_x_b);
            IF (dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_hconst_x_q);
            END IF;
            IF (dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_lconst_x_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma(CHAINMULTADD,773)@9 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_reset <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_ena0 <= '1';
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_ena1 <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_ena0;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_p(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_a0(0) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_c0(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_p(1) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_a0(1) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_c0(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_u(0) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_p(0),44);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_u(1) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_p(1),44);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_w(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_u(1) - DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_u(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_x(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_w(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_y(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_x(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_z(0) <= "00000000000000000000000000001000000000000000";
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_a0 <= (others => (others => '0'));
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_ena0 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_a0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_a0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_c0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_c0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q),18);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_ena1 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_s(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_z(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_s(0)(36 downto 0)), xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_qq, clk => clk, aclr => areset );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_qq(36 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_shift(BITSHIFT,788)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_shift_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_realMult2_x_merged_cma_q(35 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_shift_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_shift_qint(35 downto 16);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_bs(BITSELECT,789)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_bs_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_shift_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_shift_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_bs_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_bs_in(20 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x(BITSELECT,23)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_rnd_x_bs_b(17 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_real_sel_x(BITSELECT,9)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b <= STD_LOGIC_VECTOR(redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_outputreg_q(17 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x(ADD,505)@11
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o(18 downto 0);

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_notEnable(LOGICAL,1112)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_nor(LOGICAL,1113)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_nor_q <= not (redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_notEnable_q or redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_sticky_ena_q);

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_last(CONSTANT,1109)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_last_q <= "011";

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmp(LOGICAL,1110)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmp_q <= "1" WHEN redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_last_q = redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_q ELSE "0";

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmpReg(REG,1111)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmpReg_q <= STD_LOGIC_VECTOR(redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_sticky_ena(REG,1114)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_nor_q = "1") THEN
                redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_enaAnd(LOGICAL,1115)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_enaAnd_q <= redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_sticky_ena_q and VCC_q;

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt(COUNTER,1107)
    -- low=0, high=4, step=1, init=0
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_eq <= '1';
            ELSE
                redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_eq <= '0';
            END IF;
            IF (redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_eq = '1') THEN
                redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i <= redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i + 4;
            ELSE
                redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i <= redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_i, 3)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x(SUB,528)@11
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x(MUX,60)@11 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_real_sel_x_b);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_wraddr(REG,1108)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_wraddr_q <= STD_LOGIC_VECTOR(redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem(DUALMEM,1106)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q);
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_aa <= redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_wraddr_q;
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_ab <= redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_rdcnt_q;
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_reset0 <= areset;
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 19,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 19,
        widthad_b => 3,
        numwords_b => 5,
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
        clocken1 => redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_reset0,
        clock1 => clk,
        address_a => redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_aa,
        data_a => redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_ab,
        q_b => redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_iq
    );
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_q <= redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_iq(18 downto 0);

    -- redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_outputreg(DELAY,1105)
    redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_outputreg : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_mem_q, xout => redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x(COUNTER,233)@10 + 1
    -- low=0, high=15, step=1, init=15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_i <= TO_UNSIGNED(15, 4);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist13_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_15_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_i, 4)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BitExtract1_x(BITSELECT,232)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_Counter_x_q(3 downto 3);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_And_x(LOGICAL,231)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_And_x_q <= redist14_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_16_q and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BitExtract1_x_b;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x(MUX,62)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_s, redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= redist43_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_real_x_q_8_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x(SUB,242)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 1 => GND_q(0)) & GND_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_o(19 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x(BITSELECT,66)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_x_q(18 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma(CHAINMULTADD,770)@9 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_reset <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ena0 <= '1';
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ena1 <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ena0;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_p(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_a0(0) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_c0(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_p(1) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_a0(1) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_c0(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_u(0) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_p(0),44);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_u(1) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_p(1),44);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_w(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_u(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_u(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_x(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_w(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_y(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_x(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_z(0) <= "00000000000000000000000000001000000000000000";
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_a0 <= (others => (others => '0'));
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ena0 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_a0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_real_mux_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_a0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertIn_imag_mux_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_c0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_imag_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_c0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_LUT_real_x_q),18);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_ena1 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_s(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_z(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_delay : dspba_delay
    GENERIC MAP ( width => 37, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_s(0)(36 downto 0)), xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_qq, clk => clk, aclr => areset );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_qq(36 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_shift(BITSHIFT,786)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_shift_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_Mult_imagMult2_x_merged_cma_q(35 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_shift_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_shift_qint(35 downto 16);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_bs(BITSELECT,787)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_bs_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_shift_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_shift_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_bs_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_bs_in(20 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x(BITSELECT,22)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_rnd_x_bs_b(17 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_imag_sel_x(BITSELECT,8)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_outputreg_q(17 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x(ADD,504)@11
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o(18 downto 0);

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_notEnable(LOGICAL,1123)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_nor(LOGICAL,1124)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_nor_q <= not (redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_notEnable_q or redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_sticky_ena_q);

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_last(CONSTANT,1120)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_last_q <= "011";

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmp(LOGICAL,1121)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmp_q <= "1" WHEN redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_last_q = redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_q ELSE "0";

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmpReg(REG,1122)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmpReg_q <= STD_LOGIC_VECTOR(redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmp_q);
        END IF;
    END PROCESS;

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_sticky_ena(REG,1125)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_nor_q = "1") THEN
                redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_sticky_ena_q <= STD_LOGIC_VECTOR(redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_enaAnd(LOGICAL,1126)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_enaAnd_q <= redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_sticky_ena_q and VCC_q;

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt(COUNTER,1118)
    -- low=0, high=4, step=1, init=0
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_eq <= '1';
            ELSE
                redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_eq <= '0';
            END IF;
            IF (redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_eq = '1') THEN
                redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i <= redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i + 4;
            ELSE
                redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i <= redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_i, 3)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x(SUB,527)@11
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x(MUX,59)@11 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x_b(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle2_ConvertOut_imag_sel_x_b);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_wraddr(REG,1119)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_wraddr_q <= STD_LOGIC_VECTOR(redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem(DUALMEM,1117)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q);
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_aa <= redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_wraddr_q;
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_ab <= redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_rdcnt_q;
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_reset0 <= areset;
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 19,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 19,
        widthad_b => 3,
        numwords_b => 5,
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
        clocken1 => redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_reset0,
        clock1 => clk,
        address_a => redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_aa,
        data_a => redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_ab,
        q_b => redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_iq
    );
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_q <= redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_iq(18 downto 0);

    -- redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_outputreg(DELAY,1116)
    redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_outputreg : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_mem_q, xout => redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x(MUX,61)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_s, redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= redist44_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_8_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist16_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_23(DELAY,824)
    redist16_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist15_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_21_q, xout => redist16_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_23_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x(COUNTER,219)@10 + 1
    -- low=0, high=31, step=1, init=31
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_i <= TO_UNSIGNED(31, 5);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist16_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_23_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_i, 5)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BitExtract1_x_merged_bit_select(BITSELECT,800)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BitExtract1_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_q(4 downto 4);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BitExtract1_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_Counter_x_q(3 downto 3);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And_x(LOGICAL,213)@11
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BitExtract1_x_merged_bit_select_c and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BitExtract1_x_merged_bit_select_b;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x(MUX,240)@11 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_q;
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_imag_sel_x(BITSELECT,6)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_outputreg_q(18 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x(ADD,502)@12
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_imag_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_o(19 downto 0);

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_notEnable(LOGICAL,1145)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_nor(LOGICAL,1146)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_nor_q <= not (redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_notEnable_q or redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_sticky_ena_q);

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_last(CONSTANT,1142)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_last_q <= "01011";

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmp(LOGICAL,1143)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmp_b <= STD_LOGIC_VECTOR("0" & redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_q);
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmp_q <= "1" WHEN redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_last_q = redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmp_b ELSE "0";

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmpReg(REG,1144)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmpReg_q <= STD_LOGIC_VECTOR(redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmp_q);
        END IF;
    END PROCESS;

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_sticky_ena(REG,1147)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_nor_q = "1") THEN
                redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_sticky_ena_q <= STD_LOGIC_VECTOR(redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_enaAnd(LOGICAL,1148)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_enaAnd_q <= redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_sticky_ena_q and VCC_q;

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt(COUNTER,1140)
    -- low=0, high=12, step=1, init=0
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i = TO_UNSIGNED(11, 4)) THEN
                redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_eq <= '1';
            ELSE
                redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_eq <= '0';
            END IF;
            IF (redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_eq = '1') THEN
                redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i <= redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i + 4;
            ELSE
                redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i <= redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_i, 4)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x(SUB,525)@12
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_imag_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_o(19 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x(MUX,50)@12 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q <= STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux4_x_q);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_wraddr(REG,1141)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_wraddr_q <= "1100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_wraddr_q <= STD_LOGIC_VECTOR(redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem(DUALMEM,1139)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q);
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_aa <= redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_wraddr_q;
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_ab <= redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_rdcnt_q;
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_reset0 <= areset;
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 20,
        widthad_a => 4,
        numwords_a => 13,
        width_b => 20,
        widthad_b => 4,
        numwords_b => 13,
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
        clocken1 => redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_reset0,
        clock1 => clk,
        address_a => redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_aa,
        data_a => redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_ab,
        q_b => redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_iq
    );
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_q <= redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_iq(19 downto 0);

    -- redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_outputreg(DELAY,1138)
    redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_outputreg : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_mem_q, xout => redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_outputreg_q, clk => clk, aclr => areset );

    -- redist17_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_24(DELAY,825)
    redist17_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist16_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_23_q, xout => redist17_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_24_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x(LOGICAL,214)@11 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_qi <= redist17_DSPB_MMSE_dut_input_adapter_FFT_bit_reversal_PulseMultiplier_BitExtract_x_b_24_q and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BitExtract1_x_merged_bit_select_b;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_qi, xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x(MUX,52)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_s, redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_q <= redist46_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_imag_x_q_16_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_hi_select(BITSELECT,733)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_hi_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_q(1 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_hi_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_hi_select_in(1 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select(BITSELECT,730)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_q(0 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select_in(0 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_comp(LOGICAL,732)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_comp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select_b = VCC_q ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux(MUX,735)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_comp_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select_b, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_hi_select_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_round_select_b;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_hi_select_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_keep_select(BITSELECT,731)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_keep_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_imag_x_q(19 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add(ADD,736)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_keep_select_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_keep_select_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_mux_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_a) + SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_o(19 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_sel_x(BITSELECT,24)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_q(18 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x(CONSTANT,608)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x_q <= "0111111111111111111";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x(COMPARE,607)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_o(21));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_x(LOGICAL,539)@12
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x(CONSTANT,610)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x_q <= "1000000000000000000";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x(COMPARE,609)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_o(21));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_x(LOGICAL,516)@12
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x(SELECTOR,611)@12 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_sel_x_b);
            IF (dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x_q);
            END IF;
            IF (dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x(SUB,422)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_q(17)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_o(18 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_PostCast_primWireOut_sel_x(BITSELECT,150)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_x_q(17 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x(MUX,434)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_b;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_q, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_r)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Mux1_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_OptimizedDualMem_x_r;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Xnor_x(LOGICAL,430)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Xnor_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Q13_x_merged_bit_select_c xor GND_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x(MUX,420)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_Xnor_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_q, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_PostCast_primWireOut_sel_x_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_SwapSinCos_Mux1_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegateSin_PostCast_primWireOut_sel_x_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x(MUX,239)@11 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_real_x_q;
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_OutMux_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_real_sel_x(BITSELECT,7)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_real_sel_x_b <= STD_LOGIC_VECTOR(redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_outputreg_q(18 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x(ADD,503)@12
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_real_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_o(19 downto 0);

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_notEnable(LOGICAL,1134)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_nor(LOGICAL,1135)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_nor_q <= not (redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_notEnable_q or redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_sticky_ena_q);

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_last(CONSTANT,1131)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_last_q <= "01011";

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmp(LOGICAL,1132)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmp_b <= STD_LOGIC_VECTOR("0" & redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_q);
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmp_q <= "1" WHEN redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_last_q = redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmp_b ELSE "0";

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmpReg(REG,1133)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmpReg_q <= STD_LOGIC_VECTOR(redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmp_q);
        END IF;
    END PROCESS;

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_sticky_ena(REG,1136)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_nor_q = "1") THEN
                redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_sticky_ena_q <= STD_LOGIC_VECTOR(redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_enaAnd(LOGICAL,1137)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_enaAnd_q <= redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_sticky_ena_q and VCC_q;

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt(COUNTER,1129)
    -- low=0, high=12, step=1, init=0
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i = TO_UNSIGNED(11, 4)) THEN
                redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_eq <= '1';
            ELSE
                redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_eq <= '0';
            END IF;
            IF (redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_eq = '1') THEN
                redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i <= redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i + 4;
            ELSE
                redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i <= redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_i, 4)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x(SUB,526)@12
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_real_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_o(19 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x(MUX,51)@12 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q <= STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_TrivialTwiddle_Mux3_x_q);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_wraddr(REG,1130)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_wraddr_q <= "1100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_wraddr_q <= STD_LOGIC_VECTOR(redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem(DUALMEM,1128)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q);
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_aa <= redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_wraddr_q;
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_ab <= redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_rdcnt_q;
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_reset0 <= areset;
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 20,
        widthad_a => 4,
        numwords_a => 13,
        width_b => 20,
        widthad_b => 4,
        numwords_b => 13,
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
        clocken1 => redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_reset0,
        clock1 => clk,
        address_a => redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_aa,
        data_a => redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_ab,
        q_b => redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_iq
    );
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_q <= redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_iq(19 downto 0);

    -- redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_outputreg(DELAY,1127)
    redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_outputreg : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_mem_q, xout => redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x(MUX,53)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_s, redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_q <= redist45_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_FBMux_real_x_q_16_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_AddSubFused1_real_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_hi_select(BITSELECT,741)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_hi_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_q(1 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_hi_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_hi_select_in(1 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select(BITSELECT,738)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_q(0 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select_in(0 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_comp(LOGICAL,740)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_comp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select_b = VCC_q ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux(MUX,743)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_comp_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select_b, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_hi_select_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_round_select_b;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_hi_select_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_keep_select(BITSELECT,739)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_keep_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_OutMux_real_x_q(19 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add(ADD,744)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_keep_select_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_keep_select_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("00000000000000000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_mux_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_a) + SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_o(19 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_sel_x(BITSELECT,25)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_q(18 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x(COMPARE,613)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_o(21));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_x(LOGICAL,540)@12
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_hcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x(COMPARE,615)@12
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x_q(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_o(21));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_x(LOGICAL,517)@12
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_lcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x(SELECTOR,617)@12 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_sel_x_b);
            IF (dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_hconst_x_q);
            END IF;
            IF (dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_lconst_x_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma(CHAINMULTADD,771)@13 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_reset <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ena0 <= '1';
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ena1 <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ena0;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_p(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0(0) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_c0(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_p(1) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0(1) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_c0(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_u(0) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_p(0),44);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_u(1) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_p(1),44);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_w(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_u(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_u(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_x(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_w(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_y(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_x(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_z(0) <= "00000000000000000000000000001000000000000000";
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0 <= (others => (others => '0'));
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ena0 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x_q),19);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_a0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x_q),19);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_c0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_c0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_q),18);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_ena1 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_s(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_z(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_s(0)(37 downto 0)), xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_qq, clk => clk, aclr => areset );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_qq(37 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_shift(BITSHIFT,790)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_shift_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_imagMult2_x_merged_cma_q(36 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_shift_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_shift_qint(36 downto 16);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_bs(BITSELECT,791)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_bs_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_shift_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_shift_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_bs_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_bs_in(21 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x(BITSELECT,26)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_rnd_x_bs_b(18 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_imag_sel_x(BITSELECT,12)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_outputreg_q(18 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x(ADD,508)@15
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o(19 downto 0);

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_notEnable(LOGICAL,1079)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_nor(LOGICAL,1080)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_nor_q <= not (redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_notEnable_q or redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_sticky_ena_q);

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_last(CONSTANT,1076)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_last_q <= "011011";

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmp(LOGICAL,1077)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmp_b <= STD_LOGIC_VECTOR("0" & redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_q);
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmp_q <= "1" WHEN redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_last_q = redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmp_b ELSE "0";

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmpReg(REG,1078)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmpReg_q <= STD_LOGIC_VECTOR(redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmp_q);
        END IF;
    END PROCESS;

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_sticky_ena(REG,1081)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_nor_q = "1") THEN
                redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_sticky_ena_q <= STD_LOGIC_VECTOR(redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_enaAnd(LOGICAL,1082)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_enaAnd_q <= redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_sticky_ena_q and VCC_q;

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt(COUNTER,1074)
    -- low=0, high=28, step=1, init=0
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i = TO_UNSIGNED(27, 5)) THEN
                redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_eq <= '1';
            ELSE
                redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_eq <= '0';
            END IF;
            IF (redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_eq = '1') THEN
                redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i <= redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i + 4;
            ELSE
                redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i <= redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_i, 5)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x(SUB,531)@15
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o(19 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x(MUX,76)@15 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_s <= redist26_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q_2_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_imag_sel_x_b);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_wraddr(REG,1075)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_wraddr_q <= "11100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_wraddr_q <= STD_LOGIC_VECTOR(redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem(DUALMEM,1073)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q);
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_aa <= redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_wraddr_q;
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_ab <= redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_rdcnt_q;
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_reset0 <= areset;
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 20,
        widthad_a => 5,
        numwords_a => 29,
        width_b => 20,
        widthad_b => 5,
        numwords_b => 29,
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
        clocken1 => redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_reset0,
        clock1 => clk,
        address_a => redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_aa,
        data_a => redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_ab,
        q_b => redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_iq
    );
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_q <= redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_iq(19 downto 0);

    -- redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_outputreg(DELAY,1072)
    redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_outputreg : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_mem_q, xout => redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x(COUNTER,267)@12 + 1
    -- low=0, high=63, step=1, init=63
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_i <= TO_UNSIGNED(63, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist32_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_3_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_i, 6)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BitExtract1_x(BITSELECT,266)@13
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_Counter_x_q(5 downto 5);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x(LOGICAL,265)@13 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_qi <= redist33_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_DelayValidBlock_PM_BitExtract_x_b_4_q and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BitExtract1_x_b;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_qi, xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q, clk => clk, aclr => areset );

    -- redist26_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q_2(DELAY,834)
    redist26_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q, xout => redist26_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q_2_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x(MUX,78)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_s <= redist26_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q_2_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_s, redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= redist40_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_32_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma(CHAINMULTADD,774)@13 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_reset <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_ena0 <= '1';
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_ena1 <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_ena0;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_p(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_a0(0) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_c0(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_p(1) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_a0(1) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_c0(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_u(0) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_p(0),44);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_u(1) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_p(1),44);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_w(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_u(1) - DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_u(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_x(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_w(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_y(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_x(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_z(0) <= "00000000000000000000000000001000000000000000";
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_a0 <= (others => (others => '0'));
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_ena0 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_a0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_imag_mux_x_q),19);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_a0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertIn_real_mux_x_q),19);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_c0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegSin_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_c0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_TwiddleRom_NegCos_x_q),18);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_ena1 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_s(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_z(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_s(0)(37 downto 0)), xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_qq, clk => clk, aclr => areset );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_qq(37 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_shift(BITSHIFT,792)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_shift_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_Mult_realMult2_x_merged_cma_q(36 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_shift_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_shift_qint(36 downto 16);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_bs(BITSELECT,793)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_bs_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_shift_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_shift_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_bs_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_bs_in(21 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x(BITSELECT,27)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_rnd_x_bs_b(18 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_real_sel_x(BITSELECT,13)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b <= STD_LOGIC_VECTOR(redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_outputreg_q(18 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x(ADD,509)@15
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o(19 downto 0);

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_notEnable(LOGICAL,1068)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_nor(LOGICAL,1069)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_nor_q <= not (redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_notEnable_q or redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_sticky_ena_q);

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_last(CONSTANT,1065)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_last_q <= "011011";

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmp(LOGICAL,1066)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmp_b <= STD_LOGIC_VECTOR("0" & redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_q);
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmp_q <= "1" WHEN redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_last_q = redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmp_b ELSE "0";

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmpReg(REG,1067)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmpReg_q <= STD_LOGIC_VECTOR(redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmp_q);
        END IF;
    END PROCESS;

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_sticky_ena(REG,1070)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_nor_q = "1") THEN
                redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_sticky_ena_q <= STD_LOGIC_VECTOR(redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_enaAnd(LOGICAL,1071)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_enaAnd_q <= redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_sticky_ena_q and VCC_q;

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt(COUNTER,1063)
    -- low=0, high=28, step=1, init=0
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i = TO_UNSIGNED(27, 5)) THEN
                redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_eq <= '1';
            ELSE
                redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_eq <= '0';
            END IF;
            IF (redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_eq = '1') THEN
                redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i <= redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i + 4;
            ELSE
                redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i <= redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_i, 5)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x(SUB,532)@15
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o(19 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x(MUX,77)@15 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_s <= redist26_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q_2_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= STD_LOGIC_VECTOR((19 downto 19 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x_b(18)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle3_ConvertOut_real_sel_x_b);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_wraddr(REG,1064)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_wraddr_q <= "11100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_wraddr_q <= STD_LOGIC_VECTOR(redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem(DUALMEM,1062)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q);
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_aa <= redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_wraddr_q;
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_ab <= redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_rdcnt_q;
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_reset0 <= areset;
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 20,
        widthad_a => 5,
        numwords_a => 29,
        width_b => 20,
        widthad_b => 5,
        numwords_b => 29,
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
        clocken1 => redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_reset0,
        clock1 => clk,
        address_a => redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_aa,
        data_a => redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_ab,
        q_b => redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_iq
    );
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_q <= redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_iq(19 downto 0);

    -- redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_outputreg(DELAY,1061)
    redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_outputreg : dspba_delay
    GENERIC MAP ( width => 20, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_mem_q, xout => redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x(MUX,79)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_s <= redist26_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_And_x_q_2_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_s, redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= redist39_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_FBMux_real_x_q_32_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x(COUNTER,253)@14 + 1
    -- low=0, high=127, step=1, init=127
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_i <= TO_UNSIGNED(127, 7);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_i, 7)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BitExtract1_x_merged_bit_select(BITSELECT,801)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BitExtract1_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_q(6 downto 6);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BitExtract1_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_Counter_x_q(5 downto 5);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And_x(LOGICAL,247)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BitExtract1_x_merged_bit_select_c and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BitExtract1_x_merged_bit_select_b;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x(MUX,283)@15 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_q;
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_real_sel_x(BITSELECT,11)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_real_sel_x_b <= STD_LOGIC_VECTOR(redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_outputreg_q(19 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x(ADD,507)@16
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_real_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_o(20 downto 0);

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_notEnable(LOGICAL,1090)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_nor(LOGICAL,1091)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_nor_q <= not (redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_notEnable_q or redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_sticky_ena_q);

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_last(CONSTANT,1087)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_last_q <= "0111011";

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmp(LOGICAL,1088)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmp_b <= STD_LOGIC_VECTOR("0" & redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_q);
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmp_q <= "1" WHEN redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_last_q = redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmp_b ELSE "0";

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmpReg(REG,1089)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmpReg_q <= STD_LOGIC_VECTOR(redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmp_q);
        END IF;
    END PROCESS;

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_sticky_ena(REG,1092)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_nor_q = "1") THEN
                redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_sticky_ena_q <= STD_LOGIC_VECTOR(redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_enaAnd(LOGICAL,1093)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_enaAnd_q <= redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_sticky_ena_q and VCC_q;

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt(COUNTER,1085)
    -- low=0, high=60, step=1, init=0
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i <= TO_UNSIGNED(0, 6);
            redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i = TO_UNSIGNED(59, 6)) THEN
                redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_eq <= '1';
            ELSE
                redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_eq <= '0';
            END IF;
            IF (redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_eq = '1') THEN
                redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i <= redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i + 4;
            ELSE
                redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i <= redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_i, 6)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x(SUB,530)@16
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_real_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x(MUX,68)@16 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q <= STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux3_x_q);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_wraddr(REG,1086)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_wraddr_q <= "111100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_wraddr_q <= STD_LOGIC_VECTOR(redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem(DUALMEM,1084)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q);
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_aa <= redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_wraddr_q;
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_ab <= redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_rdcnt_q;
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_reset0 <= areset;
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 21,
        widthad_a => 6,
        numwords_a => 61,
        width_b => 21,
        widthad_b => 6,
        numwords_b => 61,
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
        clocken1 => redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_reset0,
        clock1 => clk,
        address_a => redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_aa,
        data_a => redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_ab,
        q_b => redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_iq
    );
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_q <= redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_iq(20 downto 0);

    -- redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_outputreg(DELAY,1083)
    redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_outputreg : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_mem_q, xout => redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x(LOGICAL,248)@15 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_qi <= redist24_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_DelayValidBlock_PM_BitExtract_x_b_1_q and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BitExtract1_x_merged_bit_select_b;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_qi, xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x(MUX,70)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_s, redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_q <= redist41_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_real_x_q_64_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_real_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_hi_select(BITSELECT,757)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_hi_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_q(1 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_hi_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_hi_select_in(1 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select(BITSELECT,754)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_q(0 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select_in(0 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_comp(LOGICAL,756)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_comp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select_b = VCC_q ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux(MUX,759)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_comp_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select_b, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_hi_select_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_round_select_b;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_hi_select_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_keep_select(BITSELECT,755)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_keep_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_real_x_q(20 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add(ADD,760)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_keep_select_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_keep_select_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000000000000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_mux_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_a) + SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_sel_x(BITSELECT,29)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_q(19 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x(CONSTANT,622)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x_q <= "01111111111111111111";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x(COMPARE,627)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_o(22));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_x(LOGICAL,542)@16
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_hcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x(CONSTANT,624)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x_q <= "10000000000000000000";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x(COMPARE,629)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_o(22));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_x(LOGICAL,519)@16
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_lcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x(SELECTOR,631)@16 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_sel_x_b);
            IF (dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x_q);
            END IF;
            IF (dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x(LOOKUP,156)@17
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ExtractCount_x_b)
    BEGIN
        -- Begin reserved scope level
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ExtractCount_x_b) IS
            WHEN "0000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "000000000000000000";
            WHEN "0001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "000000000000000000";
            WHEN "0010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "000000000000000000";
            WHEN "0011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "000000000000000000";
            WHEN "0100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "000000000000000000";
            WHEN "0101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "110100101011111011";
            WHEN "0110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "110000000000000000";
            WHEN "0111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "110100101011111011";
            WHEN "1000" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "000000000000000000";
            WHEN "1001" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "111001111000001000";
            WHEN "1010" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "110100101011111011";
            WHEN "1011" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "110001001101111101";
            WHEN "1100" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "000000000000000000";
            WHEN "1101" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "110001001101111101";
            WHEN "1110" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "110100101011111011";
            WHEN "1111" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= "000110000111111000";
            WHEN OTHERS => -- unreachable
                           DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x(SUB,286)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 1 => GND_q(0)) & GND_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_real_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x(BITSELECT,86)@15
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_x_q(19 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x(MUX,284)@15 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_OutMux_imag_x_q;
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_imag_sel_x(BITSELECT,10)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_outputreg_q(19 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x(ADD,506)@16
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_imag_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_o(20 downto 0);

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_notEnable(LOGICAL,1101)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_nor(LOGICAL,1102)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_nor_q <= not (redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_notEnable_q or redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_sticky_ena_q);

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_last(CONSTANT,1098)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_last_q <= "0111011";

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmp(LOGICAL,1099)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmp_b <= STD_LOGIC_VECTOR("0" & redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_q);
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmp_q <= "1" WHEN redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_last_q = redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmp_b ELSE "0";

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmpReg(REG,1100)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmpReg_q <= STD_LOGIC_VECTOR(redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmp_q);
        END IF;
    END PROCESS;

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_sticky_ena(REG,1103)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_nor_q = "1") THEN
                redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_sticky_ena_q <= STD_LOGIC_VECTOR(redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_enaAnd(LOGICAL,1104)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_enaAnd_q <= redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_sticky_ena_q and VCC_q;

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt(COUNTER,1096)
    -- low=0, high=60, step=1, init=0
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i <= TO_UNSIGNED(0, 6);
            redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i = TO_UNSIGNED(59, 6)) THEN
                redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_eq <= '1';
            ELSE
                redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_eq <= '0';
            END IF;
            IF (redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_eq = '1') THEN
                redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i <= redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i + 4;
            ELSE
                redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i <= redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_i, 6)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x(SUB,529)@16
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_imag_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x(MUX,67)@16 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q <= STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_TrivialTwiddle_Mux4_x_q);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_wraddr(REG,1097)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_wraddr_q <= "111100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_wraddr_q <= STD_LOGIC_VECTOR(redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem(DUALMEM,1095)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q);
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_aa <= redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_wraddr_q;
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_ab <= redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_rdcnt_q;
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_reset0 <= areset;
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 21,
        widthad_a => 6,
        numwords_a => 61,
        width_b => 21,
        widthad_b => 6,
        numwords_b => 61,
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
        clocken1 => redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_reset0,
        clock1 => clk,
        address_a => redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_aa,
        data_a => redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_ab,
        q_b => redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_iq
    );
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_q <= redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_iq(20 downto 0);

    -- redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_outputreg(DELAY,1094)
    redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_outputreg : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_mem_q, xout => redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x(MUX,69)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_s, redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_q <= redist42_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_FBMux_imag_x_q_64_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_AddSubFused1_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_hi_select(BITSELECT,749)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_hi_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_q(1 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_hi_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_hi_select_in(1 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select(BITSELECT,746)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select_in <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_q(0 downto 0));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select_in(0 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_comp(LOGICAL,748)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_comp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select_b = VCC_q ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux(MUX,751)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_comp_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select_b, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_hi_select_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_round_select_b;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_hi_select_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_keep_select(BITSELECT,747)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_keep_select_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_OutMux_imag_x_q(20 downto 1));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add(ADD,752)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_keep_select_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_keep_select_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000000000000000000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_mux_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_a) + SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_sel_x(BITSELECT,28)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_q(19 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x(COMPARE,621)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_o(22));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_x(LOGICAL,541)@16
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x(COMPARE,623)@16
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_rnd_x_replace_add_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x_q(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_n(0) <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_o(22));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_x(LOGICAL,518)@16
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_x_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lcmp_x_n);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x(SELECTOR,625)@16 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_sel_x_b);
            IF (dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_hconst_x_q);
            END IF;
            IF (dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_lconst_x_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma(CHAINMULTADD,775)@17 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_reset <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_ena0 <= '1';
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_ena1 <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_ena0;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_p(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_a0(0) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_c0(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_p(1) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_a0(1) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_c0(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_u(0) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_p(0),64);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_u(1) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_p(1),64);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_w(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_u(1) - DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_u(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_x(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_w(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_y(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_x(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_z(0) <= "0000000000000000000000000000000000000000000000001000000000000000";
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_a0 <= (others => (others => '0'));
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_ena0 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_a0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x_q),20);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_a0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x_q),20);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_c0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_c0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q),18);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_ena1 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_s(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_z(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_delay : dspba_delay
    GENERIC MAP ( width => 39, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_s(0)(38 downto 0)), xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_qq, clk => clk, aclr => areset );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_qq(38 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_shift(BITSHIFT,796)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_shift_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realSub_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_realMult2_x_merged_cma_q(37 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_shift_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_shift_qint(37 downto 16);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_bs(BITSELECT,797)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_bs_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_shift_q(21)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_shift_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_bs_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_bs_in(22 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x(BITSELECT,31)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_rnd_x_bs_b(19 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_real_sel_x(BITSELECT,17)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b <= STD_LOGIC_VECTOR(redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_outputreg_q(19 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x(ADD,513)@19
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o(20 downto 0);

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_notEnable(LOGICAL,1026)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_nor(LOGICAL,1027)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_nor_q <= not (redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_notEnable_q or redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_sticky_ena_q);

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_last(CONSTANT,1023)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_last_q <= "01111011";

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmp(LOGICAL,1024)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmp_b <= STD_LOGIC_VECTOR("0" & redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_q);
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmp_q <= "1" WHEN redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_last_q = redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmp_b ELSE "0";

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmpReg(REG,1025)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmpReg_q <= STD_LOGIC_VECTOR(redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmp_q);
        END IF;
    END PROCESS;

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_sticky_ena(REG,1028)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_nor_q = "1") THEN
                redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_sticky_ena_q <= STD_LOGIC_VECTOR(redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_enaAnd(LOGICAL,1029)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_enaAnd_q <= redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_sticky_ena_q and VCC_q;

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt(COUNTER,1021)
    -- low=0, high=124, step=1, init=0
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i <= TO_UNSIGNED(0, 7);
            redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i = TO_UNSIGNED(123, 7)) THEN
                redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_eq <= '1';
            ELSE
                redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_eq <= '0';
            END IF;
            IF (redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_eq = '1') THEN
                redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i <= redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i + 4;
            ELSE
                redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i <= redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_i, 7)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x(SUB,536)@19
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x(MUX,97)@19 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_real_sel_x_b);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_wraddr(REG,1022)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_wraddr_q <= "1111100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_wraddr_q <= STD_LOGIC_VECTOR(redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem(DUALMEM,1020)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q);
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_aa <= redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_wraddr_q;
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_ab <= redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_rdcnt_q;
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_reset0 <= areset;
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 21,
        widthad_a => 7,
        numwords_a => 125,
        width_b => 21,
        widthad_b => 7,
        numwords_b => 125,
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
        clocken1 => redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_reset0,
        clock1 => clk,
        address_a => redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_aa,
        data_a => redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_ab,
        q_b => redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_iq
    );
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_q <= redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_iq(20 downto 0);

    -- redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_outputreg(DELAY,1019)
    redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_outputreg : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_mem_q, xout => redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_outputreg_q, clk => clk, aclr => areset );

    -- redist27_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_1(DELAY,835)
    redist27_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b, xout => redist27_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_1_q, clk => clk, aclr => areset );

    -- redist28_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_2(DELAY,836)
    redist28_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist27_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_1_q, xout => redist28_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_2_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x(COUNTER,311)@18 + 1
    -- low=0, high=255, step=1, init=255
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_i <= TO_UNSIGNED(255, 8);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist28_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_2_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_i, 8)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BitExtract1_x(BITSELECT,310)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_Counter_x_q(7 downto 7);

    -- redist29_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_3(DELAY,837)
    redist29_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist28_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_2_q, xout => redist29_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_3_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_And_x(LOGICAL,309)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_And_x_q <= redist29_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_3_q and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BitExtract1_x_b;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x(MUX,99)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_s, redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= redist35_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_real_x_q_128_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_real_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x(SUB,330)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 1 => GND_q(0)) & GND_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_a) - SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_b));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_o(21 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x(BITSELECT,106)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_x_q(20 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma(CHAINMULTADD,772)@17 + 2
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_reset <= areset;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ena0 <= '1';
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ena1 <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ena0;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_p(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0(0) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_c0(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_p(1) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0(1) * DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_c0(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_u(0) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_p(0),64);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_u(1) <= RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_p(1),64);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_w(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_u(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_u(1);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_x(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_w(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_y(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_x(0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_z(0) <= "0000000000000000000000000000000000000000000000001000000000000000";
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0 <= (others => (others => '0'));
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ena0 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_real_mux_x_q),20);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_a0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertIn_imag_mux_x_q),20);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_c0(0) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_imag_x_q),18);
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_c0(1) <= RESIZE(SIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_LUT_real_x_q),18);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_ena1 = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_s(0) <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_z(0) + DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_delay : dspba_delay
    GENERIC MAP ( width => 39, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_s(0)(38 downto 0)), xout => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_qq, clk => clk, aclr => areset );
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_qq(38 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_shift(BITSHIFT,794)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_shift_qint <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult1_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagAdd_x_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_Mult_imagMult2_x_merged_cma_q(37 downto 0);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_shift_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_shift_qint(37 downto 16);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_bs(BITSELECT,795)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_bs_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_shift_q(21)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_shift_q));
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_bs_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_bs_in(22 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x(BITSELECT,30)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_rnd_x_bs_b(19 downto 0));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_imag_sel_x(BITSELECT,16)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_outputreg_q(19 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x(ADD,512)@19
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o(20 downto 0);

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_notEnable(LOGICAL,1037)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_nor(LOGICAL,1038)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_nor_q <= not (redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_notEnable_q or redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_sticky_ena_q);

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_last(CONSTANT,1034)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_last_q <= "01111011";

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmp(LOGICAL,1035)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmp_b <= STD_LOGIC_VECTOR("0" & redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_q);
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmp_q <= "1" WHEN redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_last_q = redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmp_b ELSE "0";

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmpReg(REG,1036)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmpReg_q <= STD_LOGIC_VECTOR(redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmp_q);
        END IF;
    END PROCESS;

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_sticky_ena(REG,1039)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_nor_q = "1") THEN
                redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_sticky_ena_q <= STD_LOGIC_VECTOR(redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_enaAnd(LOGICAL,1040)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_enaAnd_q <= redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_sticky_ena_q and VCC_q;

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt(COUNTER,1032)
    -- low=0, high=124, step=1, init=0
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i <= TO_UNSIGNED(0, 7);
            redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i = TO_UNSIGNED(123, 7)) THEN
                redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_eq <= '1';
            ELSE
                redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_eq <= '0';
            END IF;
            IF (redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_eq = '1') THEN
                redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i <= redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i + 4;
            ELSE
                redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i <= redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_i, 7)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x(SUB,535)@19
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_o(20 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x(MUX,96)@19 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= STD_LOGIC_VECTOR((20 downto 20 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x_b(19)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_Twiddle4_ConvertOut_imag_sel_x_b);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_wraddr(REG,1033)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_wraddr_q <= "1111100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_wraddr_q <= STD_LOGIC_VECTOR(redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem(DUALMEM,1031)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q);
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_aa <= redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_wraddr_q;
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_ab <= redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_rdcnt_q;
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_reset0 <= areset;
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 21,
        widthad_a => 7,
        numwords_a => 125,
        width_b => 21,
        widthad_b => 7,
        numwords_b => 125,
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
        clocken1 => redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_reset0,
        clock1 => clk,
        address_a => redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_aa,
        data_a => redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_ab,
        q_b => redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_iq
    );
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_q <= redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_iq(20 downto 0);

    -- redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_outputreg(DELAY,1030)
    redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_outputreg : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_mem_q, xout => redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x(MUX,98)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_s, redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_outputreg_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= redist36_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_FBMux_imag_x_q_128_outputreg_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_AddSubFused1_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_Const_x(CONSTANT,320)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_Const_x_q <= "10000000";

    -- redist22_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1(DELAY,830)
    redist22_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b, xout => redist22_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x(COUNTER,314)@17 + 1
    -- low=0, high=255, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_i <= TO_UNSIGNED(0, 8);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist27_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_DelayValidBlock_PM_BitExtract_x_b_1_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_i, 8)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x(BITSELECT,313)@18
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_Counter_x_q(7 downto 7);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_EdgeDetect_Xor_x(LOGICAL,316)@18
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_EdgeDetect_Xor_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b xor redist22_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_BitExtract1_x_b_1_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x(ADD,317)@17 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_b <= STD_LOGIC_VECTOR("00000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_i <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_Const_x_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PD_EdgeDetect_Xor_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_o <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_a) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_o(8 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,103)@18
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_x_q(7 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x(BITSELECT,319)@18
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b(7 downto 7);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x(COUNTER,297)@18 + 1
    -- low=0, high=511, step=1, init=511
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_i <= TO_UNSIGNED(511, 9);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_i, 9)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BitExtract1_x_merged_bit_select(BITSELECT,802)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BitExtract1_x_merged_bit_select_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_q(8 downto 8);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BitExtract1_x_merged_bit_select_c <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_Counter_x_q(7 downto 7);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And_x(LOGICAL,291)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BitExtract1_x_merged_bit_select_c and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BitExtract1_x_merged_bit_select_b;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x(MUX,328)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_q, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_NegateRe_PostCast_primWireOut_sel_x_b;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_imag_sel_x(BITSELECT,14)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_q(20 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x(ADD,510)@19
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_imag_sel_x_b(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_o(21 downto 0);

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_notEnable(LOGICAL,1057)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_nor(LOGICAL,1058)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_nor_q <= not (redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_notEnable_q or redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_sticky_ena_q);

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_last(CONSTANT,1054)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_last_q <= "011111100";

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmp(LOGICAL,1055)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmp_b <= STD_LOGIC_VECTOR("0" & redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_q);
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmp_q <= "1" WHEN redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_last_q = redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmp_b ELSE "0";

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmpReg(REG,1056)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmpReg_q <= STD_LOGIC_VECTOR(redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmp_q);
        END IF;
    END PROCESS;

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_sticky_ena(REG,1059)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_nor_q = "1") THEN
                redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_sticky_ena_q <= STD_LOGIC_VECTOR(redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_enaAnd(LOGICAL,1060)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_enaAnd_q <= redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_sticky_ena_q and VCC_q;

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt(COUNTER,1052)
    -- low=0, high=253, step=1, init=0
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i <= TO_UNSIGNED(0, 8);
            redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i = TO_UNSIGNED(252, 8)) THEN
                redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_eq <= '1';
            ELSE
                redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_eq <= '0';
            END IF;
            IF (redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_eq = '1') THEN
                redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i <= redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i + 3;
            ELSE
                redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i <= redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_i, 8)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x(SUB,533)@19
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_imag_sel_x_b(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_imag_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_o(21 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x(MUX,87)@19 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q <= STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux4_x_q);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_wraddr(REG,1053)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_wraddr_q <= "11111101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_wraddr_q <= STD_LOGIC_VECTOR(redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem(DUALMEM,1051)
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q);
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_aa <= redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_wraddr_q;
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_ab <= redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_rdcnt_q;
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_reset0 <= areset;
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 22,
        widthad_a => 8,
        numwords_a => 254,
        width_b => 22,
        widthad_b => 8,
        numwords_b => 254,
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
        clocken1 => redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_reset0,
        clock1 => clk,
        address_a => redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_aa,
        data_a => redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_ab,
        q_b => redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_iq
    );
    redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_q <= redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_iq(21 downto 0);

    -- redist21_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b_1(DELAY,829)
    redist21_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b, xout => redist21_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And1_x(LOGICAL,292)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And1_x_q <= redist21_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b_1_q and DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BitExtract1_x_merged_bit_select_b;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x(MUX,89)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_s, redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_q <= redist38_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_imag_x_q_256_mem_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- Convert_imag_sel_x(BITSELECT,32)@19
    Convert_imag_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_imag_x_q(18 downto 0));

    -- redist52_Convert_imag_sel_x_b_1(DELAY,860)
    redist52_Convert_imag_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert_imag_sel_x_b, xout => redist52_Convert_imag_sel_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x(MUX,327)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_s, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_q, DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_real_x_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_OutMux_imag_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_real_sel_x(BITSELECT,15)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_real_sel_x_b <= STD_LOGIC_VECTOR(redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_q(20 downto 0));

    -- dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x(ADD,511)@19
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_real_sel_x_b(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_a) + SIGNED(dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_o(21 downto 0);

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_notEnable(LOGICAL,1047)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_nor(LOGICAL,1048)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_nor_q <= not (redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_notEnable_q or redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_sticky_ena_q);

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_last(CONSTANT,1044)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_last_q <= "011111100";

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmp(LOGICAL,1045)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmp_b <= STD_LOGIC_VECTOR("0" & redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_q);
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmp_q <= "1" WHEN redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_last_q = redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmp_b ELSE "0";

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmpReg(REG,1046)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmpReg_q <= STD_LOGIC_VECTOR(redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmp_q);
        END IF;
    END PROCESS;

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_sticky_ena(REG,1049)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_nor_q = "1") THEN
                redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_sticky_ena_q <= STD_LOGIC_VECTOR(redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_enaAnd(LOGICAL,1050)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_enaAnd_q <= redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_sticky_ena_q and VCC_q;

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt(COUNTER,1042)
    -- low=0, high=253, step=1, init=0
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i <= TO_UNSIGNED(0, 8);
            redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i = TO_UNSIGNED(252, 8)) THEN
                redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_eq <= '1';
            ELSE
                redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_eq <= '0';
            END IF;
            IF (redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_eq = '1') THEN
                redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i <= redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i + 3;
            ELSE
                redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i <= redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_i, 8)));

    -- dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x(SUB,534)@19
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_real_sel_x_b(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_Convert_real_sel_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_o <= STD_LOGIC_VECTOR(SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_a) - SIGNED(dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_b));
    dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_o(21 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x(MUX,88)@19 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q <= STD_LOGIC_VECTOR((21 downto 21 => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q(20)) & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_TrivialTwiddle_Mux3_x_q);
                WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q <= dupName_1_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_q;
                WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_wraddr(REG,1043)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_wraddr_q <= "11111101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_wraddr_q <= STD_LOGIC_VECTOR(redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem(DUALMEM,1041)
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_ia <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q);
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_aa <= redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_wraddr_q;
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_ab <= redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_rdcnt_q;
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_reset0 <= areset;
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 22,
        widthad_a => 8,
        numwords_a => 254,
        width_b => 22,
        widthad_b => 8,
        numwords_b => 254,
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
        clocken1 => redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_reset0,
        clock1 => clk,
        address_a => redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_aa,
        data_a => redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_ab,
        q_b => redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_iq
    );
    redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_q <= redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_iq(21 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x(MUX,90)@19
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_s <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_And1_x_q;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_combproc: PROCESS (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_s, redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_q, dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_q)
    BEGIN
        CASE (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_q <= redist37_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_FBMux_real_x_q_256_mem_q;
            WHEN "1" => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_q <= dupName_0_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_AddSubFused1_real_x_q;
            WHEN OTHERS => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- Convert_real_sel_x(BITSELECT,33)@19
    Convert_real_sel_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_OutMux_real_x_q(18 downto 0));

    -- redist51_Convert_real_sel_x_b_1(DELAY,859)
    redist51_Convert_real_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 19, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert_real_sel_x_b, xout => redist51_Convert_real_sel_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_Const_x(CONSTANT,306)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_Const_x_q <= "100000000";

    -- redist23_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b_1(DELAY,831)
    redist23_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b, xout => redist23_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x(COUNTER,300)@19 + 1
    -- low=0, high=511, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_i <= TO_UNSIGNED(0, 9);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist21_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_DelayValidBlock_PM_BitExtract_x_b_1_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_i, 9)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x(BITSELECT,299)@20
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_Counter_x_q(8 downto 8);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_EdgeDetect_Xor_x(LOGICAL,302)@20
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_EdgeDetect_Xor_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b xor redist23_DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_BitExtract1_x_b_1_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x(ADD,303)@19 + 1
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_b <= STD_LOGIC_VECTOR("000000000" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_BitExtract_x_b);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_i <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_Const_x_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PD_EdgeDetect_Xor_x_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_o <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_i;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_a) + UNSIGNED(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_b));
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_q <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_o(9 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x(BITSELECT,94)@20
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_x_q(8 downto 0);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_BitExtract_x(BITSELECT,305)@20
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_BitExtract_x_b <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_AddSLoad_PostCast_primWireOut_sel_x_b(8 downto 8);

    -- GPOut_cunroll_x(GPOUT,497)@20
    out_1_Valid_x <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_DelayValidBlock_PM_BitExtract_x_b;
    out_2_real_Output <= redist51_Convert_real_sel_x_b_1_q;
    out_2_imag_Output <= redist52_Convert_imag_sel_x_b_1_q;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg(REG,865)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable(LOGICAL,866)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_nor(LOGICAL,867)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena(REG,868)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg(REG,874)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_notEnable(LOGICAL,875)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_nor(LOGICAL,876)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena(REG,877)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT2_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt(COUNTER,881)
    -- low=0, high=13, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= TO_UNSIGNED(0, 4);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i, 4)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last(CONSTANT,883)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q <= "01100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmp(LOGICAL,884)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg(REG,885)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable(LOGICAL,886)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_nor(LOGICAL,887)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena(REG,888)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt(COUNTER,892)
    -- low=0, high=13, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= TO_UNSIGNED(0, 4);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i, 4)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_mem_last(CONSTANT,894)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q <= "01100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmp(LOGICAL,895)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg(REG,896)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_notEnable(LOGICAL,897)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_nor(LOGICAL,898)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena(REG,899)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt(COUNTER,903)
    -- low=0, high=5, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= TO_UNSIGNED(0, 3);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i = TO_UNSIGNED(4, 3)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i, 3)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last(CONSTANT,905)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q <= "0100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp(LOGICAL,906)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg(REG,907)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable(LOGICAL,908)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor(LOGICAL,909)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena(REG,910)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt(COUNTER,914)
    -- low=0, high=5, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= TO_UNSIGNED(0, 3);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i = TO_UNSIGNED(4, 3)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i, 3)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last(CONSTANT,916)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q <= "0100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp(LOGICAL,917)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg(REG,918)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable(LOGICAL,919)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor(LOGICAL,920)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena(REG,921)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT3_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt(COUNTER,925)
    -- low=0, high=61, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= TO_UNSIGNED(0, 6);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i = TO_UNSIGNED(60, 6)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i, 6)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last(CONSTANT,927)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q <= "0111100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmp(LOGICAL,928)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg(REG,929)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable(LOGICAL,930)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_nor(LOGICAL,931)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena(REG,932)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt(COUNTER,936)
    -- low=0, high=61, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= TO_UNSIGNED(0, 6);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i = TO_UNSIGNED(60, 6)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i, 6)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_mem_last(CONSTANT,938)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q <= "0111100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmp(LOGICAL,939)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg(REG,940)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_notEnable(LOGICAL,941)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_nor(LOGICAL,942)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena(REG,943)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt(COUNTER,947)
    -- low=0, high=29, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= TO_UNSIGNED(0, 5);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i = TO_UNSIGNED(28, 5)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i, 5)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last(CONSTANT,949)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q <= "011100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp(LOGICAL,950)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg(REG,951)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable(LOGICAL,952)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor(LOGICAL,953)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena(REG,954)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt(COUNTER,958)
    -- low=0, high=29, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= TO_UNSIGNED(0, 5);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i = TO_UNSIGNED(28, 5)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i, 5)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last(CONSTANT,960)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q <= "011100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp(LOGICAL,961)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg(REG,962)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable(LOGICAL,963)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor(LOGICAL,964)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena(REG,965)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT4_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt(COUNTER,969)
    -- low=0, high=253, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= TO_UNSIGNED(0, 8);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i = TO_UNSIGNED(252, 8)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i, 8)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last(CONSTANT,971)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q <= "011111100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmp(LOGICAL,972)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg(REG,973)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable(LOGICAL,974)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_nor(LOGICAL,975)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena(REG,976)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt(COUNTER,980)
    -- low=0, high=253, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= TO_UNSIGNED(0, 8);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i = TO_UNSIGNED(252, 8)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i, 8)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_mem_last(CONSTANT,982)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q <= "011111100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmp(LOGICAL,983)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg(REG,984)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_notEnable(LOGICAL,985)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_nor(LOGICAL,986)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena(REG,987)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt(COUNTER,991)
    -- low=0, high=125, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= TO_UNSIGNED(0, 7);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i = TO_UNSIGNED(124, 7)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_i, 7)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last(CONSTANT,993)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q <= "01111100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp(LOGICAL,994)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg(REG,995)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable(LOGICAL,996)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor(LOGICAL,997)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena(REG,998)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_imag_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt(COUNTER,1002)
    -- low=0, high=125, step=1, init=0
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= TO_UNSIGNED(0, 7);
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i = TO_UNSIGNED(124, 7)) THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '1';
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq <= '0';
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_eq = '1') THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 3;
            ELSE
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i <= DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_i, 7)));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last(CONSTANT,1004)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q <= "01111100";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp(LOGICAL,1005)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_rdcnt_q);
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_mem_last_q = DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_b ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg(REG,1006)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmp_q);
        END IF;
    END PROCESS;

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable(LOGICAL,1007)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor(LOGICAL,1008)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q <= not (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_notEnable_q or DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q);

    -- DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena(REG,1009)
    DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_nor_q = "1") THEN
                DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_sticky_ena_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_FFT_FFT_Light_FFT_Pipe_FFT5_FFT1_BFU_BFU_implementation_SampleDelay1_real_x_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

END normal;
