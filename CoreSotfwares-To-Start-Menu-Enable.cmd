@echo off
cd /d %~dp0
rd /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\CoreSotfwares"
.\7z.exe x %cd%\CoreSotfwares-Shortcuts.7z -o"%ProgramData%\Microsoft\Windows\Start Menu\Programs\CoreSotfwares"
exit