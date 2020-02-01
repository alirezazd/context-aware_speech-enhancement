-- safe_path for dsp_vad_VAD given rtl dir is ./rtl (flat)
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE dsp_vad_VAD_safe_path is
	FUNCTION safe_path( path: string ) RETURN string;
END dsp_vad_VAD_safe_path;

PACKAGE body dsp_vad_VAD_safe_path IS
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
END dsp_vad_VAD_safe_path;
