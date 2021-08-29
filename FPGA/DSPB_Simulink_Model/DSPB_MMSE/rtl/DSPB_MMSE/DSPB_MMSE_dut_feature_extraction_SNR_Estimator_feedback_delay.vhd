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

-- VHDL created from DSPB_MMSE_dut_feature_extraction_SNR_Estimator_feedback_delay
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
entity DSPB_MMSE_dut_feature_extraction_SNR_Estimator_feedback_delay is
    port (
        in_1_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_input : in std_logic_vector(15 downto 0);  -- ufix16_en16
        out_2_valid_x : out std_logic_vector(0 downto 0);  -- ufix1
        out_1_output : out std_logic_vector(15 downto 0);  -- ufix16_en16
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_feature_extraction_SNR_Estimator_feedback_delay;

architecture normal of DSPB_MMSE_dut_feature_extraction_SNR_Estimator_feedback_delay is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_GPIn_in_1_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_GPIn_in_2_input_1_q : STD_LOGIC_VECTOR (15 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist1_GPIn_in_2_input_1(DELAY,7)
    redist1_GPIn_in_2_input_1 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_2_input, xout => redist1_GPIn_in_2_input_1_q, clk => clk, aclr => areset );

    -- redist0_GPIn_in_1_valid_1(DELAY,6)
    redist0_GPIn_in_1_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => in_1_valid, xout => redist0_GPIn_in_1_valid_1_q, clk => clk, aclr => areset );

    -- GPOut(GPOUT,3)@0
    out_2_valid_x <= redist0_GPIn_in_1_valid_1_q;
    out_1_output <= redist1_GPIn_in_2_input_1_q;

END normal;
