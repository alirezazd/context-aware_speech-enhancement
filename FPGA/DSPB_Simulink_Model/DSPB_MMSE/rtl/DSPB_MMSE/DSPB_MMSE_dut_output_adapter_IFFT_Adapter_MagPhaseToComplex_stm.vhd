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
use std.TextIO.all;
USE work.DSPB_MMSE_dut_safe_path.all;

entity DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_stm is
    port (
        out_1_valid_x_stm : out std_logic_vector(0 downto 0);
        out_2_real_out_stm : out std_logic_vector(20 downto 0);
        out_2_imag_out_stm : out std_logic_vector(20 downto 0);
        in_1_maginitude_spectrum_valid_stm : out std_logic_vector(0 downto 0);
        in_2_magnitude_spectrum_stm : out std_logic_vector(31 downto 0);
        in_3_phase_valid_stm : out std_logic_vector(0 downto 0);
        in_4_phase_stm : out std_logic_vector(31 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_stm;

architecture normal of DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_stm is

    signal clk_stm_sig : std_logic := '0';
    signal clk_stm_sig_stop : std_logic := '0';
    signal areset_stm_sig : std_logic := '1';
    signal clk_GPOut_cunroll_x_stm_sig_stop : std_logic := '0';
    signal clk_gp0_stm_sig_stop : std_logic := '0';
    signal clk_gp1_stm_sig_stop : std_logic := '0';

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

        -- Generating stimulus for GPOut_cunroll_x
        GPOut_cunroll_x_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_GPOut_cunroll_x : text open read_mode is safe_path("DSPB_MMSE/DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_GPOut_cunroll_x.stm");
            variable out_1_valid_x_int_0 : Integer;
            variable out_1_valid_x_temp : std_logic_vector(0 downto 0);
            variable out_2_real_out_int_0 : Integer;
            variable out_2_real_out_temp : std_logic_vector(20 downto 0);
            variable out_2_imag_out_int_0 : Integer;
            variable out_2_imag_out_temp : std_logic_vector(20 downto 0);

        begin
            -- initialize all outputs to 0
            out_1_valid_x_stm <= (others => '0');
            out_2_real_out_stm <= (others => '0');
            out_2_imag_out_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                IF (endfile(data_file_GPOut_cunroll_x)) THEN
                    clk_GPOut_cunroll_x_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_GPOut_cunroll_x, L);
                    
                    read(L, out_1_valid_x_int_0);
                    out_1_valid_x_temp(0 downto 0) := std_logic_vector(to_unsigned(out_1_valid_x_int_0, 1));
                    out_1_valid_x_stm <= out_1_valid_x_temp;
                    read(L, out_2_real_out_int_0);
                    out_2_real_out_temp(20 downto 0) := std_logic_vector(to_unsigned(out_2_real_out_int_0, 21));
                    out_2_real_out_stm <= out_2_real_out_temp;
                    read(L, out_2_imag_out_int_0);
                    out_2_imag_out_temp(20 downto 0) := std_logic_vector(to_unsigned(out_2_imag_out_int_0, 21));
                    out_2_imag_out_stm <= out_2_imag_out_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for gp0
        gp0_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_gp0 : text open read_mode is safe_path("DSPB_MMSE/DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_gp0.stm");
            variable in_1_maginitude_spectrum_valid_int_0 : Integer;
            variable in_1_maginitude_spectrum_valid_temp : std_logic_vector(0 downto 0);
            variable in_2_magnitude_spectrum_int_0 : Integer;
            variable in_2_magnitude_spectrum_temp : std_logic_vector(31 downto 0);

        begin
            -- initialize all outputs to 0
            in_1_maginitude_spectrum_valid_stm <= (others => '0');
            in_2_magnitude_spectrum_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                IF (endfile(data_file_gp0)) THEN
                    clk_gp0_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_gp0, L);
                    
                    read(L, in_1_maginitude_spectrum_valid_int_0);
                    in_1_maginitude_spectrum_valid_temp(0 downto 0) := std_logic_vector(to_unsigned(in_1_maginitude_spectrum_valid_int_0, 1));
                    in_1_maginitude_spectrum_valid_stm <= in_1_maginitude_spectrum_valid_temp;
                    read(L, in_2_magnitude_spectrum_int_0);
                    in_2_magnitude_spectrum_temp(31 downto 0) := std_logic_vector(to_signed(in_2_magnitude_spectrum_int_0, 32));
                    in_2_magnitude_spectrum_stm <= in_2_magnitude_spectrum_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for gp1
        gp1_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_gp1 : text open read_mode is safe_path("DSPB_MMSE/DSPB_MMSE_dut_output_adapter_IFFT_Adapter_MagPhaseToComplex_gp1.stm");
            variable in_3_phase_valid_int_0 : Integer;
            variable in_3_phase_valid_temp : std_logic_vector(0 downto 0);
            variable in_4_phase_int_0 : Integer;
            variable in_4_phase_temp : std_logic_vector(31 downto 0);

        begin
            -- initialize all outputs to 0
            in_3_phase_valid_stm <= (others => '0');
            in_4_phase_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                IF (endfile(data_file_gp1)) THEN
                    clk_gp1_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_gp1, L);
                    
                    read(L, in_3_phase_valid_int_0);
                    in_3_phase_valid_temp(0 downto 0) := std_logic_vector(to_unsigned(in_3_phase_valid_int_0, 1));
                    in_3_phase_valid_stm <= in_3_phase_valid_temp;
                    read(L, in_4_phase_int_0);
                    in_4_phase_temp(31 downto 0) := std_logic_vector(to_signed(in_4_phase_int_0, 32));
                    in_4_phase_stm <= in_4_phase_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;

    clk_stm_sig_stop <= clk_GPOut_cunroll_x_stm_sig_stop OR clk_gp0_stm_sig_stop OR clk_gp1_stm_sig_stop OR '0';


    END normal;
