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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x
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
entity DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x is
    port (
        in_1_enhanced_mag_spectrum_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_enhanced_mag_spectrum : in std_logic_vector(31 downto 0);  -- float32_m23
        in_3_a_posteriori_SNR_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_5_noise_power_spectrum : in std_logic_vector(31 downto 0);  -- float32_m23
        in_4_a_posteriori_SNR : in std_logic_vector(31 downto 0);  -- float32_m23
        out_1_a_priori_SNR_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_a_priori_SNR : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x;

architecture normal of DSPB_MMSE_dut_feature_extraction_a_priori_SNR_x is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_addBlock_typeSFloatA0Z50g24ad20454c226155y is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_castBlock_typeSFloaA0Zqcd06uqqcdo6u2oct30u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA0Ze2a150g24ad20454ck5u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_maxBlock_typeSFloatA0Zqqcdo6u2ocpq6c0owfzo is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_multBlock_typeSFloaA0Ze2a150g24ad20454ck5u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_multBlock_typeSFloaA1Ze2a150g24ad20454ck5u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;



    component floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_subBlock_typeSFloatA0Z2a150g24ad20454c2abw is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_q : STD_LOGIC_VECTOR (8 downto 0);
    signal DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_i : UNSIGNED (8 downto 0);
    attribute preserve of DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_i : signal is true;
    signal DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Add_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal And_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Const_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Const2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Const3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Const4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Convert2_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Divide_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal MinMax_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult1_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult2_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Mux1_s : STD_LOGIC_VECTOR (0 downto 0);
    signal Mux1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Sub_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal prev_enhanced_mag_reset : std_logic;
    signal prev_enhanced_mag_f : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_enhanced_mag_e : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_enhanced_mag_t : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_enhanced_mag_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prev_enhanced_mag_empty : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_enhanced_mag_v : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_noise_pwr_reset : std_logic;
    signal prev_noise_pwr_f : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_noise_pwr_e : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_noise_pwr_t : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_noise_pwr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal prev_noise_pwr_empty : STD_LOGIC_VECTOR (0 downto 0);
    signal prev_noise_pwr_v : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_prev_noise_pwr_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_Sub_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_Mux1_q_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_Mult2_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Mult1_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_Mult_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_MinMax_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_Divide_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_Convert2_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_Add_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_prev_enhanced_mag_q_4_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_prev_enhanced_mag_q_4_mem_reset0 : std_logic;
    signal redist1_prev_enhanced_mag_q_4_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_prev_enhanced_mag_q_4_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_prev_enhanced_mag_q_4_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_prev_enhanced_mag_q_4_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_prev_enhanced_mag_q_4_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_prev_enhanced_mag_q_4_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_prev_enhanced_mag_q_4_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist1_prev_enhanced_mag_q_4_rdcnt_i : signal is true;
    signal redist1_prev_enhanced_mag_q_4_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_prev_enhanced_mag_q_4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_prev_enhanced_mag_q_4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_prev_enhanced_mag_q_4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_prev_enhanced_mag_q_4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist1_prev_enhanced_mag_q_4_sticky_ena_q : signal is true;
    signal redist1_prev_enhanced_mag_q_4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_reset0 : std_logic;
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_i : signal is true;
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist8_GPIn2_in_4_a_posteriori_SNR_10_sticky_ena_q : signal is true;
    signal redist8_GPIn2_in_4_a_posteriori_SNR_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- Const2(FLOATCONSTANT,16)
    Const2_q <= "00111101000000110001001001101111";

    -- Const4(FLOATCONSTANT,18)
    Const4_q <= "00111100101000111101011100001010";

    -- Const3(FLOATCONSTANT,17)
    Const3_q <= "00111111100000000000000000000000";

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_notEnable(LOGICAL,66)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_nor(LOGICAL,67)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_nor_q <= not (redist8_GPIn2_in_4_a_posteriori_SNR_10_notEnable_q or redist8_GPIn2_in_4_a_posteriori_SNR_10_sticky_ena_q);

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_last(CONSTANT,63)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_last_q <= "0110";

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_cmp(LOGICAL,64)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_cmp_b <= STD_LOGIC_VECTOR("0" & redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_q);
    redist8_GPIn2_in_4_a_posteriori_SNR_10_cmp_q <= "1" WHEN redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_last_q = redist8_GPIn2_in_4_a_posteriori_SNR_10_cmp_b ELSE "0";

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_cmpReg(REG,65)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist8_GPIn2_in_4_a_posteriori_SNR_10_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist8_GPIn2_in_4_a_posteriori_SNR_10_cmpReg_q <= STD_LOGIC_VECTOR(redist8_GPIn2_in_4_a_posteriori_SNR_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_sticky_ena(REG,68)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist8_GPIn2_in_4_a_posteriori_SNR_10_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist8_GPIn2_in_4_a_posteriori_SNR_10_nor_q = "1") THEN
                redist8_GPIn2_in_4_a_posteriori_SNR_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist8_GPIn2_in_4_a_posteriori_SNR_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_enaAnd(LOGICAL,69)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_enaAnd_q <= redist8_GPIn2_in_4_a_posteriori_SNR_10_sticky_ena_q and VCC_q;

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt(COUNTER,61)
    -- low=0, high=7, step=1, init=0
    redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_i <= TO_UNSIGNED(0, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_i <= redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_i, 3)));

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_wraddr(REG,62)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist8_GPIn2_in_4_a_posteriori_SNR_10_wraddr_q <= "111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist8_GPIn2_in_4_a_posteriori_SNR_10_wraddr_q <= STD_LOGIC_VECTOR(redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_mem(DUALMEM,60)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_ia <= STD_LOGIC_VECTOR(in_4_a_posteriori_SNR);
    redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_aa <= redist8_GPIn2_in_4_a_posteriori_SNR_10_wraddr_q;
    redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_ab <= redist8_GPIn2_in_4_a_posteriori_SNR_10_rdcnt_q;
    redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_reset0 <= areset;
    redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 8,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 8,
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
        clocken1 => redist8_GPIn2_in_4_a_posteriori_SNR_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_reset0,
        clock1 => clk,
        address_a => redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_aa,
        data_a => redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_ab,
        q_b => redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_iq
    );
    redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_q <= redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_iq(31 downto 0);

    -- redist8_GPIn2_in_4_a_posteriori_SNR_10_outputreg(DELAY,59)
    redist8_GPIn2_in_4_a_posteriori_SNR_10_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist8_GPIn2_in_4_a_posteriori_SNR_10_mem_q, xout => redist8_GPIn2_in_4_a_posteriori_SNR_10_outputreg_q, clk => clk, aclr => areset );

    -- Sub(BLACKBOX,31)@10
    -- out out_primWireOut@12
    theSub : floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_subBlock_typeSFloatA0Z2a150g24ad20454c2abw
    PORT MAP (
        in_0 => redist8_GPIn2_in_4_a_posteriori_SNR_10_outputreg_q,
        in_1 => Const3_q,
        out_primWireOut => Sub_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist2_Sub_out_primWireOut_1(DELAY,37)
    redist2_Sub_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Sub_out_primWireOut, xout => redist2_Sub_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Mult2(BLACKBOX,28)@13
    -- out out_primWireOut@15
    theMult2 : floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_multBlock_typeSFloaA1Ze2a150g24ad20454ck5u
    PORT MAP (
        in_0 => redist2_Sub_out_primWireOut_1_q,
        in_1 => Const4_q,
        out_primWireOut => Mult2_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist4_Mult2_out_primWireOut_1(DELAY,39)
    redist4_Mult2_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult2_out_primWireOut, xout => redist4_Mult2_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Convert2(BLACKBOX,20)@16
    theConvert2 : floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_castBlock_typeSFloaA0Zqcd06uqqcdo6u2oct30u
    PORT MAP (
        in_0 => redist4_Mult2_out_primWireOut_1_q,
        out_primWireOut => Convert2_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist10_Convert2_out_primWireOut_1(DELAY,45)
    redist10_Convert2_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert2_out_primWireOut, xout => redist10_Convert2_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- redist12_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1(DELAY,47)
    redist12_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b, xout => redist12_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x(COUNTER,9)@0 + 1
    -- low=0, high=511, step=1, init=0
    DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_i <= TO_UNSIGNED(0, 9);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (in_3_a_posteriori_SNR_valid = "1") THEN
                DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_i <= DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_i, 9)));

    -- DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x(BITSELECT,8)@1
    DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b <= DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_Counter_x_q(8 downto 8);

    -- DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x(LOGICAL,11)@1
    DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x_q <= DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b xor redist12_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_BitExtract1_x_b_1_q;

    -- redist13_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_1(DELAY,48)
    redist13_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_q, xout => redist13_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x(MUX,5)@1
    DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_s <= redist13_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_1_q;
    DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_combproc: PROCESS (DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_s, DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x_q, GND_q)
    BEGIN
        CASE (DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_s) IS
            WHEN "0" => DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_q <= DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_PulseDivider_EdgeDetect_Xor_x_q;
            WHEN "1" => DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_q <= GND_q;
            WHEN OTHERS => DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x(COUNTER,4)@1 + 1
    -- low=0, high=1, step=1, init=0
    DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Mux_x_q = "1") THEN
                DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_i <= DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_i + 1;
            END IF;
        END IF;
    END PROCESS;
    DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_i, 1)));

    -- prev_enhanced_mag(FIFO,32)@0
    prev_enhanced_mag_reset <= areset;
    prev_enhanced_mag_fifo : scfifo
    GENERIC MAP (
        add_ram_output_register => "ON",
        almost_empty_value => 1,
        almost_full_value => 256,
        intended_device_family => "Cyclone V",
        lpm_numwords => 256,
        lpm_showahead => "ON",
        lpm_type => "scfifo",
        lpm_width => 32,
        lpm_widthu => 8,
        overflow_checking => "ON",
        underflow_checking => "ON",
        use_eab => "ON"
    )
    PORT MAP (
        rdreq => And_rsrvd_fix_q(0),
        aclr => prev_enhanced_mag_reset,
        clock => clk,
        wrreq => in_1_enhanced_mag_spectrum_valid(0),
        data => in_2_enhanced_mag_spectrum,
        almost_full => prev_enhanced_mag_f(0),
        almost_empty => prev_enhanced_mag_t(0),
        empty => prev_enhanced_mag_empty(0),
        q => prev_enhanced_mag_q
    );
    prev_enhanced_mag_v <= not (prev_enhanced_mag_empty);
    prev_enhanced_mag_e <= not (prev_enhanced_mag_t);

    -- And_rsrvd_fix(LOGICAL,14)@0
    And_rsrvd_fix_q <= prev_enhanced_mag_v and DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_q and prev_noise_pwr_v and in_3_a_posteriori_SNR_valid;

    -- prev_noise_pwr(FIFO,33)@0
    prev_noise_pwr_reset <= areset;
    prev_noise_pwr_fifo : scfifo
    GENERIC MAP (
        add_ram_output_register => "ON",
        almost_empty_value => 1,
        almost_full_value => 257,
        intended_device_family => "Cyclone V",
        lpm_numwords => 257,
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
        aclr => prev_noise_pwr_reset,
        clock => clk,
        wrreq => in_3_a_posteriori_SNR_valid(0),
        data => in_5_noise_power_spectrum,
        almost_full => prev_noise_pwr_f(0),
        almost_empty => prev_noise_pwr_t(0),
        empty => prev_noise_pwr_empty(0),
        q => prev_noise_pwr_q
    );
    prev_noise_pwr_v <= not (prev_noise_pwr_empty);
    prev_noise_pwr_e <= not (prev_noise_pwr_t);

    -- redist0_prev_noise_pwr_q_1(DELAY,35)
    redist0_prev_noise_pwr_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => prev_noise_pwr_q, xout => redist0_prev_noise_pwr_q_1_q, clk => clk, aclr => areset );

    -- redist1_prev_enhanced_mag_q_4_notEnable(LOGICAL,55)
    redist1_prev_enhanced_mag_q_4_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist1_prev_enhanced_mag_q_4_nor(LOGICAL,56)
    redist1_prev_enhanced_mag_q_4_nor_q <= not (redist1_prev_enhanced_mag_q_4_notEnable_q or redist1_prev_enhanced_mag_q_4_sticky_ena_q);

    -- redist1_prev_enhanced_mag_q_4_cmpReg(REG,54)
    redist1_prev_enhanced_mag_q_4_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist1_prev_enhanced_mag_q_4_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist1_prev_enhanced_mag_q_4_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist1_prev_enhanced_mag_q_4_sticky_ena(REG,57)
    redist1_prev_enhanced_mag_q_4_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist1_prev_enhanced_mag_q_4_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist1_prev_enhanced_mag_q_4_nor_q = "1") THEN
                redist1_prev_enhanced_mag_q_4_sticky_ena_q <= STD_LOGIC_VECTOR(redist1_prev_enhanced_mag_q_4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_prev_enhanced_mag_q_4_enaAnd(LOGICAL,58)
    redist1_prev_enhanced_mag_q_4_enaAnd_q <= redist1_prev_enhanced_mag_q_4_sticky_ena_q and VCC_q;

    -- redist1_prev_enhanced_mag_q_4_rdcnt(COUNTER,52)
    -- low=0, high=1, step=1, init=0
    redist1_prev_enhanced_mag_q_4_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist1_prev_enhanced_mag_q_4_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist1_prev_enhanced_mag_q_4_rdcnt_i <= redist1_prev_enhanced_mag_q_4_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist1_prev_enhanced_mag_q_4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist1_prev_enhanced_mag_q_4_rdcnt_i, 1)));

    -- redist1_prev_enhanced_mag_q_4_wraddr(REG,53)
    redist1_prev_enhanced_mag_q_4_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist1_prev_enhanced_mag_q_4_wraddr_q <= "1";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist1_prev_enhanced_mag_q_4_wraddr_q <= STD_LOGIC_VECTOR(redist1_prev_enhanced_mag_q_4_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist1_prev_enhanced_mag_q_4_mem(DUALMEM,51)
    redist1_prev_enhanced_mag_q_4_mem_ia <= STD_LOGIC_VECTOR(prev_enhanced_mag_q);
    redist1_prev_enhanced_mag_q_4_mem_aa <= redist1_prev_enhanced_mag_q_4_wraddr_q;
    redist1_prev_enhanced_mag_q_4_mem_ab <= redist1_prev_enhanced_mag_q_4_rdcnt_q;
    redist1_prev_enhanced_mag_q_4_mem_reset0 <= areset;
    redist1_prev_enhanced_mag_q_4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
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
        clocken1 => redist1_prev_enhanced_mag_q_4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist1_prev_enhanced_mag_q_4_mem_reset0,
        clock1 => clk,
        address_a => redist1_prev_enhanced_mag_q_4_mem_aa,
        data_a => redist1_prev_enhanced_mag_q_4_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist1_prev_enhanced_mag_q_4_mem_ab,
        q_b => redist1_prev_enhanced_mag_q_4_mem_iq
    );
    redist1_prev_enhanced_mag_q_4_mem_q <= redist1_prev_enhanced_mag_q_4_mem_iq(31 downto 0);

    -- redist1_prev_enhanced_mag_q_4_outputreg(DELAY,50)
    redist1_prev_enhanced_mag_q_4_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist1_prev_enhanced_mag_q_4_mem_q, xout => redist1_prev_enhanced_mag_q_4_outputreg_q, clk => clk, aclr => areset );

    -- Mult(BLACKBOX,26)@4
    -- out out_primWireOut@6
    theMult : floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_multBlock_typeSFloaA0Ze2a150g24ad20454ck5u
    PORT MAP (
        in_0 => redist1_prev_enhanced_mag_q_4_outputreg_q,
        in_1 => redist1_prev_enhanced_mag_q_4_outputreg_q,
        out_primWireOut => Mult_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist6_Mult_out_primWireOut_1(DELAY,41)
    redist6_Mult_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult_out_primWireOut, xout => redist6_Mult_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Divide(BLACKBOX,21)@1
    -- in in_0@7
    -- out out_primWireOut@12
    theDivide : floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_divideBlock_typeSFlA0Ze2a150g24ad20454ck5u
    PORT MAP (
        in_0 => redist6_Mult_out_primWireOut_1_q,
        in_1 => redist0_prev_noise_pwr_q_1_q,
        out_primWireOut => Divide_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist9_Divide_out_primWireOut_1(DELAY,44)
    redist9_Divide_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Divide_out_primWireOut, xout => redist9_Divide_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Mult1(BLACKBOX,27)@13
    -- out out_primWireOut@15
    theMult1 : floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_multBlock_typeSFloaA1Ze2a150g24ad20454ck5u
    PORT MAP (
        in_0 => redist9_Divide_out_primWireOut_1_q,
        in_1 => Const_rsrvd_fix_q,
        out_primWireOut => Mult1_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist5_Mult1_out_primWireOut_1(DELAY,40)
    redist5_Mult1_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult1_out_primWireOut, xout => redist5_Mult1_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Const_rsrvd_fix(FLOATCONSTANT,15)
    Const_rsrvd_fix_q <= "00111111011110101110000101001000";

    -- redist14_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_16(DELAY,49)
    redist14_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 15, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist13_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_1_q, xout => redist14_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_16_q, clk => clk, aclr => areset );

    -- Mux(MUX,29)@16 + 1
    Mux_s <= redist14_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_SampleDelay_x_q_16_q;
    Mux_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mux_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (Mux_s) IS
                WHEN "0" => Mux_q <= Const_rsrvd_fix_q;
                WHEN "1" => Mux_q <= redist5_Mult1_out_primWireOut_1_q;
                WHEN OTHERS => Mux_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- Add(BLACKBOX,13)@17
    -- out out_primWireOut@19
    theAdd : floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_addBlock_typeSFloatA0Z50g24ad20454c226155y
    PORT MAP (
        in_0 => Mux_q,
        in_1 => redist10_Convert2_out_primWireOut_1_q,
        out_primWireOut => Add_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist11_Add_out_primWireOut_1(DELAY,46)
    redist11_Add_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Add_out_primWireOut, xout => redist11_Add_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- MinMax(BLACKBOX,25)@20
    theMinMax : floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_maxBlock_typeSFloatA0Zqqcdo6u2ocpq6c0owfzo
    PORT MAP (
        in_0 => redist11_Add_out_primWireOut_1_q,
        in_1 => Const2_q,
        out_primWireOut => MinMax_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist7_MinMax_out_primWireOut_1(DELAY,42)
    redist7_MinMax_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => MinMax_out_primWireOut, xout => redist7_MinMax_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Mux1(MUX,30)@0 + 1
    Mux1_s <= DSPB_MMSE_dut_feature_extraction_a_priori_SNR_Frame_Fuse_Counter_x_q;
    Mux1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            Mux1_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (Mux1_s) IS
                WHEN "0" => Mux1_q <= in_3_a_posteriori_SNR_valid;
                WHEN "1" => Mux1_q <= And_rsrvd_fix_q;
                WHEN OTHERS => Mux1_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist3_Mux1_q_21(DELAY,38)
    redist3_Mux1_q_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 20, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mux1_q, xout => redist3_Mux1_q_21_q, clk => clk, aclr => areset );

    -- GPOut1(GPOUT,24)@21
    out_1_a_priori_SNR_valid <= redist3_Mux1_q_21_q;
    out_2_a_priori_SNR <= redist7_MinMax_out_primWireOut_1_q;

END normal;
