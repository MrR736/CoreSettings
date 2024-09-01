@echo off
7za.exe x %Core%\CoreSettings\CoreSotfwares-Shortcuts.7z -o%Core%\CoreSettings\CoreSotfwares-Shortcuts
cd "%ProgramData%\Microsoft\Windows\Start Menu\Programs"
mkdir CoreSotfwares
xcopy /s /y "%Core%\CoreSettings\CoreSotfwares-Shortcuts" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\CoreSotfwares"
rd /s /q "%Core%\CoreSettings\CoreSotfwares-Shortcuts"