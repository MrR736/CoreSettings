@echo off
cd "%ProgramData%\Microsoft\Windows\Start Menu\Programs"
mkdir "Extra Tools"
xcopy "%root%\Extra Tools\Extra Tools" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Extra Tools"