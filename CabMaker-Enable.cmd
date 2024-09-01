@echo off

7za.exe x %Core%\CoreSettings\CabMaker.7z -o%Core%\CoreSettings\CabMaker
cd /d %~dp0
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\CabMaker" /VE /D "CabMaker" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\CabMaker" /f /V "Icon" /D "\"%CD%\CabMaker\Icon.ico\"
@Reg Add "HKEY_CLASSES_ROOT\directory\Background\shell\CabMaker\command" /VE /D "Cmd.exe /c start  %CD%\CabMaker\CabMaker.exe" /F >Nul

@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\CabMaker" /VE /D "CabMaker" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\CabMaker" /f /V "Icon" /D "\"%CD%\CabMaker\Icon.ico\"
@Reg Add "HKEY_CLASSES_ROOT\Directory\shell\CabMaker\command" /VE /D "Cmd.exe /c start  %CD%\CabMaker\CabMaker.exe" /F >Nul

@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\CabMaker" /VE /D "CabMaker" /F >Nul
@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\CabMaker" /f /V "Icon" /D "\"%CD%\CabMaker\Icon.ico\"
@Reg Add "HKEY_CLASSES_ROOT\Folder\shell\CabMaker\command" /VE /D "Cmd.exe /c start  %CD%\CabMaker\CabMaker.exe" /F >Nul
exit
