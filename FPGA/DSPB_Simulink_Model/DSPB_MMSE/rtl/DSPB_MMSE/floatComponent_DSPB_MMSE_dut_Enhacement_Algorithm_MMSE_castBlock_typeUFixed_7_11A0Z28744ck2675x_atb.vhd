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

-- VHDL created from floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x
-- VHDL created on Mon Aug 16 17:44:01 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use work.dspba_sim_library_package.all;
entity floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb is
end;

architecture normal of floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_atb is

component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x is
    port (
        in_0 : in std_logic_vector(17 downto 0);  -- ufix18_en11
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end component;

component floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_stm is
    port (
        in_0_stm : out std_logic_vector(17 downto 0);
        out_primWireOut_stm : out std_logic_vector(31 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end component;

signal in_0_stm : STD_LOGIC_VECTOR (17 downto 0);
signal out_primWireOut_stm : STD_LOGIC_VECTOR (31 downto 0);
signal in_0_dut : STD_LOGIC_VECTOR (17 downto 0);
signal out_primWireOut_dut : STD_LOGIC_VECTOR (31 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;

begin

-- General Purpose data in real output
checkin_0 : process (clk, areset, in_0_dut, in_0_stm)
begin
END PROCESS;


dut : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x port map (
    in_0_stm,
    out_primWireOut_dut,
        clk,
        areset
);

sim : floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_castBlock_typeUFixed_7_11A0Z122644ck28744ck2675x_stm port map (
    in_0_stm,
    out_primWireOut_stm,
        clk,
        areset
);

end normal;
