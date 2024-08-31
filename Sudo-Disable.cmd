@echo off
cd "%Core%\CoreSettings\Sudo"
TASKKILL /F /IM advancedrun.exe /T
TASKKILL /F /IM NSudoLG.exe /T
TASKKILL /F /IM PowerRun.exe /T
rd /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Sudo"
rd /s /q "%Core%\CoreSettings\Sudo"