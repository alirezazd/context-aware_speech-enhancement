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

-- VHDL created from DSPB_MMSE_dut_Enhacement_Algorithm_MMSE
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
entity DSPB_MMSE_dut_Enhacement_Algorithm_MMSE is
    port (
        in_1_a_priori_SNR_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_2_a_priori_SNR : in std_logic_vector(31 downto 0);  -- float32_m23
        in_3_a_posteriori_SNR_Valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_4_a_posteriori_SNR : in std_logic_vector(31 downto 0);  -- float32_m23
        in_5_noisy_magnitude_spectrum_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_6_noisy_magnitude_spectrum : in std_logic_vector(17 downto 0);  -- ufix18_en11
        out_1_enhanced_magnitude_spectrum_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_2_enhanced_magnitude_spectrum : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end DSPB_MMSE_dut_Enhacement_Algorithm_MMSE;

architecture normal of DSPB_MMSE_dut_Enhacement_Algorithm_MMSE is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;



    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A0Z122644ck28744ck2675x is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(6 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A1Z122644ck28744ck2675x is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(7 downto 0);  -- Fixed Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A1Zd6oq3cd16oe0cp36hj0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;



    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_roundBlock_typeSFloatIEEEA0Z122644ck28744ck46w65 is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;



    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA0Z6cd0oq3cdd6oq3cp5d0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;



    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_divideBlock_typeSFloatIEEA0Zd6oq3cd16oe0cp36hj0u is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;




    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A1Z3cd16oe0cp36c00oq3cz is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            in_1 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x is
        port (
            in_0 : in std_logic_vector(17 downto 0);  -- Fixed Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;









    component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A0Z122644ck28744ck46w65 is
        port (
            in_0 : in std_logic_vector(31 downto 0);  -- Floating Point
            out_primWireOut : out std_logic_vector(31 downto 0);  -- Floating Point
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const1_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const2_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const3_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const4_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const5_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const7_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut : STD_LOGIC_VECTOR (6 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x_out_primWireOut : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Add_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Add1_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal And_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal Const_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Const1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal Convert_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Divide_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal FIFO0_reset : std_logic;
    signal FIFO0_f : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO0_e : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO0_t : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal FIFO0_empty : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO0_v : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO1_reset : std_logic;
    signal FIFO1_f : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO1_e : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO1_t : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal FIFO1_empty : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO1_v : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO2_reset : std_logic;
    signal FIFO2_f : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO2_e : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO2_t : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal FIFO2_empty : STD_LOGIC_VECTOR (0 downto 0);
    signal FIFO2_v : STD_LOGIC_VECTOR (0 downto 0);
    signal Mult_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult1_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult2_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult3_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult4_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Mult5_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal Sqrt_out_primWireOut : STD_LOGIC_VECTOR (31 downto 0);
    signal cstAllOWE_uid56_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid57_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid58_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_x_uid59_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid60_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid61_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid62_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid63_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid64_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid66_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_y_uid73_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_y_uid74_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_y_uid75_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid76_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid77_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid78_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid80_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneIsNaN_uid84_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid89_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yNotZero_uid90_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXPS_uid91_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracXPS_uid91_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (22 downto 0);
    signal fracYPS_uid92_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracYPS_uid92_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expFracX_uid93_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid95_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (30 downto 0);
    signal efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal signX_uid102_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid103_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal two_uid104_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal concSXSY_uid105_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sxLTsy_uid106_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xorSigns_uid107_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sxEQsy_uid108_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneNonZero_uid112_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rc2_uid113_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sxEQsyExpFracCompMux_uid114_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid115_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_x_uid121_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid122_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid123_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid124_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid125_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid126_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid128_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneIsNaN_uid146_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotZero_uid151_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXPS_uid153_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b : STD_LOGIC_VECTOR (22 downto 0);
    signal fracXPS_uid153_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expFracX_uid155_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (30 downto 0);
    signal efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal signX_uid164_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal concSXSY_uid167_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal sxLTsy_uid168_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xorSigns_uid169_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sxEQsy_uid170_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneNonZero_uid174_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rc2_uid175_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sxEQsyExpFracCompMux_uid176_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid177_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_reset0 : std_logic;
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q_10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_Sqrt_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_Mult5_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_Mult4_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_Mult3_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_Mult2_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_Mult1_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_Mult_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_FIFO0_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_Divide_out_primWireOut_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_Convert_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_And_rsrvd_fix_q_45_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_Add1_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist18_Add_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist22_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist23_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist24_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist25_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist26_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist27_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist28_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist29_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist30_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist31_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut_3_q : STD_LOGIC_VECTOR (6 downto 0);
    signal redist32_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist33_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x_out_primWireOut_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_FIFO2_q_40_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist9_FIFO2_q_40_mem_reset0 : std_logic;
    signal redist9_FIFO2_q_40_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist9_FIFO2_q_40_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_FIFO2_q_40_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_FIFO2_q_40_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist9_FIFO2_q_40_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist9_FIFO2_q_40_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_FIFO2_q_40_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist9_FIFO2_q_40_rdcnt_i : signal is true;
    signal redist9_FIFO2_q_40_rdcnt_eq : std_logic;
    attribute preserve of redist9_FIFO2_q_40_rdcnt_eq : signal is true;
    signal redist9_FIFO2_q_40_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_FIFO2_q_40_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_FIFO2_q_40_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_FIFO2_q_40_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_FIFO2_q_40_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_FIFO2_q_40_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_FIFO2_q_40_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist9_FIFO2_q_40_sticky_ena_q : signal is true;
    signal redist9_FIFO2_q_40_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_FIFO1_q_16_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_FIFO1_q_16_mem_reset0 : std_logic;
    signal redist10_FIFO1_q_16_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_FIFO1_q_16_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_FIFO1_q_16_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_FIFO1_q_16_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_FIFO1_q_16_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_FIFO1_q_16_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_FIFO1_q_16_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of redist10_FIFO1_q_16_rdcnt_i : signal is true;
    signal redist10_FIFO1_q_16_rdcnt_eq : std_logic;
    attribute preserve of redist10_FIFO1_q_16_rdcnt_eq : signal is true;
    signal redist10_FIFO1_q_16_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist10_FIFO1_q_16_mem_last_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist10_FIFO1_q_16_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal redist10_FIFO1_q_16_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_FIFO1_q_16_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_FIFO1_q_16_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_FIFO1_q_16_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_FIFO1_q_16_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist10_FIFO1_q_16_sticky_ena_q : signal is true;
    signal redist10_FIFO1_q_16_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_FIFO1_q_22_mem_reset0 : std_logic;
    signal redist11_FIFO1_q_22_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_FIFO1_q_22_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_FIFO1_q_22_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_FIFO1_q_22_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_FIFO1_q_22_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_FIFO1_q_22_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_FIFO1_q_22_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist11_FIFO1_q_22_rdcnt_i : signal is true;
    signal redist11_FIFO1_q_22_rdcnt_eq : std_logic;
    attribute preserve of redist11_FIFO1_q_22_rdcnt_eq : signal is true;
    signal redist11_FIFO1_q_22_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_FIFO1_q_22_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist11_FIFO1_q_22_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_FIFO1_q_22_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_FIFO1_q_22_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_FIFO1_q_22_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_FIFO1_q_22_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist11_FIFO1_q_22_sticky_ena_q : signal is true;
    signal redist11_FIFO1_q_22_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_FIFO0_q_10_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_FIFO0_q_10_mem_reset0 : std_logic;
    signal redist13_FIFO0_q_10_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_FIFO0_q_10_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist13_FIFO0_q_10_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist13_FIFO0_q_10_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_FIFO0_q_10_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_FIFO0_q_10_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist13_FIFO0_q_10_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist13_FIFO0_q_10_rdcnt_i : signal is true;
    signal redist13_FIFO0_q_10_rdcnt_eq : std_logic;
    attribute preserve of redist13_FIFO0_q_10_rdcnt_eq : signal is true;
    signal redist13_FIFO0_q_10_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist13_FIFO0_q_10_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist13_FIFO0_q_10_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist13_FIFO0_q_10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_FIFO0_q_10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_FIFO0_q_10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_FIFO0_q_10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_FIFO0_q_10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist13_FIFO0_q_10_sticky_ena_q : signal is true;
    signal redist13_FIFO0_q_10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_Divide_out_primWireOut_3_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_reset0 : std_logic;
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_i : signal is true;
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_last_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_sticky_ena_q : signal is true;
    signal redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_FIFO2_q_40_split_0_outputreg_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist9_FIFO2_q_40_split_0_mem_reset0 : std_logic;
    signal redist9_FIFO2_q_40_split_0_mem_ia : STD_LOGIC_VECTOR (17 downto 0);
    signal redist9_FIFO2_q_40_split_0_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal redist9_FIFO2_q_40_split_0_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal redist9_FIFO2_q_40_split_0_mem_iq : STD_LOGIC_VECTOR (17 downto 0);
    signal redist9_FIFO2_q_40_split_0_mem_q : STD_LOGIC_VECTOR (17 downto 0);
    signal redist9_FIFO2_q_40_split_0_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist9_FIFO2_q_40_split_0_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of redist9_FIFO2_q_40_split_0_rdcnt_i : signal is true;
    signal redist9_FIFO2_q_40_split_0_rdcnt_eq : std_logic;
    attribute preserve of redist9_FIFO2_q_40_split_0_rdcnt_eq : signal is true;
    signal redist9_FIFO2_q_40_split_0_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist9_FIFO2_q_40_split_0_mem_last_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist9_FIFO2_q_40_split_0_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal redist9_FIFO2_q_40_split_0_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_FIFO2_q_40_split_0_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_FIFO2_q_40_split_0_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_FIFO2_q_40_split_0_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist9_FIFO2_q_40_split_0_sticky_ena_q : signal is true;
    signal redist9_FIFO2_q_40_split_0_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist9_FIFO2_q_40_notEnable(LOGICAL,224)
    redist9_FIFO2_q_40_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist9_FIFO2_q_40_nor(LOGICAL,225)
    redist9_FIFO2_q_40_nor_q <= not (redist9_FIFO2_q_40_notEnable_q or redist9_FIFO2_q_40_sticky_ena_q);

    -- redist9_FIFO2_q_40_mem_last(CONSTANT,221)
    redist9_FIFO2_q_40_mem_last_q <= "011";

    -- redist9_FIFO2_q_40_cmp(LOGICAL,222)
    redist9_FIFO2_q_40_cmp_q <= "1" WHEN redist9_FIFO2_q_40_mem_last_q = redist9_FIFO2_q_40_rdcnt_q ELSE "0";

    -- redist9_FIFO2_q_40_cmpReg(REG,223)
    redist9_FIFO2_q_40_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_FIFO2_q_40_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist9_FIFO2_q_40_cmpReg_q <= STD_LOGIC_VECTOR(redist9_FIFO2_q_40_cmp_q);
        END IF;
    END PROCESS;

    -- redist9_FIFO2_q_40_sticky_ena(REG,226)
    redist9_FIFO2_q_40_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_FIFO2_q_40_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist9_FIFO2_q_40_nor_q = "1") THEN
                redist9_FIFO2_q_40_sticky_ena_q <= STD_LOGIC_VECTOR(redist9_FIFO2_q_40_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_FIFO2_q_40_enaAnd(LOGICAL,227)
    redist9_FIFO2_q_40_enaAnd_q <= redist9_FIFO2_q_40_sticky_ena_q and VCC_q;

    -- redist9_FIFO2_q_40_rdcnt(COUNTER,219)
    -- low=0, high=4, step=1, init=0
    redist9_FIFO2_q_40_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_FIFO2_q_40_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist9_FIFO2_q_40_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist9_FIFO2_q_40_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist9_FIFO2_q_40_rdcnt_eq <= '1';
            ELSE
                redist9_FIFO2_q_40_rdcnt_eq <= '0';
            END IF;
            IF (redist9_FIFO2_q_40_rdcnt_eq = '1') THEN
                redist9_FIFO2_q_40_rdcnt_i <= redist9_FIFO2_q_40_rdcnt_i + 4;
            ELSE
                redist9_FIFO2_q_40_rdcnt_i <= redist9_FIFO2_q_40_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist9_FIFO2_q_40_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist9_FIFO2_q_40_rdcnt_i, 3)));

    -- redist9_FIFO2_q_40_split_0_nor(LOGICAL,282)
    redist9_FIFO2_q_40_split_0_nor_q <= not (redist9_FIFO2_q_40_notEnable_q or redist9_FIFO2_q_40_split_0_sticky_ena_q);

    -- redist9_FIFO2_q_40_split_0_mem_last(CONSTANT,278)
    redist9_FIFO2_q_40_split_0_mem_last_q <= "011101";

    -- redist9_FIFO2_q_40_split_0_cmp(LOGICAL,279)
    redist9_FIFO2_q_40_split_0_cmp_b <= STD_LOGIC_VECTOR("0" & redist9_FIFO2_q_40_split_0_rdcnt_q);
    redist9_FIFO2_q_40_split_0_cmp_q <= "1" WHEN redist9_FIFO2_q_40_split_0_mem_last_q = redist9_FIFO2_q_40_split_0_cmp_b ELSE "0";

    -- redist9_FIFO2_q_40_split_0_cmpReg(REG,280)
    redist9_FIFO2_q_40_split_0_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_FIFO2_q_40_split_0_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist9_FIFO2_q_40_split_0_cmpReg_q <= STD_LOGIC_VECTOR(redist9_FIFO2_q_40_split_0_cmp_q);
        END IF;
    END PROCESS;

    -- redist9_FIFO2_q_40_split_0_sticky_ena(REG,283)
    redist9_FIFO2_q_40_split_0_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_FIFO2_q_40_split_0_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist9_FIFO2_q_40_split_0_nor_q = "1") THEN
                redist9_FIFO2_q_40_split_0_sticky_ena_q <= STD_LOGIC_VECTOR(redist9_FIFO2_q_40_split_0_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_FIFO2_q_40_split_0_enaAnd(LOGICAL,284)
    redist9_FIFO2_q_40_split_0_enaAnd_q <= redist9_FIFO2_q_40_split_0_sticky_ena_q and VCC_q;

    -- redist9_FIFO2_q_40_split_0_rdcnt(COUNTER,276)
    -- low=0, high=30, step=1, init=0
    redist9_FIFO2_q_40_split_0_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_FIFO2_q_40_split_0_rdcnt_i <= TO_UNSIGNED(0, 5);
            redist9_FIFO2_q_40_split_0_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist9_FIFO2_q_40_split_0_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                redist9_FIFO2_q_40_split_0_rdcnt_eq <= '1';
            ELSE
                redist9_FIFO2_q_40_split_0_rdcnt_eq <= '0';
            END IF;
            IF (redist9_FIFO2_q_40_split_0_rdcnt_eq = '1') THEN
                redist9_FIFO2_q_40_split_0_rdcnt_i <= redist9_FIFO2_q_40_split_0_rdcnt_i + 2;
            ELSE
                redist9_FIFO2_q_40_split_0_rdcnt_i <= redist9_FIFO2_q_40_split_0_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist9_FIFO2_q_40_split_0_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist9_FIFO2_q_40_split_0_rdcnt_i, 5)));

    -- FIFO0(FIFO,41)@0
    FIFO0_reset <= areset;
    FIFO0_fifo : scfifo
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
        aclr => FIFO0_reset,
        clock => clk,
        wrreq => in_1_a_priori_SNR_valid(0),
        data => in_2_a_priori_SNR,
        almost_full => FIFO0_f(0),
        almost_empty => FIFO0_t(0),
        empty => FIFO0_empty(0),
        q => FIFO0_q
    );
    FIFO0_v <= not (FIFO0_empty);
    FIFO0_e <= not (FIFO0_t);

    -- FIFO1(FIFO,42)@0
    FIFO1_reset <= areset;
    FIFO1_fifo : scfifo
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
        aclr => FIFO1_reset,
        clock => clk,
        wrreq => in_3_a_posteriori_SNR_Valid(0),
        data => in_4_a_posteriori_SNR,
        almost_full => FIFO1_f(0),
        almost_empty => FIFO1_t(0),
        empty => FIFO1_empty(0),
        q => FIFO1_q
    );
    FIFO1_v <= not (FIFO1_empty);
    FIFO1_e <= not (FIFO1_t);

    -- And_rsrvd_fix(LOGICAL,35)@0
    And_rsrvd_fix_q <= FIFO2_v and FIFO1_v and FIFO0_v;

    -- FIFO2(FIFO,43)@0
    FIFO2_reset <= areset;
    FIFO2_fifo : scfifo
    GENERIC MAP (
        add_ram_output_register => "ON",
        almost_empty_value => 1,
        almost_full_value => 257,
        intended_device_family => "Cyclone V",
        lpm_numwords => 257,
        lpm_showahead => "ON",
        lpm_type => "scfifo",
        lpm_width => 18,
        lpm_widthu => 9,
        overflow_checking => "ON",
        underflow_checking => "ON",
        use_eab => "ON"
    )
    PORT MAP (
        rdreq => And_rsrvd_fix_q(0),
        aclr => FIFO2_reset,
        clock => clk,
        wrreq => in_5_noisy_magnitude_spectrum_valid(0),
        data => in_6_noisy_magnitude_spectrum,
        almost_full => FIFO2_f(0),
        almost_empty => FIFO2_t(0),
        empty => FIFO2_empty(0),
        q => FIFO2_q
    );
    FIFO2_v <= not (FIFO2_empty);
    FIFO2_e <= not (FIFO2_t);

    -- redist9_FIFO2_q_40_split_0_wraddr(REG,277)
    redist9_FIFO2_q_40_split_0_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_FIFO2_q_40_split_0_wraddr_q <= "11110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist9_FIFO2_q_40_split_0_wraddr_q <= STD_LOGIC_VECTOR(redist9_FIFO2_q_40_split_0_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist9_FIFO2_q_40_split_0_mem(DUALMEM,275)
    redist9_FIFO2_q_40_split_0_mem_ia <= STD_LOGIC_VECTOR(FIFO2_q);
    redist9_FIFO2_q_40_split_0_mem_aa <= redist9_FIFO2_q_40_split_0_wraddr_q;
    redist9_FIFO2_q_40_split_0_mem_ab <= redist9_FIFO2_q_40_split_0_rdcnt_q;
    redist9_FIFO2_q_40_split_0_mem_reset0 <= areset;
    redist9_FIFO2_q_40_split_0_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 5,
        numwords_a => 31,
        width_b => 18,
        widthad_b => 5,
        numwords_b => 31,
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
        clocken1 => redist9_FIFO2_q_40_split_0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist9_FIFO2_q_40_split_0_mem_reset0,
        clock1 => clk,
        address_a => redist9_FIFO2_q_40_split_0_mem_aa,
        data_a => redist9_FIFO2_q_40_split_0_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist9_FIFO2_q_40_split_0_mem_ab,
        q_b => redist9_FIFO2_q_40_split_0_mem_iq
    );
    redist9_FIFO2_q_40_split_0_mem_q <= redist9_FIFO2_q_40_split_0_mem_iq(17 downto 0);

    -- redist9_FIFO2_q_40_split_0_outputreg(DELAY,274)
    redist9_FIFO2_q_40_split_0_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_FIFO2_q_40_split_0_mem_q, xout => redist9_FIFO2_q_40_split_0_outputreg_q, clk => clk, aclr => areset );

    -- redist9_FIFO2_q_40_wraddr(REG,220)
    redist9_FIFO2_q_40_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist9_FIFO2_q_40_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist9_FIFO2_q_40_wraddr_q <= STD_LOGIC_VECTOR(redist9_FIFO2_q_40_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist9_FIFO2_q_40_mem(DUALMEM,218)
    redist9_FIFO2_q_40_mem_ia <= STD_LOGIC_VECTOR(redist9_FIFO2_q_40_split_0_outputreg_q);
    redist9_FIFO2_q_40_mem_aa <= redist9_FIFO2_q_40_wraddr_q;
    redist9_FIFO2_q_40_mem_ab <= redist9_FIFO2_q_40_rdcnt_q;
    redist9_FIFO2_q_40_mem_reset0 <= areset;
    redist9_FIFO2_q_40_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 18,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 18,
        widthad_b => 3,
        numwords_b => 5,
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
        clocken1 => redist9_FIFO2_q_40_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist9_FIFO2_q_40_mem_reset0,
        clock1 => clk,
        address_a => redist9_FIFO2_q_40_mem_aa,
        data_a => redist9_FIFO2_q_40_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist9_FIFO2_q_40_mem_ab,
        q_b => redist9_FIFO2_q_40_mem_iq
    );
    redist9_FIFO2_q_40_mem_q <= redist9_FIFO2_q_40_mem_iq(17 downto 0);

    -- redist9_FIFO2_q_40_outputreg(DELAY,217)
    redist9_FIFO2_q_40_outputreg : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist9_FIFO2_q_40_mem_q, xout => redist9_FIFO2_q_40_outputreg_q, clk => clk, aclr => areset );

    -- Convert(BLACKBOX,39)@40
    -- out out_primWireOut@41
    theConvert : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x
    PORT MAP (
        in_0 => redist9_FIFO2_q_40_outputreg_q,
        out_primWireOut => Convert_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist15_Convert_out_primWireOut_1(DELAY,197)
    redist15_Convert_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Convert_out_primWireOut, xout => redist15_Convert_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Const1(FLOATCONSTANT,37)
    Const1_q <= "00111111011000101101111111000101";

    -- redist11_FIFO1_q_22_notEnable(LOGICAL,245)
    redist11_FIFO1_q_22_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist11_FIFO1_q_22_nor(LOGICAL,246)
    redist11_FIFO1_q_22_nor_q <= not (redist11_FIFO1_q_22_notEnable_q or redist11_FIFO1_q_22_sticky_ena_q);

    -- redist11_FIFO1_q_22_mem_last(CONSTANT,242)
    redist11_FIFO1_q_22_mem_last_q <= "011";

    -- redist11_FIFO1_q_22_cmp(LOGICAL,243)
    redist11_FIFO1_q_22_cmp_q <= "1" WHEN redist11_FIFO1_q_22_mem_last_q = redist11_FIFO1_q_22_rdcnt_q ELSE "0";

    -- redist11_FIFO1_q_22_cmpReg(REG,244)
    redist11_FIFO1_q_22_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_FIFO1_q_22_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist11_FIFO1_q_22_cmpReg_q <= STD_LOGIC_VECTOR(redist11_FIFO1_q_22_cmp_q);
        END IF;
    END PROCESS;

    -- redist11_FIFO1_q_22_sticky_ena(REG,247)
    redist11_FIFO1_q_22_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_FIFO1_q_22_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist11_FIFO1_q_22_nor_q = "1") THEN
                redist11_FIFO1_q_22_sticky_ena_q <= STD_LOGIC_VECTOR(redist11_FIFO1_q_22_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist11_FIFO1_q_22_enaAnd(LOGICAL,248)
    redist11_FIFO1_q_22_enaAnd_q <= redist11_FIFO1_q_22_sticky_ena_q and VCC_q;

    -- redist11_FIFO1_q_22_rdcnt(COUNTER,240)
    -- low=0, high=4, step=1, init=0
    redist11_FIFO1_q_22_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_FIFO1_q_22_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist11_FIFO1_q_22_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist11_FIFO1_q_22_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist11_FIFO1_q_22_rdcnt_eq <= '1';
            ELSE
                redist11_FIFO1_q_22_rdcnt_eq <= '0';
            END IF;
            IF (redist11_FIFO1_q_22_rdcnt_eq = '1') THEN
                redist11_FIFO1_q_22_rdcnt_i <= redist11_FIFO1_q_22_rdcnt_i + 4;
            ELSE
                redist11_FIFO1_q_22_rdcnt_i <= redist11_FIFO1_q_22_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist11_FIFO1_q_22_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist11_FIFO1_q_22_rdcnt_i, 3)));

    -- redist10_FIFO1_q_16_notEnable(LOGICAL,235)
    redist10_FIFO1_q_16_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist10_FIFO1_q_16_nor(LOGICAL,236)
    redist10_FIFO1_q_16_nor_q <= not (redist10_FIFO1_q_16_notEnable_q or redist10_FIFO1_q_16_sticky_ena_q);

    -- redist10_FIFO1_q_16_mem_last(CONSTANT,232)
    redist10_FIFO1_q_16_mem_last_q <= "01100";

    -- redist10_FIFO1_q_16_cmp(LOGICAL,233)
    redist10_FIFO1_q_16_cmp_b <= STD_LOGIC_VECTOR("0" & redist10_FIFO1_q_16_rdcnt_q);
    redist10_FIFO1_q_16_cmp_q <= "1" WHEN redist10_FIFO1_q_16_mem_last_q = redist10_FIFO1_q_16_cmp_b ELSE "0";

    -- redist10_FIFO1_q_16_cmpReg(REG,234)
    redist10_FIFO1_q_16_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist10_FIFO1_q_16_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist10_FIFO1_q_16_cmpReg_q <= STD_LOGIC_VECTOR(redist10_FIFO1_q_16_cmp_q);
        END IF;
    END PROCESS;

    -- redist10_FIFO1_q_16_sticky_ena(REG,237)
    redist10_FIFO1_q_16_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist10_FIFO1_q_16_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist10_FIFO1_q_16_nor_q = "1") THEN
                redist10_FIFO1_q_16_sticky_ena_q <= STD_LOGIC_VECTOR(redist10_FIFO1_q_16_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_FIFO1_q_16_enaAnd(LOGICAL,238)
    redist10_FIFO1_q_16_enaAnd_q <= redist10_FIFO1_q_16_sticky_ena_q and VCC_q;

    -- redist10_FIFO1_q_16_rdcnt(COUNTER,230)
    -- low=0, high=13, step=1, init=0
    redist10_FIFO1_q_16_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist10_FIFO1_q_16_rdcnt_i <= TO_UNSIGNED(0, 4);
            redist10_FIFO1_q_16_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist10_FIFO1_q_16_rdcnt_i = TO_UNSIGNED(12, 4)) THEN
                redist10_FIFO1_q_16_rdcnt_eq <= '1';
            ELSE
                redist10_FIFO1_q_16_rdcnt_eq <= '0';
            END IF;
            IF (redist10_FIFO1_q_16_rdcnt_eq = '1') THEN
                redist10_FIFO1_q_16_rdcnt_i <= redist10_FIFO1_q_16_rdcnt_i + 3;
            ELSE
                redist10_FIFO1_q_16_rdcnt_i <= redist10_FIFO1_q_16_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist10_FIFO1_q_16_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist10_FIFO1_q_16_rdcnt_i, 4)));

    -- redist10_FIFO1_q_16_wraddr(REG,231)
    redist10_FIFO1_q_16_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist10_FIFO1_q_16_wraddr_q <= "1101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist10_FIFO1_q_16_wraddr_q <= STD_LOGIC_VECTOR(redist10_FIFO1_q_16_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist10_FIFO1_q_16_mem(DUALMEM,229)
    redist10_FIFO1_q_16_mem_ia <= STD_LOGIC_VECTOR(FIFO1_q);
    redist10_FIFO1_q_16_mem_aa <= redist10_FIFO1_q_16_wraddr_q;
    redist10_FIFO1_q_16_mem_ab <= redist10_FIFO1_q_16_rdcnt_q;
    redist10_FIFO1_q_16_mem_reset0 <= areset;
    redist10_FIFO1_q_16_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 4,
        numwords_a => 14,
        width_b => 32,
        widthad_b => 4,
        numwords_b => 14,
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
        clocken1 => redist10_FIFO1_q_16_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist10_FIFO1_q_16_mem_reset0,
        clock1 => clk,
        address_a => redist10_FIFO1_q_16_mem_aa,
        data_a => redist10_FIFO1_q_16_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist10_FIFO1_q_16_mem_ab,
        q_b => redist10_FIFO1_q_16_mem_iq
    );
    redist10_FIFO1_q_16_mem_q <= redist10_FIFO1_q_16_mem_iq(31 downto 0);

    -- redist10_FIFO1_q_16_outputreg(DELAY,228)
    redist10_FIFO1_q_16_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist10_FIFO1_q_16_mem_q, xout => redist10_FIFO1_q_16_outputreg_q, clk => clk, aclr => areset );

    -- redist11_FIFO1_q_22_wraddr(REG,241)
    redist11_FIFO1_q_22_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist11_FIFO1_q_22_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist11_FIFO1_q_22_wraddr_q <= STD_LOGIC_VECTOR(redist11_FIFO1_q_22_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist11_FIFO1_q_22_mem(DUALMEM,239)
    redist11_FIFO1_q_22_mem_ia <= STD_LOGIC_VECTOR(redist10_FIFO1_q_16_outputreg_q);
    redist11_FIFO1_q_22_mem_aa <= redist11_FIFO1_q_22_wraddr_q;
    redist11_FIFO1_q_22_mem_ab <= redist11_FIFO1_q_22_rdcnt_q;
    redist11_FIFO1_q_22_mem_reset0 <= areset;
    redist11_FIFO1_q_22_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 5,
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
        clocken1 => redist11_FIFO1_q_22_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist11_FIFO1_q_22_mem_reset0,
        clock1 => clk,
        address_a => redist11_FIFO1_q_22_mem_aa,
        data_a => redist11_FIFO1_q_22_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist11_FIFO1_q_22_mem_ab,
        q_b => redist11_FIFO1_q_22_mem_iq
    );
    redist11_FIFO1_q_22_mem_q <= redist11_FIFO1_q_22_mem_iq(31 downto 0);

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const4_x(FLOATCONSTANT,11)
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const4_x_q <= "00111111100000000000000000000000";

    -- redist12_FIFO0_q_1(DELAY,194)
    redist12_FIFO0_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => FIFO0_q, xout => redist12_FIFO0_q_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x(BLACKBOX,27)@1
    -- out out_primWireOut@3
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz
    PORT MAP (
        in_0 => redist12_FIFO0_q_1_q,
        in_1 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const4_x_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist23_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x_out_primWireOut_1(DELAY,205)
    redist23_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x_out_primWireOut, xout => redist23_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- redist13_FIFO0_q_10_notEnable(LOGICAL,256)
    redist13_FIFO0_q_10_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist13_FIFO0_q_10_nor(LOGICAL,257)
    redist13_FIFO0_q_10_nor_q <= not (redist13_FIFO0_q_10_notEnable_q or redist13_FIFO0_q_10_sticky_ena_q);

    -- redist13_FIFO0_q_10_mem_last(CONSTANT,253)
    redist13_FIFO0_q_10_mem_last_q <= "0101";

    -- redist13_FIFO0_q_10_cmp(LOGICAL,254)
    redist13_FIFO0_q_10_cmp_b <= STD_LOGIC_VECTOR("0" & redist13_FIFO0_q_10_rdcnt_q);
    redist13_FIFO0_q_10_cmp_q <= "1" WHEN redist13_FIFO0_q_10_mem_last_q = redist13_FIFO0_q_10_cmp_b ELSE "0";

    -- redist13_FIFO0_q_10_cmpReg(REG,255)
    redist13_FIFO0_q_10_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist13_FIFO0_q_10_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist13_FIFO0_q_10_cmpReg_q <= STD_LOGIC_VECTOR(redist13_FIFO0_q_10_cmp_q);
        END IF;
    END PROCESS;

    -- redist13_FIFO0_q_10_sticky_ena(REG,258)
    redist13_FIFO0_q_10_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist13_FIFO0_q_10_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist13_FIFO0_q_10_nor_q = "1") THEN
                redist13_FIFO0_q_10_sticky_ena_q <= STD_LOGIC_VECTOR(redist13_FIFO0_q_10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist13_FIFO0_q_10_enaAnd(LOGICAL,259)
    redist13_FIFO0_q_10_enaAnd_q <= redist13_FIFO0_q_10_sticky_ena_q and VCC_q;

    -- redist13_FIFO0_q_10_rdcnt(COUNTER,251)
    -- low=0, high=6, step=1, init=0
    redist13_FIFO0_q_10_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist13_FIFO0_q_10_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist13_FIFO0_q_10_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist13_FIFO0_q_10_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                redist13_FIFO0_q_10_rdcnt_eq <= '1';
            ELSE
                redist13_FIFO0_q_10_rdcnt_eq <= '0';
            END IF;
            IF (redist13_FIFO0_q_10_rdcnt_eq = '1') THEN
                redist13_FIFO0_q_10_rdcnt_i <= redist13_FIFO0_q_10_rdcnt_i + 2;
            ELSE
                redist13_FIFO0_q_10_rdcnt_i <= redist13_FIFO0_q_10_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist13_FIFO0_q_10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist13_FIFO0_q_10_rdcnt_i, 3)));

    -- redist13_FIFO0_q_10_wraddr(REG,252)
    redist13_FIFO0_q_10_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist13_FIFO0_q_10_wraddr_q <= "110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist13_FIFO0_q_10_wraddr_q <= STD_LOGIC_VECTOR(redist13_FIFO0_q_10_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist13_FIFO0_q_10_mem(DUALMEM,250)
    redist13_FIFO0_q_10_mem_ia <= STD_LOGIC_VECTOR(redist12_FIFO0_q_1_q);
    redist13_FIFO0_q_10_mem_aa <= redist13_FIFO0_q_10_wraddr_q;
    redist13_FIFO0_q_10_mem_ab <= redist13_FIFO0_q_10_rdcnt_q;
    redist13_FIFO0_q_10_mem_reset0 <= areset;
    redist13_FIFO0_q_10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 7,
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
        clocken1 => redist13_FIFO0_q_10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist13_FIFO0_q_10_mem_reset0,
        clock1 => clk,
        address_a => redist13_FIFO0_q_10_mem_aa,
        data_a => redist13_FIFO0_q_10_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist13_FIFO0_q_10_mem_ab,
        q_b => redist13_FIFO0_q_10_mem_iq
    );
    redist13_FIFO0_q_10_mem_q <= redist13_FIFO0_q_10_mem_iq(31 downto 0);

    -- redist13_FIFO0_q_10_outputreg(DELAY,249)
    redist13_FIFO0_q_10_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist13_FIFO0_q_10_mem_q, xout => redist13_FIFO0_q_10_outputreg_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x(BLACKBOX,29)@4
    -- in in_0@10
    -- out out_primWireOut@15
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_divideBlock_typeSFloatIEEA0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist13_FIFO0_q_10_outputreg_q,
        in_1 => redist23_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Add_x_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist22_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x_out_primWireOut_1(DELAY,204)
    redist22_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x_out_primWireOut, xout => redist22_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x(BLACKBOX,30)@16
    -- out out_primWireOut@18
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist22_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Divide_x_out_primWireOut_1_q,
        in_1 => redist10_FIFO1_q_16_outputreg_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist19_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_1(DELAY,201)
    redist19_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut, xout => redist19_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Sqrt(BLACKBOX,54)@19
    -- out out_primWireOut@27
    theSqrt : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_sqrtBlock_typeSFloatIEEE_A0Z122644ck28744ck46w65
    PORT MAP (
        in_0 => redist19_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_1_q,
        out_primWireOut => Sqrt_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist2_Sqrt_out_primWireOut_1(DELAY,184)
    redist2_Sqrt_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Sqrt_out_primWireOut, xout => redist2_Sqrt_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Divide(BLACKBOX,40)@22
    -- in in_0@28
    -- out out_primWireOut@33
    theDivide : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_divideBlock_typeSFloatIEEA0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist2_Sqrt_out_primWireOut_1_q,
        in_1 => redist11_FIFO1_q_22_mem_q,
        out_primWireOut => Divide_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist14_Divide_out_primWireOut_3(DELAY,196)
    redist14_Divide_out_primWireOut_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => Divide_out_primWireOut, xout => redist14_Divide_out_primWireOut_3_q, clk => clk, aclr => areset );

    -- redist14_Divide_out_primWireOut_3_outputreg(DELAY,260)
    redist14_Divide_out_primWireOut_3_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist14_Divide_out_primWireOut_3_q, xout => redist14_Divide_out_primWireOut_3_outputreg_q, clk => clk, aclr => areset );

    -- Mult1(BLACKBOX,49)@36
    -- out out_primWireOut@38
    theMult1 : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist14_Divide_out_primWireOut_3_outputreg_q,
        in_1 => Const1_q,
        out_primWireOut => Mult1_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist7_Mult1_out_primWireOut_1(DELAY,189)
    redist7_Mult1_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult1_out_primWireOut, xout => redist7_Mult1_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const2_x(FLOATCONSTANT,9)
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const2_x_q <= "01000000110010010000111111011011";

    -- Const_rsrvd_fix(FLOATCONSTANT,36)
    Const_rsrvd_fix_q <= "00111111000000000000000000000000";

    -- Mult(BLACKBOX,48)@19
    -- out out_primWireOut@21
    theMult : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => Const_rsrvd_fix_q,
        in_1 => redist19_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_1_q,
        out_primWireOut => Mult_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist8_Mult_out_primWireOut_1(DELAY,190)
    redist8_Mult_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult_out_primWireOut, xout => redist8_Mult_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x(BLACKBOX,19)@22
    -- out out_primWireOut@24
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist8_Mult_out_primWireOut_1_q,
        in_1 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const2_x_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist29_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x_out_primWireOut_1(DELAY,211)
    redist29_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x_out_primWireOut, xout => redist29_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x(BLACKBOX,26)@25
    -- out out_primWireOut@31
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA0Z6cd0oq3cdd6oq3cp5d0u
    PORT MAP (
        in_0 => redist29_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult1_x_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist24_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut_1(DELAY,206)
    redist24_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut, xout => redist24_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const3_x(FLOATCONSTANT,10)
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const3_x_q <= "01000001000001110111011101110111";

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x(BLACKBOX,20)@22
    -- out out_primWireOut@24
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A1Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const3_x_q,
        in_1 => redist8_Mult_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist28_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x_out_primWireOut_1(DELAY,210)
    redist28_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x_out_primWireOut, xout => redist28_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x(BLACKBOX,24)@25
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_roundBlock_typeSFloatIEEEA0Z122644ck28744ck46w65
    PORT MAP (
        in_0 => redist28_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult2_x_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist26_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x_out_primWireOut_1(DELAY,208)
    redist26_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x_out_primWireOut, xout => redist26_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x(BLACKBOX,4)@26
    -- out out_primWireOut@28
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz
    PORT MAP (
        in_0 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const4_x_q,
        in_1 => redist26_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round_x_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist33_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x_out_primWireOut_1(DELAY,215)
    redist33_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x_out_primWireOut, xout => redist33_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x(BLACKBOX,15)@29
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A0Z122644ck28744ck2675x
    PORT MAP (
        in_0 => redist33_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add_x_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist31_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut_3(DELAY,213)
    redist31_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut_3 : dspba_delay
    GENERIC MAP ( width => 7, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut, xout => redist31_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut_3_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x(LOOKUP,17)@32
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_combproc: PROCESS (redist31_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut_3_q)
    BEGIN
        -- Begin reserved scope level
        CASE (redist31_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert_x_out_primWireOut_3_q) IS
            WHEN "0000000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111111100000000000000000000000";
            WHEN "0000001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111111011001000100011001110000";
            WHEN "0000010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111111010011001111100000001111";
            WHEN "0000011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111111001110010100110110000110";
            WHEN "0000100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111111001010001010010001001101";
            WHEN "0000101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111111000110100111011110110001";
            WHEN "0000110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111111000011100101101100101110";
            WHEN "0000111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111111000000111111010111100101";
            WHEN "0001000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110111101011111110111011010";
            WHEN "0001001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110111001100111010010110111";
            WHEN "0001010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110110110001110110110110011";
            WHEN "0001011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110110011010001011101100111";
            WHEN "0001100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110110000101010111010000100";
            WHEN "0001101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110101110010111101101001000";
            WHEN "0001110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110101100010100111101100001";
            WHEN "0001111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110101010100000010001000010";
            WHEN "0010000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110101000110111100110111101";
            WHEN "0010001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110100111011001010011100101";
            WHEN "0010010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110100110000011111100011111";
            WHEN "0010011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110100100110110010101101000";
            WHEN "0010100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110100011101111011110110011";
            WHEN "0010101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110100010101110100001100111";
            WHEN "0010110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110100001110010101111111001";
            WHEN "0010111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110100000111011100010010100";
            WHEN "0011000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110100000001000010111001110";
            WHEN "0011001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110011110110001100011100000";
            WHEN "0011010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110011101011000110010000111";
            WHEN "0011011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110011100000101101111011000";
            WHEN "0011100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110011010110111110110000101";
            WHEN "0011101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110011001101110100101110101";
            WHEN "0011110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110011000101001100010011010";
            WHEN "0011111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010111101000010011000100";
            WHEN "0100000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010110101010100010000000";
            WHEN "0100001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010101101111111100000101";
            WHEN "0100010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010100111000010000010001";
            WHEN "0100011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010100000011001111100001";
            WHEN "0100100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010011010000101100010111";
            WHEN "0100101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010010100000011010110100";
            WHEN "0100110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010001110010010000000110";
            WHEN "0100111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010001000110000010100010";
            WHEN "0101000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110010000011011101001011000";
            WHEN "0101001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001111110010111100110001";
            WHEN "0101010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001111001011110101100001";
            WHEN "0101011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001110100110001101001001";
            WHEN "0101100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001110000001111101101100";
            WHEN "0101101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001101011111000001110000";
            WHEN "0101110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001100111101010100010111";
            WHEN "0101111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001100011100110000111101";
            WHEN "0110000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001011111101010011011000";
            WHEN "0110001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001011011110110111101111";
            WHEN "0110010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001011000001011010011111";
            WHEN "0110011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001010100100111000010101";
            WHEN "0110100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001010001001001110001101";
            WHEN "0110101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001001101110011001010010";
            WHEN "0110110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001001010100010110111011";
            WHEN "0110111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001000111011000100101011";
            WHEN "0111000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001000100010100000001111";
            WHEN "0111001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110001000001010100111011111";
            WHEN "0111010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000111110011011000011010";
            WHEN "0111011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000111011100110001001010";
            WHEN "0111100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000111000110101111111100";
            WHEN "0111101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000110110001010011001000";
            WHEN "0111110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000110011100011001001011";
            WHEN "0111111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000110001000000000100111";
            WHEN "1000000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000101110100001000000100";
            WHEN "1000001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000101100000101110010000";
            WHEN "1000010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000101001101110001111100";
            WHEN "1000011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000100111011010001111111";
            WHEN "1000100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000100101001001101010010";
            WHEN "1000101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000100010111100010110010";
            WHEN "1000110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000100000110010001100011";
            WHEN "1000111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000011110101011000100111";
            WHEN "1001000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000011100100110111000111";
            WHEN "1001001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000011010100101100001101";
            WHEN "1001010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000011000100110111000111";
            WHEN "1001011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000010110101010111000010";
            WHEN "1001100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000010100110001011010011";
            WHEN "1001101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000010010111010011001011";
            WHEN "1001110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000010001000101110000011";
            WHEN "1001111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000001111010011011010001";
            WHEN "1010000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000001101100011010010000";
            WHEN "1010001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000001011110101010011100";
            WHEN "1010010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000001010001001011010001";
            WHEN "1010011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000001000011111100001110";
            WHEN "1010100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000000110110111100110011";
            WHEN "1010101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000000101010001100100010";
            WHEN "1010110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000000011101101010111111";
            WHEN "1010111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000000010001010111101100";
            WHEN "1011000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111110000000000101010010001111";
            WHEN "1011001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111111110010110100011100";
            WHEN "1011010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111111011011011110100001";
            WHEN "1011011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111111000100100001111111";
            WHEN "1011100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111110101101111110000111";
            WHEN "1011101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111110010111110010001101";
            WHEN "1011110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111110000001111101101000";
            WHEN "1011111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111101101100011111101111";
            WHEN "1100000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111101010111010111111011";
            WHEN "1100001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111101000010100101100111";
            WHEN "1100010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111100101110001000001110";
            WHEN "1100011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111100011001111111001101";
            WHEN "1100100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111100000110001010000100";
            WHEN "1100101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111011110010101000010001";
            WHEN "1100110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111011011111011001010110";
            WHEN "1100111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111011001100011100110100";
            WHEN "1101000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111010111001110010001111";
            WHEN "1101001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111010100111011001001010";
            WHEN "1101010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111010010101010001001010";
            WHEN "1101011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111010000011011001110101";
            WHEN "1101100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111001110001110010110001";
            WHEN "1101101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111001100000011011100110";
            WHEN "1101110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111001001111010011111101";
            WHEN "1101111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111000111110011011011110";
            WHEN "1110000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111000101101110001110100";
            WHEN "1110001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111000011101010110101000";
            WHEN "1110010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101111000001101001001100110";
            WHEN "1110011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110111111101001010011010";
            WHEN "1110100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110111101101011000110000";
            WHEN "1110101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110111011101110100010101";
            WHEN "1110110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110111001110011100110111";
            WHEN "1110111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110110111111010010000100";
            WHEN "1111000" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110110110000010011101011";
            WHEN "1111001" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110110100001100001011011";
            WHEN "1111010" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110110010010111011000011";
            WHEN "1111011" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110110000100100000010101";
            WHEN "1111100" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110101110110010001000000";
            WHEN "1111101" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110101101000001100110101";
            WHEN "1111110" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110101011010010011100111";
            WHEN "1111111" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= "00111101110101001100100101000111";
            WHEN OTHERS => -- unreachable
                           DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- cstAllZWE_uid58_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(CONSTANT,57)
    cstAllZWE_uid58_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "00000000";

    -- exp_y_uid73_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITSELECT,72)@22
    exp_y_uid73_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= redist8_Mult_out_primWireOut_1_q(30 downto 23);

    -- excZ_y_uid75_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,74)@22
    excZ_y_uid75_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "1" WHEN exp_y_uid73_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b = cstAllZWE_uid58_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q ELSE "0";

    -- yNotZero_uid90_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,89)@22
    yNotZero_uid90_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= not (excZ_y_uid75_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const1_x(FLOATCONSTANT,8)
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const1_x_q <= "01000001011000000000000000000000";

    -- exp_x_uid59_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITSELECT,58)@22
    exp_x_uid59_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const1_x_q(30 downto 23);

    -- excZ_x_uid61_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,60)@22
    excZ_x_uid61_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "1" WHEN exp_x_uid59_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b = cstAllZWE_uid58_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q ELSE "0";

    -- xNotZero_uid89_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,88)@22
    xNotZero_uid89_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= not (excZ_x_uid61_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);

    -- oneNonZero_uid112_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,111)@22
    oneNonZero_uid112_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= xNotZero_uid89_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q or yNotZero_uid90_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- two_uid104_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(CONSTANT,103)
    two_uid104_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "10";

    -- signX_uid102_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITSELECT,101)@22
    signX_uid102_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const1_x_q(31 downto 31));

    -- signY_uid103_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITSELECT,102)@22
    signY_uid103_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= STD_LOGIC_VECTOR(redist8_Mult_out_primWireOut_1_q(31 downto 31));

    -- concSXSY_uid105_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITJOIN,104)@22
    concSXSY_uid105_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= signX_uid102_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b & signY_uid103_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b;

    -- sxLTsy_uid106_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,105)@22
    sxLTsy_uid106_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "1" WHEN concSXSY_uid105_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q = two_uid104_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q ELSE "0";

    -- rc2_uid113_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,112)@22
    rc2_uid113_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= sxLTsy_uid106_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q and oneNonZero_uid112_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- frac_x_uid60_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITSELECT,59)@22
    frac_x_uid60_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const1_x_q(22 downto 0);

    -- fracXPS_uid91_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,90)@22
    fracXPS_uid91_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 1 => xNotZero_uid89_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q(0)) & xNotZero_uid89_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q));
    fracXPS_uid91_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= frac_x_uid60_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b and fracXPS_uid91_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b;

    -- expFracX_uid93_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITJOIN,92)@22
    expFracX_uid93_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= exp_x_uid59_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b & fracXPS_uid91_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- frac_y_uid74_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITSELECT,73)@22
    frac_y_uid74_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= redist8_Mult_out_primWireOut_1_q(22 downto 0);

    -- fracYPS_uid92_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,91)@22
    fracYPS_uid92_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 1 => yNotZero_uid90_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q(0)) & yNotZero_uid90_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q));
    fracYPS_uid92_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= frac_y_uid74_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b and fracYPS_uid92_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b;

    -- expFracY_uid95_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(BITJOIN,94)@22
    expFracY_uid95_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= exp_y_uid73_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b & fracYPS_uid92_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(COMPARE,96)@22
    efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_a <= STD_LOGIC_VECTOR("00" & expFracY_uid95_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);
    efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= STD_LOGIC_VECTOR("00" & expFracX_uid93_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);
    efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_o <= STD_LOGIC_VECTOR(UNSIGNED(efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_a) - UNSIGNED(efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b));
    efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_c(0) <= efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_o(32);

    -- efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(COMPARE,97)@22
    efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_a <= STD_LOGIC_VECTOR("00" & expFracX_uid93_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);
    efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b <= STD_LOGIC_VECTOR("00" & expFracY_uid95_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);
    efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_o <= STD_LOGIC_VECTOR(UNSIGNED(efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_a) - UNSIGNED(efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b));
    efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_c(0) <= efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_o(32);

    -- expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(MUX,108)@22
    expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_s <= signX_uid102_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b;
    expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_combproc: PROCESS (expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_s, efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_c, efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_c)
    BEGIN
        CASE (expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_s) IS
            WHEN "0" => expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= efxLTefy_uid98_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_c;
            WHEN "1" => expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= efxGTefy_uid97_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_c;
            WHEN OTHERS => expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- xorSigns_uid107_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,106)@22
    xorSigns_uid107_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= signX_uid102_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b xor signY_uid103_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b;

    -- sxEQsy_uid108_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,107)@22
    sxEQsy_uid108_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= not (xorSigns_uid107_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);

    -- sxEQsyExpFracCompMux_uid114_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,113)@22
    sxEQsyExpFracCompMux_uid114_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= sxEQsy_uid108_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q and expFracCompMux_uid109_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- r_uid115_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,114)@22
    r_uid115_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= sxEQsyExpFracCompMux_uid114_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q or rc2_uid113_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- cstZeroWF_uid57_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(CONSTANT,56)
    cstZeroWF_uid57_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "00000000000000000000000";

    -- fracXIsZero_uid77_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,76)@22
    fracXIsZero_uid77_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "1" WHEN cstZeroWF_uid57_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q = frac_y_uid74_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b ELSE "0";

    -- fracXIsNotZero_uid78_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,77)@22
    fracXIsNotZero_uid78_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= not (fracXIsZero_uid77_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);

    -- cstAllOWE_uid56_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(CONSTANT,55)
    cstAllOWE_uid56_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "11111111";

    -- expXIsMax_uid76_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,75)@22
    expXIsMax_uid76_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "1" WHEN exp_y_uid73_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b = cstAllOWE_uid56_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q ELSE "0";

    -- excN_y_uid80_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,79)@22
    excN_y_uid80_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= expXIsMax_uid76_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q and fracXIsNotZero_uid78_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- fracXIsZero_uid63_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,62)@22
    fracXIsZero_uid63_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "1" WHEN cstZeroWF_uid57_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q = frac_x_uid60_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b ELSE "0";

    -- fracXIsNotZero_uid64_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,63)@22
    fracXIsNotZero_uid64_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= not (fracXIsZero_uid63_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);

    -- expXIsMax_uid62_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,61)@22
    expXIsMax_uid62_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= "1" WHEN exp_x_uid59_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b = cstAllOWE_uid56_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q ELSE "0";

    -- excN_x_uid66_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,65)@22
    excN_x_uid66_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= expXIsMax_uid62_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q and fracXIsNotZero_uid64_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- oneIsNaN_uid84_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(LOGICAL,83)@22
    oneIsNaN_uid84_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= excN_x_uid66_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q or excN_y_uid80_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x(MUX,115)@22 + 1
    rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_s <= oneIsNaN_uid84_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;
    rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_s) IS
                WHEN "0" => rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= r_uid115_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;
                WHEN "1" => rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= GND_q;
                WHEN OTHERS => rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist1_rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q_10(DELAY,183)
    redist1_rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q, xout => redist1_rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q_10_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x(MUX,22)@32 + 1
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_s <= redist1_rPostExc_uid116_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q_10_q;
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_q <= DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut_x_q;
                WHEN "1" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_q <= redist24_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut_1_q;
                WHEN OTHERS => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_notEnable(LOGICAL,269)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_nor(LOGICAL,270)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_nor_q <= not (redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_notEnable_q or redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_sticky_ena_q);

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_last(CONSTANT,266)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_last_q <= "0110";

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmp(LOGICAL,267)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmp_b <= STD_LOGIC_VECTOR("0" & redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_q);
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmp_q <= "1" WHEN redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_last_q = redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmp_b ELSE "0";

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmpReg(REG,268)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmpReg_q <= STD_LOGIC_VECTOR(redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmp_q);
        END IF;
    END PROCESS;

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_sticky_ena(REG,271)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_nor_q = "1") THEN
                redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_sticky_ena_q <= STD_LOGIC_VECTOR(redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_enaAnd(LOGICAL,272)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_enaAnd_q <= redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_sticky_ena_q and VCC_q;

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt(COUNTER,264)
    -- low=0, high=7, step=1, init=0
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_i <= TO_UNSIGNED(0, 3);
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_i <= redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_i, 3)));

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_inputreg(DELAY,261)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist19_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_1_q, xout => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_inputreg_q, clk => clk, aclr => areset );

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_wraddr(REG,265)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_wraddr_q <= "111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_wraddr_q <= STD_LOGIC_VECTOR(redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem(DUALMEM,263)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_ia <= STD_LOGIC_VECTOR(redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_inputreg_q);
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_aa <= redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_wraddr_q;
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_ab <= redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_rdcnt_q;
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_reset0 <= areset;
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_dmem : altera_syncram
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
        clocken1 => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_reset0,
        clock1 => clk,
        address_a => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_aa,
        data_a => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_ab,
        q_b => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_iq
    );
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_q <= redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_iq(31 downto 0);

    -- redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_outputreg(DELAY,262)
    redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_mem_q, xout => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_outputreg_q, clk => clk, aclr => areset );

    -- Add(BLACKBOX,33)@30
    -- out out_primWireOut@32
    theAdd : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz
    PORT MAP (
        in_0 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const4_x_q,
        in_1 => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_outputreg_q,
        out_primWireOut => Add_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist18_Add_out_primWireOut_1(DELAY,200)
    redist18_Add_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Add_out_primWireOut, xout => redist18_Add_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Mult2(BLACKBOX,50)@33
    -- out out_primWireOut@35
    theMult2 : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist18_Add_out_primWireOut_1_q,
        in_1 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux_x_q,
        out_primWireOut => Mult2_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist6_Mult2_out_primWireOut_1(DELAY,188)
    redist6_Mult2_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult2_out_primWireOut, xout => redist6_Mult2_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const7_x(FLOATCONSTANT,13)
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const7_x_q <= "01000001000010000000000000000000";

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x(BLACKBOX,21)@22
    -- out out_primWireOut@24
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A1Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist8_Mult_out_primWireOut_1_q,
        in_1 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const7_x_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist27_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x_out_primWireOut_1(DELAY,209)
    redist27_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x_out_primWireOut, xout => redist27_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x(BLACKBOX,25)@25
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_roundBlock_typeSFloatIEEEA0Z122644ck28744ck46w65
    PORT MAP (
        in_0 => redist27_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mult4_x_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist25_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x_out_primWireOut_1(DELAY,207)
    redist25_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x_out_primWireOut, xout => redist25_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x(BLACKBOX,5)@26
    -- out out_primWireOut@28
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A0Z3cd16oe0cp36c00oq3cz
    PORT MAP (
        in_0 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const4_x_q,
        in_1 => redist25_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Round1_x_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist32_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x_out_primWireOut_1(DELAY,214)
    redist32_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x_out_primWireOut, xout => redist32_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x(BLACKBOX,16)@29
    theDSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeSFloatIEEE_A1Z122644ck28744ck2675x
    PORT MAP (
        in_0 => redist32_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Add1_x_out_primWireOut_1_q,
        out_primWireOut => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist30_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x_out_primWireOut_1(DELAY,212)
    redist30_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x_out_primWireOut, xout => redist30_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem(DUALMEM,179)@30 + 2
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_aa <= redist30_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Convert1_x_out_primWireOut_1_q;
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_reset0 <= areset;
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 32,
        widthad_a => 8,
        numwords_a => 256,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_A0Zor_Lut1_x_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_reset0,
        clock0 => clk,
        address_a => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_aa,
        q_a => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_ir
    );
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_r <= DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_ir(31 downto 0);

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const5_x(FLOATCONSTANT,12)
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const5_x_q <= "01000001111010000000000000000000";

    -- exp_x_uid121_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(BITSELECT,120)@22
    exp_x_uid121_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b <= DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const5_x_q(30 downto 23);

    -- excZ_x_uid123_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,122)@22
    excZ_x_uid123_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= "1" WHEN exp_x_uid121_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b = cstAllZWE_uid58_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q ELSE "0";

    -- xNotZero_uid151_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,150)@22
    xNotZero_uid151_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= not (excZ_x_uid123_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q);

    -- oneNonZero_uid174_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,173)@22
    oneNonZero_uid174_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= xNotZero_uid151_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q or yNotZero_uid90_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- signX_uid164_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(BITSELECT,163)@22
    signX_uid164_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b <= STD_LOGIC_VECTOR(DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const5_x_q(31 downto 31));

    -- concSXSY_uid167_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(BITJOIN,166)@22
    concSXSY_uid167_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= signX_uid164_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b & signY_uid103_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b;

    -- sxLTsy_uid168_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,167)@22
    sxLTsy_uid168_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= "1" WHEN concSXSY_uid167_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q = two_uid104_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q ELSE "0";

    -- rc2_uid175_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,174)@22
    rc2_uid175_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= sxLTsy_uid168_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q and oneNonZero_uid174_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q;

    -- frac_x_uid122_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(BITSELECT,121)@22
    frac_x_uid122_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b <= DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Const5_x_q(22 downto 0);

    -- fracXPS_uid153_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,152)@22
    fracXPS_uid153_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 1 => xNotZero_uid151_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q(0)) & xNotZero_uid151_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q));
    fracXPS_uid153_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= frac_x_uid122_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b and fracXPS_uid153_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b;

    -- expFracX_uid155_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(BITJOIN,154)@22
    expFracX_uid155_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= exp_x_uid121_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b & fracXPS_uid153_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q;

    -- efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(COMPARE,158)@22
    efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_a <= STD_LOGIC_VECTOR("00" & expFracY_uid95_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);
    efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b <= STD_LOGIC_VECTOR("00" & expFracX_uid155_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q);
    efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_o <= STD_LOGIC_VECTOR(UNSIGNED(efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_a) - UNSIGNED(efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b));
    efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_c(0) <= efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_o(32);

    -- efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(COMPARE,159)@22
    efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_a <= STD_LOGIC_VECTOR("00" & expFracX_uid155_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q);
    efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b <= STD_LOGIC_VECTOR("00" & expFracY_uid95_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q);
    efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_o <= STD_LOGIC_VECTOR(UNSIGNED(efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_a) - UNSIGNED(efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b));
    efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_c(0) <= efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_o(32);

    -- expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(MUX,170)@22
    expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_s <= signX_uid164_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b;
    expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_combproc: PROCESS (expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_s, efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_c, efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_c)
    BEGIN
        CASE (expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_s) IS
            WHEN "0" => expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= efxLTefy_uid160_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_c;
            WHEN "1" => expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= efxGTefy_uid159_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_c;
            WHEN OTHERS => expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- xorSigns_uid169_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,168)@22
    xorSigns_uid169_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= signX_uid164_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b xor signY_uid103_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_b;

    -- sxEQsy_uid170_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,169)@22
    sxEQsy_uid170_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= not (xorSigns_uid169_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q);

    -- sxEQsyExpFracCompMux_uid176_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,175)@22
    sxEQsyExpFracCompMux_uid176_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= sxEQsy_uid170_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q and expFracCompMux_uid171_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q;

    -- r_uid177_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,176)@22
    r_uid177_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= sxEQsyExpFracCompMux_uid176_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q or rc2_uid175_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q;

    -- fracXIsZero_uid125_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,124)@22
    fracXIsZero_uid125_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= "1" WHEN cstZeroWF_uid57_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q = frac_x_uid122_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b ELSE "0";

    -- fracXIsNotZero_uid126_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,125)@22
    fracXIsNotZero_uid126_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= not (fracXIsZero_uid125_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q);

    -- expXIsMax_uid124_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,123)@22
    expXIsMax_uid124_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= "1" WHEN exp_x_uid121_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_b = cstAllOWE_uid56_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q ELSE "0";

    -- excN_x_uid128_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,127)@22
    excN_x_uid128_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= expXIsMax_uid124_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q and fracXIsNotZero_uid126_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q;

    -- oneIsNaN_uid146_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(LOGICAL,145)@22
    oneIsNaN_uid146_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= excN_x_uid128_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q or excN_y_uid80_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT_x_q;

    -- rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x(MUX,177)@22 + 1
    rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_s <= oneIsNaN_uid146_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q;
    rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_s) IS
                WHEN "0" => rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= r_uid177_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q;
                WHEN "1" => rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= GND_q;
                WHEN OTHERS => rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist0_rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q_10(DELAY,182)
    redist0_rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q_10 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q, xout => redist0_rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q_10_q, clk => clk, aclr => areset );

    -- DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x(MUX,23)@32 + 1
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_s <= redist0_rPostExc_uid178_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_CmpLT1_x_q_10_q;
    DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_s) IS
                WHEN "0" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_q <= DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Lut1_x_lutmem_r;
                WHEN "1" => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_q <= redist24_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Sqrt1_x_out_primWireOut_1_q;
                WHEN OTHERS => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15(DELAY,203)
    redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist20_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_12_outputreg_q, xout => redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15_q, clk => clk, aclr => areset );

    -- redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15_outputreg(DELAY,273)
    redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15_q, xout => redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15_outputreg_q, clk => clk, aclr => areset );

    -- Mult3(BLACKBOX,51)@33
    -- out out_primWireOut@35
    theMult3 : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist21_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_v_k_Mult_x_out_primWireOut_15_outputreg_q,
        in_1 => DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_scaled_bessel_approximator_Mux1_x_q,
        out_primWireOut => Mult3_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist5_Mult3_out_primWireOut_1(DELAY,187)
    redist5_Mult3_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult3_out_primWireOut, xout => redist5_Mult3_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Add1(BLACKBOX,34)@36
    -- out out_primWireOut@38
    theAdd1 : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_addBlock_typeSFloatIEEE_2A1Z3cd16oe0cp36c00oq3cz
    PORT MAP (
        in_0 => redist5_Mult3_out_primWireOut_1_q,
        in_1 => redist6_Mult2_out_primWireOut_1_q,
        out_primWireOut => Add1_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist17_Add1_out_primWireOut_1(DELAY,199)
    redist17_Add1_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Add1_out_primWireOut, xout => redist17_Add1_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Mult4(BLACKBOX,52)@39
    -- out out_primWireOut@41
    theMult4 : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist17_Add1_out_primWireOut_1_q,
        in_1 => redist7_Mult1_out_primWireOut_1_q,
        out_primWireOut => Mult4_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist4_Mult4_out_primWireOut_1(DELAY,186)
    redist4_Mult4_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult4_out_primWireOut, xout => redist4_Mult4_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- Mult5(BLACKBOX,53)@42
    -- out out_primWireOut@44
    theMult5 : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_multBlock_typeSFloatIEEE_A0Zd6oq3cd16oe0cp36hj0u
    PORT MAP (
        in_0 => redist4_Mult4_out_primWireOut_1_q,
        in_1 => redist15_Convert_out_primWireOut_1_q,
        out_primWireOut => Mult5_out_primWireOut,
        clk => clk,
        areset => areset
    );

    -- redist3_Mult5_out_primWireOut_1(DELAY,185)
    redist3_Mult5_out_primWireOut_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => Mult5_out_primWireOut, xout => redist3_Mult5_out_primWireOut_1_q, clk => clk, aclr => areset );

    -- redist16_And_rsrvd_fix_q_45(DELAY,198)
    redist16_And_rsrvd_fix_q_45 : dspba_delay
    GENERIC MAP ( width => 1, depth => 45, reset_kind => "ASYNC" )
    PORT MAP ( xin => And_rsrvd_fix_q, xout => redist16_And_rsrvd_fix_q_45_q, clk => clk, aclr => areset );

    -- GPOut1(GPOUT,47)@45
    out_1_enhanced_magnitude_spectrum_valid <= redist16_And_rsrvd_fix_q_45_q;
    out_2_enhanced_magnitude_spectrum <= redist3_Mult5_out_primWireOut_1_q;

END normal;
