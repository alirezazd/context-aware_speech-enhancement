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

-- VHDL created from DSPB_MMSE_dut_feature_extraction
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
entity DSPB_MMSE_dut_feature_extraction is
    port (
        in_1_magnitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_magnitude_spectrum : in std_logic_vector(17 downto 0);  -- ufix18_en11
        in_3_noisy_power_spectrum : in std_logic_vector(35 downto 0);  -- ufix36_en22
        in_4_amplitude_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_5_amplitude : in std_logic_vector(15 downto 0);  -- sfix16_en14
        in_6_enhanced_mag_spectrum_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_7_enhanced_mag_spectrum : in std_logic_vector(31 downto 0);  -- float32_m23
        out_1_a_priori_SNR_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_a_priori_SNR : out std_logic_vector(31 downto 0);  -- float32_m23
        out_3_noise_power_spectrum_snr_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_4_a_posteriori_SNR : out std_logic_vector(31 downto 0);  -- float32_m23
        out_5_estimated_SNR_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_6_estimated_SNR_dB : out std_logic_vector(15 downto 0);  -- sfix16_en8
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction;

architecture normal of DSPB_MMSE_dut_feature_extraction is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component DSPB_MMSE_dut_feature_extraction_SNR_Estimator is
        port (
            in_1_amplitude_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_amplitude : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_estimated_SNR_Valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_estimated_SNR_dB : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_x is
        port (
            in_1_noisy_spectrum_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_noisy_magnitude_spectrum : in std_logic_vector(17 downto 0);  -- Fixed Point
            in_3_noisy_power_spectrum : in std_logic_vector(35 downto 0);  -- Fixed Point
            out_1_noise_power_snr_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_a_posteriori_snr : out std_logic_vector(31 downto 0);  -- Floating Point
            out_3_noise_power_spectrum : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x is
        port (
            in_1_enhanced_mag_spectrum_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_enhanced_mag_spectrum : in std_logic_vector(31 downto 0);  -- Floating Point
            in_3_a_posteriori_SNR_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_a_posteriori_SNR : in std_logic_vector(31 downto 0);  -- Floating Point
            in_5_noise_power_spectrum : in std_logic_vector(31 downto 0);  -- Floating Point
            out_1_a_priori_SNR_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_a_priori_SNR : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal SNR_Estimator_out_1_estimated_SNR_Valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SNR_Estimator_out_2_estimated_SNR_dB : STD_LOGIC_VECTOR (15 downto 0);
    signal a_posteriori_SNR_x_out_1_noise_power_snr_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal a_posteriori_SNR_x_out_2_a_posteriori_snr : STD_LOGIC_VECTOR (31 downto 0);
    signal a_posteriori_SNR_x_out_3_noise_power_spectrum : STD_LOGIC_VECTOR (31 downto 0);
    signal a_priori_SNR_x_out_1_a_priori_SNR_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal a_priori_SNR_x_out_2_a_priori_SNR : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- a_posteriori_SNR_x(BLACKBOX,3)
    thea_posteriori_SNR_x : DSPB_MMSE_dut_feature_extraction_a_posteriori_SNR_x
    PORT MAP (
        in_1_noisy_spectrum_valid => in_1_magnitude_spectrum_valid,
        in_2_noisy_magnitude_spectrum => in_2_magnitude_spectrum,
        in_3_noisy_power_spectrum => in_3_noisy_power_spectrum,
        out_1_noise_power_snr_valid => a_posteriori_SNR_x_out_1_noise_power_snr_valid,
        out_2_a_posteriori_snr => a_posteriori_SNR_x_out_2_a_posteriori_snr,
        out_3_noise_power_spectrum => a_posteriori_SNR_x_out_3_noise_power_spectrum,
        clk => clk,
        areset => areset
    );

    -- a_priori_SNR_x(BLACKBOX,4)
    thea_priori_SNR_x : DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x
    PORT MAP (
        in_1_enhanced_mag_spectrum_valid => in_6_enhanced_mag_spectrum_valid,
        in_2_enhanced_mag_spectrum => in_7_enhanced_mag_spectrum,
        in_3_a_posteriori_SNR_valid => a_posteriori_SNR_x_out_1_noise_power_snr_valid,
        in_4_a_posteriori_SNR => a_posteriori_SNR_x_out_2_a_posteriori_snr,
        in_5_noise_power_spectrum => a_posteriori_SNR_x_out_3_noise_power_spectrum,
        out_1_a_priori_SNR_valid => a_priori_SNR_x_out_1_a_priori_SNR_valid,
        out_2_a_priori_SNR => a_priori_SNR_x_out_2_a_priori_SNR,
        clk => clk,
        areset => areset
    );

    -- out_1_a_priori_SNR_valid(GPOUT,12)
    out_1_a_priori_SNR_valid <= a_priori_SNR_x_out_1_a_priori_SNR_valid;

    -- out_2_a_priori_SNR(GPOUT,13)
    out_2_a_priori_SNR <= a_priori_SNR_x_out_2_a_priori_SNR;

    -- out_3_noise_power_spectrum_snr_valid(GPOUT,14)
    out_3_noise_power_spectrum_snr_valid <= a_posteriori_SNR_x_out_1_noise_power_snr_valid;

    -- out_4_a_posteriori_SNR(GPOUT,15)
    out_4_a_posteriori_SNR <= a_posteriori_SNR_x_out_2_a_posteriori_snr;

    -- SNR_Estimator(BLACKBOX,2)
    theSNR_Estimator : DSPB_MMSE_dut_feature_extraction_SNR_Estimator
    PORT MAP (
        in_1_amplitude_Valid => in_4_amplitude_Valid,
        in_2_amplitude => in_5_amplitude,
        out_1_estimated_SNR_Valid => SNR_Estimator_out_1_estimated_SNR_Valid,
        out_2_estimated_SNR_dB => SNR_Estimator_out_2_estimated_SNR_dB,
        clk => clk,
        areset => areset
    );

    -- out_5_estimated_SNR_Valid(GPOUT,16)
    out_5_estimated_SNR_Valid <= SNR_Estimator_out_1_estimated_SNR_Valid;

    -- out_6_estimated_SNR_dB(GPOUT,17)
    out_6_estimated_SNR_dB <= SNR_Estimator_out_2_estimated_SNR_dB;

END normal;
