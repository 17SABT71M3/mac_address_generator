Run `print_mac.bat` with an argument:
```
@echo off
for /f "delims=" %%i in ('print_mac.bat 123') do set mac_addr=%%i
echo New Mac address is: %mac_addr%
```
