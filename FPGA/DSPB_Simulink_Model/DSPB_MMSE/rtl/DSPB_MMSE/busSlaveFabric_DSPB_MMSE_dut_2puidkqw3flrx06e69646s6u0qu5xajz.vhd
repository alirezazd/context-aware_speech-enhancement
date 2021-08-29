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
-- VHDL created on Mon Aug 16 17:44:00 2021


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
entity busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz is
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
end busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz;

architecture normal of busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_802_readHit_and_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_802_readHit_and_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_addrGE0AndLtLen_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_a : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_b : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_o : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_q : STD_LOGIC_VECTOR (10 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_baseAddr_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_a : STD_LOGIC_VECTOR (12 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_b : STD_LOGIC_VECTOR (12 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_o : STD_LOGIC_VECTOR (12 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_reset0 : std_logic;
    signal DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ir : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_r : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ib : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_weAnd_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_addrGE0AndLtLen_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_a : STD_LOGIC_VECTOR (12 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_b : STD_LOGIC_VECTOR (12 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_o : STD_LOGIC_VECTOR (12 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_reset0 : std_logic;
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ir : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_r : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ib : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_weAnd_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_802_const_802_x_q : STD_LOGIC_VECTOR (9 downto 0);
    signal addr_802_cmp_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mm_reg_802_data_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal bus_selector_q : STD_LOGIC_VECTOR (15 downto 0);
    signal bus_selector_v : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Output_IF_output_fifo_cmpGE0_x_cmp_nsign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_IF_input_fifo_cmpGE0_x_cmp_nsign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_addr_802_readHit_and_x_q_2_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- mm_reg_802_data_x(REG,29)@2
    mm_reg_802_data_x_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            mm_reg_802_data_x_q <= "0000000000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x = "1") THEN
                mm_reg_802_data_x_q <= in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x;
            END IF;
        END IF;
    END PROCESS;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- addr_802_const_802_x(CONSTANT,26)
    addr_802_const_802_x_q <= "1100100010";

    -- addr_802_cmp_x(LOGICAL,27)@0
    addr_802_cmp_x_q <= "1" WHEN addr_802_const_802_x_q = busIn_address ELSE "0";

    -- addr_802_readHit_and_x(LOGICAL,2)@0 + 1
    addr_802_readHit_and_x_qi <= addr_802_cmp_x_q and busIn_read;
    addr_802_readHit_and_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => addr_802_readHit_and_x_qi, xout => addr_802_readHit_and_x_q, clk => clk, aclr => h_areset );

    -- redist2_addr_802_readHit_and_x_q_2(DELAY,49)
    redist2_addr_802_readHit_and_x_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => addr_802_readHit_and_x_q, xout => redist2_addr_802_readHit_and_x_q_2_q, clk => clk, aclr => h_areset );

    -- DSPB_MMSE_dut_Output_IF_output_fifo_baseAddr_x(CONSTANT,6)
    DSPB_MMSE_dut_Output_IF_output_fifo_baseAddr_x_q <= "0110010001";

    -- DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x(COMPARE,19)@0
    DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 10 => busIn_address(9)) & busIn_address));
    DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & DSPB_MMSE_dut_Output_IF_output_fifo_baseAddr_x_q));
    DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_a) - SIGNED(DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_b));
    DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_c(0) <= DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_o(12);

    -- DSPB_MMSE_dut_input_IF_input_fifo_cmpGE0_x_cmp_nsign(LOGICAL,46)@0
    DSPB_MMSE_dut_input_IF_input_fifo_cmpGE0_x_cmp_nsign_q <= STD_LOGIC_VECTOR(not (busIn_address(9 downto 9)));

    -- DSPB_MMSE_dut_input_IF_input_fifo_addrGE0AndLtLen_x(LOGICAL,15)@0
    DSPB_MMSE_dut_input_IF_input_fifo_addrGE0AndLtLen_x_q <= DSPB_MMSE_dut_input_IF_input_fifo_cmpGE0_x_cmp_nsign_q and DSPB_MMSE_dut_input_IF_input_fifo_cmpLtLen_x_c;

    -- DSPB_MMSE_dut_input_IF_input_fifo_weAnd_x(LOGICAL,25)@0
    DSPB_MMSE_dut_input_IF_input_fifo_weAnd_x_q <= DSPB_MMSE_dut_input_IF_input_fifo_addrGE0AndLtLen_x_q and busIn_write;

    -- DSPB_MMSE_dut_input_IF_input_fifo_mem_x(DUALMEM,22)@0 + 2
    DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ia <= busIn_writedata;
    DSPB_MMSE_dut_input_IF_input_fifo_mem_x_aa <= busIn_address(8 downto 0);
    DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ib <= STD_LOGIC_VECTOR(in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x);
    DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ab <= in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x;
    DSPB_MMSE_dut_input_IF_input_fifo_mem_x_reset0 <= h_areset;
    DSPB_MMSE_dut_input_IF_input_fifo_mem_x_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "BIDIR_DUAL_PORT",
        width_a => 16,
        widthad_a => 9,
        numwords_a => 401,
        width_b => 16,
        widthad_b => 9,
        numwords_b => 401,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_port_a => "NEW_DATA_NO_NBE_READ",
        read_during_write_mode_port_b => "NEW_DATA_NO_NBE_READ",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_DSPB_MMSE_dut_inpuA0Zinput_fifo_mem_x.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => DSPB_MMSE_dut_input_IF_input_fifo_mem_x_reset0,
        clock0 => clk,
        address_a => DSPB_MMSE_dut_input_IF_input_fifo_mem_x_aa,
        data_a => DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ia,
        wren_a => DSPB_MMSE_dut_input_IF_input_fifo_weAnd_x_q(0),
        q_a => DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ir,
        address_b => DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ab,
        data_b => DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ib,
        wren_b => in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x(0),
        q_b => DSPB_MMSE_dut_input_IF_input_fifo_mem_x_iq
    );
    DSPB_MMSE_dut_input_IF_input_fifo_mem_x_q <= DSPB_MMSE_dut_input_IF_input_fifo_mem_x_iq(15 downto 0);
    DSPB_MMSE_dut_input_IF_input_fifo_mem_x_r <= DSPB_MMSE_dut_input_IF_input_fifo_mem_x_ir(15 downto 0);

    -- DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x(LOGICAL,23)@0 + 1
    DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_qi <= DSPB_MMSE_dut_input_IF_input_fifo_addrGE0AndLtLen_x_q and busIn_read;
    DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_qi, xout => DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_q, clk => clk, aclr => h_areset );

    -- redist0_DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_q_2(DELAY,47)
    redist0_DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_q, xout => redist0_DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_q_2_q, clk => clk, aclr => h_areset );

    -- DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x(COMPARE,8)@0
    DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((12 downto 11 => DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_q(10)) & DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_q));
    DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & DSPB_MMSE_dut_Output_IF_output_fifo_baseAddr_x_q));
    DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_o <= STD_LOGIC_VECTOR(SIGNED(DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_a) - SIGNED(DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_b));
    DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_c(0) <= DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_o(12);

    -- DSPB_MMSE_dut_Output_IF_output_fifo_cmpGE0_x_cmp_nsign(LOGICAL,44)@0
    DSPB_MMSE_dut_Output_IF_output_fifo_cmpGE0_x_cmp_nsign_q <= STD_LOGIC_VECTOR(not (DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_q(10 downto 10)));

    -- DSPB_MMSE_dut_Output_IF_output_fifo_addrGE0AndLtLen_x(LOGICAL,4)@0
    DSPB_MMSE_dut_Output_IF_output_fifo_addrGE0AndLtLen_x_q <= DSPB_MMSE_dut_Output_IF_output_fifo_cmpGE0_x_cmp_nsign_q and DSPB_MMSE_dut_Output_IF_output_fifo_cmpLtLen_x_c;

    -- DSPB_MMSE_dut_Output_IF_output_fifo_weAnd_x(LOGICAL,14)@0
    DSPB_MMSE_dut_Output_IF_output_fifo_weAnd_x_q <= DSPB_MMSE_dut_Output_IF_output_fifo_addrGE0AndLtLen_x_q and busIn_write;

    -- DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x(SUB,5)@0
    DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_a <= STD_LOGIC_VECTOR("0" & busIn_address);
    DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_b <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_Output_IF_output_fifo_baseAddr_x_q);
    DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_o <= STD_LOGIC_VECTOR(UNSIGNED(DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_a) - UNSIGNED(DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_b));
    DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_q <= DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_o(10 downto 0);

    -- DSPB_MMSE_dut_Output_IF_output_fifo_mem_x(DUALMEM,11)@0 + 2
    DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ia <= busIn_writedata;
    DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_aa <= DSPB_MMSE_dut_Output_IF_output_fifo_addrOffset_x_q(8 downto 0);
    DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ib <= STD_LOGIC_VECTOR(in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x);
    DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ab <= in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x;
    DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_reset0 <= h_areset;
    DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "BIDIR_DUAL_PORT",
        width_a => 16,
        widthad_a => 9,
        numwords_a => 401,
        width_b => 16,
        widthad_b => 9,
        numwords_b => 401,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_port_a => "NEW_DATA_NO_NBE_READ",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz_DSPB_MMSE_dut_OutpA0Zutput_fifo_mem_x.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_reset0,
        clock0 => clk,
        address_a => DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_aa,
        data_a => DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ia,
        wren_a => DSPB_MMSE_dut_Output_IF_output_fifo_weAnd_x_q(0),
        q_a => DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ir,
        address_b => DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ab,
        data_b => DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ib,
        wren_b => in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x(0),
        rden_b => '0'
    );
    DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_r <= DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_ir(15 downto 0);

    -- DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x(LOGICAL,12)@0 + 1
    DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_qi <= DSPB_MMSE_dut_Output_IF_output_fifo_addrGE0AndLtLen_x_q and busIn_read;
    DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_qi, xout => DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_q, clk => clk, aclr => h_areset );

    -- redist1_DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_q_2(DELAY,48)
    redist1_DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_q, xout => redist1_DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_q_2_q, clk => clk, aclr => h_areset );

    -- bus_selector(SELECTOR,32)@2 + 1
    bus_selector_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            bus_selector_q <= (others => '0');
            bus_selector_v <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            bus_selector_q <= STD_LOGIC_VECTOR("000000000000000" & GND_q);
            bus_selector_v <= "0";
            IF (redist2_addr_802_readHit_and_x_q_2_q = "1") THEN
                bus_selector_q <= mm_reg_802_data_x_q;
                bus_selector_v <= "1";
            END IF;
            IF (redist0_DSPB_MMSE_dut_input_IF_input_fifo_reAnd_x_q_2_q = "1") THEN
                bus_selector_q <= DSPB_MMSE_dut_input_IF_input_fifo_mem_x_r;
                bus_selector_v <= "1";
            END IF;
            IF (redist1_DSPB_MMSE_dut_Output_IF_output_fifo_reAnd_x_q_2_q = "1") THEN
                bus_selector_q <= DSPB_MMSE_dut_Output_IF_output_fifo_mem_x_r;
                bus_selector_v <= "1";
            END IF;
        END IF;
    END PROCESS;

    -- busOut(BUSOUT,31)@3
    busOut_readdatavalid <= bus_selector_v;
    busOut_readdata <= bus_selector_q;

    -- out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x(GPOUT,42)@2
    out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x <= DSPB_MMSE_dut_input_IF_input_fifo_mem_x_q;

END normal;
