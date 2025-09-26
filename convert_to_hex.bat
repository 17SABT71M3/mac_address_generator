@echo off
chcp 65001 >NUL
setlocal

for /f "delims=" %%a in ('powershell -NoProfile -ExecutionPolicy Bypass -Command "$ssid = \"%~1\"; [System.Text.Encoding]::UTF8.GetBytes($ssid) | ForEach-Object { \"{0:X2}\" -f $_ } | ForEach-Object { Write-Host -NoNewline $_ }"') do (
    set "hex_ssid=%%a"
)

echo %hex_ssid%

endlocal
