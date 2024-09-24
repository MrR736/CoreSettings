@echo off
cd /d %~dp0
set /p CP=<CorePath
del /q "%cp%\sgm.bat"
rd /s /q ".\SuperGodMode"