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

-- VHDL created from DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_atb is
end;

architecture normal of DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_atb is

component DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror is
    port (
        in_1_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_input_spectrum : in std_logic_vector(31 downto 0);  -- float32_m23
        out_1_valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_output_spectrum : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end component;

component DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_stm is
    port (
        in_1_valid_stm : out std_logic_vector(0 downto 0);
        in_2_input_spectrum_stm : out std_logic_vector(31 downto 0);
        out_1_valid_x_stm : out std_logic_vector(0 downto 0);
        out_2_output_spectrum_stm : out std_logic_vector(31 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal in_1_valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_input_spectrum_stm : STD_LOGIC_VECTOR (31 downto 0);
signal out_1_valid_x_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_output_spectrum_stm : STD_LOGIC_VECTOR (31 downto 0);
signal in_1_valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_input_spectrum_dut : STD_LOGIC_VECTOR (31 downto 0);
signal out_1_valid_x_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_output_spectrum_dut : STD_LOGIC_VECTOR (31 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkGPIn : process (clk, areset, in_1_valid_dut, in_1_valid_stm, in_2_input_spectrum_dut, in_2_input_spectrum_stm)
variable in_2_input_spectrum_real : REAL := 0.0;
variable in_2_input_spectrum_stm_real : REAL := 0.0;
begin
 in_2_input_spectrum_real := vIEEE_2_real(in_2_input_spectrum_dut, 8, 23, false);
 in_2_input_spectrum_stm_real := vIEEE_2_real(in_2_input_spectrum_stm, 8, 23, false);
END PROCESS;


-- General Purpose data out check
checkGPOut : process (clk, areset)
variable mismatch_out_1_valid_x : BOOLEAN := FALSE;
variable mismatch_out_2_output_spectrum : BOOLEAN := FALSE;
variable out_2_output_spectrum_real : REAL := 0.0;
variable out_2_output_spectrum_stm_real : REAL := 0.0;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_out_1_valid_x := FALSE;
        mismatch_out_2_output_spectrum := FALSE;
  out_2_output_spectrum_real := vIEEE_2_real(out_2_output_spectrum_dut, 8, 23, false);
  out_2_output_spectrum_stm_real := vIEEE_2_real(out_2_output_spectrum_stm, 8, 23, false);
        IF ( (out_1_valid_x_dut /= out_1_valid_x_stm)) THEN
            mismatch_out_1_valid_x := TRUE;
            report "Mismatch on device output pin out_1_valid_x" severity Warning;
        END IF;
        IF ( not vIEEEisEqual(out_2_output_spectrum_dut, out_2_output_spectrum_stm, 8, 23, 0.000000e+00, 0.000000e+00)) THEN
            mismatch_out_2_output_spectrum := TRUE;
            report "Mismatch on device output pin out_2_output_spectrum" severity Warning;
        END IF;
        IF (mismatch_out_1_valid_x or mismatch_out_2_output_spectrum) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in general purpose signal. Check the status of any associated valid signals." severity Warning;
    END IF;
END PROCESS;


dut : DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror port map (
    in_1_valid_stm,
    in_2_input_spectrum_stm,
    out_1_valid_x_dut,
    out_2_output_spectrum_dut,
        clk,
        areset
);

sim : DSPB_MMSE_dut_output_adapter_IFFT_Adapter_Spectrum_Mirror_stm port map (
    in_1_valid_stm,
    in_2_input_spectrum_stm,
    out_1_valid_x_stm,
    out_2_output_spectrum_stm,
        clk,
        areset
);

end normal;
