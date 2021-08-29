-- safe_path for standaloneTopLevel_DSPB_MMSE_dut_input_IF given rtl dir is ./rtl (flat)
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE DSPB_MMSE_dut_safe_path is
	FUNCTION safe_path( path: string ) RETURN string;
END DSPB_MMSE_dut_safe_path;

PACKAGE body DSPB_MMSE_dut_safe_path IS
	FUNCTION safe_path( path: string )
		RETURN string IS
	BEGIN
		FOR i IN path'reverse_range loop
			IF (path(i) = '/') THEN
				RETURN path(i+1 to path'right);
			END IF;
		END LOOP;
		RETURN path;
	END FUNCTION safe_path;
END DSPB_MMSE_dut_safe_path;
