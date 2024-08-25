@echo off
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /f /v "Debugger" /d "%Core%\CoreSotfwares\Sysinternals\Procmon.exe"
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /f /v "Debugger" /d "%Core%\CoreSotfwares\Sysinternals\Procmon.exe"
