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

-- VHDL created from DSPB_MMSE_dut_input_adapter
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
entity DSPB_MMSE_dut_input_adapter is
    port (
        in_1_Input_Signal_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_Input_Signal : in std_logic_vector(15 downto 0);  -- sfix16_en14
        out_1_Spectrum_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_Magnitude_Spectrum : out std_logic_vector(17 downto 0);  -- ufix18_en11
        out_3_Power_Spectrum : out std_logic_vector(35 downto 0);  -- ufix36_en22
        out_4_Phase_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_5_Phase : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_input_adapter;

architecture normal of DSPB_MMSE_dut_input_adapter is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component DSPB_MMSE_dut_input_adapter_FFT is
        port (
            in_1_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_Input : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_Valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_imag_Output : out std_logic_vector(18 downto 0);  -- Fixed Point
            out_2_real_Output : out std_logic_vector(18 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_input_adapter_FFT_Adapter is
        port (
            in_1_FFT_In_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_imag_FFT_In : in std_logic_vector(18 downto 0);  -- Fixed Point
            in_2_real_FFT_In : in std_logic_vector(18 downto 0);  -- Fixed Point
            out_1_Spectrum_Valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_Magnitude_Spectrum : out std_logic_vector(17 downto 0);  -- Fixed Point
            out_3_Power_Spectrum : out std_logic_vector(35 downto 0);  -- Fixed Point
            out_4_Phase_Valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_5_Phase : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_input_adapter_Hamming_window is
        port (
            in_1_Input_Signal_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_Input_Signal : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_Input_Signal_Valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_Input_Signal_x : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_input_adapter_Zero_pad is
        port (
            in_1_Input_Signal_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_Input_Signal : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_Input_Signal_Valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_Input_Signal_x : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal FFT_cunroll_x_out_1_Valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal FFT_cunroll_x_out_2_imag_Output : STD_LOGIC_VECTOR (18 downto 0);
    signal FFT_cunroll_x_out_2_real_Output : STD_LOGIC_VECTOR (18 downto 0);
    signal FFT_Adapter_cunroll_x_out_1_Spectrum_Valid : STD_LOGIC_VECTOR (0 downto 0);
    signal FFT_Adapter_cunroll_x_out_2_Magnitude_Spectrum : STD_LOGIC_VECTOR (17 downto 0);
    signal FFT_Adapter_cunroll_x_out_3_Power_Spectrum : STD_LOGIC_VECTOR (35 downto 0);
    signal FFT_Adapter_cunroll_x_out_4_Phase_Valid : STD_LOGIC_VECTOR (0 downto 0);
    signal FFT_Adapter_cunroll_x_out_5_Phase : STD_LOGIC_VECTOR (31 downto 0);
    signal Hamming_window_out_1_Input_Signal_Valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal Hamming_window_out_2_Input_Signal_x : STD_LOGIC_VECTOR (15 downto 0);
    signal Zero_pad_out_1_Input_Signal_Valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal Zero_pad_out_2_Input_Signal_x : STD_LOGIC_VECTOR (15 downto 0);

begin


    -- Hamming_window(BLACKBOX,4)
    theHamming_window : DSPB_MMSE_dut_input_adapter_Hamming_window
    PORT MAP (
        in_1_Input_Signal_Valid => in_1_Input_Signal_Valid,
        in_2_Input_Signal => in_2_Input_Signal,
        out_1_Input_Signal_Valid_x => Hamming_window_out_1_Input_Signal_Valid_x,
        out_2_Input_Signal_x => Hamming_window_out_2_Input_Signal_x,
        clk => clk,
        areset => areset
    );

    -- Zero_pad(BLACKBOX,5)
    theZero_pad : DSPB_MMSE_dut_input_adapter_Zero_pad
    PORT MAP (
        in_1_Input_Signal_Valid => Hamming_window_out_1_Input_Signal_Valid_x,
        in_2_Input_Signal => Hamming_window_out_2_Input_Signal_x,
        out_1_Input_Signal_Valid_x => Zero_pad_out_1_Input_Signal_Valid_x,
        out_2_Input_Signal_x => Zero_pad_out_2_Input_Signal_x,
        clk => clk,
        areset => areset
    );

    -- FFT_cunroll_x(BLACKBOX,2)
    theFFT_cunroll_x : DSPB_MMSE_dut_input_adapter_FFT
    PORT MAP (
        in_1_Valid => Zero_pad_out_1_Input_Signal_Valid_x,
        in_2_Input => Zero_pad_out_2_Input_Signal_x,
        out_1_Valid_x => FFT_cunroll_x_out_1_Valid_x,
        out_2_imag_Output => FFT_cunroll_x_out_2_imag_Output,
        out_2_real_Output => FFT_cunroll_x_out_2_real_Output,
        clk => clk,
        areset => areset
    );

    -- FFT_Adapter_cunroll_x(BLACKBOX,3)
    theFFT_Adapter_cunroll_x : DSPB_MMSE_dut_input_adapter_FFT_Adapter
    PORT MAP (
        in_1_FFT_In_Valid => FFT_cunroll_x_out_1_Valid_x,
        in_2_imag_FFT_In => FFT_cunroll_x_out_2_imag_Output,
        in_2_real_FFT_In => FFT_cunroll_x_out_2_real_Output,
        out_1_Spectrum_Valid => FFT_Adapter_cunroll_x_out_1_Spectrum_Valid,
        out_2_Magnitude_Spectrum => FFT_Adapter_cunroll_x_out_2_Magnitude_Spectrum,
        out_3_Power_Spectrum => FFT_Adapter_cunroll_x_out_3_Power_Spectrum,
        out_4_Phase_Valid => FFT_Adapter_cunroll_x_out_4_Phase_Valid,
        out_5_Phase => FFT_Adapter_cunroll_x_out_5_Phase,
        clk => clk,
        areset => areset
    );

    -- out_1_Spectrum_Valid(GPOUT,8)
    out_1_Spectrum_Valid <= FFT_Adapter_cunroll_x_out_1_Spectrum_Valid;

    -- out_2_Magnitude_Spectrum(GPOUT,9)
    out_2_Magnitude_Spectrum <= FFT_Adapter_cunroll_x_out_2_Magnitude_Spectrum;

    -- out_3_Power_Spectrum(GPOUT,10)
    out_3_Power_Spectrum <= FFT_Adapter_cunroll_x_out_3_Power_Spectrum;

    -- out_4_Phase_Valid(GPOUT,11)
    out_4_Phase_Valid <= FFT_Adapter_cunroll_x_out_4_Phase_Valid;

    -- out_5_Phase(GPOUT,12)
    out_5_Phase <= FFT_Adapter_cunroll_x_out_5_Phase;

END normal;
