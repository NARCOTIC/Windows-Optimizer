@echo off
mode 84,25

goto permissions

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

:permissions
  net session >nul 2>&1
  if %errorLevel% == 0 (
    goto menu
  ) else (
    goto err
  )
  exit

:done
  echo.  
  echo oooooooooo.     .oooooo.   ooooo      ooo oooooooooooo 
  echo `888'   `Y8b   d8P'  `Y8b  `888b.     `8' `888'     `8 
  echo  888      888 888      888  8 `88b.    8   888         
  echo  888      888 888      888  8   `88b.  8   888oooo8    
  echo  888      888 888      888  8     `88b.8   888         
  echo  888     d88' `88b    d88'  8       `888   888       o 
  echo o888bood8P'    `Y8bood8P'  o8o        `8  o888ooooood8
  echo.
  echo.
  ping 8.8.8.8 -n 2 > nul
  goto menu

:err
  color 0C
  echo oooooooooooo ooooooooo.   ooooooooo.     .oooooo.   ooooooooo.   
  echo `888'     `8 `888   `Y88. `888   `Y88.  d8P'  `Y8b  `888   `Y88. 
  echo  888          888   .d88'  888   .d88' 888      888  888   .d88' 
  echo  888oooo8     888ooo88P'   888ooo88P'  888      888  888ooo88P'  
  echo  888          888`88b.     888`88b.    888      888  888`88b.    
  echo  888       o  888  `88b.   888  `88b.  `88b    d88'  888  `88b.  
  echo o888ooooood8 o888o  o888o o888o  o888o  `Y8bood8P'  o888o  o888o
  echo. 
  echo Right click on the .bat file and "Run as Administrator"
  ping 8.8.8.8 -n 10 > nul
  exit

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
