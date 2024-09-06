@echo off
cd "%ProgramData%\Microsoft\Windows\Start Menu\Programs"
mkdir Sudo
cd /d %~dp0
7za.exe x Sudo.7z -o"%cd%\Sudo"
move "%cd%\Sudo\*.lnk" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Sudo"