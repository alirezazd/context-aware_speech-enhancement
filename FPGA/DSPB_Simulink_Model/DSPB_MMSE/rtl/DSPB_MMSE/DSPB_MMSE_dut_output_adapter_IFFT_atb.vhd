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

-- VHDL created from DSPB_MMSE_dut_output_adapter_IFFT
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity DSPB_MMSE_dut_output_adapter_IFFT_atb is
end;

architecture normal of DSPB_MMSE_dut_output_adapter_IFFT_atb is

component DSPB_MMSE_dut_output_adapter_IFFT is
    port (
        in_1_Valid1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_real_Input1 : in std_logic_vector(20 downto 0);  -- sfix21_en19
        in_2_imag_Input1 : in std_logic_vector(20 downto 0);  -- sfix21_en19
        out_1_Valid1_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_Output1 : out std_logic_vector(15 downto 0);  -- sfix16_en11
        clk : in std_logic;
        areset : in std_logic
    );
end component;

component DSPB_MMSE_dut_output_adapter_IFFT_stm is
    port (
        in_1_Valid1_stm : out std_logic_vector(0 downto 0);
        in_2_real_Input1_stm : out std_logic_vector(20 downto 0);
        in_2_imag_Input1_stm : out std_logic_vector(20 downto 0);
        out_1_Valid1_x_stm : out std_logic_vector(0 downto 0);
        out_2_Output1_stm : out std_logic_vector(15 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal in_1_Valid1_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_real_Input1_stm : STD_LOGIC_VECTOR (20 downto 0);
signal in_2_imag_Input1_stm : STD_LOGIC_VECTOR (20 downto 0);
signal out_1_Valid1_x_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_Output1_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_1_Valid1_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_real_Input1_dut : STD_LOGIC_VECTOR (20 downto 0);
signal in_2_imag_Input1_dut : STD_LOGIC_VECTOR (20 downto 0);
signal out_1_Valid1_x_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_Output1_dut : STD_LOGIC_VECTOR (15 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkGPIn1_cunroll_x : process (clk, areset, in_1_Valid1_dut, in_1_Valid1_stm, in_2_real_Input1_dut, in_2_real_Input1_stm, in_2_imag_Input1_dut, in_2_imag_Input1_stm)
begin
END PROCESS;


-- General Purpose data out check
checkGPOut : process (clk, areset)
variable mismatch_out_1_Valid1_x : BOOLEAN := FALSE;
variable mismatch_out_2_Output1 : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_out_1_Valid1_x := FALSE;
        mismatch_out_2_Output1 := FALSE;
        IF ( (out_1_Valid1_x_dut /= out_1_Valid1_x_stm)) THEN
            mismatch_out_1_Valid1_x := TRUE;
            report "Mismatch on device output pin out_1_Valid1_x" severity Warning;
        END IF;
        IF ( (out_2_Output1_dut /= out_2_Output1_stm)) THEN
            mismatch_out_2_Output1 := TRUE;
            report "Mismatch on device output pin out_2_Output1" severity Warning;
        END IF;
        IF (mismatch_out_1_Valid1_x or mismatch_out_2_Output1) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in general purpose signal. Check the status of any associated valid signals." severity Warning;
    END IF;
END PROCESS;


dut : DSPB_MMSE_dut_output_adapter_IFFT port map (
    in_1_Valid1_stm,
    in_2_real_Input1_stm,
    in_2_imag_Input1_stm,
    out_1_Valid1_x_dut,
    out_2_Output1_dut,
        clk,
        areset
);

sim : DSPB_MMSE_dut_output_adapter_IFFT_stm port map (
    in_1_Valid1_stm,
    in_2_real_Input1_stm,
    in_2_imag_Input1_stm,
    out_1_Valid1_x_stm,
    out_2_Output1_stm,
        clk,
        areset
);

end normal;
