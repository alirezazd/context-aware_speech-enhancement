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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_atb is
end;

architecture normal of DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_atb is

component DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale is
    port (
        in_1_amplitude_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_amplitude : in std_logic_vector(15 downto 0);  -- sfix16_en14
        in_3_noise_STD_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_4_noise_STD : in std_logic_vector(15 downto 0);  -- ufix16_en16
        out_1_scaled_signal_amplitude_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_scaled_noise_amplitude_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_3_scaled_amplitude : out std_logic_vector(15 downto 0);  -- ufix16_en15
        out_4_noise_count : out std_logic_vector(15 downto 0);  -- ufix16
        out_5_signal_count : out std_logic_vector(15 downto 0);  -- ufix16
        out_6_reset : out std_logic_vector(0 downto 0);  -- ufix1
        clk : in std_logic;
        areset : in std_logic
    );
end component;

component DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_stm is
    port (
        in_1_amplitude_valid_stm : out std_logic_vector(0 downto 0);
        in_2_amplitude_stm : out std_logic_vector(15 downto 0);
        in_3_noise_STD_valid_stm : out std_logic_vector(0 downto 0);
        in_4_noise_STD_stm : out std_logic_vector(15 downto 0);
        out_1_scaled_signal_amplitude_valid_stm : out std_logic_vector(0 downto 0);
        out_2_scaled_noise_amplitude_valid_stm : out std_logic_vector(0 downto 0);
        out_3_scaled_amplitude_stm : out std_logic_vector(15 downto 0);
        out_4_noise_count_stm : out std_logic_vector(15 downto 0);
        out_5_signal_count_stm : out std_logic_vector(15 downto 0);
        out_6_reset_stm : out std_logic_vector(0 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal in_1_amplitude_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_amplitude_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_3_noise_STD_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_4_noise_STD_stm : STD_LOGIC_VECTOR (15 downto 0);
signal out_1_scaled_signal_amplitude_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_scaled_noise_amplitude_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_3_scaled_amplitude_stm : STD_LOGIC_VECTOR (15 downto 0);
signal out_4_noise_count_stm : STD_LOGIC_VECTOR (15 downto 0);
signal out_5_signal_count_stm : STD_LOGIC_VECTOR (15 downto 0);
signal out_6_reset_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_1_amplitude_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_amplitude_dut : STD_LOGIC_VECTOR (15 downto 0);
signal in_3_noise_STD_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_4_noise_STD_dut : STD_LOGIC_VECTOR (15 downto 0);
signal out_1_scaled_signal_amplitude_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_scaled_noise_amplitude_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_3_scaled_amplitude_dut : STD_LOGIC_VECTOR (15 downto 0);
signal out_4_noise_count_dut : STD_LOGIC_VECTOR (15 downto 0);
signal out_5_signal_count_dut : STD_LOGIC_VECTOR (15 downto 0);
signal out_6_reset_dut : STD_LOGIC_VECTOR (0 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkGPIn2 : process (clk, areset, in_1_amplitude_valid_dut, in_1_amplitude_valid_stm, in_2_amplitude_dut, in_2_amplitude_stm, in_3_noise_STD_valid_dut, in_3_noise_STD_valid_stm, in_4_noise_STD_dut, in_4_noise_STD_stm)
begin
END PROCESS;


-- General Purpose data out check
checkGPOut3 : process (clk, areset)
variable mismatch_out_1_scaled_signal_amplitude_valid : BOOLEAN := FALSE;
variable mismatch_out_2_scaled_noise_amplitude_valid : BOOLEAN := FALSE;
variable mismatch_out_3_scaled_amplitude : BOOLEAN := FALSE;
variable mismatch_out_4_noise_count : BOOLEAN := FALSE;
variable mismatch_out_5_signal_count : BOOLEAN := FALSE;
variable mismatch_out_6_reset : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_out_1_scaled_signal_amplitude_valid := FALSE;
        mismatch_out_2_scaled_noise_amplitude_valid := FALSE;
        mismatch_out_3_scaled_amplitude := FALSE;
        mismatch_out_4_noise_count := FALSE;
        mismatch_out_5_signal_count := FALSE;
        mismatch_out_6_reset := FALSE;
        IF ( (out_1_scaled_signal_amplitude_valid_dut /= out_1_scaled_signal_amplitude_valid_stm)) THEN
            mismatch_out_1_scaled_signal_amplitude_valid := TRUE;
            report "Mismatch on device output pin out_1_scaled_signal_amplitude_valid" severity Warning;
        END IF;
        IF ( (out_2_scaled_noise_amplitude_valid_dut /= out_2_scaled_noise_amplitude_valid_stm)) THEN
            mismatch_out_2_scaled_noise_amplitude_valid := TRUE;
            report "Mismatch on device output pin out_2_scaled_noise_amplitude_valid" severity Warning;
        END IF;
        IF ( (out_3_scaled_amplitude_dut /= out_3_scaled_amplitude_stm)) THEN
            mismatch_out_3_scaled_amplitude := TRUE;
            report "Mismatch on device output pin out_3_scaled_amplitude" severity Warning;
        END IF;
        IF ( (out_4_noise_count_dut /= out_4_noise_count_stm)) THEN
            mismatch_out_4_noise_count := TRUE;
            report "Mismatch on device output pin out_4_noise_count" severity Warning;
        END IF;
        IF ( (out_5_signal_count_dut /= out_5_signal_count_stm)) THEN
            mismatch_out_5_signal_count := TRUE;
            report "Mismatch on device output pin out_5_signal_count" severity Warning;
        END IF;
        IF ( (out_6_reset_dut /= out_6_reset_stm)) THEN
            mismatch_out_6_reset := TRUE;
            report "Mismatch on device output pin out_6_reset" severity Warning;
        END IF;
        IF (mismatch_out_1_scaled_signal_amplitude_valid or mismatch_out_2_scaled_noise_amplitude_valid or mismatch_out_3_scaled_amplitude or mismatch_out_4_noise_count or mismatch_out_5_signal_count or mismatch_out_6_reset) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in general purpose signal. Check the status of any associated valid signals." severity Warning;
    END IF;
END PROCESS;


dut : DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale port map (
    in_1_amplitude_valid_stm,
    in_2_amplitude_stm,
    in_3_noise_STD_valid_stm,
    in_4_noise_STD_stm,
    out_1_scaled_signal_amplitude_valid_dut,
    out_2_scaled_noise_amplitude_valid_dut,
    out_3_scaled_amplitude_dut,
    out_4_noise_count_dut,
    out_5_signal_count_dut,
    out_6_reset_dut,
        clk,
        areset
);

sim : DSPB_MMSE_dut_feature_extraction_SNR_Estimator_split_and_scale_stm port map (
    in_1_amplitude_valid_stm,
    in_2_amplitude_stm,
    in_3_noise_STD_valid_stm,
    in_4_noise_STD_stm,
    out_1_scaled_signal_amplitude_valid_stm,
    out_2_scaled_noise_amplitude_valid_stm,
    out_3_scaled_amplitude_stm,
    out_4_noise_count_stm,
    out_5_signal_count_stm,
    out_6_reset_stm,
        clk,
        areset
);

end normal;
