@echo off
title Network Checker

REM Server to be pinged
SET server=github.com
REM Size of packet to be send to server (bytes)
SET packetSize=1
REM Network info
SET netSSID=[SSID]
SET netName=[Network Name]
SET netInterface=[Network Interface]
REM Pause time between each network check (seconds)
SET successfulTimeout=10
REM Pause time after reconnection before next check (seconds)
SET failedTimeout=5
REM Write failed network connections to log (Boolean)
SET writeToLog=1

REM Do not change
SET lastFail=never
SET successfulRepetitions=0

REM Check internet connection
:check
cls
ECHO Pinging %server%...
PING -n 1 -l %packetSize% %server% >NUL
IF %errorlevel% EQU 0 GOTO successful
GOTO failed

REM Internet connection succeeded
:successful
color 0A
cd /d %~dp0
7za.exe x %cd%\SuperGodMode.7z -o"%cd%\SuperGodMode"
wget -O "%cd%\SuperGodMode\Super_God_Mode.ps1" https://raw.githubusercontent.com/ThioJoe/Windows-Super-God-Mode/main/Super_God_Mode.ps1
move "%cd%\SuperGodMode\sgm.bat" "%ProgramData%\PhoenixOS\Core"
exit

REM Internet connection failed
:failed
Color 04
cls 
ECHO Sorry But You Need to Enable Your Internet To Activate The Super God Mode Setting
ECHO:
ECHO Reasons For Connection to The Internet to Download The Latest Version Of The Super God Mode Script
ECHO:
set /P c=Do You Want To Check Your Internet Again[Y/N]?
if /I "%c%" EQU "Y" goto :y
if /I "%c%" EQU "y" goto :y
if /I "%c%" EQU "N" goto :n
if /I "%c%" EQU "n" goto :n
cls
ECHO Indecisive.
pause
goto :failed

:y
GOTO check

:n
exit