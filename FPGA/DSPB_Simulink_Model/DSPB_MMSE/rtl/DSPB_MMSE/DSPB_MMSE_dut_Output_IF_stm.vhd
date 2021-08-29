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
use std.TextIO.all;
USE work.DSPB_MMSE_dut_safe_path.all;

entity standaloneTopLevel_DSPB_MMSE_dut_Output_IF_stm is
    port (
        busIn_writedata_stm : out std_logic_vector(15 downto 0);
        busIn_address_stm : out std_logic_vector(9 downto 0);
        busIn_write_stm : out std_logic_vector(0 downto 0);
        busIn_read_stm : out std_logic_vector(0 downto 0);
        busOut_readdatavalid_stm : out std_logic_vector(0 downto 0);
        busOut_readdata_stm : out std_logic_vector(15 downto 0);
        busOut_waitrequest_stm : out std_logic_vector(0 downto 0);
        Enhanced_Signal_Valid_stm : out std_logic_vector(0 downto 0);
        Enhanced_Signal_stm : out std_logic_vector(15 downto 0);
        Estimated_SNR_Valid_stm : out std_logic_vector(0 downto 0);
        Estimated_SNR_Db_stm : out std_logic_vector(15 downto 0);
        clk : out std_logic;
        areset : out std_logic;
        h_areset : out std_logic
    );
end standaloneTopLevel_DSPB_MMSE_dut_Output_IF_stm;

architecture normal of standaloneTopLevel_DSPB_MMSE_dut_Output_IF_stm is

    signal clk_stm_sig : std_logic := '0';
    signal clk_stm_sig_stop : std_logic := '0';
    signal areset_stm_sig : std_logic := '1';
    signal h_areset_stm_sig : std_logic := '1';
    signal clk_busIn_stm_sig_stop : std_logic := '0';
    signal clk_Enhanced_Signal_Valid_stm_sig_stop : std_logic := '0';
    signal clk_Enhanced_Signal_stm_sig_stop : std_logic := '0';
    signal clk_Estimated_SNR_Valid_stm_sig_stop : std_logic := '0';
    signal clk_Estimated_SNR_Db_stm_sig_stop : std_logic := '0';

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
            file data_file_busIn : text open read_mode is safe_path("DSPB_MMSE/DSPB_MMSE_dut_busIn.stm");
            variable busIn_writedata_int_0 : Integer;
            variable busIn_writedata_temp : std_logic_vector(15 downto 0);
            variable busIn_address_int_0 : Integer;
            variable busIn_address_temp : std_logic_vector(9 downto 0);
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
                    busIn_writedata_temp(15 downto 0) := std_logic_vector(to_unsigned(busIn_writedata_int_0, 16));
                    busIn_writedata_stm <= busIn_writedata_temp;
                    read(L, busIn_address_int_0);
                    busIn_address_temp(9 downto 0) := std_logic_vector(to_unsigned(busIn_address_int_0, 10));
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
        busOut_waitrequest_stm <= (others => '0');
        -- Generating stimulus for Enhanced_Signal_Valid
        Enhanced_Signal_Valid_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_GPIn : text open read_mode is safe_path("DSPB_MMSE/DSPB_MMSE_dut_Output_IF_GPIn.stm");
            variable in_1_Enhanced_Signal_Valid_int_0 : Integer;
            variable in_1_Enhanced_Signal_Valid_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            Enhanced_Signal_Valid_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to Enhanced_Signal_Valid)
                IF (endfile(data_file_GPIn)) THEN
                    clk_Enhanced_Signal_Valid_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_GPIn, L);
                    
                    read(L, in_1_Enhanced_Signal_Valid_int_0);
                    in_1_Enhanced_Signal_Valid_temp(0 downto 0) := std_logic_vector(to_unsigned(in_1_Enhanced_Signal_Valid_int_0, 1));
                    Enhanced_Signal_Valid_stm <= in_1_Enhanced_Signal_Valid_temp;
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for Enhanced_Signal
        Enhanced_Signal_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_GPIn : text open read_mode is safe_path("DSPB_MMSE/DSPB_MMSE_dut_Output_IF_GPIn.stm");
            variable in_2_Enhanced_Signal_int_0 : Integer;
            variable in_2_Enhanced_Signal_temp : std_logic_vector(15 downto 0);

        begin
            -- initialize all outputs to 0
            Enhanced_Signal_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to Enhanced_Signal)
                IF (endfile(data_file_GPIn)) THEN
                    clk_Enhanced_Signal_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_GPIn, L);
                    
                    read(L, dummy_int);
                    read(L, in_2_Enhanced_Signal_int_0);
                    in_2_Enhanced_Signal_temp(15 downto 0) := std_logic_vector(to_unsigned(in_2_Enhanced_Signal_int_0, 16));
                    Enhanced_Signal_stm <= in_2_Enhanced_Signal_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for Estimated_SNR_Valid
        Estimated_SNR_Valid_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_GPIn1 : text open read_mode is safe_path("DSPB_MMSE/DSPB_MMSE_dut_Output_IF_GPIn1.stm");
            variable in_3_Estimated_SNR_Valid_int_0 : Integer;
            variable in_3_Estimated_SNR_Valid_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            Estimated_SNR_Valid_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to Estimated_SNR_Valid)
                IF (endfile(data_file_GPIn1)) THEN
                    clk_Estimated_SNR_Valid_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_GPIn1, L);
                    
                    read(L, dummy_int);
                    read(L, in_3_Estimated_SNR_Valid_int_0);
                    in_3_Estimated_SNR_Valid_temp(0 downto 0) := std_logic_vector(to_unsigned(in_3_Estimated_SNR_Valid_int_0, 1));
                    Estimated_SNR_Valid_stm <= in_3_Estimated_SNR_Valid_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for Estimated_SNR_Db
        Estimated_SNR_Db_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_GPIn1 : text open read_mode is safe_path("DSPB_MMSE/DSPB_MMSE_dut_Output_IF_GPIn1.stm");
            variable in_4_Estimated_SNR_Db_int_0 : Integer;
            variable in_4_Estimated_SNR_Db_temp : std_logic_vector(15 downto 0);

        begin
            -- initialize all outputs to 0
            Estimated_SNR_Db_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to Estimated_SNR_Db)
                IF (endfile(data_file_GPIn1)) THEN
                    clk_Estimated_SNR_Db_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_GPIn1, L);
                    
                    read(L, in_4_Estimated_SNR_Db_int_0);
                    in_4_Estimated_SNR_Db_temp(15 downto 0) := std_logic_vector(to_unsigned(in_4_Estimated_SNR_Db_int_0, 16));
                    Estimated_SNR_Db_stm <= in_4_Estimated_SNR_Db_temp;
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;

    clk_stm_sig_stop <= clk_Enhanced_Signal_Valid_stm_sig_stop OR clk_Enhanced_Signal_stm_sig_stop OR clk_Estimated_SNR_Valid_stm_sig_stop OR clk_Estimated_SNR_Db_stm_sig_stop OR '0';


    END normal;
