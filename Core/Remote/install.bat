@echo off
clear
echo WARNING THIS ONLY WORKS ON WINDOWS 10
pause
copy C:\Users\%USERNAME%\Downloads\Remote\install2.bat "%USERPROFILE%\Start Menu\Programs\Startup" 
echo Attempting to enable ubuntu subsystem for linux. 
PowerShell.exe -Command "& {Start-Process PowerShell.exe -ArgumentList '-ExecutionPolicy Bypass -File ""C:\Users\%USERNAME%\Downloads\Remote\Windows\Enable-UbuntuForWindows.ps1""' -Verb RunAs}"
pause