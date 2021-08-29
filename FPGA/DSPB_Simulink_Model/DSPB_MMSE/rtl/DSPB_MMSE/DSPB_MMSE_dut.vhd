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

-- VHDL created from DSPB_MMSE_dut
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
entity DSPB_MMSE_dut is
    port (
        busIn_writedata : in std_logic_vector(15 downto 0);  -- ufix16
        busIn_address : in std_logic_vector(9 downto 0);  -- ufix10
        busIn_write : in std_logic_vector(0 downto 0);  -- ufix1
        busIn_read : in std_logic_vector(0 downto 0);  -- ufix1
        busOut_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        busOut_readdata : out std_logic_vector(15 downto 0);  -- ufix16
        busOut_waitrequest : out std_logic_vector(0 downto 0);  -- ufix1
        clk : in std_logic;
        areset : in std_logic;
        h_areset : in std_logic
    );
end DSPB_MMSE_dut;

architecture normal of DSPB_MMSE_dut is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component DSPB_MMSE_dut_Enhacement_Algorithm_MMSE is
        port (
            in_1_a_priori_SNR_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_a_priori_SNR : in std_logic_vector(31 downto 0);  -- Floating Point
            in_3_a_posteriori_SNR_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_a_posteriori_SNR : in std_logic_vector(31 downto 0);  -- Floating Point
            in_5_noisy_magnitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_6_noisy_magnitude_spectrum : in std_logic_vector(17 downto 0);  -- Fixed Point
            out_1_enhanced_magnitude_spectrum_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_enhanced_magnitude_spectrum : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_Output_IF is
        port (
            in_1_Enhanced_Signal_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_Enhanced_Signal : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_3_Estimated_SNR_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_Estimated_SNR_Db : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(8 downto 0);  -- Fixed Point
            out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz is
        port (
            busIn_writedata : in std_logic_vector(15 downto 0);  -- Fixed Point
            busIn_address : in std_logic_vector(9 downto 0);  -- Fixed Point
            busIn_write : in std_logic_vector(0 downto 0);  -- Fixed Point
            busIn_read : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(8 downto 0);  -- Fixed Point
            in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(8 downto 0);  -- Fixed Point
            in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(0 downto 0);  -- Fixed Point
            busOut_readdata : out std_logic_vector(15 downto 0);  -- Fixed Point
            busOut_readdatavalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic;
            h_areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_feature_extraction is
        port (
            in_1_magnitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_magnitude_spectrum : in std_logic_vector(17 downto 0);  -- Fixed Point
            in_3_noisy_power_spectrum : in std_logic_vector(35 downto 0);  -- Fixed Point
            in_4_amplitude_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_5_amplitude : in std_logic_vector(15 downto 0);  -- Fixed Point
            in_6_enhanced_mag_spectrum_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_7_enhanced_mag_spectrum : in std_logic_vector(31 downto 0);  -- Floating Point
            out_1_a_priori_SNR_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_a_priori_SNR : out std_logic_vector(31 downto 0);  -- Floating Point
            out_3_noise_power_spectrum_snr_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_4_a_posteriori_SNR : out std_logic_vector(31 downto 0);  -- Floating Point
            out_5_estimated_SNR_Valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_6_estimated_SNR_dB : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_feedback_delay is
        port (
            in_1_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_in : in std_logic_vector(31 downto 0);  -- Floating Point
            out_1_out : out std_logic_vector(31 downto 0);  -- Floating Point
            out_2_valid_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_input_IF is
        port (
            in_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_Noisy_Signal_Valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_Noisy_Signal : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x : out std_logic_vector(8 downto 0);  -- Fixed Point
            out_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x : out std_logic_vector(15 downto 0);  -- Fixed Point
            out_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x : out std_logic_vector(0 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_input_adapter is
        port (
            in_1_Input_Signal_Valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_Input_Signal : in std_logic_vector(15 downto 0);  -- Fixed Point
            out_1_Spectrum_Valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_Magnitude_Spectrum : out std_logic_vector(17 downto 0);  -- Fixed Point
            out_3_Power_Spectrum : out std_logic_vector(35 downto 0);  -- Fixed Point
            out_4_Phase_Valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_5_Phase : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component DSPB_MMSE_dut_output_adapter is
        port (
            in_1_enhanced_magnitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_2_enhanced_magnitude_spectrum : in std_logic_vector(31 downto 0);  -- Floating Point
            in_3_phase_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_4_phase : in std_logic_vector(31 downto 0);  -- Floating Point
            out_1_time_domain_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_2_time_domain_out : out std_logic_vector(15 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Enhacement_Algorithm_MMSE_out_1_enhanced_magnitude_spectrum_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal Enhacement_Algorithm_MMSE_out_2_enhanced_magnitude_spectrum : STD_LOGIC_VECTOR (31 downto 0);
    signal Output_IF_out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x : STD_LOGIC_VECTOR (15 downto 0);
    signal Output_IF_out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x : STD_LOGIC_VECTOR (0 downto 0);
    signal Output_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x : STD_LOGIC_VECTOR (8 downto 0);
    signal Output_IF_out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x : STD_LOGIC_VECTOR (15 downto 0);
    signal Output_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x : STD_LOGIC_VECTOR (0 downto 0);
    signal busSlaveFabric_busOut_readdata : STD_LOGIC_VECTOR (15 downto 0);
    signal busSlaveFabric_busOut_readdatavalid : STD_LOGIC_VECTOR (0 downto 0);
    signal busSlaveFabric_out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x : STD_LOGIC_VECTOR (15 downto 0);
    signal feature_extraction_out_1_a_priori_SNR_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal feature_extraction_out_2_a_priori_SNR : STD_LOGIC_VECTOR (31 downto 0);
    signal feature_extraction_out_3_noise_power_spectrum_snr_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal feature_extraction_out_4_a_posteriori_SNR : STD_LOGIC_VECTOR (31 downto 0);
    signal feature_extraction_out_5_estimated_SNR_Valid : STD_LOGIC_VECTOR (0 downto 0);
    signal feature_extraction_out_6_estimated_SNR_dB : STD_LOGIC_VECTOR (15 downto 0);
    signal feedback_delay_out_1_out : STD_LOGIC_VECTOR (31 downto 0);
    signal feedback_delay_out_2_valid_x : STD_LOGIC_VECTOR (0 downto 0);
    signal input_IF_out_1_Noisy_Signal_Valid : STD_LOGIC_VECTOR (0 downto 0);
    signal input_IF_out_2_Noisy_Signal : STD_LOGIC_VECTOR (15 downto 0);
    signal input_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x : STD_LOGIC_VECTOR (8 downto 0);
    signal input_IF_out_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x : STD_LOGIC_VECTOR (15 downto 0);
    signal input_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x : STD_LOGIC_VECTOR (0 downto 0);
    signal input_adapter_out_1_Spectrum_Valid : STD_LOGIC_VECTOR (0 downto 0);
    signal input_adapter_out_2_Magnitude_Spectrum : STD_LOGIC_VECTOR (17 downto 0);
    signal input_adapter_out_3_Power_Spectrum : STD_LOGIC_VECTOR (35 downto 0);
    signal input_adapter_out_4_Phase_Valid : STD_LOGIC_VECTOR (0 downto 0);
    signal input_adapter_out_5_Phase : STD_LOGIC_VECTOR (31 downto 0);
    signal output_adapter_out_1_time_domain_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal output_adapter_out_2_time_domain_out : STD_LOGIC_VECTOR (15 downto 0);
    signal DSPB_MMSE_dut_readDelayed_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_readDataValid_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- input_IF(BLACKBOX,11)
    theinput_IF : DSPB_MMSE_dut_input_IF
    PORT MAP (
        in_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x => busSlaveFabric_out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x,
        out_1_Noisy_Signal_Valid => input_IF_out_1_Noisy_Signal_Valid,
        out_2_Noisy_Signal => input_IF_out_2_Noisy_Signal,
        out_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x => input_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x,
        out_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x => input_IF_out_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x,
        out_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x => input_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x,
        clk => clk,
        areset => areset
    );

    -- Enhacement_Algorithm_MMSE(BLACKBOX,4)
    theEnhacement_Algorithm_MMSE : DSPB_MMSE_dut_Enhacement_Algorithm_MMSE
    PORT MAP (
        in_1_a_priori_SNR_valid => feature_extraction_out_1_a_priori_SNR_valid,
        in_2_a_priori_SNR => feature_extraction_out_2_a_priori_SNR,
        in_3_a_posteriori_SNR_Valid => feature_extraction_out_3_noise_power_spectrum_snr_valid,
        in_4_a_posteriori_SNR => feature_extraction_out_4_a_posteriori_SNR,
        in_5_noisy_magnitude_spectrum_valid => input_adapter_out_1_Spectrum_Valid,
        in_6_noisy_magnitude_spectrum => input_adapter_out_2_Magnitude_Spectrum,
        out_1_enhanced_magnitude_spectrum_valid => Enhacement_Algorithm_MMSE_out_1_enhanced_magnitude_spectrum_valid,
        out_2_enhanced_magnitude_spectrum => Enhacement_Algorithm_MMSE_out_2_enhanced_magnitude_spectrum,
        clk => clk,
        areset => areset
    );

    -- feedback_delay(BLACKBOX,10)
    thefeedback_delay : DSPB_MMSE_dut_feedback_delay
    PORT MAP (
        in_1_valid => Enhacement_Algorithm_MMSE_out_1_enhanced_magnitude_spectrum_valid,
        in_2_in => Enhacement_Algorithm_MMSE_out_2_enhanced_magnitude_spectrum,
        out_1_out => feedback_delay_out_1_out,
        out_2_valid_x => feedback_delay_out_2_valid_x,
        clk => clk,
        areset => areset
    );

    -- input_adapter(BLACKBOX,12)
    theinput_adapter : DSPB_MMSE_dut_input_adapter
    PORT MAP (
        in_1_Input_Signal_Valid => input_IF_out_1_Noisy_Signal_Valid,
        in_2_Input_Signal => input_IF_out_2_Noisy_Signal,
        out_1_Spectrum_Valid => input_adapter_out_1_Spectrum_Valid,
        out_2_Magnitude_Spectrum => input_adapter_out_2_Magnitude_Spectrum,
        out_3_Power_Spectrum => input_adapter_out_3_Power_Spectrum,
        out_4_Phase_Valid => input_adapter_out_4_Phase_Valid,
        out_5_Phase => input_adapter_out_5_Phase,
        clk => clk,
        areset => areset
    );

    -- feature_extraction(BLACKBOX,9)
    thefeature_extraction : DSPB_MMSE_dut_feature_extraction
    PORT MAP (
        in_1_magnitude_spectrum_valid => input_adapter_out_1_Spectrum_Valid,
        in_2_magnitude_spectrum => input_adapter_out_2_Magnitude_Spectrum,
        in_3_noisy_power_spectrum => input_adapter_out_3_Power_Spectrum,
        in_4_amplitude_Valid => input_IF_out_1_Noisy_Signal_Valid,
        in_5_amplitude => input_IF_out_2_Noisy_Signal,
        in_6_enhanced_mag_spectrum_valid => feedback_delay_out_2_valid_x,
        in_7_enhanced_mag_spectrum => feedback_delay_out_1_out,
        out_1_a_priori_SNR_valid => feature_extraction_out_1_a_priori_SNR_valid,
        out_2_a_priori_SNR => feature_extraction_out_2_a_priori_SNR,
        out_3_noise_power_spectrum_snr_valid => feature_extraction_out_3_noise_power_spectrum_snr_valid,
        out_4_a_posteriori_SNR => feature_extraction_out_4_a_posteriori_SNR,
        out_5_estimated_SNR_Valid => feature_extraction_out_5_estimated_SNR_Valid,
        out_6_estimated_SNR_dB => feature_extraction_out_6_estimated_SNR_dB,
        clk => clk,
        areset => areset
    );

    -- output_adapter(BLACKBOX,13)
    theoutput_adapter : DSPB_MMSE_dut_output_adapter
    PORT MAP (
        in_1_enhanced_magnitude_spectrum_valid => Enhacement_Algorithm_MMSE_out_1_enhanced_magnitude_spectrum_valid,
        in_2_enhanced_magnitude_spectrum => Enhacement_Algorithm_MMSE_out_2_enhanced_magnitude_spectrum,
        in_3_phase_valid => input_adapter_out_4_Phase_Valid,
        in_4_phase => input_adapter_out_5_Phase,
        out_1_time_domain_valid => output_adapter_out_1_time_domain_valid,
        out_2_time_domain_out => output_adapter_out_2_time_domain_out,
        clk => clk,
        areset => areset
    );

    -- Output_IF(BLACKBOX,5)
    theOutput_IF : DSPB_MMSE_dut_Output_IF
    PORT MAP (
        in_1_Enhanced_Signal_Valid => output_adapter_out_1_time_domain_valid,
        in_2_Enhanced_Signal => output_adapter_out_2_time_domain_out,
        in_3_Estimated_SNR_Valid => feature_extraction_out_5_estimated_SNR_Valid,
        in_4_Estimated_SNR_Db => feature_extraction_out_6_estimated_SNR_dB,
        out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x => Output_IF_out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x,
        out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x => Output_IF_out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x,
        out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x => Output_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x => Output_IF_out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x => Output_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        clk => clk,
        areset => areset
    );

    -- busSlaveFabric(BLACKBOX,8)
    thebusSlaveFabric : busSlaveFabric_DSPB_MMSE_dut_2puidkqw3flrx06e69646s6u0qu5xajz
    PORT MAP (
        busIn_writedata => busIn_writedata,
        busIn_address => busIn_address,
        busIn_write => busIn_write,
        busIn_read => busIn_read,
        in_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x => Output_IF_out_AMMregisterPortData_DSPB_MMSE_dut_Output_IF_RegOut_x,
        in_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x => Output_IF_out_AMMregisterPortWriteEn_DSPB_MMSE_dut_Output_IF_RegOut_x,
        in_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x => Output_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        in_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x => input_IF_out_sharedMemPortAddr_DSPB_MMSE_dut_input_IF_input_fifo_x,
        in_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x => Output_IF_out_sharedMemPortData_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        in_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x => input_IF_out_sharedMemPortData_DSPB_MMSE_dut_input_IF_input_fifo_x,
        in_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x => Output_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_Output_IF_output_fifo_x,
        in_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x => input_IF_out_sharedMemPortWriteEn_DSPB_MMSE_dut_input_IF_input_fifo_x,
        busOut_readdata => busSlaveFabric_busOut_readdata,
        busOut_readdatavalid => busSlaveFabric_busOut_readdatavalid,
        out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x => busSlaveFabric_out_sharedMemWireData_DSPB_MMSE_dut_input_IF_input_fifo_x,
        clk => clk,
        areset => areset,
        h_areset => h_areset
    );

    -- DSPB_MMSE_dut_readDelayed(DELAY,19)
    DSPB_MMSE_dut_readDelayed : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => busIn_read, xout => DSPB_MMSE_dut_readDelayed_q, clk => clk, aclr => h_areset );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- DSPB_MMSE_dut_readDataValid(LOGICAL,20)
    DSPB_MMSE_dut_readDataValid_q <= busSlaveFabric_busOut_readdatavalid or DSPB_MMSE_dut_readDelayed_q;

    -- busOut(BUSOUT,7)
    busOut_readdatavalid <= DSPB_MMSE_dut_readDataValid_q;
    busOut_readdata <= busSlaveFabric_busOut_readdata;
    busOut_waitrequest <= GND_q;

END normal;
