@echo off
cd /d %~dp0
reg.exe delete "HKEY_CLASSES_ROOT\directory\shell\SymlinkCreator" /f
reg.exe delete "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator" /f
reg.exe delete "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator" /f
rd /s /q ".\SymlinkCreator"
exit