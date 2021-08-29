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
use work.dspba_sim_library_package.all;
entity DSPB_MMSE_dut_output_adapter_IFFT_Adapter_atb is
end;

architecture normal of DSPB_MMSE_dut_output_adapter_IFFT_Adapter_atb is

component DSPB_MMSE_dut_output_adapter_IFFT_Adapter is
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
end component;

component DSPB_MMSE_dut_output_adapter_IFFT_Adapter_stm is
    port (
        out_1_valid_stm : out std_logic_vector(0 downto 0);
        out_2_imag_output_stm : out std_logic_vector(20 downto 0);
        out_2_real_output_stm : out std_logic_vector(20 downto 0);
        in_1_Enhanced_Magnitude_Spectrum_Valid_stm : out std_logic_vector(0 downto 0);
        in_2_Enhanced_Magnitude_Spectrum_stm : out std_logic_vector(31 downto 0);
        in_3_Phase_Valid_stm : out std_logic_vector(0 downto 0);
        in_4_Phase_stm : out std_logic_vector(31 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal out_1_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_imag_output_stm : STD_LOGIC_VECTOR (20 downto 0);
signal out_2_real_output_stm : STD_LOGIC_VECTOR (20 downto 0);
signal in_1_Enhanced_Magnitude_Spectrum_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_Enhanced_Magnitude_Spectrum_stm : STD_LOGIC_VECTOR (31 downto 0);
signal in_3_Phase_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_4_Phase_stm : STD_LOGIC_VECTOR (31 downto 0);
signal out_1_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_imag_output_dut : STD_LOGIC_VECTOR (20 downto 0);
signal out_2_real_output_dut : STD_LOGIC_VECTOR (20 downto 0);
signal in_1_Enhanced_Magnitude_Spectrum_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_Enhanced_Magnitude_Spectrum_dut : STD_LOGIC_VECTOR (31 downto 0);
signal in_3_Phase_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_4_Phase_dut : STD_LOGIC_VECTOR (31 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkin_1_Enhanced_Magnitude_Spectrum_Valid : process (clk, areset, in_1_Enhanced_Magnitude_Spectrum_Valid_dut, in_1_Enhanced_Magnitude_Spectrum_Valid_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_2_Enhanced_Magnitude_Spectrum : process (clk, areset, in_2_Enhanced_Magnitude_Spectrum_dut, in_2_Enhanced_Magnitude_Spectrum_stm)
variable in_2_Enhanced_Magnitude_Spectrum_real : REAL := 0.0;
variable in_2_Enhanced_Magnitude_Spectrum_stm_real : REAL := 0.0;
begin
 in_2_Enhanced_Magnitude_Spectrum_real := vIEEE_2_real(in_2_Enhanced_Magnitude_Spectrum_dut, 8, 23, false);
 in_2_Enhanced_Magnitude_Spectrum_stm_real := vIEEE_2_real(in_2_Enhanced_Magnitude_Spectrum_stm, 8, 23, false);
END PROCESS;


-- General Purpose data in real output
checkin_3_Phase_Valid : process (clk, areset, in_3_Phase_Valid_dut, in_3_Phase_Valid_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_4_Phase : process (clk, areset, in_4_Phase_dut, in_4_Phase_stm)
variable in_4_Phase_real : REAL := 0.0;
variable in_4_Phase_stm_real : REAL := 0.0;
begin
 in_4_Phase_real := vIEEE_2_real(in_4_Phase_dut, 8, 23, false);
 in_4_Phase_stm_real := vIEEE_2_real(in_4_Phase_stm, 8, 23, false);
END PROCESS;


dut : DSPB_MMSE_dut_output_adapter_IFFT_Adapter port map (
    out_1_valid_dut,
    out_2_imag_output_dut,
    out_2_real_output_dut,
    in_1_Enhanced_Magnitude_Spectrum_Valid_stm,
    in_2_Enhanced_Magnitude_Spectrum_stm,
    in_3_Phase_Valid_stm,
    in_4_Phase_stm,
        clk,
        areset
);

sim : DSPB_MMSE_dut_output_adapter_IFFT_Adapter_stm port map (
    out_1_valid_stm,
    out_2_imag_output_stm,
    out_2_real_output_stm,
    in_1_Enhanced_Magnitude_Spectrum_Valid_stm,
    in_2_Enhanced_Magnitude_Spectrum_stm,
    in_3_Phase_Valid_stm,
    in_4_Phase_stm,
        clk,
        areset
);

end normal;
