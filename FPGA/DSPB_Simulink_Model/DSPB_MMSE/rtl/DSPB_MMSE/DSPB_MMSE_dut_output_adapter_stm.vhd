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

-- VHDL created from DSPB_MMSE_dut_output_adapter
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use std.TextIO.all;
USE work.DSPB_MMSE_dut_safe_path.all;

entity DSPB_MMSE_dut_output_adapter_stm is
    port (
        in_1_enhanced_magnitude_spectrum_valid_stm : out std_logic_vector(0 downto 0);
        in_2_enhanced_magnitude_spectrum_stm : out std_logic_vector(31 downto 0);
        in_3_phase_valid_stm : out std_logic_vector(0 downto 0);
        in_4_phase_stm : out std_logic_vector(31 downto 0);
        out_1_time_domain_valid_stm : out std_logic_vector(0 downto 0);
        out_2_time_domain_out_stm : out std_logic_vector(15 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end DSPB_MMSE_dut_output_adapter_stm;

architecture normal of DSPB_MMSE_dut_output_adapter_stm is

    signal clk_stm_sig : std_logic := '0';
    signal clk_stm_sig_stop : std_logic := '0';
    signal areset_stm_sig : std_logic := '1';

    function str_to_stdvec(inp: string) return std_logic_vector is
        variable temp: std_logic_vector(inp'range) := (others => 'X');
    begin
        for i in inp'range loop
            IF ((inp(i) = '1')) THEN
                temp(i) := '1';
            elsif (inp(i) = '0') then
                temp(i) := '0';
            END IF;
            end loop;
            return temp;
        end function str_to_stdvec;
        

    begin

    clk <= clk_stm_sig;
    clk_process: process 
    begin
        wait for 200 ps;
        clk_stm_sig <= not clk_stm_sig;
        wait for 9800 ps;
        if (clk_stm_sig_stop = '1') then
            assert (false)
            report "Arrived at end of stimulus data on clk clk" severity NOTE;
            wait;
        end if;
        wait for 200 ps;
        clk_stm_sig <= not clk_stm_sig;
        wait for 9800 ps;
        if (clk_stm_sig_stop = '1') then
            assert (false)
            report "Arrived at end of stimulus data on clk clk" severity NOTE;
            wait;
        end if;
    end process;

    areset <= areset_stm_sig;
    areset_process: process begin
        areset_stm_sig <= '1';
        wait for 15000 ps;
        areset_stm_sig <= '0';
        wait;
    end process;

        -- Driving gnd for in_1_enhanced_magnitude_spectrum_valid signals

        in_1_enhanced_magnitude_spectrum_valid_stm <= (others => '0');
        -- Driving gnd for in_2_enhanced_magnitude_spectrum signals

        in_2_enhanced_magnitude_spectrum_stm <= (others => '0');
        -- Driving gnd for in_3_phase_valid signals

        in_3_phase_valid_stm <= (others => '0');
        -- Driving gnd for in_4_phase signals

        in_4_phase_stm <= (others => '0');
        -- Driving gnd for out_1_time_domain_valid signals

        out_1_time_domain_valid_stm <= (others => '0');
        -- Driving gnd for out_2_time_domain_out signals

        out_2_time_domain_out_stm <= (others => '0');

    clk_stm_sig_stop <= '1';


    END normal;
