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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD
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
entity DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD is
    port (
        in_1_scaled_signal_amplitude_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_scaled_noise_amplitude_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_3_scaled_amplitude : in std_logic_vector(15 downto 0);  -- ufix16_en15
        in_4_noise_count : in std_logic_vector(15 downto 0);  -- ufix16
        in_5_signal_count : in std_logic_vector(15 downto 0);  -- ufix16
        in_6_reset : in std_logic_vector(0 downto 0);  -- ufix1
        out_1_signal_STD_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_signal_STD : out std_logic_vector(15 downto 0);  -- ufix16_en16
        out_3_noise_STD_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_4_noise_STD : out std_logic_vector(15 downto 0);  -- ufix16_en16
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD;

architecture normal of DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_noise is
        port (
            in_1_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_input_data : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_3_count : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_4_reset : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_1_valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_std : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal is
        port (
            in_1_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_input_data : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_3_count : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_4_reset : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_1_valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_std : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal STD_noise_out_1_valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal STD_noise_out_2_std : STD_LOGIC_VECTOR (15 downto 0);
    signal STD_signal_out_1_valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal STD_signal_out_2_std : STD_LOGIC_VECTOR (15 downto 0);

begin


    -- STD_signal(BLACKBOX,3)
    theSTD_signal : DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_signal
    PORT MAP (
        in_1_valid => in_1_scaled_signal_amplitude_valid,
        in_2_input_data => in_3_scaled_amplitude,
        in_3_count => in_5_signal_count,
        in_4_reset => in_6_reset,
        out_1_valid_x => STD_signal_out_1_valid_x,
        out_2_std => STD_signal_out_2_std,
        clk => clk,
        areset => areset
    );

    -- out_1_signal_STD_valid(GPOUT,10)
    out_1_signal_STD_valid <= STD_signal_out_1_valid_x;

    -- out_2_signal_STD(GPOUT,11)
    out_2_signal_STD <= STD_signal_out_2_std;

    -- STD_noise(BLACKBOX,2)
    theSTD_noise : DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD_STD_noise
    PORT MAP (
        in_1_valid => in_2_scaled_noise_amplitude_valid,
        in_2_input_data => in_3_scaled_amplitude,
        in_3_count => in_4_noise_count,
        in_4_reset => in_6_reset,
        out_1_valid_x => STD_noise_out_1_valid_x,
        out_2_std => STD_noise_out_2_std,
        clk => clk,
        areset => areset
    );

    -- out_3_noise_STD_valid(GPOUT,12)
    out_3_noise_STD_valid <= STD_noise_out_1_valid_x;

    -- out_4_noise_STD(GPOUT,13)
    out_4_noise_STD <= STD_noise_out_2_std;

END normal;
