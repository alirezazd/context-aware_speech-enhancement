@echo off
set "VSCMD_START_DIR=%CD%"
call "T:\Microsoft Visual Studio2019\Enterprise\VC\Auxiliary\Build\VCVARSALL.BAT" amd64

cd .
nmake -f rtwshared.mk  OPTS="-DNRT -DIS_SIM_TARGET"
@if errorlevel 1 goto error_exit
exit 0

:error_exit
echo The make command returned an error of %errorlevel%
exit 1