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

-- VHDL created from DSPB_MMSE_dut_output_adapter
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
entity DSPB_MMSE_dut_output_adapter is
    port (
        in_1_enhanced_magnitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_enhanced_magnitude_spectrum : in std_logic_vector(31 downto 0);  -- float32_m23
        in_3_phase_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_4_phase : in std_logic_vector(31 downto 0);  -- float32_m23
        out_1_time_domain_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_time_domain_out : out std_logic_vector(15 downto 0);  -- sfix16_en11
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_output_adapter;

architecture normal of DSPB_MMSE_dut_output_adapter is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component DSPB_MMSE_dut_output_adapter_IFFT is
        port (
            in_1_Valid1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_imag_Input1 : in std_logic_vector(20 downto 0);  -- Fixed Point
            in_2_real_Input1 : in std_logic_vector(20 downto 0);  -- Fixed Point
            out_1_Valid1_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_Output1 : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_output_adapter_IFFT_Adapter is
        port (
            in_1_Enhanced_Magnitude_Spectrum_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_Enhanced_Magnitude_Spectrum : in std_logic_vector(31 downto 0);  -- Floating Point
            in_3_Phase_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_Phase : in std_logic_vector(31 downto 0);  -- Floating Point
            out_1_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_imag_output : out std_logic_vector(20 downto 0);  -- Fixed Point
            out_2_real_output : out std_logic_vector(20 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal IFFT_cunroll_x_out_1_Valid1_x : STD_LOGIC_VECTOR (0 downto 0);
    signal IFFT_cunroll_x_out_2_Output1 : STD_LOGIC_VECTOR (15 downto 0);
    signal IFFT_Adapter_cunroll_x_out_1_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal IFFT_Adapter_cunroll_x_out_2_imag_output : STD_LOGIC_VECTOR (20 downto 0);
    signal IFFT_Adapter_cunroll_x_out_2_real_output : STD_LOGIC_VECTOR (20 downto 0);

begin


    -- IFFT_Adapter_cunroll_x(BLACKBOX,3)
    theIFFT_Adapter_cunroll_x : DSPB_MMSE_dut_output_adapter_IFFT_Adapter
    PORT MAP (
        in_1_Enhanced_Magnitude_Spectrum_Valid => in_1_enhanced_magnitude_spectrum_valid,
        in_2_Enhanced_Magnitude_Spectrum => in_2_enhanced_magnitude_spectrum,
        in_3_Phase_Valid => in_3_phase_valid,
        in_4_Phase => in_4_phase,
        out_1_valid => IFFT_Adapter_cunroll_x_out_1_valid,
        out_2_imag_output => IFFT_Adapter_cunroll_x_out_2_imag_output,
        out_2_real_output => IFFT_Adapter_cunroll_x_out_2_real_output,
        clk => clk,
        areset => areset
    );

    -- IFFT_cunroll_x(BLACKBOX,2)
    theIFFT_cunroll_x : DSPB_MMSE_dut_output_adapter_IFFT
    PORT MAP (
        in_1_Valid1 => IFFT_Adapter_cunroll_x_out_1_valid,
        in_2_imag_Input1 => IFFT_Adapter_cunroll_x_out_2_imag_output,
        in_2_real_Input1 => IFFT_Adapter_cunroll_x_out_2_real_output,
        out_1_Valid1_x => IFFT_cunroll_x_out_1_Valid1_x,
        out_2_Output1 => IFFT_cunroll_x_out_2_Output1,
        clk => clk,
        areset => areset
    );

    -- out_1_time_domain_valid(GPOUT,8)
    out_1_time_domain_valid <= IFFT_cunroll_x_out_1_Valid1_x;

    -- out_2_time_domain_out(GPOUT,9)
    out_2_time_domain_out <= IFFT_cunroll_x_out_2_Output1;

END normal;
