@echo off
set "mac_poster="
set /a counter=0
:iterate
Set /a counter+=1
call :develop
goto print_mac
:develop
for /f "delims=" %%i in ('RANDOM.BAT 6 /CcN') do for /f "delims=" %%a in ('convert_to_hex.bat "%%i"') do set mac_poster=%%a
set v1=%mac_poster:~0,2%
set v2=%mac_poster:~2,2%
set v3=%mac_poster:~4,2%
set v4=%mac_poster:~6,2%
set v5=%mac_poster:~8,2%
set v6=%mac_poster:~10,2%
set whole_mac=%v1%:%v2%:%v3%:%v4%:%v5%:%v6%
exit /b
:print_mac
REM set "mac_poster=%mac_poster:~-1,1%"
echo %whole_mac%