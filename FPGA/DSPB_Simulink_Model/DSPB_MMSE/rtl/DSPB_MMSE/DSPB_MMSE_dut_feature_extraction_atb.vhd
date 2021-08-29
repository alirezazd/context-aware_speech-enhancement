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
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity DSPB_MMSE_dut_feature_extraction_atb is
end;

architecture normal of DSPB_MMSE_dut_feature_extraction_atb is

component DSPB_MMSE_dut_feature_extraction is
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
end component;

component DSPB_MMSE_dut_feature_extraction_stm is
    port (
        in_1_magnitude_spectrum_valid_stm : out std_logic_vector(0 downto 0);
        in_2_magnitude_spectrum_stm : out std_logic_vector(17 downto 0);
        in_3_noisy_power_spectrum_stm : out std_logic_vector(35 downto 0);
        in_4_amplitude_Valid_stm : out std_logic_vector(0 downto 0);
        in_5_amplitude_stm : out std_logic_vector(15 downto 0);
        in_6_enhanced_mag_spectrum_valid_stm : out std_logic_vector(0 downto 0);
        in_7_enhanced_mag_spectrum_stm : out std_logic_vector(31 downto 0);
        out_1_a_priori_SNR_valid_stm : out std_logic_vector(0 downto 0);
        out_2_a_priori_SNR_stm : out std_logic_vector(31 downto 0);
        out_3_noise_power_spectrum_snr_valid_stm : out std_logic_vector(0 downto 0);
        out_4_a_posteriori_SNR_stm : out std_logic_vector(31 downto 0);
        out_5_estimated_SNR_Valid_stm : out std_logic_vector(0 downto 0);
        out_6_estimated_SNR_dB_stm : out std_logic_vector(15 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal in_1_magnitude_spectrum_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_magnitude_spectrum_stm : STD_LOGIC_VECTOR (17 downto 0);
signal in_3_noisy_power_spectrum_stm : STD_LOGIC_VECTOR (35 downto 0);
signal in_4_amplitude_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_5_amplitude_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_6_enhanced_mag_spectrum_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_7_enhanced_mag_spectrum_stm : STD_LOGIC_VECTOR (31 downto 0);
signal out_1_a_priori_SNR_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_a_priori_SNR_stm : STD_LOGIC_VECTOR (31 downto 0);
signal out_3_noise_power_spectrum_snr_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_4_a_posteriori_SNR_stm : STD_LOGIC_VECTOR (31 downto 0);
signal out_5_estimated_SNR_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_6_estimated_SNR_dB_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_1_magnitude_spectrum_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_magnitude_spectrum_dut : STD_LOGIC_VECTOR (17 downto 0);
signal in_3_noisy_power_spectrum_dut : STD_LOGIC_VECTOR (35 downto 0);
signal in_4_amplitude_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_5_amplitude_dut : STD_LOGIC_VECTOR (15 downto 0);
signal in_6_enhanced_mag_spectrum_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_7_enhanced_mag_spectrum_dut : STD_LOGIC_VECTOR (31 downto 0);
signal out_1_a_priori_SNR_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_a_priori_SNR_dut : STD_LOGIC_VECTOR (31 downto 0);
signal out_3_noise_power_spectrum_snr_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_4_a_posteriori_SNR_dut : STD_LOGIC_VECTOR (31 downto 0);
signal out_5_estimated_SNR_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_6_estimated_SNR_dB_dut : STD_LOGIC_VECTOR (15 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkin_1_magnitude_spectrum_valid : process (clk, areset, in_1_magnitude_spectrum_valid_dut, in_1_magnitude_spectrum_valid_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_2_magnitude_spectrum : process (clk, areset, in_2_magnitude_spectrum_dut, in_2_magnitude_spectrum_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_3_noisy_power_spectrum : process (clk, areset, in_3_noisy_power_spectrum_dut, in_3_noisy_power_spectrum_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_4_amplitude_Valid : process (clk, areset, in_4_amplitude_Valid_dut, in_4_amplitude_Valid_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_5_amplitude : process (clk, areset, in_5_amplitude_dut, in_5_amplitude_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_6_enhanced_mag_spectrum_valid : process (clk, areset, in_6_enhanced_mag_spectrum_valid_dut, in_6_enhanced_mag_spectrum_valid_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_7_enhanced_mag_spectrum : process (clk, areset, in_7_enhanced_mag_spectrum_dut, in_7_enhanced_mag_spectrum_stm)
variable in_7_enhanced_mag_spectrum_real : REAL := 0.0;
variable in_7_enhanced_mag_spectrum_stm_real : REAL := 0.0;
begin
 in_7_enhanced_mag_spectrum_real := vIEEE_2_real(in_7_enhanced_mag_spectrum_dut, 8, 23, false);
 in_7_enhanced_mag_spectrum_stm_real := vIEEE_2_real(in_7_enhanced_mag_spectrum_stm, 8, 23, false);
END PROCESS;


dut : DSPB_MMSE_dut_feature_extraction port map (
    in_1_magnitude_spectrum_valid_stm,
    in_2_magnitude_spectrum_stm,
    in_3_noisy_power_spectrum_stm,
    in_4_amplitude_Valid_stm,
    in_5_amplitude_stm,
    in_6_enhanced_mag_spectrum_valid_stm,
    in_7_enhanced_mag_spectrum_stm,
    out_1_a_priori_SNR_valid_dut,
    out_2_a_priori_SNR_dut,
    out_3_noise_power_spectrum_snr_valid_dut,
    out_4_a_posteriori_SNR_dut,
    out_5_estimated_SNR_Valid_dut,
    out_6_estimated_SNR_dB_dut,
        clk,
        areset
);

sim : DSPB_MMSE_dut_feature_extraction_stm port map (
    in_1_magnitude_spectrum_valid_stm,
    in_2_magnitude_spectrum_stm,
    in_3_noisy_power_spectrum_stm,
    in_4_amplitude_Valid_stm,
    in_5_amplitude_stm,
    in_6_enhanced_mag_spectrum_valid_stm,
    in_7_enhanced_mag_spectrum_stm,
    out_1_a_priori_SNR_valid_stm,
    out_2_a_priori_SNR_stm,
    out_3_noise_power_spectrum_snr_valid_stm,
    out_4_a_posteriori_SNR_stm,
    out_5_estimated_SNR_Valid_stm,
    out_6_estimated_SNR_dB_stm,
        clk,
        areset
);

end normal;
