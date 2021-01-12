@echo off

cd .

if "%1"=="" ("T:\MATLAB~1\bin\win64\gmake"  -f Embedded_MBSS_rtw.mk all) else ("T:\MATLAB~1\bin\win64\gmake"  -f Embedded_MBSS_rtw.mk %1)
@if errorlevel 1 goto error_exit

exit 0

:error_exit
echo The make command returned an error of %errorlevel%
exit 1
