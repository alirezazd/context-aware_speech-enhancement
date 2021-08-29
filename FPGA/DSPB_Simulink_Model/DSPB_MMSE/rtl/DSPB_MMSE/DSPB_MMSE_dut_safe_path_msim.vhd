-- safe_path for DSPB_MMSE_dut given rtl dir is ./rtl (modelsim)
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE DSPB_MMSE_dut_safe_path is
	FUNCTION safe_path( path: string ) RETURN string;
END DSPB_MMSE_dut_safe_path;

PACKAGE body DSPB_MMSE_dut_safe_path IS
	FUNCTION safe_path( path: string )
		RETURN string IS
	BEGIN
		RETURN path;
	END FUNCTION safe_path;
END DSPB_MMSE_dut_safe_path;
