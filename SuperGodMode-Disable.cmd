@echo off
cd /d %~dp0
del /q "%ProgramData%\PhoenixOS\Core\sgm.bat"
rd /s /q "%cd%\SuperGodMode"