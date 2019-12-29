@echo off
mode 84,25

goto menu

:1
  echo.
  color 0E
  echo Optimizing and Defragmenting All Connected Storage Drives.
  echo.
  defrag /c /a /o /u
  ping 8.8.8.8 -n 2 > nul
  echo.
  goto done
  goto menu

:2
  echo.
  color 0E
  echo Scanning and Fixing File System Errors.
  echo.
  chkdsk C: /f /r /scan
  ping 8.8.8.8 -n 2 > nul
  echo.
  goto done
  goto menu

:3
  echo.
  color 0E
  echo Scanning and Fixing File System Errors Deeply.
  echo.
  sfc /scannow
  ping 8.8.8.8 -n 2 > nul
  echo.
  goto done
  goto menu

:4
  echo.
  color 0E
  echo Optimizing and Defragmenting All Connected Storage Drives.
  echo.
  defrag /c /a /o /u
  ping 8.8.8.8 -n 2 > nul
  echo.
  echo Scanning and Fixing File System Errors.
  echo.
  chkdsk C: /f /r /scan
  ping 8.8.8.8 -n 2 > nul
  echo.
  echo Scanning and Fixing File System Errors Deeply.
  echo.
  sfc /scannow
  ping 8.8.8.8 -n 2 > nul
  echo.
  goto menu

:5
  exit

:done
  color 0C
  echo.
  echo 8888b.   dP.Yb  88b 88 888888 
  echo  8I  Yb dP   Yb 88Yb88 88__   
  echo  8I  dY Yb   dP 88 Y88 88--   
  echo 8888Y.   YbodP  88  Y8 888888                                
  echo.
  echo.
  ping 8.8.8.8 -n 2 > nul

:menu
  color 0A

  echo Windows Optimizer 1.0 ($) GITHUB/NARCOTIC
  echo ------------------------------------------------------------------------------------

  ping 8.8.8.8 -n 2 > nul

  echo 1. Optimize and Defragment All Connected Storage Drives
  echo 2. Scan and Fix File System Errors
  echo 3. Scan and Fix File System Errors Deeply
  echo 4. Do All
  echo 5. Exit
  echo.
  set /p select= Select: 
  
  goto %select%
