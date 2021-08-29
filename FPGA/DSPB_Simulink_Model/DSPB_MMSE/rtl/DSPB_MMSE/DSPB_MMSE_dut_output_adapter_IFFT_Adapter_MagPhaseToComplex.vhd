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

-- VHDL created from DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex
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
entity DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex is
    port (
        out_1_valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_real_out : out std_logic_vector(20 downto 0);  -- sfix21_en19
        out_2_imag_out : out std_logic_vector(20 downto 0);  -- sfix21_en19
        in_1_maginitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_magnitude_spectrum : in std_logic_vector(31 downto 0);  -- float32_m23
        in_3_phase_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_4_phase : in std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex;

architecture normal of DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_castBA0Zof0cdj6of0cd16ol0qcz is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(20 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;



    component floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_multBA0Z2i226743i22612364eny is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;




    component floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA0Z0of0cdj6of0cd16uno0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA0Z0of0cdj6of0cd16uno0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Convert1_imag_x_out_primWireOut : STD_LOGIC_VECTOR (20 downto 0);
    signal Convert1_real_x_out_primWireOut : STD_LOGIC_VECTOR (20 downto 0);
    signal And_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Mult_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult1_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Normalize_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Normalize_Const_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Trig_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Trig1_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal mag_FIFO_reset : std_logic;
    signal mag_FIFO_f : STD_LOGIC_VECTOR (0 downto 0);
    signal mag_FIFO_e : STD_LOGIC_VECTOR (0 downto 0);
    signal mag_FIFO_t : STD_LOGIC_VECTOR (0 downto 0);
    signal mag_FIFO_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mag_FIFO_empty : STD_LOGIC_VECTOR (0 downto 0);
    signal mag_FIFO_v : STD_LOGIC_VECTOR (0 downto 0);
    signal phse_FIFO_reset : std_logic;
    signal phse_FIFO_f : STD_LOGIC_VECTOR (0 downto 0);
    signal phse_FIFO_e : STD_LOGIC_VECTOR (0 downto 0);
    signal phse_FIFO_t : STD_LOGIC_VECTOR (0 downto 0);
    signal phse_FIFO_q : STD_LOGIC_VECTOR (31 downto 0);
    signal phse_FIFO_empty : STD_LOGIC_VECTOR (0 downto 0);
    signal phse_FIFO_v : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_phse_FIFO_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_mag_FIFO_v_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_Trig1_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_Trig_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Normalize_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_Mult1_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_Mult_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_Convert1_real_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist9_Convert1_imag_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal redist2_mag_FIFO_q_13_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_mag_FIFO_q_13_mem_reset0 : std_logic;
    signal redist2_mag_FIFO_q_13_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_mag_FIFO_q_13_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_mag_FIFO_q_13_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_mag_FIFO_q_13_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_mag_FIFO_q_13_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_mag_FIFO_q_13_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_mag_FIFO_q_13_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist2_mag_FIFO_q_13_rdcnt_i : signal is true;
    signal redist2_mag_FIFO_q_13_rdcnt_eq : std_logic;
    attribute preserve of redist2_mag_FIFO_q_13_rdcnt_eq : signal is true;
    signal redist2_mag_FIFO_q_13_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist2_mag_FIFO_q_13_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist2_mag_FIFO_q_13_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist2_mag_FIFO_q_13_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_mag_FIFO_q_13_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_mag_FIFO_q_13_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_mag_FIFO_q_13_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_mag_FIFO_q_13_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist2_mag_FIFO_q_13_sticky_ena_q : signal is true;
    signal redist2_mag_FIFO_q_13_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- mag_FIFO(FIFO,14)@0
    mag_FIFO_reset <= areset;
    mag_FIFO_fifo : scfifo
    GENERIC MAP (
        add_ram_output_register => "ON",
        almost_empty_value => 1,
        almost_full_value => 512,
        intended_device_family => "Cyclone V",
        lpm_numwords => 512,
        lpm_showahead => "ON",
        lpm_type => "scfifo",
        lpm_width => 32,
        lpm_widthu => 9,
        overflow_checking => "ON",
        underflow_checking => "ON",
        use_eab => "ON"
    )
    PORT MAP (
        rdreq => And_rsrvd_fix_q(0),
        aclr => mag_FIFO_reset,
        clock => clk,
        wrreq => in_1_maginitude_spectrum_valid(0),
        data => in_2_magnitude_spectrum,
        almost_full => mag_FIFO_f(0),
        almost_empty => mag_FIFO_t(0),
        empty => mag_FIFO_empty(0),
        q => mag_FIFO_q
    );
    mag_FIFO_v <= not (mag_FIFO_empty);
    mag_FIFO_e <= not (mag_FIFO_t);

    -- And_rsrvd_fix(LOGICAL,5)@0
    And_rsrvd_fix_q <= phse_FIFO_v and mag_FIFO_v;

    -- phse_FIFO(FIFO,15)@0
    phse_FIFO_reset <= areset;
    phse_FIFO_fifo : scfifo
    GENERIC MAP (
        add_ram_output_register => "ON",
        almost_empty_value => 1,
        almost_full_value => 512,
        intended_device_family => "Cyclone V",
        lpm_numwords => 512,
        lpm_showahead => "ON",
        lpm_type => "scfifo",
        lpm_width => 32,
        lpm_widthu => 9,
        overflow_checking => "ON",
        underflow_checking => "ON",
        use_eab => "ON"
    )
    PORT MAP (
        rdreq => And_rsrvd_fix_q(0),
        aclr => phse_FIFO_reset,
        clock => clk,
        wrreq => in_3_phase_valid(0),
        data => in_4_phase,
        almost_full => phse_FIFO_f(0),
        almost_empty => phse_FIFO_t(0),
        empty => phse_FIFO_empty(0),
        q => phse_FIFO_q
    );
    phse_FIFO_v <= not (phse_FIFO_empty);
    phse_FIFO_e <= not (phse_FIFO_t);

    -- redist0_phse_FIFO_q_1(DELAY,16)
    redist0_phse_FIFO_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => phse_FIFO_q, xout => redist0_phse_FIFO_q_1_q, clk => clk, aclr => areset );

    -- Trig(BLACKBOX,10)@1
    -- out out_primWireOut@15
    theTrig : floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_sinBlA0Z0of0cdj6of0cd16uno0u
    PORT MAP (
        in_0 => redist0_phse_FIFO_q_1_q,
        out_primWireOut => Trig_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist4_Trig_out_primWireOut_1(DELAY,20)
    redist4_Trig_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Trig_out_primWireOut, xout => redist4_Trig_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Normalize_Const(FLOATCONSTANT,9)
    Normalize_Const_q <= "00111011000000000000000000000000";

    -- redist2_mag_FIFO_q_13_notEnable(LOGICAL,33)
    redist2_mag_FIFO_q_13_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_mag_FIFO_q_13_nor(LOGICAL,34)
    redist2_mag_FIFO_q_13_nor_q <= not (redist2_mag_FIFO_q_13_notEnable_q or redist2_mag_FIFO_q_13_sticky_ena_q);

    -- redist2_mag_FIFO_q_13_mem_last(CONSTANT,30)
    redist2_mag_FIFO_q_13_mem_last_q <= "01001";

    -- redist2_mag_FIFO_q_13_cmp(LOGICAL,31)
    redist2_mag_FIFO_q_13_cmp_b <= STD_LOGIC_VECTOR("0" & redist2_mag_FIFO_q_13_rdcnt_q);
    redist2_mag_FIFO_q_13_cmp_q <= "1" WHEN redist2_mag_FIFO_q_13_mem_last_q = redist2_mag_FIFO_q_13_cmp_b ELSE "0";

    -- redist2_mag_FIFO_q_13_cmpReg(REG,32)
    redist2_mag_FIFO_q_13_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist2_mag_FIFO_q_13_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist2_mag_FIFO_q_13_cmpReg_q <= STD_LOGIC_VECTOR(redist2_mag_FIFO_q_13_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_mag_FIFO_q_13_sticky_ena(REG,35)
    redist2_mag_FIFO_q_13_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist2_mag_FIFO_q_13_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist2_mag_FIFO_q_13_nor_q = "1") THEN
                redist2_mag_FIFO_q_13_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_mag_FIFO_q_13_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_mag_FIFO_q_13_enaAnd(LOGICAL,36)
    redist2_mag_FIFO_q_13_enaAnd_q <= redist2_mag_FIFO_q_13_sticky_ena_q and VCC_q;

    -- redist2_mag_FIFO_q_13_rdcnt(COUNTER,28)
    -- low=0, high=10, step=1, init=0
    redist2_mag_FIFO_q_13_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist2_mag_FIFO_q_13_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist2_mag_FIFO_q_13_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist2_mag_FIFO_q_13_rdcnt_i = TO_UNSIGNED(9, 4)) THEN
                redist2_mag_FIFO_q_13_rdcnt_eq <= '1';
            ELSE
                redist2_mag_FIFO_q_13_rdcnt_eq <= '0';
            END IF;
            IF (redist2_mag_FIFO_q_13_rdcnt_eq = '1') THEN
                redist2_mag_FIFO_q_13_rdcnt_i <= redist2_mag_FIFO_q_13_rdcnt_i + 6;
            ELSE
                redist2_mag_FIFO_q_13_rdcnt_i <= redist2_mag_FIFO_q_13_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_mag_FIFO_q_13_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_mag_FIFO_q_13_rdcnt_i, 4)));

    -- redist2_mag_FIFO_q_13_wraddr(REG,29)
    redist2_mag_FIFO_q_13_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist2_mag_FIFO_q_13_wraddr_q <= "1010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist2_mag_FIFO_q_13_wraddr_q <= STD_LOGIC_VECTOR(redist2_mag_FIFO_q_13_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_mag_FIFO_q_13_mem(DUALMEM,27)
    redist2_mag_FIFO_q_13_mem_ia <= STD_LOGIC_VECTOR(mag_FIFO_q);
    redist2_mag_FIFO_q_13_mem_aa <= redist2_mag_FIFO_q_13_wraddr_q;
    redist2_mag_FIFO_q_13_mem_ab <= redist2_mag_FIFO_q_13_rdcnt_q;
    redist2_mag_FIFO_q_13_mem_reset0 <= areset;
    redist2_mag_FIFO_q_13_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 11,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 11,
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
        clocken1 => redist2_mag_FIFO_q_13_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist2_mag_FIFO_q_13_mem_reset0,
        clock1 => clk,
        address_a => redist2_mag_FIFO_q_13_mem_aa,
        data_a => redist2_mag_FIFO_q_13_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_mag_FIFO_q_13_mem_ab,
        q_b => redist2_mag_FIFO_q_13_mem_iq
    );
    redist2_mag_FIFO_q_13_mem_q <= redist2_mag_FIFO_q_13_mem_iq(31 downto 0);

    -- redist2_mag_FIFO_q_13_outputreg(DELAY,26)
    redist2_mag_FIFO_q_13_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist2_mag_FIFO_q_13_mem_q, xout => redist2_mag_FIFO_q_13_outputreg_q, clk => clk, aclr => areset );

    -- Normalize(BLACKBOX,8)@13
    -- out out_primWireOut@15
    theNormalize : floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_multBA0Z2i226743i22612364eny
    PORT MAP (
        in_0 => redist2_mag_FIFO_q_13_outputreg_q,
        in_1 => Normalize_Const_q,
        out_primWireOut => Normalize_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist5_Normalize_out_primWireOut_1(DELAY,21)
    redist5_Normalize_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Normalize_out_primWireOut, xout => redist5_Normalize_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Mult1(BLACKBOX,7)@16
    -- out out_primWireOut@18
    theMult1 : floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_multBA0Z2i226743i22612364eny
    PORT MAP (
        in_0 => redist5_Normalize_out_primWireOut_1_q,
        in_1 => redist4_Trig_out_primWireOut_1_q,
        out_primWireOut => Mult1_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist6_Mult1_out_primWireOut_1(DELAY,22)
    redist6_Mult1_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult1_out_primWireOut, xout => redist6_Mult1_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Convert1_imag_x(BLACKBOX,2)@19
    -- out out_primWireOut@20
    theConvert1_imag_x : floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_castBA0Zof0cdj6of0cd16ol0qcz
    PORT MAP (
        in_0 => redist6_Mult1_out_primWireOut_1_q,
        out_primWireOut => Convert1_imag_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist9_Convert1_imag_x_out_primWireOut_1(DELAY,25)
    redist9_Convert1_imag_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert1_imag_x_out_primWireOut, xout => redist9_Convert1_imag_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Trig1(BLACKBOX,11)@1
    -- out out_primWireOut@15
    theTrig1 : floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_cosBlA0Z0of0cdj6of0cd16uno0u
    PORT MAP (
        in_0 => redist0_phse_FIFO_q_1_q,
        out_primWireOut => Trig1_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist3_Trig1_out_primWireOut_1(DELAY,19)
    redist3_Trig1_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Trig1_out_primWireOut, xout => redist3_Trig1_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Mult(BLACKBOX,6)@16
    -- out out_primWireOut@18
    theMult : floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_multBA0Z2i226743i22612364eny
    PORT MAP (
        in_0 => redist5_Normalize_out_primWireOut_1_q,
        in_1 => redist3_Trig1_out_primWireOut_1_q,
        out_primWireOut => Mult_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist7_Mult_out_primWireOut_1(DELAY,23)
    redist7_Mult_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult_out_primWireOut, xout => redist7_Mult_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Convert1_real_x(BLACKBOX,3)@19
    -- out out_primWireOut@20
    theConvert1_real_x : floatComponent_DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_castBA0Zof0cdj6of0cd16ol0qcz
    PORT MAP (
        in_0 => redist7_Mult_out_primWireOut_1_q,
        out_primWireOut => Convert1_real_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist8_Convert1_real_x_out_primWireOut_1(DELAY,24)
    redist8_Convert1_real_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 21, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert1_real_x_out_primWireOut, xout => redist8_Convert1_real_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- redist1_mag_FIFO_v_21(DELAY,17)
    redist1_mag_FIFO_v_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 21, reset_kind => "ASYNC" )
    PORT MAP ( xin => mag_FIFO_v, xout => redist1_mag_FIFO_v_21_q, clk => clk, aclr => areset );

    -- GPOut_cunroll_x(GPOUT,4)@21
    out_1_valid_x <= redist1_mag_FIFO_v_21_q;
    out_2_real_out <= redist8_Convert1_real_x_out_primWireOut_1_q;
    out_2_imag_out <= redist9_Convert1_imag_x_out_primWireOut_1_q;

END normal;
