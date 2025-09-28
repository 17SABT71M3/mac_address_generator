```
86:81:C5:67:75:55
copy? y/n
```
+ Sample:
```
@echo off
REM use print_mac.bat with arguments
REM when calling from scripts.
for /f "delims=" %%i in ('print_mac.bat 123') do set mac_addr=%%i
echo New Mac address is: %mac_addr%
Pause
```
