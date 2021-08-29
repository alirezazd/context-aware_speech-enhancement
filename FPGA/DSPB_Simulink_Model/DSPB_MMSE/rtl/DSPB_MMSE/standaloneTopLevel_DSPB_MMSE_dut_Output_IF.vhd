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
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

USE work.DSPB_MMSE_dut_safe_path.all;
entity standaloneTopLevel_DSPB_MMSE_dut_Output_IF is
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
end standaloneTopLevel_DSPB_MMSE_dut_Output_IF;

architecture normal of standaloneTopLevel_DSPB_MMSE_dut_Output_IF is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz is
        port (
            busIn_writedata : in std_logic_vector(15 downto 0);  -- Fixed Point
            busIn_address : in std_logic_vector(9 downto 0);  -- Fixed Point
            busIn_write : in std_logic_vector(0 downto 0);  -- Fixed Point
            busIn_read : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(8 downto 0);  -- Fixed Point
            in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(8 downto 0);  -- Fixed Point
            in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(0 downto 0);  -- Fixed Point
            busOut_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            busOut_readdatavalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic;
            h_areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_Output_IF is
        port (
            in_1_Enhanced_Signal_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_Enhanced_Signal : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_3_Estimated_SNR_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_Estimated_SNR_Db : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(8 downto 0);  -- Fixed Point
            out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_gnd_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_gnd_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal busSlaveFabric_DSPB_MMSE_dut_x_busOut_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal busSlaveFabric_DSPB_MMSE_dut_x_busOut_readdatavalid : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_Output_IF_out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_Output_IF_out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_Output_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : STD_LOGIC_VECTOR (0 downto 0);
    signal standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDelayed_q : STD_LOGIC_VECTOR (0 downto 0);
    signal standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDataValid_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_gnd_x(CONSTANT,8)
    sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_gnd_x_q <= "0000000000000000";

    -- sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_gnd_x(CONSTANT,7)
    sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_gnd_x_q <= "000000000";

    -- DSPB_MMSE_dut_Output_IF(BLACKBOX,12)
    theDSPB_MMSE_dut_Output_IF : DSPB_MMSE_dut_Output_IF
    PORT MAP (
        in_1_Enhanced_Signal_Valid => Enhanced_Signal_Valid,
        in_2_Enhanced_Signal => Enhanced_Signal,
        in_3_Estimated_SNR_Valid => Estimated_SNR_Valid,
        in_4_Estimated_SNR_Db => Estimated_SNR_Db,
        out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x => DSPB_MMSE_dut_Output_IF_out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x,
        out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x => DSPB_MMSE_dut_Output_IF_out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x,
        out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x => DSPB_MMSE_dut_Output_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x => DSPB_MMSE_dut_Output_IF_out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x => DSPB_MMSE_dut_Output_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        clk => clk,
        areset => areset
    );

    -- busSlaveFabric_DSPB_MMSE_dut_x(BLACKBOX,11)
    thebusSlaveFabric_DSPB_MMSE_dut_x : busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz
    PORT MAP (
        busIn_writedata => busIn_writedata,
        busIn_address => busIn_address,
        busIn_write => busIn_write,
        busIn_read => busIn_read,
        in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x => DSPB_MMSE_dut_Output_IF_out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x,
        in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x => DSPB_MMSE_dut_Output_IF_out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x,
        in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x => DSPB_MMSE_dut_Output_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x => sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_gnd_x_q,
        in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x => DSPB_MMSE_dut_Output_IF_out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x => sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_gnd_x_q,
        in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x => DSPB_MMSE_dut_Output_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x => GND_q,
        busOut_readdata => busSlaveFabric_DSPB_MMSE_dut_x_busOut_readdata,
        busOut_readdatavalid => busSlaveFabric_DSPB_MMSE_dut_x_busOut_readdatavalid,
        clk => clk,
        areset => areset,
        h_areset => h_areset
    );

    -- standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDelayed(DELAY,29)
    standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDelayed : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => busIn_read, xout => standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDelayed_q, clk => clk, aclr => h_areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDataValid(LOGICAL,30)
    standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDataValid_q <= busSlaveFabric_DSPB_MMSE_dut_x_busOut_readdatavalid or standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDelayed_q;

    -- busOut(BUSOUT,14)
    busOut_readdatavalid <= standaloneTopLevel_DSPB_MMSE_dut_Output_IF_readDataValid_q;
    busOut_readdata <= busSlaveFabric_DSPB_MMSE_dut_x_busOut_readdata;
    busOut_waitrequest <= GND_q;

END normal;
