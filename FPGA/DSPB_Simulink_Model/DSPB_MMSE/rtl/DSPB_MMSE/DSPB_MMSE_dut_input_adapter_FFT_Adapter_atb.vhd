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

-- VHDL created from DSPB_MMSE_dut_input_adapter_FFT_Adapter
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity DSPB_MMSE_dut_input_adapter_FFT_Adapter_atb is
end;

architecture normal of DSPB_MMSE_dut_input_adapter_FFT_Adapter_atb is

component DSPB_MMSE_dut_input_adapter_FFT_Adapter is
    port (
        in_2_real_FFT_In : in std_logic_vector(18 downto 0);  -- sfix19_en11
        in_2_imag_FFT_In : in std_logic_vector(18 downto 0);  -- sfix19_en11
        in_1_FFT_In_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_1_Spectrum_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_Magnitude_Spectrum : out std_logic_vector(17 downto 0);  -- ufix18_en11
        out_3_Power_Spectrum : out std_logic_vector(35 downto 0);  -- ufix36_en22
        out_4_Phase_Valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_5_Phase : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end component;

component DSPB_MMSE_dut_input_adapter_FFT_Adapter_stm is
    port (
        in_2_real_FFT_In_stm : out std_logic_vector(18 downto 0);
        in_2_imag_FFT_In_stm : out std_logic_vector(18 downto 0);
        in_1_FFT_In_Valid_stm : out std_logic_vector(0 downto 0);
        out_1_Spectrum_Valid_stm : out std_logic_vector(0 downto 0);
        out_2_Magnitude_Spectrum_stm : out std_logic_vector(17 downto 0);
        out_3_Power_Spectrum_stm : out std_logic_vector(35 downto 0);
        out_4_Phase_Valid_stm : out std_logic_vector(0 downto 0);
        out_5_Phase_stm : out std_logic_vector(31 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal in_2_real_FFT_In_stm : STD_LOGIC_VECTOR (18 downto 0);
signal in_2_imag_FFT_In_stm : STD_LOGIC_VECTOR (18 downto 0);
signal in_1_FFT_In_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_1_Spectrum_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_Magnitude_Spectrum_stm : STD_LOGIC_VECTOR (17 downto 0);
signal out_3_Power_Spectrum_stm : STD_LOGIC_VECTOR (35 downto 0);
signal out_4_Phase_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_5_Phase_stm : STD_LOGIC_VECTOR (31 downto 0);
signal in_2_real_FFT_In_dut : STD_LOGIC_VECTOR (18 downto 0);
signal in_2_imag_FFT_In_dut : STD_LOGIC_VECTOR (18 downto 0);
signal in_1_FFT_In_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_1_Spectrum_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_Magnitude_Spectrum_dut : STD_LOGIC_VECTOR (17 downto 0);
signal out_3_Power_Spectrum_dut : STD_LOGIC_VECTOR (35 downto 0);
signal out_4_Phase_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_5_Phase_dut : STD_LOGIC_VECTOR (31 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkGPIn1_cunroll_x : process (clk, areset, in_2_real_FFT_In_dut, in_2_real_FFT_In_stm, in_2_imag_FFT_In_dut, in_2_imag_FFT_In_stm, in_1_FFT_In_Valid_dut, in_1_FFT_In_Valid_stm)
begin
END PROCESS;


-- General Purpose data out check
checkGPOut : process (clk, areset)
variable mismatch_out_1_Spectrum_Valid : BOOLEAN := FALSE;
variable mismatch_out_2_Magnitude_Spectrum : BOOLEAN := FALSE;
variable mismatch_out_3_Power_Spectrum : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_out_1_Spectrum_Valid := FALSE;
        mismatch_out_2_Magnitude_Spectrum := FALSE;
        mismatch_out_3_Power_Spectrum := FALSE;
        IF ( (out_1_Spectrum_Valid_dut /= out_1_Spectrum_Valid_stm)) THEN
            mismatch_out_1_Spectrum_Valid := TRUE;
            report "Mismatch on device output pin out_1_Spectrum_Valid" severity Warning;
        END IF;
        IF ( (abs(signed(out_2_Magnitude_Spectrum_dut) - signed(out_2_Magnitude_Spectrum_stm)) > 3)) THEN
            mismatch_out_2_Magnitude_Spectrum := TRUE;
            report "Mismatch on device output pin out_2_Magnitude_Spectrum" severity Warning;
        END IF;
        IF ( (abs(signed(out_3_Power_Spectrum_dut) - signed(out_3_Power_Spectrum_stm)) > 3)) THEN
            mismatch_out_3_Power_Spectrum := TRUE;
            report "Mismatch on device output pin out_3_Power_Spectrum" severity Warning;
        END IF;
        IF (mismatch_out_1_Spectrum_Valid or mismatch_out_2_Magnitude_Spectrum or mismatch_out_3_Power_Spectrum) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in general purpose signal. Check the status of any associated valid signals." severity Warning;
    END IF;
END PROCESS;


-- General Purpose data out check
checkGPOut1 : process (clk, areset)
variable mismatch_out_4_Phase_Valid : BOOLEAN := FALSE;
variable mismatch_out_5_Phase : BOOLEAN := FALSE;
variable out_5_Phase_real : REAL := 0.0;
variable out_5_Phase_stm_real : REAL := 0.0;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_out_4_Phase_Valid := FALSE;
        mismatch_out_5_Phase := FALSE;
  out_5_Phase_real := vIEEE_2_real(out_5_Phase_dut, 8, 23, false);
  out_5_Phase_stm_real := vIEEE_2_real(out_5_Phase_stm, 8, 23, false);
        IF ( (out_4_Phase_Valid_dut /= out_4_Phase_Valid_stm)) THEN
            mismatch_out_4_Phase_Valid := TRUE;
            report "Mismatch on device output pin out_4_Phase_Valid" severity Warning;
        END IF;
        IF ( not vIEEEisEqual(out_5_Phase_dut, out_5_Phase_stm, 8, 23, 0.000000e+00, 0.000000e+00)) THEN
            mismatch_out_5_Phase := TRUE;
            report "Mismatch on device output pin out_5_Phase" severity Warning;
        END IF;
        IF (mismatch_out_4_Phase_Valid or mismatch_out_5_Phase) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in general purpose signal. Check the status of any associated valid signals." severity Warning;
    END IF;
END PROCESS;


dut : DSPB_MMSE_dut_input_adapter_FFT_Adapter port map (
    in_2_real_FFT_In_stm,
    in_2_imag_FFT_In_stm,
    in_1_FFT_In_Valid_stm,
    out_1_Spectrum_Valid_dut,
    out_2_Magnitude_Spectrum_dut,
    out_3_Power_Spectrum_dut,
    out_4_Phase_Valid_dut,
    out_5_Phase_dut,
        clk,
        areset
);

sim : DSPB_MMSE_dut_input_adapter_FFT_Adapter_stm port map (
    in_2_real_FFT_In_stm,
    in_2_imag_FFT_In_stm,
    in_1_FFT_In_Valid_stm,
    out_1_Spectrum_Valid_stm,
    out_2_Magnitude_Spectrum_stm,
    out_3_Power_Spectrum_stm,
    out_4_Phase_Valid_stm,
    out_5_Phase_stm,
        clk,
        areset
);

end normal;
