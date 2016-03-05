@echo off
setlocal enabledelayedexpansion
set a=f.t
cd.>f.t
echo.>hhf.t
for /f "delims=" %%i in ('dir /b *.in') do (
REM +hhf.t = +\n
set a=!a!+%%i+hhf.t
)
echo !a!
REM Cin.txt Outputfile name
copy /b !a! Cin.txt
del /f f.t
del /f hhf.t
