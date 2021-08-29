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

-- VHDL created from busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb is
end;

architecture normal of busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_atb is

component busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz is
    port (
        busIn_writedata : in std_logic_vector(15 downto 0);  -- ufix16
        busIn_address : in std_logic_vector(9 downto 0);  -- ufix10
        busIn_write : in std_logic_vector(0 downto 0);  -- ufix1
        busIn_read : in std_logic_vector(0 downto 0);  -- ufix1
        busOut_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        busOut_readdata : out std_logic_vector(15 downto 0);  -- ufix16
        in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : in std_logic_vector(15 downto 0);  -- sfix16_en8
        in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : in std_logic_vector(0 downto 0);  -- ufix1
        in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(8 downto 0);  -- ufix9
        in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(8 downto 0);  -- ufix9
        in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(15 downto 0);  -- sfix16_en11
        in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(15 downto 0);  -- sfix16_en14
        in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(0 downto 0);  -- ufix1
        in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(0 downto 0);  -- ufix1
        out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x : out std_logic_vector(15 downto 0);  -- sfix16_en14
        clk : in std_logic;
        areset : in std_logic;
        h_areset : in std_logic
    );
end component;

component busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_stm is
    port (
        busIn_writedata_stm : out std_logic_vector(15 downto 0);
        busIn_address_stm : out std_logic_vector(9 downto 0);
        busIn_write_stm : out std_logic_vector(0 downto 0);
        busIn_read_stm : out std_logic_vector(0 downto 0);
        busOut_readdatavalid_stm : out std_logic_vector(0 downto 0);
        busOut_readdata_stm : out std_logic_vector(15 downto 0);
        in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x_stm : out std_logic_vector(15 downto 0);
        in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x_stm : out std_logic_vector(0 downto 0);
        in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm : out std_logic_vector(8 downto 0);
        in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x_stm : out std_logic_vector(8 downto 0);
        in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm : out std_logic_vector(15 downto 0);
        in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm : out std_logic_vector(15 downto 0);
        in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm : out std_logic_vector(0 downto 0);
        in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x_stm : out std_logic_vector(0 downto 0);
        out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm : out std_logic_vector(15 downto 0);
        clk : out std_logic;
        areset : out std_logic;
        h_areset : out std_logic
    );
end component;

signal busIn_writedata_stm : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_address_stm : STD_LOGIC_VECTOR (9 downto 0);
signal busIn_write_stm : STD_LOGIC_VECTOR (0 downto 0);
signal busIn_read_stm : STD_LOGIC_VECTOR (0 downto 0);
signal busOut_readdatavalid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal busOut_readdata_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm : STD_LOGIC_VECTOR (8 downto 0);
signal in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x_stm : STD_LOGIC_VECTOR (8 downto 0);
signal in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm : STD_LOGIC_VECTOR (15 downto 0);
signal in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm : STD_LOGIC_VECTOR (0 downto 0);
signal in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x_stm : STD_LOGIC_VECTOR (0 downto 0);
signal out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_writedata_dut : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_address_dut : STD_LOGIC_VECTOR (9 downto 0);
signal busIn_write_dut : STD_LOGIC_VECTOR (0 downto 0);
signal busIn_read_dut : STD_LOGIC_VECTOR (0 downto 0);
signal busOut_readdatavalid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal busOut_readdata_dut : STD_LOGIC_VECTOR (15 downto 0);
signal in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x_dut : STD_LOGIC_VECTOR (15 downto 0);
signal in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x_dut : STD_LOGIC_VECTOR (8 downto 0);
signal in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x_dut : STD_LOGIC_VECTOR (8 downto 0);
signal in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x_dut : STD_LOGIC_VECTOR (15 downto 0);
signal in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x_dut : STD_LOGIC_VECTOR (15 downto 0);
signal in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x_dut : STD_LOGIC_VECTOR (0 downto 0);
signal in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x_dut : STD_LOGIC_VECTOR (0 downto 0);
signal out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x_dut : STD_LOGIC_VECTOR (15 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;
        signal h_areset : std_logic;

begin

-- General Purpose data in real output
checkin_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : process (clk, areset, in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x_dut, in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : process (clk, areset, in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x_dut, in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : process (clk, areset, in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x_dut, in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x : process (clk, areset, in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x_dut, in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : process (clk, areset, in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x_dut, in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x : process (clk, areset, in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x_dut, in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : process (clk, areset, in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x_dut, in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkin_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x : process (clk, areset, in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x_dut, in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x_stm)
begin
END PROCESS;


dut : busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz port map (
    busIn_writedata_stm,
    busIn_address_stm,
    busIn_write_stm,
    busIn_read_stm,
    busOut_readdatavalid_dut,
    busOut_readdata_dut,
    in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x_stm,
    in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x_stm,
    in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm,
    in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x_stm,
    in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm,
    in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm,
    in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm,
    in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x_stm,
    out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x_dut,
        clk,
        areset,
        h_areset
);

sim : busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_stm port map (
    busIn_writedata_stm,
    busIn_address_stm,
    busIn_write_stm,
    busIn_read_stm,
    busOut_readdatavalid_stm,
    busOut_readdata_stm,
    in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x_stm,
    in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x_stm,
    in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm,
    in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x_stm,
    in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm,
    in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm,
    in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x_stm,
    in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x_stm,
    out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x_stm,
        clk,
        areset,
        h_areset
);

end normal;
