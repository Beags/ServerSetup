@echo off
clear
cd "C:\Users\%USERNAME%\Downloads\Remote"
lxrun /install /y
bash -c "chmod 770 ./remoteglobal.sh"
bash -c "./remoteglobal.sh"
del /F /Q "%USERPROFILE%\Start Menu\Programs\Startup\install2.bat"
pause