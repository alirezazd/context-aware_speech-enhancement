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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_SNR_Estimator
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
entity DSPB_MMSE_dut_feature_extraction_SNR_Estimator is
    port (
        in_1_amplitude_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_amplitude : in std_logic_vector(15 downto 0);  -- sfix16_en14
        out_1_estimated_SNR_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_estimated_SNR_dB : out std_logic_vector(15 downto 0);  -- sfix16_en8
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction_SNR_Estimator;

architecture normal of DSPB_MMSE_dut_feature_extraction_SNR_Estimator is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD is
        port (
            in_1_scaled_signal_amplitude_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_scaled_noise_amplitude_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_3_scaled_amplitude : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_4_noise_count : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_5_signal_count : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_6_reset : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_1_signal_STD_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_signal_STD : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_3_noise_STD_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_4_noise_STD : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB is
        port (
            in_1_signal_STD_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_signal_STD : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_3_noise_STD_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_noise_STD : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_estimated_SNR_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_estimated_SNR_dB : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_feature_extraction_SNR_Estimator_feedback_delay is
        port (
            in_1_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_input : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_output : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_2_valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale is
        port (
            in_1_amplitude_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_amplitude : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_3_noise_STD_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_noise_STD : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_scaled_signal_amplitude_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_scaled_noise_amplitude_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_3_scaled_amplitude : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_4_noise_count : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_5_signal_count : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_6_reset : out std_logic_vector(0 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal num1pass_STD_x_out_1_signal_STD_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal num1pass_STD_x_out_2_signal_STD : STD_LOGIC_VECTOR (15 downto 0);
    signal num1pass_STD_x_out_3_noise_STD_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal num1pass_STD_x_out_4_noise_STD : STD_LOGIC_VECTOR (15 downto 0);
    signal STD_to_SNR_dB_out_1_estimated_SNR_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal STD_to_SNR_dB_out_2_estimated_SNR_dB : STD_LOGIC_VECTOR (15 downto 0);
    signal feedback_delay_out_1_output : STD_LOGIC_VECTOR (15 downto 0);
    signal feedback_delay_out_2_valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal split_and_scale_out_1_scaled_signal_amplitude_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal split_and_scale_out_2_scaled_noise_amplitude_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal split_and_scale_out_3_scaled_amplitude : STD_LOGIC_VECTOR (15 downto 0);
    signal split_and_scale_out_4_noise_count : STD_LOGIC_VECTOR (15 downto 0);
    signal split_and_scale_out_5_signal_count : STD_LOGIC_VECTOR (15 downto 0);
    signal split_and_scale_out_6_reset : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- feedback_delay(BLACKBOX,4)
    thefeedback_delay : DSPB_MMSE_dut_feature_extraction_SNR_Estimator_feedback_delay
    PORT MAP (
        in_1_valid => num1pass_STD_x_out_3_noise_STD_valid,
        in_2_input => num1pass_STD_x_out_4_noise_STD,
        out_1_output => feedback_delay_out_1_output,
        out_2_valid_x => feedback_delay_out_2_valid_x,
        clk => clk,
        areset => areset
    );

    -- split_and_scale(BLACKBOX,9)
    thesplit_and_scale : DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale
    PORT MAP (
        in_1_amplitude_valid => in_1_amplitude_Valid,
        in_2_amplitude => in_2_amplitude,
        in_3_noise_STD_valid => feedback_delay_out_2_valid_x,
        in_4_noise_STD => feedback_delay_out_1_output,
        out_1_scaled_signal_amplitude_valid => split_and_scale_out_1_scaled_signal_amplitude_valid,
        out_2_scaled_noise_amplitude_valid => split_and_scale_out_2_scaled_noise_amplitude_valid,
        out_3_scaled_amplitude => split_and_scale_out_3_scaled_amplitude,
        out_4_noise_count => split_and_scale_out_4_noise_count,
        out_5_signal_count => split_and_scale_out_5_signal_count,
        out_6_reset => split_and_scale_out_6_reset,
        clk => clk,
        areset => areset
    );

    -- num1pass_STD_x(BLACKBOX,2)
    thenum1pass_STD_x : DSPB_MMSE_dut_feature_extraction_SNR_Estimator_1pass_STD
    PORT MAP (
        in_1_scaled_signal_amplitude_valid => split_and_scale_out_1_scaled_signal_amplitude_valid,
        in_2_scaled_noise_amplitude_valid => split_and_scale_out_2_scaled_noise_amplitude_valid,
        in_3_scaled_amplitude => split_and_scale_out_3_scaled_amplitude,
        in_4_noise_count => split_and_scale_out_4_noise_count,
        in_5_signal_count => split_and_scale_out_5_signal_count,
        in_6_reset => split_and_scale_out_6_reset,
        out_1_signal_STD_valid => num1pass_STD_x_out_1_signal_STD_valid,
        out_2_signal_STD => num1pass_STD_x_out_2_signal_STD,
        out_3_noise_STD_valid => num1pass_STD_x_out_3_noise_STD_valid,
        out_4_noise_STD => num1pass_STD_x_out_4_noise_STD,
        clk => clk,
        areset => areset
    );

    -- STD_to_SNR_dB(BLACKBOX,3)
    theSTD_to_SNR_dB : DSPB_MMSE_dut_feature_extraction_SNR_Estimator_STD_to_SNR_dB
    PORT MAP (
        in_1_signal_STD_valid => num1pass_STD_x_out_1_signal_STD_valid,
        in_2_signal_STD => num1pass_STD_x_out_2_signal_STD,
        in_3_noise_STD_valid => num1pass_STD_x_out_3_noise_STD_valid,
        in_4_noise_STD => num1pass_STD_x_out_4_noise_STD,
        out_1_estimated_SNR_valid => STD_to_SNR_dB_out_1_estimated_SNR_valid,
        out_2_estimated_SNR_dB => STD_to_SNR_dB_out_2_estimated_SNR_dB,
        clk => clk,
        areset => areset
    );

    -- out_1_estimated_SNR_Valid(GPOUT,7)
    out_1_estimated_SNR_Valid <= STD_to_SNR_dB_out_1_estimated_SNR_valid;

    -- out_2_estimated_SNR_dB(GPOUT,8)
    out_2_estimated_SNR_dB <= STD_to_SNR_dB_out_2_estimated_SNR_dB;

END normal;
