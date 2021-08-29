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

-- VHDL created from floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_maxBlock_typeSFloatA0Zqqcdo6u2ocpq6c0owfzo
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
entity floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_maxBlock_typeSFloatA0Zqqcdo6u2ocpq6c0owfzo is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        in_1 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_maxBlock_typeSFloatA0Zqqcdo6u2ocpq6c0owfzo;

architecture normal of floatComponent_DSPB_MMSE_dut_feature_extraction_a_priori_SNR_maxBlock_typeSFloatA0Zqqcdo6u2ocpq6c0owfzo is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstZeroWF_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal exp_x_uid10_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid11_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expXIsMax_uid13_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid14_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid15_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid17_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_y_uid24_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_y_uid25_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal expXIsMax_uid27_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid28_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid29_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_y_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal nanOut_uid35_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oneIsNaN_uid36_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcYN_uid38_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal yNotNaN_uid40_block_rsrvd_fix_a : STD_LOGIC_VECTOR (31 downto 0);
    signal yNotNaN_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal invExcXN_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNotNaN_uid44_block_rsrvd_fix_a : STD_LOGIC_VECTOR (31 downto 0);
    signal xNotNaN_uid44_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal oneNaNOutput_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal expFracX_uid48_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal expFracY_uid52_block_rsrvd_fix_q : STD_LOGIC_VECTOR (30 downto 0);
    signal signX_uid54_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal signY_uid55_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal efxGTefy_uid56_block_rsrvd_fix_a : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid56_block_rsrvd_fix_b : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid56_block_rsrvd_fix_o : STD_LOGIC_VECTOR (32 downto 0);
    signal efxGTefy_uid56_block_rsrvd_fix_c : STD_LOGIC_VECTOR (0 downto 0);
    signal invSX_uid57_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invEfxGTefy_uid59_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNegyNegYGTX_uid60_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xPosyPosXGtY_uid61_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xPosYNeg_uid62_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal selX_uid63_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid64_block_rsrvd_fix_s : STD_LOGIC_VECTOR (0 downto 0);
    signal r_uid64_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal concOneIsNaNNaNOut_uid65_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracNaN_uid66_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal rPostNaNP_r3_uid68_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rPostNaN_uid73_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rPostNaN_uid73_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- frac_y_uid25_block_rsrvd_fix(BITSELECT,24)@0
    frac_y_uid25_block_rsrvd_fix_b <= in_1(22 downto 0);

    -- cstZeroWF_uid8_block_rsrvd_fix(CONSTANT,7)
    cstZeroWF_uid8_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid28_block_rsrvd_fix(LOGICAL,27)@0
    fracXIsZero_uid28_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid8_block_rsrvd_fix_q = frac_y_uid25_block_rsrvd_fix_b ELSE "0";

    -- fracXIsNotZero_uid29_block_rsrvd_fix(LOGICAL,28)@0
    fracXIsNotZero_uid29_block_rsrvd_fix_q <= not (fracXIsZero_uid28_block_rsrvd_fix_q);

    -- cstAllOWE_uid7_block_rsrvd_fix(CONSTANT,6)
    cstAllOWE_uid7_block_rsrvd_fix_q <= "11111111";

    -- exp_y_uid24_block_rsrvd_fix(BITSELECT,23)@0
    exp_y_uid24_block_rsrvd_fix_b <= in_1(30 downto 23);

    -- expXIsMax_uid27_block_rsrvd_fix(LOGICAL,26)@0
    expXIsMax_uid27_block_rsrvd_fix_q <= "1" WHEN exp_y_uid24_block_rsrvd_fix_b = cstAllOWE_uid7_block_rsrvd_fix_q ELSE "0";

    -- excN_y_uid31_block_rsrvd_fix(LOGICAL,30)@0
    excN_y_uid31_block_rsrvd_fix_q <= expXIsMax_uid27_block_rsrvd_fix_q and fracXIsNotZero_uid29_block_rsrvd_fix_q;

    -- invExcYN_uid38_block_rsrvd_fix(LOGICAL,37)@0
    invExcYN_uid38_block_rsrvd_fix_q <= not (excN_y_uid31_block_rsrvd_fix_q);

    -- yNotNaN_uid40_block_rsrvd_fix(LOGICAL,39)@0
    yNotNaN_uid40_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => invExcYN_uid38_block_rsrvd_fix_q(0)) & invExcYN_uid38_block_rsrvd_fix_q));
    yNotNaN_uid40_block_rsrvd_fix_q <= yNotNaN_uid40_block_rsrvd_fix_a and in_1;

    -- frac_x_uid11_block_rsrvd_fix(BITSELECT,10)@0
    frac_x_uid11_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,13)@0
    fracXIsZero_uid14_block_rsrvd_fix_q <= "1" WHEN cstZeroWF_uid8_block_rsrvd_fix_q = frac_x_uid11_block_rsrvd_fix_b ELSE "0";

    -- fracXIsNotZero_uid15_block_rsrvd_fix(LOGICAL,14)@0
    fracXIsNotZero_uid15_block_rsrvd_fix_q <= not (fracXIsZero_uid14_block_rsrvd_fix_q);

    -- exp_x_uid10_block_rsrvd_fix(BITSELECT,9)@0
    exp_x_uid10_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- expXIsMax_uid13_block_rsrvd_fix(LOGICAL,12)@0
    expXIsMax_uid13_block_rsrvd_fix_q <= "1" WHEN exp_x_uid10_block_rsrvd_fix_b = cstAllOWE_uid7_block_rsrvd_fix_q ELSE "0";

    -- excN_x_uid17_block_rsrvd_fix(LOGICAL,16)@0
    excN_x_uid17_block_rsrvd_fix_q <= expXIsMax_uid13_block_rsrvd_fix_q and fracXIsNotZero_uid15_block_rsrvd_fix_q;

    -- invExcXN_uid42_block_rsrvd_fix(LOGICAL,41)@0
    invExcXN_uid42_block_rsrvd_fix_q <= not (excN_x_uid17_block_rsrvd_fix_q);

    -- xNotNaN_uid44_block_rsrvd_fix(LOGICAL,43)@0
    xNotNaN_uid44_block_rsrvd_fix_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => invExcXN_uid42_block_rsrvd_fix_q(0)) & invExcXN_uid42_block_rsrvd_fix_q));
    xNotNaN_uid44_block_rsrvd_fix_q <= xNotNaN_uid44_block_rsrvd_fix_a and in_0;

    -- oneNaNOutput_uid45_block_rsrvd_fix(LOGICAL,44)@0
    oneNaNOutput_uid45_block_rsrvd_fix_q <= xNotNaN_uid44_block_rsrvd_fix_q or yNotNaN_uid40_block_rsrvd_fix_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- fracNaN_uid66_block_rsrvd_fix(CONSTANT,65)
    fracNaN_uid66_block_rsrvd_fix_q <= "00000000000000000000001";

    -- rPostNaNP_r3_uid68_block_rsrvd_fix(BITJOIN,67)@0
    rPostNaNP_r3_uid68_block_rsrvd_fix_q <= GND_q & cstAllOWE_uid7_block_rsrvd_fix_q & fracNaN_uid66_block_rsrvd_fix_q;

    -- expFracX_uid48_block_rsrvd_fix(BITJOIN,47)@0
    expFracX_uid48_block_rsrvd_fix_q <= exp_x_uid10_block_rsrvd_fix_b & frac_x_uid11_block_rsrvd_fix_b;

    -- expFracY_uid52_block_rsrvd_fix(BITJOIN,51)@0
    expFracY_uid52_block_rsrvd_fix_q <= exp_y_uid24_block_rsrvd_fix_b & frac_y_uid25_block_rsrvd_fix_b;

    -- efxGTefy_uid56_block_rsrvd_fix(COMPARE,55)@0
    efxGTefy_uid56_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("00" & expFracY_uid52_block_rsrvd_fix_q);
    efxGTefy_uid56_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expFracX_uid48_block_rsrvd_fix_q);
    efxGTefy_uid56_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(efxGTefy_uid56_block_rsrvd_fix_a) - UNSIGNED(efxGTefy_uid56_block_rsrvd_fix_b));
    efxGTefy_uid56_block_rsrvd_fix_c(0) <= efxGTefy_uid56_block_rsrvd_fix_o(32);

    -- invEfxGTefy_uid59_block_rsrvd_fix(LOGICAL,58)@0
    invEfxGTefy_uid59_block_rsrvd_fix_q <= not (efxGTefy_uid56_block_rsrvd_fix_c);

    -- signY_uid55_block_rsrvd_fix(BITSELECT,54)@0
    signY_uid55_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_1(31 downto 31));

    -- signX_uid54_block_rsrvd_fix(BITSELECT,53)@0
    signX_uid54_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- xNegyNegYGTX_uid60_block_rsrvd_fix(LOGICAL,59)@0
    xNegyNegYGTX_uid60_block_rsrvd_fix_q <= signX_uid54_block_rsrvd_fix_b and signY_uid55_block_rsrvd_fix_b and invEfxGTefy_uid59_block_rsrvd_fix_q;

    -- invSX_uid57_block_rsrvd_fix(LOGICAL,56)@0
    invSX_uid57_block_rsrvd_fix_q <= not (signX_uid54_block_rsrvd_fix_b);

    -- xPosyPosXGtY_uid61_block_rsrvd_fix(LOGICAL,60)@0
    xPosyPosXGtY_uid61_block_rsrvd_fix_q <= invSX_uid57_block_rsrvd_fix_q and invSX_uid57_block_rsrvd_fix_q and efxGTefy_uid56_block_rsrvd_fix_c;

    -- xPosYNeg_uid62_block_rsrvd_fix(LOGICAL,61)@0
    xPosYNeg_uid62_block_rsrvd_fix_q <= invSX_uid57_block_rsrvd_fix_q and signY_uid55_block_rsrvd_fix_b;

    -- selX_uid63_block_rsrvd_fix(LOGICAL,62)@0
    selX_uid63_block_rsrvd_fix_q <= xPosYNeg_uid62_block_rsrvd_fix_q or xPosyPosXGtY_uid61_block_rsrvd_fix_q or xNegyNegYGTX_uid60_block_rsrvd_fix_q;

    -- r_uid64_block_rsrvd_fix(MUX,63)@0
    r_uid64_block_rsrvd_fix_s <= selX_uid63_block_rsrvd_fix_q;
    r_uid64_block_rsrvd_fix_combproc: PROCESS (r_uid64_block_rsrvd_fix_s, in_1, in_0)
    BEGIN
        CASE (r_uid64_block_rsrvd_fix_s) IS
            WHEN "0" => r_uid64_block_rsrvd_fix_q <= in_1;
            WHEN "1" => r_uid64_block_rsrvd_fix_q <= in_0;
            WHEN OTHERS => r_uid64_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- oneIsNaN_uid36_block_rsrvd_fix(LOGICAL,35)@0
    oneIsNaN_uid36_block_rsrvd_fix_q <= excN_x_uid17_block_rsrvd_fix_q xor excN_y_uid31_block_rsrvd_fix_q;

    -- nanOut_uid35_block_rsrvd_fix(LOGICAL,34)@0
    nanOut_uid35_block_rsrvd_fix_q <= excN_x_uid17_block_rsrvd_fix_q and excN_y_uid31_block_rsrvd_fix_q;

    -- concOneIsNaNNaNOut_uid65_block_rsrvd_fix(BITJOIN,64)@0
    concOneIsNaNNaNOut_uid65_block_rsrvd_fix_q <= oneIsNaN_uid36_block_rsrvd_fix_q & nanOut_uid35_block_rsrvd_fix_q;

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- rPostNaN_uid73_block_rsrvd_fix(MUX,72)@0
    rPostNaN_uid73_block_rsrvd_fix_s <= concOneIsNaNNaNOut_uid65_block_rsrvd_fix_q;
    rPostNaN_uid73_block_rsrvd_fix_combproc: PROCESS (rPostNaN_uid73_block_rsrvd_fix_s, r_uid64_block_rsrvd_fix_q, rPostNaNP_r3_uid68_block_rsrvd_fix_q, oneNaNOutput_uid45_block_rsrvd_fix_q)
    BEGIN
        CASE (rPostNaN_uid73_block_rsrvd_fix_s) IS
            WHEN "00" => rPostNaN_uid73_block_rsrvd_fix_q <= r_uid64_block_rsrvd_fix_q;
            WHEN "01" => rPostNaN_uid73_block_rsrvd_fix_q <= rPostNaNP_r3_uid68_block_rsrvd_fix_q;
            WHEN "10" => rPostNaN_uid73_block_rsrvd_fix_q <= oneNaNOutput_uid45_block_rsrvd_fix_q;
            WHEN "11" => rPostNaN_uid73_block_rsrvd_fix_q <= rPostNaNP_r3_uid68_block_rsrvd_fix_q;
            WHEN OTHERS => rPostNaN_uid73_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_primWireOut(GPOUT,5)@0
    out_primWireOut <= rPostNaN_uid73_block_rsrvd_fix_q;

END normal;
