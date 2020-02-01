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

-- VHDL created from busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz
-- VHDL created on Sat Feb 01 20:40:56 2020


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use std.TextIO.all;
USE work.dsp_vad_VAD_safe_path.all;

entity busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_stm is
    port (
        busIn_writedata_stm : out std_logic_vector(31 downto 0);
        busIn_address_stm : out std_logic_vector(2 downto 0);
        busIn_write_stm : out std_logic_vector(0 downto 0);
        busIn_read_stm : out std_logic_vector(0 downto 0);
        busOut_readdatavalid_stm : out std_logic_vector(0 downto 0);
        busOut_readdata_stm : out std_logic_vector(31 downto 0);
        out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_stm : out std_logic_vector(31 downto 0);
        out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_stm : out std_logic_vector(31 downto 0);
        out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_stm : out std_logic_vector(31 downto 0);
        clk : out std_logic;
        areset : out std_logic;
        h_areset : out std_logic
    );
end busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_stm;

architecture normal of busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_stm is

    signal clk_stm_sig : std_logic := '0';
    signal clk_stm_sig_stop : std_logic := '0';
    signal areset_stm_sig : std_logic := '1';
    signal h_areset_stm_sig : std_logic := '1';
    signal clk_busIn_stm_sig_stop : std_logic := '0';

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

    h_areset <= h_areset_stm_sig;
    h_areset_process: process begin
        h_areset_stm_sig <= '1';
        wait for 15000 ps;
        h_areset_stm_sig <= '0';
        wait;
    end process;

        -- Generating stimulus for busIn
        busIn_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_busIn : text open read_mode is safe_path("dsp_vad/busSlaveFabric_dsp_vad_VAD_2uuidx4a06e636r6g6u0qu5xajz_busIn.stm");
            variable busIn_writedata_int_0 : Integer;
            variable busIn_writedata_temp : std_logic_vector(31 downto 0);
            variable busIn_address_int_0 : Integer;
            variable busIn_address_temp : std_logic_vector(2 downto 0);
            variable busIn_write_int_0 : Integer;
            variable busIn_write_temp : std_logic_vector(0 downto 0);
            variable busIn_read_int_0 : Integer;
            variable busIn_read_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            busIn_writedata_stm <= (others => '0');
            busIn_address_stm <= (others => '0');
            busIn_write_stm <= (others => '0');
            busIn_read_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                IF (endfile(data_file_busIn)) THEN
                    clk_busIn_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_busIn, L);
                    
                    read(L, busIn_writedata_int_0);
                    busIn_writedata_temp(31 downto 0) := std_logic_vector(to_signed(busIn_writedata_int_0, 32));
                    busIn_writedata_stm <= busIn_writedata_temp;
                    read(L, busIn_address_int_0);
                    busIn_address_temp(2 downto 0) := std_logic_vector(to_unsigned(busIn_address_int_0, 3));
                    busIn_address_stm <= busIn_address_temp;
                    read(L, busIn_write_int_0);
                    busIn_write_temp(0 downto 0) := std_logic_vector(to_unsigned(busIn_write_int_0, 1));
                    busIn_write_stm <= busIn_write_temp;
                    read(L, busIn_read_int_0);
                    busIn_read_temp(0 downto 0) := std_logic_vector(to_unsigned(busIn_read_int_0, 1));
                    busIn_read_stm <= busIn_read_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Driving gnd for busOut signals

        busOut_readdatavalid_stm <= (others => '0');
        busOut_readdata_stm <= (others => '0');
        -- Driving gnd for out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x signals

        out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_fft_out_pop_x_stm <= (others => '0');
        -- Driving gnd for out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x signals

        out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_data_x_stm <= (others => '0');
        -- Driving gnd for out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x signals

        out_AMMregisterWireData_dsp_vad_VAD_sys_mm_in_sample_in_valid_x_stm <= (others => '0');

    clk_stm_sig_stop <= '1';


    END normal;
