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

-- VHDL created from DSPB_MMSE_dut_input_adapter_Zero_pad
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity DSPB_MMSE_dut_input_adapter_Zero_pad_atb is
end;

architecture normal of DSPB_MMSE_dut_input_adapter_Zero_pad_atb is

component DSPB_MMSE_dut_input_adapter_Zero_pad is
    port (
        in_1_Input_Signal_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_Input_Signal : in std_logic_vector(15 downto 0);  -- sfix16_en14
        out_1_Input_Signal_Valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_Input_Signal_x : out std_logic_vector(15 downto 0);  -- sfix16_en14
        clk : in std_logic;
        areset : in std_logic
    );
end component;

component DSPB_MMSE_dut_input_adapter_Zero_pad_stm is
    port (
        in_1_Input_Signal_Valid_stm : out std_logic_vector(0 downto 0);
        in_2_Input_Signal_stm : out std_logic_vector(15 downto 0);
        out_1_Input_Signal_Valid_x_stm : out std_logic_vector(0 downto 0);
        out_2_Input_Signal_x_stm : out std_logic_vector(15 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal in_1_Input_Signal_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_Input_Signal_stm : STD_LOGIC_VECTOR (15 downto 0);
signal out_1_Input_Signal_Valid_x_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_Input_Signal_x_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_1_Input_Signal_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_2_Input_Signal_dut : STD_LOGIC_VECTOR (15 downto 0);
signal out_1_Input_Signal_Valid_x_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_2_Input_Signal_x_dut : STD_LOGIC_VECTOR (15 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkGPIn1 : process (clk, areset, in_1_Input_Signal_Valid_dut, in_1_Input_Signal_Valid_stm, in_2_Input_Signal_dut, in_2_Input_Signal_stm)
begin
END PROCESS;


-- General Purpose data out check
checkGPOut : process (clk, areset)
variable mismatch_out_1_Input_Signal_Valid_x : BOOLEAN := FALSE;
variable mismatch_out_2_Input_Signal_x : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_out_1_Input_Signal_Valid_x := FALSE;
        mismatch_out_2_Input_Signal_x := FALSE;
        IF ( (out_1_Input_Signal_Valid_x_dut /= out_1_Input_Signal_Valid_x_stm)) THEN
            mismatch_out_1_Input_Signal_Valid_x := TRUE;
            report "Mismatch on device output pin out_1_Input_Signal_Valid_x" severity Warning;
        END IF;
        IF ( (out_2_Input_Signal_x_dut /= out_2_Input_Signal_x_stm)) THEN
            mismatch_out_2_Input_Signal_x := TRUE;
            report "Mismatch on device output pin out_2_Input_Signal_x" severity Warning;
        END IF;
        IF (mismatch_out_1_Input_Signal_Valid_x or mismatch_out_2_Input_Signal_x) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in general purpose signal. Check the status of any associated valid signals." severity Warning;
    END IF;
END PROCESS;


dut : DSPB_MMSE_dut_input_adapter_Zero_pad port map (
    in_1_Input_Signal_Valid_stm,
    in_2_Input_Signal_stm,
    out_1_Input_Signal_Valid_x_dut,
    out_2_Input_Signal_x_dut,
        clk,
        areset
);

sim : DSPB_MMSE_dut_input_adapter_Zero_pad_stm port map (
    in_1_Input_Signal_Valid_stm,
    in_2_Input_Signal_stm,
    out_1_Input_Signal_Valid_x_stm,
    out_2_Input_Signal_x_stm,
        clk,
        areset
);

end normal;
