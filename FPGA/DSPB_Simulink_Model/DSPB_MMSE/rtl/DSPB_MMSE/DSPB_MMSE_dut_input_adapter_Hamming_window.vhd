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

-- VHDL created from DSPB_MMSE_dut_input_adapter_Hamming_window
-- VHDL created on Mon Aug 16 17:44:01 2021


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
entity DSPB_MMSE_dut_input_adapter_Hamming_window is
    port (
        in_1_Input_Signal_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_Input_Signal : in std_logic_vector(15 downto 0);  -- sfix16_en14
        out_1_Input_Signal_Valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_Input_Signal_x : out std_logic_vector(15 downto 0);  -- sfix16_en14
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_input_adapter_Hamming_window;

architecture normal of DSPB_MMSE_dut_input_adapter_Hamming_window is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Convert_sel_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_CmpEQ1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_Const5_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_Const6_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_cnt : UNSIGNED (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dec : UNSIGNED (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dn : UNSIGNED (9 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_en : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_i : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_inc : UNSIGNED (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_l : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_ld : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_s : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_up : UNSIGNED (8 downto 0);
    signal Sub_PostCast_primWireOut_sel_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal Sub_a : STD_LOGIC_VECTOR (9 downto 0);
    signal Sub_b : STD_LOGIC_VECTOR (9 downto 0);
    signal Sub_o : STD_LOGIC_VECTOR (9 downto 0);
    signal Sub_q : STD_LOGIC_VECTOR (9 downto 0);
    signal Lut_lutmem_reset0 : std_logic;
    signal Lut_lutmem_ia : STD_LOGIC_VECTOR (14 downto 0);
    signal Lut_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal Lut_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal Lut_lutmem_ir : STD_LOGIC_VECTOR (14 downto 0);
    signal Lut_lutmem_r : STD_LOGIC_VECTOR (14 downto 0);
    signal Mult_PostCast_primWireOut_rnd_sel_b : STD_LOGIC_VECTOR (16 downto 0);
    signal Mult_cma_reset : std_logic;
    type Mult_cma_a0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal Mult_cma_a0 : Mult_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of Mult_cma_a0 : signal is true;
    type Mult_cma_c0type is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal Mult_cma_c0 : Mult_cma_c0type(0 to 0);
    attribute preserve of Mult_cma_c0 : signal is true;
    signal Mult_cma_l : Mult_cma_c0type(0 to 0);
    type Mult_cma_ptype is array(NATURAL range <>) of SIGNED(31 downto 0);
    signal Mult_cma_p : Mult_cma_ptype(0 to 0);
    signal Mult_cma_u : Mult_cma_ptype(0 to 0);
    signal Mult_cma_w : Mult_cma_ptype(0 to 0);
    signal Mult_cma_x : Mult_cma_ptype(0 to 0);
    signal Mult_cma_y : Mult_cma_ptype(0 to 0);
    signal Mult_cma_s : Mult_cma_ptype(0 to 0);
    signal Mult_cma_qq : STD_LOGIC_VECTOR (30 downto 0);
    signal Mult_cma_q : STD_LOGIC_VECTOR (30 downto 0);
    signal Mult_cma_ena0 : std_logic;
    signal Mult_cma_ena1 : std_logic;
    signal redist0_GPIn1_in_1_Input_Signal_Valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_Convert_sel_x_b_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_mem_reset0 : std_logic;
    signal redist1_GPIn1_in_2_Input_Signal_3_mem_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_mem_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_mem_q : STD_LOGIC_VECTOR (15 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist1_GPIn1_in_2_Input_Signal_3_rdcnt_i : signal is true;
    signal redist1_GPIn1_in_2_Input_Signal_3_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn1_in_2_Input_Signal_3_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist1_GPIn1_in_2_Input_Signal_3_sticky_ena_q : signal is true;
    signal redist1_GPIn1_in_2_Input_Signal_3_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist1_GPIn1_in_2_Input_Signal_3_notEnable(LOGICAL,33)
    redist1_GPIn1_in_2_Input_Signal_3_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist1_GPIn1_in_2_Input_Signal_3_nor(LOGICAL,34)
    redist1_GPIn1_in_2_Input_Signal_3_nor_q <= not (redist1_GPIn1_in_2_Input_Signal_3_notEnable_q or redist1_GPIn1_in_2_Input_Signal_3_sticky_ena_q);

    -- redist1_GPIn1_in_2_Input_Signal_3_cmpReg(REG,32)
    redist1_GPIn1_in_2_Input_Signal_3_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist1_GPIn1_in_2_Input_Signal_3_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist1_GPIn1_in_2_Input_Signal_3_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist1_GPIn1_in_2_Input_Signal_3_sticky_ena(REG,35)
    redist1_GPIn1_in_2_Input_Signal_3_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist1_GPIn1_in_2_Input_Signal_3_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist1_GPIn1_in_2_Input_Signal_3_nor_q = "1") THEN
                redist1_GPIn1_in_2_Input_Signal_3_sticky_ena_q <= STD_LOGIC_VECTOR(redist1_GPIn1_in_2_Input_Signal_3_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_GPIn1_in_2_Input_Signal_3_enaAnd(LOGICAL,36)
    redist1_GPIn1_in_2_Input_Signal_3_enaAnd_q <= redist1_GPIn1_in_2_Input_Signal_3_sticky_ena_q and VCC_q;

    -- redist1_GPIn1_in_2_Input_Signal_3_rdcnt(COUNTER,30)
    -- low=0, high=1, step=1, init=0
    redist1_GPIn1_in_2_Input_Signal_3_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist1_GPIn1_in_2_Input_Signal_3_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist1_GPIn1_in_2_Input_Signal_3_rdcnt_i <= redist1_GPIn1_in_2_Input_Signal_3_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist1_GPIn1_in_2_Input_Signal_3_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist1_GPIn1_in_2_Input_Signal_3_rdcnt_i, 1)));

    -- redist1_GPIn1_in_2_Input_Signal_3_wraddr(REG,31)
    redist1_GPIn1_in_2_Input_Signal_3_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist1_GPIn1_in_2_Input_Signal_3_wraddr_q <= "1";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist1_GPIn1_in_2_Input_Signal_3_wraddr_q <= STD_LOGIC_VECTOR(redist1_GPIn1_in_2_Input_Signal_3_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist1_GPIn1_in_2_Input_Signal_3_mem(DUALMEM,29)
    redist1_GPIn1_in_2_Input_Signal_3_mem_ia <= STD_LOGIC_VECTOR(in_2_Input_Signal);
    redist1_GPIn1_in_2_Input_Signal_3_mem_aa <= redist1_GPIn1_in_2_Input_Signal_3_wraddr_q;
    redist1_GPIn1_in_2_Input_Signal_3_mem_ab <= redist1_GPIn1_in_2_Input_Signal_3_rdcnt_q;
    redist1_GPIn1_in_2_Input_Signal_3_mem_reset0 <= areset;
    redist1_GPIn1_in_2_Input_Signal_3_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 16,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist1_GPIn1_in_2_Input_Signal_3_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist1_GPIn1_in_2_Input_Signal_3_mem_reset0,
        clock1 => clk,
        address_a => redist1_GPIn1_in_2_Input_Signal_3_mem_aa,
        data_a => redist1_GPIn1_in_2_Input_Signal_3_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist1_GPIn1_in_2_Input_Signal_3_mem_ab,
        q_b => redist1_GPIn1_in_2_Input_Signal_3_mem_iq
    );
    redist1_GPIn1_in_2_Input_Signal_3_mem_q <= redist1_GPIn1_in_2_Input_Signal_3_mem_iq(15 downto 0);

    -- DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_Const5_x(CONSTANT,5)
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_Const5_x_q <= "110010001";

    -- DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_Const6_x(CONSTANT,6)
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_Const6_x_q <= "110010000";

    -- DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_CmpEQ1_x(LOGICAL,3)@1
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_CmpEQ1_x_q <= "1" WHEN DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_q = DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_Const6_x_q ELSE "0";

    -- DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x(LOADABLECOUNTER,8)@0 + 1
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_en <= in_1_Input_Signal_Valid;
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_ld <= DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_CmpEQ1_x_q;
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_i <= STD_LOGIC_VECTOR("00000000" & GND_q);
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_s <= STD_LOGIC_VECTOR("00000000" & VCC_q);
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_l <= DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_Const5_x_q;
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_up <= DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_cnt + DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_inc;
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dn <= UNSIGNED(resize(unsigned(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_cnt(8 downto 0)), 10)) - UNSIGNED(resize(unsigned(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dec(8 downto 0)), 10));
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_cnt <= "000000000";
            DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_inc <= "000000001";
            DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dec <= "110010000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_ld = "1") THEN
                IF (FALSE and DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_s(8) = '1') THEN
                    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_inc <= UNSIGNED(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_l) + UNSIGNED(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_s);
                    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dec <= UNSIGNED(TO_UNSIGNED(0, 9)) - UNSIGNED(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_s);
                ELSE
                    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_inc <= UNSIGNED(TO_UNSIGNED(0, 9)) + UNSIGNED(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_s);
                    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dec <= UNSIGNED(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_l) - UNSIGNED(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_s);
                END IF;
            END IF;
            IF (DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_ld = "1" or DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_en = "1") THEN
                IF (DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_ld = "1") THEN
                    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_cnt <= UNSIGNED(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_i);
                ELSE
                    IF (DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dn(9) = '1') THEN
                        DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_cnt <= DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_up;
                    ELSE
                        DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_cnt <= DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_dn(8 downto 0);
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_q <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_cnt);

    -- Sub(SUB,19)@1
    Sub_a <= STD_LOGIC_VECTOR("0" & DSPB_MMSE_dut_input_adapter_Hamming_window_Counter_LoadableCounter1_x_q);
    Sub_b <= STD_LOGIC_VECTOR("000000000" & VCC_q);
    Sub_o <= STD_LOGIC_VECTOR(UNSIGNED(Sub_a) - UNSIGNED(Sub_b));
    Sub_q <= Sub_o(9 downto 0);

    -- Sub_PostCast_primWireOut_sel_x(BITSELECT,11)@1
    Sub_PostCast_primWireOut_sel_x_b <= STD_LOGIC_VECTOR(Sub_q(8 downto 0));

    -- Lut_lutmem(DUALMEM,21)@1 + 2
    Lut_lutmem_aa <= Sub_PostCast_primWireOut_sel_x_b;
    Lut_lutmem_reset0 <= areset;
    Lut_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 15,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_input_adapter_Hamming_window_Lut_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => Lut_lutmem_reset0,
        clock0 => clk,
        address_a => Lut_lutmem_aa,
        q_a => Lut_lutmem_ir
    );
    Lut_lutmem_r <= Lut_lutmem_ir(14 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- Mult_cma(CHAINMULTADD,25)@3 + 2
    Mult_cma_reset <= areset;
    Mult_cma_ena0 <= '1';
    Mult_cma_ena1 <= Mult_cma_ena0;
    Mult_cma_l(0) <= SIGNED(RESIZE(Mult_cma_a0(0),16));
    Mult_cma_p(0) <= Mult_cma_l(0) * Mult_cma_c0(0);
    Mult_cma_u(0) <= RESIZE(Mult_cma_p(0),32);
    Mult_cma_w(0) <= Mult_cma_u(0);
    Mult_cma_x(0) <= Mult_cma_w(0);
    Mult_cma_y(0) <= Mult_cma_x(0);
    Mult_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult_cma_a0 <= (others => (others => '0'));
            Mult_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult_cma_ena0 = '1') THEN
                Mult_cma_a0(0) <= RESIZE(UNSIGNED(Lut_lutmem_r),15);
                Mult_cma_c0(0) <= RESIZE(SIGNED(redist1_GPIn1_in_2_Input_Signal_3_mem_q),16);
            END IF;
        END IF;
    END PROCESS;
    Mult_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mult_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (Mult_cma_ena1 = '1') THEN
                Mult_cma_s(0) <= Mult_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    Mult_cma_delay : dspba_delay
    GENERIC MAP ( width => 31, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(Mult_cma_s(0)(30 downto 0)), xout => Mult_cma_qq, clk => clk, aclr => areset );
    Mult_cma_q <= STD_LOGIC_VECTOR(Mult_cma_qq(30 downto 0));

    -- Mult_PostCast_primWireOut_rnd_sel(BITSELECT,22)@5
    Mult_PostCast_primWireOut_rnd_sel_b <= STD_LOGIC_VECTOR(Mult_cma_q(30 downto 14));

    -- Convert_sel_x(BITSELECT,2)@5
    Convert_sel_x_b <= STD_LOGIC_VECTOR(Mult_PostCast_primWireOut_rnd_sel_b(15 downto 0));

    -- redist2_Convert_sel_x_b_1(DELAY,28)
    redist2_Convert_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert_sel_x_b, xout => redist2_Convert_sel_x_b_1_q, clk => clk, aclr => areset );

    -- redist0_GPIn1_in_1_Input_Signal_Valid_6(DELAY,26)
    redist0_GPIn1_in_1_Input_Signal_Valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_Input_Signal_Valid, xout => redist0_GPIn1_in_1_Input_Signal_Valid_6_q, clk => clk, aclr => areset );

    -- GPOut(GPOUT,15)@6
    out_1_Input_Signal_Valid_x <= redist0_GPIn1_in_1_Input_Signal_Valid_6_q;
    out_2_Input_Signal_x <= redist2_Convert_sel_x_b_1_q;

END normal;
