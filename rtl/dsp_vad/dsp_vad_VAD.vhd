-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #646)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2019 Intel Corporation.  All rights reserved.
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

-- VHDL created from dsp_vad_VAD
-- VHDL created on Sat Feb 01 20:40:56 2020


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

USE work.dsp_vad_VAD_safe_path.all;
entity dsp_vad_VAD is
    port (
        busIn_writedata : in std_logic_vector(31 downto 0);  -- ufix32
        busIn_address : in std_logic_vector(2 downto 0);  -- ufix3
        busIn_write : in std_logic_vector(0 downto 0);  -- ufix1
        busIn_read : in std_logic_vector(0 downto 0);  -- ufix1
        busOut_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        busOut_readdata : out std_logic_vector(31 downto 0);  -- ufix32
        busOut_waitrequest : out std_logic_vector(0 downto 0);  -- ufix1
        clk : in std_logic;
        areset : in std_logic;
        h_areset : in std_logic
    );
end dsp_vad_VAD;

architecture normal of dsp_vad_VAD is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz is
        port (
            busIn_writedata : in std_logic_vector(31 downto 0);  -- Fixed Point
            busIn_address : in std_logic_vector(2 downto 0);  -- Fixed Point
            busIn_write : in std_logic_vector(0 downto 0);  -- Fixed Point
            busIn_read : in std_logic_vector(0 downto 0);  -- Fixed Point
            busOut_readdata : out std_logic_vector(31 downto 0);  -- Fixed Point
            busOut_readdatavalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x : out std_logic_vector(31 downto 0);  -- Floating Point
            out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x : out std_logic_vector(31 downto 0);  -- Floating Point
            out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic;
            h_areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal busSlaveFabric_busOut_readdata : STD_LOGIC_VECTOR (31 downto 0);
    signal busSlaveFabric_busOut_readdatavalid : STD_LOGIC_VECTOR (0 downto 0);
    signal dsp_vad_VAD_readDelayed_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dsp_vad_VAD_readDataValid_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- busSlaveFabric(BLACKBOX,6)
    thebusSlaveFabric : busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz
    PORT MAP (
        busIn_writedata => busIn_writedata,
        busIn_address => busIn_address,
        busIn_write => busIn_write,
        busIn_read => busIn_read,
        busOut_readdata => busSlaveFabric_busOut_readdata,
        busOut_readdatavalid => busSlaveFabric_busOut_readdatavalid,
        clk => clk,
        areset => areset,
        h_areset => h_areset
    );

    -- dsp_vad_VAD_readDelayed(DELAY,12)
    dsp_vad_VAD_readDelayed : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => busIn_read, xout => dsp_vad_VAD_readDelayed_q, clk => clk, aclr => h_areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- dsp_vad_VAD_readDataValid(LOGICAL,13)
    dsp_vad_VAD_readDataValid_q <= busSlaveFabric_busOut_readdatavalid or dsp_vad_VAD_readDelayed_q;

    -- busOut(BUSOUT,5)
    busOut_readdatavalid <= dsp_vad_VAD_readDataValid_q;
    busOut_readdata <= busSlaveFabric_busOut_readdata;
    busOut_waitrequest <= GND_q;

END normal;
