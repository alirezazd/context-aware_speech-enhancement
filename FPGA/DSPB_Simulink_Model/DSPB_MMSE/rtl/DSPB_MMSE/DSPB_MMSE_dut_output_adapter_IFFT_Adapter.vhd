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

-- VHDL created from DSPB_MMSE_dut_output_adapter_IFFT_Adapter
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
entity DSPB_MMSE_dut_output_adapter_IFFT_Adapter is
    port (
        out_1_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_imag_output : out std_logic_vector(20 downto 0);  -- sfix21_en19
        out_2_real_output : out std_logic_vector(20 downto 0);  -- sfix21_en19
        in_1_Enhanced_Magnitude_Spectrum_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_Enhanced_Magnitude_Spectrum : in std_logic_vector(31 downto 0);  -- float32_m23
        in_3_Phase_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_4_Phase : in std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_output_adapter_IFFT_Adapter;

architecture normal of DSPB_MMSE_dut_output_adapter_IFFT_Adapter is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex is
        port (
            in_1_maginitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_magnitude_spectrum : in std_logic_vector(31 downto 0);  -- Floating Point
            in_3_phase_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_phase : in std_logic_vector(31 downto 0);  -- Floating Point
            out_1_valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_imag_out : out std_logic_vector(20 downto 0);  -- Fixed Point
            out_2_real_out : out std_logic_vector(20 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror is
        port (
            in_1_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_input_spectrum : in std_logic_vector(31 downto 0);  -- Floating Point
            out_1_valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_output_spectrum : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal MagPhaseToComplex_cunroll_x_out_1_valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal MagPhaseToComplex_cunroll_x_out_2_imag_out : STD_LOGIC_VECTOR (20 downto 0);
    signal MagPhaseToComplex_cunroll_x_out_2_real_out : STD_LOGIC_VECTOR (20 downto 0);
    signal Spectrum_Mirror_out_1_valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal Spectrum_Mirror_out_2_output_spectrum : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- Spectrum_Mirror(BLACKBOX,6)
    theSpectrum_Mirror : DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror
    PORT MAP (
        in_1_valid => in_1_Enhanced_Magnitude_Spectrum_Valid,
        in_2_input_spectrum => in_2_Enhanced_Magnitude_Spectrum,
        out_1_valid_x => Spectrum_Mirror_out_1_valid_x,
        out_2_output_spectrum => Spectrum_Mirror_out_2_output_spectrum,
        clk => clk,
        areset => areset
    );

    -- MagPhaseToComplex_cunroll_x(BLACKBOX,2)
    theMagPhaseToComplex_cunroll_x : DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex
    PORT MAP (
        in_1_maginitude_spectrum_valid => Spectrum_Mirror_out_1_valid_x,
        in_2_magnitude_spectrum => Spectrum_Mirror_out_2_output_spectrum,
        in_3_phase_valid => in_3_Phase_Valid,
        in_4_phase => in_4_Phase,
        out_1_valid_x => MagPhaseToComplex_cunroll_x_out_1_valid_x,
        out_2_imag_out => MagPhaseToComplex_cunroll_x_out_2_imag_out,
        out_2_real_out => MagPhaseToComplex_cunroll_x_out_2_real_out,
        clk => clk,
        areset => areset
    );

    -- out_1_valid(GPOUT,3)
    out_1_valid <= MagPhaseToComplex_cunroll_x_out_1_valid_x;

    -- out_2_imag_output(GPOUT,4)
    out_2_imag_output <= MagPhaseToComplex_cunroll_x_out_2_imag_out;

    -- out_2_real_output(GPOUT,5)
    out_2_real_output <= MagPhaseToComplex_cunroll_x_out_2_real_out;

END normal;
