@echo off
cd /d %~dp0
7za.exe x %cd%\SymlinkCreator.7z -o"%cd%\SymlinkCreator"
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator" /f /V "Icon" /D "\"%CD%\SymlinkCreator\Icon.ico"
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul

@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator" /f /V "Icon" /D "\"%CD%\SymlinkCreator\Icon.ico"
@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul

@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator" /f /V "Icon" /D "\"%CD%\SymlinkCreator\Icon.ico"
@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul
exit