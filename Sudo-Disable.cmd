@echo off
cd /d %~dp0
TASKKILL /F /IM advancedrun.exe /T
TASKKILL /F /IM NSudoLG.exe /T
TASKKILL /F /IM PowerRun.exe /T
TASKKILL /F /IM RunAsTI.exe /T
rd /s /q "%cd%\Sudo"
rd /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Sudo"