@echo off
cd /d %~dp0
7za.exe x %cd%\SuperGodMode.7z -o"%cd%\SuperGodMode"
wget -O "%cd%\SuperGodMode\Super_God_Mode.ps1" https://raw.githubusercontent.com/ThioJoe/Windows-Super-God-Mode/main/Super_God_Mode.ps1
move "%cd%\SuperGodMode\sgm.bat" "%ProgramData%\PhoenixOS\Core"