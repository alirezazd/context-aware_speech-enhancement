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

-- VHDL created from standaloneTopLevel_DSPB_MMSE_dut_Output_IF
-- VHDL created on Mon Aug 16 17:43:59 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity standaloneTopLevel_DSPB_MMSE_dut_Output_IF_atb is
end;

architecture normal of standaloneTopLevel_DSPB_MMSE_dut_Output_IF_atb is

component standaloneTopLevel_DSPB_MMSE_dut_Output_IF is
    port (
        busIn_writedata : in std_logic_vector(15 downto 0);  -- ufix16
        busIn_address : in std_logic_vector(9 downto 0);  -- ufix10
        busIn_write : in std_logic_vector(0 downto 0);  -- ufix1
        busIn_read : in std_logic_vector(0 downto 0);  -- ufix1
        busOut_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        busOut_readdata : out std_logic_vector(15 downto 0);  -- ufix16
        busOut_waitrequest : out std_logic_vector(0 downto 0);  -- ufix1
        Enhanced_Signal_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        Enhanced_Signal : in std_logic_vector(15 downto 0);  -- sfix16_en11
        Estimated_SNR_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        Estimated_SNR_Db : in std_logic_vector(15 downto 0);  -- sfix16_en8
        clk : in std_logic;
        areset : in std_logic;
        h_areset : in std_logic
    );
end component;

component standaloneTopLevel_DSPB_MMSE_dut_Output_IF_stm is
    port (
        busIn_writedata_stm : out std_logic_vector(15 downto 0);
        busIn_address_stm : out std_logic_vector(9 downto 0);
        busIn_write_stm : out std_logic_vector(0 downto 0);
        busIn_read_stm : out std_logic_vector(0 downto 0);
        busOut_readdatavalid_stm : out std_logic_vector(0 downto 0);
        busOut_readdata_stm : out std_logic_vector(15 downto 0);
        busOut_waitrequest_stm : out std_logic_vector(0 downto 0);
        Enhanced_Signal_Valid_stm : out std_logic_vector(0 downto 0);
        Enhanced_Signal_stm : out std_logic_vector(15 downto 0);
        Estimated_SNR_Valid_stm : out std_logic_vector(0 downto 0);
        Estimated_SNR_Db_stm : out std_logic_vector(15 downto 0);
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
signal busOut_waitrequest_stm : STD_LOGIC_VECTOR (0 downto 0);
signal Enhanced_Signal_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal Enhanced_Signal_stm : STD_LOGIC_VECTOR (15 downto 0);
signal Estimated_SNR_Valid_stm : STD_LOGIC_VECTOR (0 downto 0);
signal Estimated_SNR_Db_stm : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_writedata_dut : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_address_dut : STD_LOGIC_VECTOR (9 downto 0);
signal busIn_write_dut : STD_LOGIC_VECTOR (0 downto 0);
signal busIn_read_dut : STD_LOGIC_VECTOR (0 downto 0);
signal busOut_readdatavalid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal busOut_readdata_dut : STD_LOGIC_VECTOR (15 downto 0);
signal busOut_waitrequest_dut : STD_LOGIC_VECTOR (0 downto 0);
signal Enhanced_Signal_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal Enhanced_Signal_dut : STD_LOGIC_VECTOR (15 downto 0);
signal Estimated_SNR_Valid_dut : STD_LOGIC_VECTOR (0 downto 0);
signal Estimated_SNR_Db_dut : STD_LOGIC_VECTOR (15 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;
        signal h_areset : std_logic;

begin

-- General Purpose data in real output
checkEnhanced_Signal_Valid : process (clk, areset, Enhanced_Signal_Valid_dut, Enhanced_Signal_Valid_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkEnhanced_Signal : process (clk, areset, Enhanced_Signal_dut, Enhanced_Signal_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkEstimated_SNR_Valid : process (clk, areset, Estimated_SNR_Valid_dut, Estimated_SNR_Valid_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkEstimated_SNR_Db : process (clk, areset, Estimated_SNR_Db_dut, Estimated_SNR_Db_stm)
begin
END PROCESS;


dut : standaloneTopLevel_DSPB_MMSE_dut_Output_IF port map (
    busIn_writedata_stm,
    busIn_address_stm,
    busIn_write_stm,
    busIn_read_stm,
    busOut_readdatavalid_dut,
    busOut_readdata_dut,
    busOut_waitrequest_dut,
    Enhanced_Signal_Valid_stm,
    Enhanced_Signal_stm,
    Estimated_SNR_Valid_stm,
    Estimated_SNR_Db_stm,
        clk,
        areset,
        h_areset
);

sim : standaloneTopLevel_DSPB_MMSE_dut_Output_IF_stm port map (
    busIn_writedata_stm,
    busIn_address_stm,
    busIn_write_stm,
    busIn_read_stm,
    busOut_readdatavalid_stm,
    busOut_readdata_stm,
    busOut_waitrequest_stm,
    Enhanced_Signal_Valid_stm,
    Enhanced_Signal_stm,
    Estimated_SNR_Valid_stm,
    Estimated_SNR_Db_stm,
        clk,
        areset,
        h_areset
);

end normal;
