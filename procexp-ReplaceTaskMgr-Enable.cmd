@echo off
cd /d %~dp0
regedit /s procexp-ReplaceTaskMgr-Enable.reg
exit