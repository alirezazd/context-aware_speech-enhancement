-- safe_path for dsp_vad_VAD given rtl dir is ./rtl (modelsim)
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE dsp_vad_VAD_safe_path is
	FUNCTION safe_path( path: string ) RETURN string;
END dsp_vad_VAD_safe_path;

PACKAGE body dsp_vad_VAD_safe_path IS
	FUNCTION safe_path( path: string )
		RETURN string IS
	BEGIN
		RETURN path;
	END FUNCTION safe_path;
END dsp_vad_VAD_safe_path;
