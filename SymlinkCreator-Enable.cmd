@echo off
cd /d %~dp0
reg.exe delete "HKEY_CLASSES_ROOT\directory\shell\SymlinkCreator" /f >Nul
reg.exe delete "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator" /f >Nul
reg.exe delete "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator" /f >Nul
rd /s /q ".\SymlinkCreator"
.\7z.exe x %cd%\SymlinkCreator.7z -o"%cd%\SymlinkCreator" >Nul
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator" /f /V "Icon" /D "%CD%\SymlinkCreator\Icon.ico" >Nul
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul

@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator" /f /V "Icon" /D "%CD%\SymlinkCreator\Icon.ico" >Nul
@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul

@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator" /f /V "Icon" /D "%CD%\SymlinkCreator\Icon.ico" >Nul
@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul
exit