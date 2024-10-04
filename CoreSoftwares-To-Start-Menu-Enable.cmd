@echo off
cd /d %~dp0
rd /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\CoreSoftwares"
.\7z.exe x %cd%\CoreSoftwares-Shortcuts.7z -o"%ProgramData%\Microsoft\Windows\Start Menu\Programs\CoreSoftwares"
exit