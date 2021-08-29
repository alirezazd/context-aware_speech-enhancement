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

-- VHDL created from floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA0Z6cd0oq3cdd6oq3cp5d0u
-- VHDL created on Mon Aug 16 17:43:59 2021


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
entity floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA0Z6cd0oq3cdd6oq3cp5d0u is
    port (
        in_0 : in std_logic_vector(31 downto 0);  -- float32_m23
        out_primWireOut : out std_logic_vector(31 downto 0);  -- float32_m23
        clk : in std_logic;
        areset : in std_logic
    );
end floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA0Z6cd0oq3cdd6oq3cp5d0u;

architecture normal of floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA0Z6cd0oq3cdd6oq3cp5d0u is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cstAllOWE_uid6_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cstAllZWF_uid7_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstNaNWF_uid8_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal cstAllZWE_uid9_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cst3BiasM1o2M1_uid10_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal cst3BiasP1o2M1_uid11_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal exp_x_uid16_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal frac_x_uid17_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal excZ_x_uid18_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal expXIsMax_uid19_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsZero_uid20_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fracXIsNotZero_uid21_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excI_x_uid22_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excN_x_uid23_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal signX_uid28_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal evenOddExp_uid30_block_rsrvd_fix_in : STD_LOGIC_VECTOR (0 downto 0);
    signal evenOddExp_uid30_block_rsrvd_fix_b : STD_LOGIC_VECTOR (0 downto 0);
    signal addrYFull_uid31_block_rsrvd_fix_q : STD_LOGIC_VECTOR (23 downto 0);
    signal yAddr_uid33_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal yPPolyEval_uid34_block_rsrvd_fix_in : STD_LOGIC_VECTOR (14 downto 0);
    signal yPPolyEval_uid34_block_rsrvd_fix_b : STD_LOGIC_VECTOR (14 downto 0);
    signal fxpInvSqrtRes_uid36_block_rsrvd_fix_in : STD_LOGIC_VECTOR (29 downto 0);
    signal fxpInvSqrtRes_uid36_block_rsrvd_fix_b : STD_LOGIC_VECTOR (23 downto 0);
    signal concFracXIsZeroOddEvenSel_uid39_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal cstSel_uid40_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal cstSel_uid40_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal expRExt_uid41_block_rsrvd_fix_b : STD_LOGIC_VECTOR (6 downto 0);
    signal expRExt_uid42_block_rsrvd_fix_a : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExt_uid42_block_rsrvd_fix_b : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExt_uid42_block_rsrvd_fix_o : STD_LOGIC_VECTOR (8 downto 0);
    signal expRExt_uid42_block_rsrvd_fix_q : STD_LOGIC_VECTOR (8 downto 0);
    signal expR_uid43_block_rsrvd_fix_in : STD_LOGIC_VECTOR (7 downto 0);
    signal expR_uid43_block_rsrvd_fix_b : STD_LOGIC_VECTOR (7 downto 0);
    signal fxpInverseResFrac_uid44_block_rsrvd_fix_in : STD_LOGIC_VECTOR (22 downto 0);
    signal fxpInverseResFrac_uid44_block_rsrvd_fix_b : STD_LOGIC_VECTOR (22 downto 0);
    signal invSignX_uid45_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRZero_uid46_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal invExcXZ_uid47_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xRegNeg_uid48_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xNOxRNeg_uid49_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal excRConc_uid50_block_rsrvd_fix_q : STD_LOGIC_VECTOR (2 downto 0);
    signal outMuxSelEnc_uid51_block_rsrvd_fix_q : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid53_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal fracRPostExc_uid53_block_rsrvd_fix_q : STD_LOGIC_VECTOR (22 downto 0);
    signal expRPostExc_uid54_block_rsrvd_fix_s : STD_LOGIC_VECTOR (1 downto 0);
    signal expRPostExc_uid54_block_rsrvd_fix_q : STD_LOGIC_VECTOR (7 downto 0);
    signal signR_uid55_block_rsrvd_fix_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal signR_uid55_block_rsrvd_fix_q : STD_LOGIC_VECTOR (0 downto 0);
    signal R_uid56_block_rsrvd_fix_q : STD_LOGIC_VECTOR (31 downto 0);
    signal os_uid60_invSqrtTables_q : STD_LOGIC_VECTOR (29 downto 0);
    signal os_uid64_invSqrtTables_q : STD_LOGIC_VECTOR (20 downto 0);
    signal yT1_uid72_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal lowRangeB_uid74_invPolyEval_in : STD_LOGIC_VECTOR (0 downto 0);
    signal lowRangeB_uid74_invPolyEval_b : STD_LOGIC_VECTOR (0 downto 0);
    signal highBBits_uid75_invPolyEval_b : STD_LOGIC_VECTOR (11 downto 0);
    signal s1sumAHighB_uid76_invPolyEval_a : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid76_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid76_invPolyEval_o : STD_LOGIC_VECTOR (21 downto 0);
    signal s1sumAHighB_uid76_invPolyEval_q : STD_LOGIC_VECTOR (21 downto 0);
    signal s1_uid77_invPolyEval_q : STD_LOGIC_VECTOR (22 downto 0);
    signal lowRangeB_uid80_invPolyEval_in : STD_LOGIC_VECTOR (1 downto 0);
    signal lowRangeB_uid80_invPolyEval_b : STD_LOGIC_VECTOR (1 downto 0);
    signal highBBits_uid81_invPolyEval_b : STD_LOGIC_VECTOR (21 downto 0);
    signal s2sumAHighB_uid82_invPolyEval_a : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid82_invPolyEval_b : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid82_invPolyEval_o : STD_LOGIC_VECTOR (30 downto 0);
    signal s2sumAHighB_uid82_invPolyEval_q : STD_LOGIC_VECTOR (30 downto 0);
    signal s2_uid83_invPolyEval_q : STD_LOGIC_VECTOR (32 downto 0);
    signal osig_uid86_pT1_uid73_invPolyEval_b : STD_LOGIC_VECTOR (12 downto 0);
    signal osig_uid89_pT2_uid79_invPolyEval_b : STD_LOGIC_VECTOR (23 downto 0);
    signal memoryC1_uid63_invSqrtTables_q_const_q : STD_LOGIC_VECTOR (0 downto 0);
    signal memoryC0_uid58_invSqrtTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid58_invSqrtTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid58_invSqrtTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid58_invSqrtTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid58_invSqrtTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid58_invSqrtTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC0_uid59_invSqrtTables_lutmem_reset0 : std_logic;
    signal memoryC0_uid59_invSqrtTables_lutmem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC0_uid59_invSqrtTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid59_invSqrtTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC0_uid59_invSqrtTables_lutmem_ir : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC0_uid59_invSqrtTables_lutmem_r : STD_LOGIC_VECTOR (9 downto 0);
    signal memoryC1_uid62_invSqrtTables_lutmem_reset0 : std_logic;
    signal memoryC1_uid62_invSqrtTables_lutmem_ia : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid62_invSqrtTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid62_invSqrtTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC1_uid62_invSqrtTables_lutmem_ir : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC1_uid62_invSqrtTables_lutmem_r : STD_LOGIC_VECTOR (19 downto 0);
    signal memoryC2_uid66_invSqrtTables_lutmem_reset0 : std_logic;
    signal memoryC2_uid66_invSqrtTables_lutmem_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC2_uid66_invSqrtTables_lutmem_aa : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid66_invSqrtTables_lutmem_ab : STD_LOGIC_VECTOR (8 downto 0);
    signal memoryC2_uid66_invSqrtTables_lutmem_ir : STD_LOGIC_VECTOR (11 downto 0);
    signal memoryC2_uid66_invSqrtTables_lutmem_r : STD_LOGIC_VECTOR (11 downto 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_reset : std_logic;
    type prodXY_uid85_pT1_uid73_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(11 downto 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_a0 : prodXY_uid85_pT1_uid73_invPolyEval_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of prodXY_uid85_pT1_uid73_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid85_pT1_uid73_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(11 downto 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_c0 : prodXY_uid85_pT1_uid73_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid85_pT1_uid73_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid85_pT1_uid73_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(12 downto 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_l : prodXY_uid85_pT1_uid73_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid85_pT1_uid73_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(24 downto 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_p : prodXY_uid85_pT1_uid73_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_u : prodXY_uid85_pT1_uid73_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_w : prodXY_uid85_pT1_uid73_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_x : prodXY_uid85_pT1_uid73_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_y : prodXY_uid85_pT1_uid73_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_s : prodXY_uid85_pT1_uid73_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_qq : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_q : STD_LOGIC_VECTOR (23 downto 0);
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid85_pT1_uid73_invPolyEval_cma_ena1 : std_logic;
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_reset : std_logic;
    type prodXY_uid88_pT2_uid79_invPolyEval_cma_a0type is array(NATURAL range <>) of UNSIGNED(14 downto 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_a0 : prodXY_uid88_pT2_uid79_invPolyEval_cma_a0type(0 to 0);
    attribute preserve of prodXY_uid88_pT2_uid79_invPolyEval_cma_a0 : signal is true;
    type prodXY_uid88_pT2_uid79_invPolyEval_cma_c0type is array(NATURAL range <>) of SIGNED(22 downto 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_c0 : prodXY_uid88_pT2_uid79_invPolyEval_cma_c0type(0 to 0);
    attribute preserve of prodXY_uid88_pT2_uid79_invPolyEval_cma_c0 : signal is true;
    type prodXY_uid88_pT2_uid79_invPolyEval_cma_ltype is array(NATURAL range <>) of SIGNED(15 downto 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_l : prodXY_uid88_pT2_uid79_invPolyEval_cma_ltype(0 to 0);
    type prodXY_uid88_pT2_uid79_invPolyEval_cma_ptype is array(NATURAL range <>) of SIGNED(38 downto 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_p : prodXY_uid88_pT2_uid79_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_u : prodXY_uid88_pT2_uid79_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_w : prodXY_uid88_pT2_uid79_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_x : prodXY_uid88_pT2_uid79_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_y : prodXY_uid88_pT2_uid79_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_s : prodXY_uid88_pT2_uid79_invPolyEval_cma_ptype(0 to 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_q : STD_LOGIC_VECTOR (37 downto 0);
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_ena0 : std_logic;
    signal prodXY_uid88_pT2_uid79_invPolyEval_cma_ena1 : std_logic;
    signal redist0_signR_uid55_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_outMuxSelEnc_uid51_block_rsrvd_fix_q_6_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_yPPolyEval_uid34_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist4_yPPolyEval_uid34_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (14 downto 0);
    signal redist5_yAddr_uid33_block_rsrvd_fix_b_2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist6_yAddr_uid33_block_rsrvd_fix_b_4_q : STD_LOGIC_VECTOR (8 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_mem_reset0 : std_logic;
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_mem_ia : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_mem_iq : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_mem_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i : signal is true;
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_eq : std_logic;
    attribute preserve of redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_eq : signal is true;
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist2_expR_uid43_block_rsrvd_fix_b_6_sticky_ena_q : signal is true;
    signal redist2_expR_uid43_block_rsrvd_fix_b_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- signX_uid28_block_rsrvd_fix(BITSELECT,27)@0
    signX_uid28_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(in_0(31 downto 31));

    -- cstAllZWE_uid9_block_rsrvd_fix(CONSTANT,8)
    cstAllZWE_uid9_block_rsrvd_fix_q <= "00000000";

    -- exp_x_uid16_block_rsrvd_fix(BITSELECT,15)@0
    exp_x_uid16_block_rsrvd_fix_b <= in_0(30 downto 23);

    -- excZ_x_uid18_block_rsrvd_fix(LOGICAL,17)@0
    excZ_x_uid18_block_rsrvd_fix_q <= "1" WHEN exp_x_uid16_block_rsrvd_fix_b = cstAllZWE_uid9_block_rsrvd_fix_q ELSE "0";

    -- signR_uid55_block_rsrvd_fix(LOGICAL,54)@0 + 1
    signR_uid55_block_rsrvd_fix_qi <= excZ_x_uid18_block_rsrvd_fix_q and signX_uid28_block_rsrvd_fix_b;
    signR_uid55_block_rsrvd_fix_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid55_block_rsrvd_fix_qi, xout => signR_uid55_block_rsrvd_fix_q, clk => clk, aclr => areset );

    -- redist0_signR_uid55_block_rsrvd_fix_q_6(DELAY,97)
    redist0_signR_uid55_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => signR_uid55_block_rsrvd_fix_q, xout => redist0_signR_uid55_block_rsrvd_fix_q_6_q, clk => clk, aclr => areset );

    -- cstAllOWE_uid6_block_rsrvd_fix(CONSTANT,5)
    cstAllOWE_uid6_block_rsrvd_fix_q <= "11111111";

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_notEnable(LOGICAL,110)
    redist2_expR_uid43_block_rsrvd_fix_b_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_nor(LOGICAL,111)
    redist2_expR_uid43_block_rsrvd_fix_b_6_nor_q <= not (redist2_expR_uid43_block_rsrvd_fix_b_6_notEnable_q or redist2_expR_uid43_block_rsrvd_fix_b_6_sticky_ena_q);

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_mem_last(CONSTANT,107)
    redist2_expR_uid43_block_rsrvd_fix_b_6_mem_last_q <= "011";

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_cmp(LOGICAL,108)
    redist2_expR_uid43_block_rsrvd_fix_b_6_cmp_q <= "1" WHEN redist2_expR_uid43_block_rsrvd_fix_b_6_mem_last_q = redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_q ELSE "0";

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_cmpReg(REG,109)
    redist2_expR_uid43_block_rsrvd_fix_b_6_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist2_expR_uid43_block_rsrvd_fix_b_6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist2_expR_uid43_block_rsrvd_fix_b_6_cmpReg_q <= STD_LOGIC_VECTOR(redist2_expR_uid43_block_rsrvd_fix_b_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_sticky_ena(REG,112)
    redist2_expR_uid43_block_rsrvd_fix_b_6_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist2_expR_uid43_block_rsrvd_fix_b_6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist2_expR_uid43_block_rsrvd_fix_b_6_nor_q = "1") THEN
                redist2_expR_uid43_block_rsrvd_fix_b_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist2_expR_uid43_block_rsrvd_fix_b_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_enaAnd(LOGICAL,113)
    redist2_expR_uid43_block_rsrvd_fix_b_6_enaAnd_q <= redist2_expR_uid43_block_rsrvd_fix_b_6_sticky_ena_q and VCC_q;

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt(COUNTER,105)
    -- low=0, high=4, step=1, init=0
    redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_eq <= '1';
            ELSE
                redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_eq <= '0';
            END IF;
            IF (redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_eq = '1') THEN
                redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i <= redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i + 4;
            ELSE
                redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i <= redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_i, 3)));

    -- expRExt_uid41_block_rsrvd_fix(BITSELECT,40)@0
    expRExt_uid41_block_rsrvd_fix_b <= exp_x_uid16_block_rsrvd_fix_b(7 downto 1);

    -- cst3BiasM1o2M1_uid10_block_rsrvd_fix(CONSTANT,9)
    cst3BiasM1o2M1_uid10_block_rsrvd_fix_q <= "10111101";

    -- cst3BiasP1o2M1_uid11_block_rsrvd_fix(CONSTANT,10)
    cst3BiasP1o2M1_uid11_block_rsrvd_fix_q <= "10111110";

    -- frac_x_uid17_block_rsrvd_fix(BITSELECT,16)@0
    frac_x_uid17_block_rsrvd_fix_b <= in_0(22 downto 0);

    -- cstAllZWF_uid7_block_rsrvd_fix(CONSTANT,6)
    cstAllZWF_uid7_block_rsrvd_fix_q <= "00000000000000000000000";

    -- fracXIsZero_uid20_block_rsrvd_fix(LOGICAL,19)@0
    fracXIsZero_uid20_block_rsrvd_fix_q <= "1" WHEN cstAllZWF_uid7_block_rsrvd_fix_q = frac_x_uid17_block_rsrvd_fix_b ELSE "0";

    -- evenOddExp_uid30_block_rsrvd_fix(BITSELECT,29)@0
    evenOddExp_uid30_block_rsrvd_fix_in <= STD_LOGIC_VECTOR(exp_x_uid16_block_rsrvd_fix_b(0 downto 0));
    evenOddExp_uid30_block_rsrvd_fix_b <= STD_LOGIC_VECTOR(evenOddExp_uid30_block_rsrvd_fix_in(0 downto 0));

    -- concFracXIsZeroOddEvenSel_uid39_block_rsrvd_fix(BITJOIN,38)@0
    concFracXIsZeroOddEvenSel_uid39_block_rsrvd_fix_q <= fracXIsZero_uid20_block_rsrvd_fix_q & evenOddExp_uid30_block_rsrvd_fix_b;

    -- cstSel_uid40_block_rsrvd_fix(MUX,39)@0
    cstSel_uid40_block_rsrvd_fix_s <= concFracXIsZeroOddEvenSel_uid39_block_rsrvd_fix_q;
    cstSel_uid40_block_rsrvd_fix_combproc: PROCESS (cstSel_uid40_block_rsrvd_fix_s, cst3BiasP1o2M1_uid11_block_rsrvd_fix_q, cst3BiasM1o2M1_uid10_block_rsrvd_fix_q)
    BEGIN
        CASE (cstSel_uid40_block_rsrvd_fix_s) IS
            WHEN "00" => cstSel_uid40_block_rsrvd_fix_q <= cst3BiasP1o2M1_uid11_block_rsrvd_fix_q;
            WHEN "01" => cstSel_uid40_block_rsrvd_fix_q <= cst3BiasM1o2M1_uid10_block_rsrvd_fix_q;
            WHEN "10" => cstSel_uid40_block_rsrvd_fix_q <= cst3BiasP1o2M1_uid11_block_rsrvd_fix_q;
            WHEN "11" => cstSel_uid40_block_rsrvd_fix_q <= cst3BiasP1o2M1_uid11_block_rsrvd_fix_q;
            WHEN OTHERS => cstSel_uid40_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- expRExt_uid42_block_rsrvd_fix(SUB,41)@0
    expRExt_uid42_block_rsrvd_fix_a <= STD_LOGIC_VECTOR("0" & cstSel_uid40_block_rsrvd_fix_q);
    expRExt_uid42_block_rsrvd_fix_b <= STD_LOGIC_VECTOR("00" & expRExt_uid41_block_rsrvd_fix_b);
    expRExt_uid42_block_rsrvd_fix_o <= STD_LOGIC_VECTOR(UNSIGNED(expRExt_uid42_block_rsrvd_fix_a) - UNSIGNED(expRExt_uid42_block_rsrvd_fix_b));
    expRExt_uid42_block_rsrvd_fix_q <= expRExt_uid42_block_rsrvd_fix_o(8 downto 0);

    -- expR_uid43_block_rsrvd_fix(BITSELECT,42)@0
    expR_uid43_block_rsrvd_fix_in <= expRExt_uid42_block_rsrvd_fix_q(7 downto 0);
    expR_uid43_block_rsrvd_fix_b <= expR_uid43_block_rsrvd_fix_in(7 downto 0);

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_wraddr(REG,106)
    redist2_expR_uid43_block_rsrvd_fix_b_6_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            redist2_expR_uid43_block_rsrvd_fix_b_6_wraddr_q <= "100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            redist2_expR_uid43_block_rsrvd_fix_b_6_wraddr_q <= STD_LOGIC_VECTOR(redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist2_expR_uid43_block_rsrvd_fix_b_6_mem(DUALMEM,104)
    redist2_expR_uid43_block_rsrvd_fix_b_6_mem_ia <= STD_LOGIC_VECTOR(expR_uid43_block_rsrvd_fix_b);
    redist2_expR_uid43_block_rsrvd_fix_b_6_mem_aa <= redist2_expR_uid43_block_rsrvd_fix_b_6_wraddr_q;
    redist2_expR_uid43_block_rsrvd_fix_b_6_mem_ab <= redist2_expR_uid43_block_rsrvd_fix_b_6_rdcnt_q;
    redist2_expR_uid43_block_rsrvd_fix_b_6_mem_reset0 <= areset;
    redist2_expR_uid43_block_rsrvd_fix_b_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 8,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 8,
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
        clocken1 => redist2_expR_uid43_block_rsrvd_fix_b_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => redist2_expR_uid43_block_rsrvd_fix_b_6_mem_reset0,
        clock1 => clk,
        address_a => redist2_expR_uid43_block_rsrvd_fix_b_6_mem_aa,
        data_a => redist2_expR_uid43_block_rsrvd_fix_b_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist2_expR_uid43_block_rsrvd_fix_b_6_mem_ab,
        q_b => redist2_expR_uid43_block_rsrvd_fix_b_6_mem_iq
    );
    redist2_expR_uid43_block_rsrvd_fix_b_6_mem_q <= redist2_expR_uid43_block_rsrvd_fix_b_6_mem_iq(7 downto 0);

    -- invExcXZ_uid47_block_rsrvd_fix(LOGICAL,46)@0
    invExcXZ_uid47_block_rsrvd_fix_q <= not (excZ_x_uid18_block_rsrvd_fix_q);

    -- xRegNeg_uid48_block_rsrvd_fix(LOGICAL,47)@0
    xRegNeg_uid48_block_rsrvd_fix_q <= invExcXZ_uid47_block_rsrvd_fix_q and signX_uid28_block_rsrvd_fix_b;

    -- fracXIsNotZero_uid21_block_rsrvd_fix(LOGICAL,20)@0
    fracXIsNotZero_uid21_block_rsrvd_fix_q <= not (fracXIsZero_uid20_block_rsrvd_fix_q);

    -- expXIsMax_uid19_block_rsrvd_fix(LOGICAL,18)@0
    expXIsMax_uid19_block_rsrvd_fix_q <= "1" WHEN exp_x_uid16_block_rsrvd_fix_b = cstAllOWE_uid6_block_rsrvd_fix_q ELSE "0";

    -- excN_x_uid23_block_rsrvd_fix(LOGICAL,22)@0
    excN_x_uid23_block_rsrvd_fix_q <= expXIsMax_uid19_block_rsrvd_fix_q and fracXIsNotZero_uid21_block_rsrvd_fix_q;

    -- xNOxRNeg_uid49_block_rsrvd_fix(LOGICAL,48)@0
    xNOxRNeg_uid49_block_rsrvd_fix_q <= excN_x_uid23_block_rsrvd_fix_q or xRegNeg_uid48_block_rsrvd_fix_q;

    -- excI_x_uid22_block_rsrvd_fix(LOGICAL,21)@0
    excI_x_uid22_block_rsrvd_fix_q <= expXIsMax_uid19_block_rsrvd_fix_q and fracXIsZero_uid20_block_rsrvd_fix_q;

    -- invSignX_uid45_block_rsrvd_fix(LOGICAL,44)@0
    invSignX_uid45_block_rsrvd_fix_q <= not (signX_uid28_block_rsrvd_fix_b);

    -- excRZero_uid46_block_rsrvd_fix(LOGICAL,45)@0
    excRZero_uid46_block_rsrvd_fix_q <= invSignX_uid45_block_rsrvd_fix_q and excI_x_uid22_block_rsrvd_fix_q;

    -- excRConc_uid50_block_rsrvd_fix(BITJOIN,49)@0
    excRConc_uid50_block_rsrvd_fix_q <= xNOxRNeg_uid49_block_rsrvd_fix_q & excZ_x_uid18_block_rsrvd_fix_q & excRZero_uid46_block_rsrvd_fix_q;

    -- outMuxSelEnc_uid51_block_rsrvd_fix(LOOKUP,50)@0 + 1
    outMuxSelEnc_uid51_block_rsrvd_fix_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            outMuxSelEnc_uid51_block_rsrvd_fix_q <= "01";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (excRConc_uid50_block_rsrvd_fix_q) IS
                WHEN "000" => outMuxSelEnc_uid51_block_rsrvd_fix_q <= "01";
                WHEN "001" => outMuxSelEnc_uid51_block_rsrvd_fix_q <= "00";
                WHEN "010" => outMuxSelEnc_uid51_block_rsrvd_fix_q <= "10";
                WHEN "011" => outMuxSelEnc_uid51_block_rsrvd_fix_q <= "00";
                WHEN "100" => outMuxSelEnc_uid51_block_rsrvd_fix_q <= "11";
                WHEN "101" => outMuxSelEnc_uid51_block_rsrvd_fix_q <= "00";
                WHEN "110" => outMuxSelEnc_uid51_block_rsrvd_fix_q <= "10";
                WHEN "111" => outMuxSelEnc_uid51_block_rsrvd_fix_q <= "01";
                WHEN OTHERS => -- unreachable
                               outMuxSelEnc_uid51_block_rsrvd_fix_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- redist1_outMuxSelEnc_uid51_block_rsrvd_fix_q_6(DELAY,98)
    redist1_outMuxSelEnc_uid51_block_rsrvd_fix_q_6 : dspba_delay
    GENERIC MAP ( width => 2, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => outMuxSelEnc_uid51_block_rsrvd_fix_q, xout => redist1_outMuxSelEnc_uid51_block_rsrvd_fix_q_6_q, clk => clk, aclr => areset );

    -- expRPostExc_uid54_block_rsrvd_fix(MUX,53)@6
    expRPostExc_uid54_block_rsrvd_fix_s <= redist1_outMuxSelEnc_uid51_block_rsrvd_fix_q_6_q;
    expRPostExc_uid54_block_rsrvd_fix_combproc: PROCESS (expRPostExc_uid54_block_rsrvd_fix_s, cstAllZWE_uid9_block_rsrvd_fix_q, redist2_expR_uid43_block_rsrvd_fix_b_6_mem_q, cstAllOWE_uid6_block_rsrvd_fix_q)
    BEGIN
        CASE (expRPostExc_uid54_block_rsrvd_fix_s) IS
            WHEN "00" => expRPostExc_uid54_block_rsrvd_fix_q <= cstAllZWE_uid9_block_rsrvd_fix_q;
            WHEN "01" => expRPostExc_uid54_block_rsrvd_fix_q <= redist2_expR_uid43_block_rsrvd_fix_b_6_mem_q;
            WHEN "10" => expRPostExc_uid54_block_rsrvd_fix_q <= cstAllOWE_uid6_block_rsrvd_fix_q;
            WHEN "11" => expRPostExc_uid54_block_rsrvd_fix_q <= cstAllOWE_uid6_block_rsrvd_fix_q;
            WHEN OTHERS => expRPostExc_uid54_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- cstNaNWF_uid8_block_rsrvd_fix(CONSTANT,7)
    cstNaNWF_uid8_block_rsrvd_fix_q <= "00000000000000000000001";

    -- addrYFull_uid31_block_rsrvd_fix(BITJOIN,30)@0
    addrYFull_uid31_block_rsrvd_fix_q <= evenOddExp_uid30_block_rsrvd_fix_b & frac_x_uid17_block_rsrvd_fix_b;

    -- yAddr_uid33_block_rsrvd_fix(BITSELECT,32)@0
    yAddr_uid33_block_rsrvd_fix_b <= addrYFull_uid31_block_rsrvd_fix_q(23 downto 15);

    -- memoryC2_uid66_invSqrtTables_lutmem(DUALMEM,94)@0 + 2
    -- in j@20000000
    memoryC2_uid66_invSqrtTables_lutmem_aa <= yAddr_uid33_block_rsrvd_fix_b;
    memoryC2_uid66_invSqrtTables_lutmem_reset0 <= areset;
    memoryC2_uid66_invSqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 12,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA3ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC2_uid66_invSqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC2_uid66_invSqrtTables_lutmem_aa,
        q_a => memoryC2_uid66_invSqrtTables_lutmem_ir
    );
    memoryC2_uid66_invSqrtTables_lutmem_r <= memoryC2_uid66_invSqrtTables_lutmem_ir(11 downto 0);

    -- yPPolyEval_uid34_block_rsrvd_fix(BITSELECT,33)@0
    yPPolyEval_uid34_block_rsrvd_fix_in <= frac_x_uid17_block_rsrvd_fix_b(14 downto 0);
    yPPolyEval_uid34_block_rsrvd_fix_b <= yPPolyEval_uid34_block_rsrvd_fix_in(14 downto 0);

    -- redist3_yPPolyEval_uid34_block_rsrvd_fix_b_2(DELAY,100)
    redist3_yPPolyEval_uid34_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yPPolyEval_uid34_block_rsrvd_fix_b, xout => redist3_yPPolyEval_uid34_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- yT1_uid72_invPolyEval(BITSELECT,71)@2
    yT1_uid72_invPolyEval_b <= redist3_yPPolyEval_uid34_block_rsrvd_fix_b_2_q(14 downto 3);

    -- prodXY_uid85_pT1_uid73_invPolyEval_cma(CHAINMULTADD,95)@2 + 2
    prodXY_uid85_pT1_uid73_invPolyEval_cma_reset <= areset;
    prodXY_uid85_pT1_uid73_invPolyEval_cma_ena0 <= '1';
    prodXY_uid85_pT1_uid73_invPolyEval_cma_ena1 <= prodXY_uid85_pT1_uid73_invPolyEval_cma_ena0;
    prodXY_uid85_pT1_uid73_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid85_pT1_uid73_invPolyEval_cma_a0(0),13));
    prodXY_uid85_pT1_uid73_invPolyEval_cma_p(0) <= prodXY_uid85_pT1_uid73_invPolyEval_cma_l(0) * prodXY_uid85_pT1_uid73_invPolyEval_cma_c0(0);
    prodXY_uid85_pT1_uid73_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid85_pT1_uid73_invPolyEval_cma_p(0),25);
    prodXY_uid85_pT1_uid73_invPolyEval_cma_w(0) <= prodXY_uid85_pT1_uid73_invPolyEval_cma_u(0);
    prodXY_uid85_pT1_uid73_invPolyEval_cma_x(0) <= prodXY_uid85_pT1_uid73_invPolyEval_cma_w(0);
    prodXY_uid85_pT1_uid73_invPolyEval_cma_y(0) <= prodXY_uid85_pT1_uid73_invPolyEval_cma_x(0);
    prodXY_uid85_pT1_uid73_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid85_pT1_uid73_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid85_pT1_uid73_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid85_pT1_uid73_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid85_pT1_uid73_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(yT1_uid72_invPolyEval_b),12);
                prodXY_uid85_pT1_uid73_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(memoryC2_uid66_invSqrtTables_lutmem_r),12);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid85_pT1_uid73_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid85_pT1_uid73_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid85_pT1_uid73_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid85_pT1_uid73_invPolyEval_cma_s(0) <= prodXY_uid85_pT1_uid73_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid85_pT1_uid73_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 24, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid85_pT1_uid73_invPolyEval_cma_s(0)(23 downto 0)), xout => prodXY_uid85_pT1_uid73_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid85_pT1_uid73_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid85_pT1_uid73_invPolyEval_cma_qq(23 downto 0));

    -- osig_uid86_pT1_uid73_invPolyEval(BITSELECT,85)@4
    osig_uid86_pT1_uid73_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid85_pT1_uid73_invPolyEval_cma_q(23 downto 11));

    -- highBBits_uid75_invPolyEval(BITSELECT,74)@4
    highBBits_uid75_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid86_pT1_uid73_invPolyEval_b(12 downto 1));

    -- memoryC1_uid63_invSqrtTables_q_const(CONSTANT,90)
    memoryC1_uid63_invSqrtTables_q_const_q <= "1";

    -- redist5_yAddr_uid33_block_rsrvd_fix_b_2(DELAY,102)
    redist5_yAddr_uid33_block_rsrvd_fix_b_2 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => yAddr_uid33_block_rsrvd_fix_b, xout => redist5_yAddr_uid33_block_rsrvd_fix_b_2_q, clk => clk, aclr => areset );

    -- memoryC1_uid62_invSqrtTables_lutmem(DUALMEM,93)@2 + 2
    -- in j@20000000
    memoryC1_uid62_invSqrtTables_lutmem_aa <= redist5_yAddr_uid33_block_rsrvd_fix_b_2_q;
    memoryC1_uid62_invSqrtTables_lutmem_reset0 <= areset;
    memoryC1_uid62_invSqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 20,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA2ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC1_uid62_invSqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC1_uid62_invSqrtTables_lutmem_aa,
        q_a => memoryC1_uid62_invSqrtTables_lutmem_ir
    );
    memoryC1_uid62_invSqrtTables_lutmem_r <= memoryC1_uid62_invSqrtTables_lutmem_ir(19 downto 0);

    -- os_uid64_invSqrtTables(BITJOIN,63)@4
    os_uid64_invSqrtTables_q <= memoryC1_uid63_invSqrtTables_q_const_q & memoryC1_uid62_invSqrtTables_lutmem_r;

    -- s1sumAHighB_uid76_invPolyEval(ADD,75)@4
    s1sumAHighB_uid76_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => os_uid64_invSqrtTables_q(20)) & os_uid64_invSqrtTables_q));
    s1sumAHighB_uid76_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 12 => highBBits_uid75_invPolyEval_b(11)) & highBBits_uid75_invPolyEval_b));
    s1sumAHighB_uid76_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s1sumAHighB_uid76_invPolyEval_a) + SIGNED(s1sumAHighB_uid76_invPolyEval_b));
    s1sumAHighB_uid76_invPolyEval_q <= s1sumAHighB_uid76_invPolyEval_o(21 downto 0);

    -- lowRangeB_uid74_invPolyEval(BITSELECT,73)@4
    lowRangeB_uid74_invPolyEval_in <= osig_uid86_pT1_uid73_invPolyEval_b(0 downto 0);
    lowRangeB_uid74_invPolyEval_b <= lowRangeB_uid74_invPolyEval_in(0 downto 0);

    -- s1_uid77_invPolyEval(BITJOIN,76)@4
    s1_uid77_invPolyEval_q <= s1sumAHighB_uid76_invPolyEval_q & lowRangeB_uid74_invPolyEval_b;

    -- redist4_yPPolyEval_uid34_block_rsrvd_fix_b_4(DELAY,101)
    redist4_yPPolyEval_uid34_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 15, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist3_yPPolyEval_uid34_block_rsrvd_fix_b_2_q, xout => redist4_yPPolyEval_uid34_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- prodXY_uid88_pT2_uid79_invPolyEval_cma(CHAINMULTADD,96)@4 + 2
    prodXY_uid88_pT2_uid79_invPolyEval_cma_reset <= areset;
    prodXY_uid88_pT2_uid79_invPolyEval_cma_ena0 <= '1';
    prodXY_uid88_pT2_uid79_invPolyEval_cma_ena1 <= prodXY_uid88_pT2_uid79_invPolyEval_cma_ena0;
    prodXY_uid88_pT2_uid79_invPolyEval_cma_l(0) <= SIGNED(RESIZE(prodXY_uid88_pT2_uid79_invPolyEval_cma_a0(0),16));
    prodXY_uid88_pT2_uid79_invPolyEval_cma_p(0) <= prodXY_uid88_pT2_uid79_invPolyEval_cma_l(0) * prodXY_uid88_pT2_uid79_invPolyEval_cma_c0(0);
    prodXY_uid88_pT2_uid79_invPolyEval_cma_u(0) <= RESIZE(prodXY_uid88_pT2_uid79_invPolyEval_cma_p(0),39);
    prodXY_uid88_pT2_uid79_invPolyEval_cma_w(0) <= prodXY_uid88_pT2_uid79_invPolyEval_cma_u(0);
    prodXY_uid88_pT2_uid79_invPolyEval_cma_x(0) <= prodXY_uid88_pT2_uid79_invPolyEval_cma_w(0);
    prodXY_uid88_pT2_uid79_invPolyEval_cma_y(0) <= prodXY_uid88_pT2_uid79_invPolyEval_cma_x(0);
    prodXY_uid88_pT2_uid79_invPolyEval_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid88_pT2_uid79_invPolyEval_cma_a0 <= (others => (others => '0'));
            prodXY_uid88_pT2_uid79_invPolyEval_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid88_pT2_uid79_invPolyEval_cma_ena0 = '1') THEN
                prodXY_uid88_pT2_uid79_invPolyEval_cma_a0(0) <= RESIZE(UNSIGNED(redist4_yPPolyEval_uid34_block_rsrvd_fix_b_4_q),15);
                prodXY_uid88_pT2_uid79_invPolyEval_cma_c0(0) <= RESIZE(SIGNED(s1_uid77_invPolyEval_q),23);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid88_pT2_uid79_invPolyEval_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            prodXY_uid88_pT2_uid79_invPolyEval_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (prodXY_uid88_pT2_uid79_invPolyEval_cma_ena1 = '1') THEN
                prodXY_uid88_pT2_uid79_invPolyEval_cma_s(0) <= prodXY_uid88_pT2_uid79_invPolyEval_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    prodXY_uid88_pT2_uid79_invPolyEval_cma_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(prodXY_uid88_pT2_uid79_invPolyEval_cma_s(0)(37 downto 0)), xout => prodXY_uid88_pT2_uid79_invPolyEval_cma_qq, clk => clk, aclr => areset );
    prodXY_uid88_pT2_uid79_invPolyEval_cma_q <= STD_LOGIC_VECTOR(prodXY_uid88_pT2_uid79_invPolyEval_cma_qq(37 downto 0));

    -- osig_uid89_pT2_uid79_invPolyEval(BITSELECT,88)@6
    osig_uid89_pT2_uid79_invPolyEval_b <= STD_LOGIC_VECTOR(prodXY_uid88_pT2_uid79_invPolyEval_cma_q(37 downto 14));

    -- highBBits_uid81_invPolyEval(BITSELECT,80)@6
    highBBits_uid81_invPolyEval_b <= STD_LOGIC_VECTOR(osig_uid89_pT2_uid79_invPolyEval_b(23 downto 2));

    -- redist6_yAddr_uid33_block_rsrvd_fix_b_4(DELAY,103)
    redist6_yAddr_uid33_block_rsrvd_fix_b_4 : dspba_delay
    GENERIC MAP ( width => 9, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => redist5_yAddr_uid33_block_rsrvd_fix_b_2_q, xout => redist6_yAddr_uid33_block_rsrvd_fix_b_4_q, clk => clk, aclr => areset );

    -- memoryC0_uid59_invSqrtTables_lutmem(DUALMEM,92)@4 + 2
    -- in j@20000000
    memoryC0_uid59_invSqrtTables_lutmem_aa <= redist6_yAddr_uid33_block_rsrvd_fix_b_4_q;
    memoryC0_uid59_invSqrtTables_lutmem_reset0 <= areset;
    memoryC0_uid59_invSqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 10,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA1ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid59_invSqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid59_invSqrtTables_lutmem_aa,
        q_a => memoryC0_uid59_invSqrtTables_lutmem_ir
    );
    memoryC0_uid59_invSqrtTables_lutmem_r <= memoryC0_uid59_invSqrtTables_lutmem_ir(9 downto 0);

    -- memoryC0_uid58_invSqrtTables_lutmem(DUALMEM,91)@4 + 2
    -- in j@20000000
    memoryC0_uid58_invSqrtTables_lutmem_aa <= redist6_yAddr_uid33_block_rsrvd_fix_b_4_q;
    memoryC0_uid58_invSqrtTables_lutmem_reset0 <= areset;
    memoryC0_uid58_invSqrtTables_lutmem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "ROM",
        width_a => 20,
        widthad_a => 9,
        numwords_a => 512,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("DSPB_MMSE/floatComponent_DSPB_MMSE_dut_Enhacement_Algorithm_MMSE_recipSqrtBlock_typeSFloatA0ZqrtTables_lutmem.hex"),
        init_file_layout => "PORT_A",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => memoryC0_uid58_invSqrtTables_lutmem_reset0,
        clock0 => clk,
        address_a => memoryC0_uid58_invSqrtTables_lutmem_aa,
        q_a => memoryC0_uid58_invSqrtTables_lutmem_ir
    );
    memoryC0_uid58_invSqrtTables_lutmem_r <= memoryC0_uid58_invSqrtTables_lutmem_ir(19 downto 0);

    -- os_uid60_invSqrtTables(BITJOIN,59)@6
    os_uid60_invSqrtTables_q <= memoryC0_uid59_invSqrtTables_lutmem_r & memoryC0_uid58_invSqrtTables_lutmem_r;

    -- s2sumAHighB_uid82_invPolyEval(ADD,81)@6
    s2sumAHighB_uid82_invPolyEval_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => os_uid60_invSqrtTables_q(29)) & os_uid60_invSqrtTables_q));
    s2sumAHighB_uid82_invPolyEval_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 22 => highBBits_uid81_invPolyEval_b(21)) & highBBits_uid81_invPolyEval_b));
    s2sumAHighB_uid82_invPolyEval_o <= STD_LOGIC_VECTOR(SIGNED(s2sumAHighB_uid82_invPolyEval_a) + SIGNED(s2sumAHighB_uid82_invPolyEval_b));
    s2sumAHighB_uid82_invPolyEval_q <= s2sumAHighB_uid82_invPolyEval_o(30 downto 0);

    -- lowRangeB_uid80_invPolyEval(BITSELECT,79)@6
    lowRangeB_uid80_invPolyEval_in <= osig_uid89_pT2_uid79_invPolyEval_b(1 downto 0);
    lowRangeB_uid80_invPolyEval_b <= lowRangeB_uid80_invPolyEval_in(1 downto 0);

    -- s2_uid83_invPolyEval(BITJOIN,82)@6
    s2_uid83_invPolyEval_q <= s2sumAHighB_uid82_invPolyEval_q & lowRangeB_uid80_invPolyEval_b;

    -- fxpInvSqrtRes_uid36_block_rsrvd_fix(BITSELECT,35)@6
    fxpInvSqrtRes_uid36_block_rsrvd_fix_in <= s2_uid83_invPolyEval_q(29 downto 0);
    fxpInvSqrtRes_uid36_block_rsrvd_fix_b <= fxpInvSqrtRes_uid36_block_rsrvd_fix_in(29 downto 6);

    -- fxpInverseResFrac_uid44_block_rsrvd_fix(BITSELECT,43)@6
    fxpInverseResFrac_uid44_block_rsrvd_fix_in <= fxpInvSqrtRes_uid36_block_rsrvd_fix_b(22 downto 0);
    fxpInverseResFrac_uid44_block_rsrvd_fix_b <= fxpInverseResFrac_uid44_block_rsrvd_fix_in(22 downto 0);

    -- fracRPostExc_uid53_block_rsrvd_fix(MUX,52)@6
    fracRPostExc_uid53_block_rsrvd_fix_s <= redist1_outMuxSelEnc_uid51_block_rsrvd_fix_q_6_q;
    fracRPostExc_uid53_block_rsrvd_fix_combproc: PROCESS (fracRPostExc_uid53_block_rsrvd_fix_s, cstAllZWF_uid7_block_rsrvd_fix_q, fxpInverseResFrac_uid44_block_rsrvd_fix_b, cstNaNWF_uid8_block_rsrvd_fix_q)
    BEGIN
        CASE (fracRPostExc_uid53_block_rsrvd_fix_s) IS
            WHEN "00" => fracRPostExc_uid53_block_rsrvd_fix_q <= cstAllZWF_uid7_block_rsrvd_fix_q;
            WHEN "01" => fracRPostExc_uid53_block_rsrvd_fix_q <= fxpInverseResFrac_uid44_block_rsrvd_fix_b;
            WHEN "10" => fracRPostExc_uid53_block_rsrvd_fix_q <= cstAllZWF_uid7_block_rsrvd_fix_q;
            WHEN "11" => fracRPostExc_uid53_block_rsrvd_fix_q <= cstNaNWF_uid8_block_rsrvd_fix_q;
            WHEN OTHERS => fracRPostExc_uid53_block_rsrvd_fix_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- R_uid56_block_rsrvd_fix(BITJOIN,55)@6
    R_uid56_block_rsrvd_fix_q <= redist0_signR_uid55_block_rsrvd_fix_q_6_q & expRPostExc_uid54_block_rsrvd_fix_q & fracRPostExc_uid53_block_rsrvd_fix_q;

    -- out_primWireOut(GPOUT,4)@6
    out_primWireOut <= R_uid56_block_rsrvd_fix_q;

END normal;
