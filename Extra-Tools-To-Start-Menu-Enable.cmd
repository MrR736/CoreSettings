@echo off
rd /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Extra Tools"
mkdir "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Extra Tools"
xcopy "%ProgramData%\PhoenixOS\Extra Tools\Extra Tools" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Extra Tools"