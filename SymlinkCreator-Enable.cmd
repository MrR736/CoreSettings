@echo off

%Core%\7z\7zr.exe x %Core%\CoreSettings\SymlinkCreator.7z -o%Core%\CoreSettings\SymlinkCreator
cd /d %~dp0
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator" /f /V "Icon" /D "\"%CD%\SymlinkCreator\Icon.ico\"
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul

@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator" /f /V "Icon" /D "\"%CD%\SymlinkCreator\Icon.ico\"
@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul

@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator" /VE /D "SymlinkCreator" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator" /f /V "Icon" /D "\"%CD%\SymlinkCreator\Icon.ico\"
@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\SymlinkCreator\command" /VE /D "Cmd.exe /c start  %CD%\SymlinkCreator\SymlinkCreator.exe" /F >Nul
exit
