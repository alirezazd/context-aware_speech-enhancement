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

-- VHDL created from DSPB_MMSE_dut_Enhacement_Algorithm_MMSE
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_atb is
end;

architecture normal of DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_atb is

component DSPB_MMSE_dut_Enhacement_Algorithm_MMSE is
    port (
        in_1_a_priori_SNR_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_a_priori_SNR : in std_logic_vector(31 downto 0);  -- float32_m23
        in_3_a_posteriori_SNR_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_4_a_posteriori_SNR : in std_logic_vector(31 downto 0);  -- float32_m23
        in_5_noisy_magnitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_6_noisy_magnitude_spectrum : in std_logic_vector(17 downto 0);  -- ufix18_en11
        out_1_enhanced_magnitude_spectrum_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_enhanced_magnitude_spectrum : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end component;

component DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_stm is
    port (
        in_1_a_priori_SNR_valid_stm : out std_logic_vector(0 downto 0);
        in_2_a_priori_SNR_stm : out std_logic_vector(31 downto 0);
        in_3_a_posteriori_SNR_Valid_stm : out std_logic_vector(0 downto 0);
        in_4_a_posteriori_SNR_stm : out std_logic_vector(31 downto 0);
        in_5_noisy_magnitude_spectrum_valid_stm : out std_logic_vector(0 downto 0);
        in_6_noisy_magnitude_spectrum_stm : out std_logic_vector(17 downto 0);
        out_1_enhanced_magnitude_spectrum_valid_stm : out std_logic_vector(0 downto 0);
        out_2_enhanced_magnitude_spectrum_stm : out std_logic_vector(31 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal in_1_a_priori_SNR_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_a_priori_SNR_stm : STD_LOGIC_VECTOR (31 downto 0);
signal in_3_a_posteriori_SNR_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_4_a_posteriori_SNR_stm : STD_LOGIC_VECTOR (31 downto 0);
signal in_5_noisy_magnitude_spectrum_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_6_noisy_magnitude_spectrum_stm : STD_LOGIC_VECTOR (17 downto 0);
signal out_1_enhanced_magnitude_spectrum_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_enhanced_magnitude_spectrum_stm : STD_LOGIC_VECTOR (31 downto 0);
signal in_1_a_priori_SNR_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_a_priori_SNR_dut : STD_LOGIC_VECTOR (31 downto 0);
signal in_3_a_posteriori_SNR_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_4_a_posteriori_SNR_dut : STD_LOGIC_VECTOR (31 downto 0);
signal in_5_noisy_magnitude_spectrum_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_6_noisy_magnitude_spectrum_dut : STD_LOGIC_VECTOR (17 downto 0);
signal out_1_enhanced_magnitude_spectrum_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_enhanced_magnitude_spectrum_dut : STD_LOGIC_VECTOR (31 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkGPIn1 : process (clk, areset, in_1_a_priori_SNR_valid_dut, in_1_a_priori_SNR_valid_stm, in_2_a_priori_SNR_dut, in_2_a_priori_SNR_stm)
variable in_2_a_priori_SNR_real : REAL := 0.0;
variable in_2_a_priori_SNR_stm_real : REAL := 0.0;
begin
 in_2_a_priori_SNR_real := vIEEE_2_real(in_2_a_priori_SNR_dut, 8, 23, false);
 in_2_a_priori_SNR_stm_real := vIEEE_2_real(in_2_a_priori_SNR_stm, 8, 23, false);
END PROCESS;


-- General Purpose data in real output
checkGPIn2 : process (clk, areset, in_3_a_posteriori_SNR_Valid_dut, in_3_a_posteriori_SNR_Valid_stm, in_4_a_posteriori_SNR_dut, in_4_a_posteriori_SNR_stm)
variable in_4_a_posteriori_SNR_real : REAL := 0.0;
variable in_4_a_posteriori_SNR_stm_real : REAL := 0.0;
begin
 in_4_a_posteriori_SNR_real := vIEEE_2_real(in_4_a_posteriori_SNR_dut, 8, 23, false);
 in_4_a_posteriori_SNR_stm_real := vIEEE_2_real(in_4_a_posteriori_SNR_stm, 8, 23, false);
END PROCESS;


-- General Purpose data in real output
checkGPIn3 : process (clk, areset, in_5_noisy_magnitude_spectrum_valid_dut, in_5_noisy_magnitude_spectrum_valid_stm, in_6_noisy_magnitude_spectrum_dut, in_6_noisy_magnitude_spectrum_stm)
begin
END PROCESS;


-- General Purpose data out check
checkGPOut1 : process (clk, areset)
variable mismatch_out_1_enhanced_magnitude_spectrum_valid : BOOLEAN := FALSE;
variable mismatch_out_2_enhanced_magnitude_spectrum : BOOLEAN := FALSE;
variable out_2_enhanced_magnitude_spectrum_real : REAL := 0.0;
variable out_2_enhanced_magnitude_spectrum_stm_real : REAL := 0.0;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_out_1_enhanced_magnitude_spectrum_valid := FALSE;
        mismatch_out_2_enhanced_magnitude_spectrum := FALSE;
  out_2_enhanced_magnitude_spectrum_real := vIEEE_2_real(out_2_enhanced_magnitude_spectrum_dut, 8, 23, false);
  out_2_enhanced_magnitude_spectrum_stm_real := vIEEE_2_real(out_2_enhanced_magnitude_spectrum_stm, 8, 23, false);
        IF ( (out_1_enhanced_magnitude_spectrum_valid_dut /= out_1_enhanced_magnitude_spectrum_valid_stm)) THEN
            mismatch_out_1_enhanced_magnitude_spectrum_valid := TRUE;
            report "Mismatch on device output pin out_1_enhanced_magnitude_spectrum_valid" severity Warning;
        END IF;
        IF ( not vIEEEisEqual(out_2_enhanced_magnitude_spectrum_dut, out_2_enhanced_magnitude_spectrum_stm, 8, 23, 0.000000e+00, 0.000000e+00)) THEN
            mismatch_out_2_enhanced_magnitude_spectrum := TRUE;
            report "Mismatch on device output pin out_2_enhanced_magnitude_spectrum" severity Warning;
        END IF;
        IF (mismatch_out_1_enhanced_magnitude_spectrum_valid or mismatch_out_2_enhanced_magnitude_spectrum) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in general purpose signal. Check the status of any associated valid signals." severity Warning;
    END IF;
END PROCESS;


dut : DSPB_MMSE_dut_Enhacement_Algorithm_MMSE port map (
    in_1_a_priori_SNR_valid_stm,
    in_2_a_priori_SNR_stm,
    in_3_a_posteriori_SNR_Valid_stm,
    in_4_a_posteriori_SNR_stm,
    in_5_noisy_magnitude_spectrum_valid_stm,
    in_6_noisy_magnitude_spectrum_stm,
    out_1_enhanced_magnitude_spectrum_valid_dut,
    out_2_enhanced_magnitude_spectrum_dut,
        clk,
        areset
);

sim : DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_stm port map (
    in_1_a_priori_SNR_valid_stm,
    in_2_a_priori_SNR_stm,
    in_3_a_posteriori_SNR_Valid_stm,
    in_4_a_posteriori_SNR_stm,
    in_5_noisy_magnitude_spectrum_valid_stm,
    in_6_noisy_magnitude_spectrum_stm,
    out_1_enhanced_magnitude_spectrum_valid_stm,
    out_2_enhanced_magnitude_spectrum_stm,
        clk,
        areset
);

end normal;
