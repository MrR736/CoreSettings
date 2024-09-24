@echo off
cd /d %~dp0
set /p CP=<CorePath
start call "%cp%\CoreControls\LockHunter\install.bat"
