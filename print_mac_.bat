@echo off
setlocal enabledelayedexpansion
title im alone !RANDOM!
REM if "%~1"=="12" goto start
REM start cmd /c ""%~fp0" 12" & goto :eof
:start
set /a one=(%RANDOM%*20/32676)+1
for /f "tokens=%one% delims=," %%i in ("02,06,0A,0E,22,26,2A,2E,42,46,4A,4E,62,66,6A,6E,82,86,8A,8E") do set first=%%i
set valid_hex=(0 1 2 3 4 5 6 7 8 9 A B C D E F)
set len=0
set oh_my=
:create_hex
set /a drump=(%RANDOM%*16/32676)+1
for /f "tokens=%drump% delims= " %%i in ("0 1 2 3 4 5 6 7 8 9 A B C D E F") do set oh_my=%oh_my%%%i
set /a len+=1
if %len% LSS 10 goto create_hex
:im_evil
echo %first%:%oh_my:~0,2%:%oh_my:~2,2%:%oh_my:~4,2%:%oh_my:~6,2%:%oh_my:~8,2%
if "%~1" NEQ "" goto :eof
goto :give_choice


:give_choice
choice /m "copy? y/n" /n /d n /t 2
if %errorlevel%==1 echo %first%:%oh_my:~0,2%:%oh_my:~2,2%:%oh_my:~4,2%:%oh_my:~6,2%:%oh_my:~8,2%|clip
goto :eof

