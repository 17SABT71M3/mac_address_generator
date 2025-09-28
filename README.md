Using `print_mac.bat` in other scripts:
```
REM use print_mac.bat with arguments
REM when calling from scripts.
@echo off
for /f "delims=" %%i in ('print_mac.bat 123') do set mac_addr=%%i
echo New Mac address is: %mac_addr%
```
