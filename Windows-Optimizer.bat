@echo off

mode 84,25
color 0A

echo Windows Optimizer 1.0 ($) GITHUB/KID-X
echo ------------------------------------------------------------------------------------

ping 8.8.8.8 -n 4 > nul

color 0B
echo Optimizing and Defragmenting All Connected Storage Drives.
echo.
defrag /c /a /o /u
ping 8.8.8.8 -n 4 > nul
echo.

color 0C
Scanning and Fixing File System Errors.
echo.
chkdsk C: /f /r /scan
ping 8.8.8.8 -n 4 > nul
echo.

color 0D
Scanning and Fixing File System Errors Deeply.
echo.
sfc /scannow
ping 8.8.8.8 -n 4 > nul

color 0A
echo.
echo ------------------------------------------------------------------------------------
echo Windows Optimizer 1.0 ($) GITHUB/KID-X
echo.
pause
