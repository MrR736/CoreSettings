@echo off
cd /d %~dp0
7za.exe x %cd%\CoreSotfwares-Shortcuts.7z -o"%ProgramData%\Microsoft\Windows\Start Menu\Programs\CoreSotfwares"
exit