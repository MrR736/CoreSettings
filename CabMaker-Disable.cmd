@echo off
cd /d %~dp0
reg.exe delete "HKEY_CLASSES_ROOT\directory\shell\CabMaker" /f
reg.exe delete "HKEY_CLASSES_ROOT\directory\Background\shell\CabMaker" /f
reg.exe delete "HKEY_CLASSES_ROOT\Folder\shell\CabMaker" /f
rd /s /q ".\CabMaker"
exit
