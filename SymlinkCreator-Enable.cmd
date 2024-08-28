@echo off

cd %core%\CoreSettings
mkdir SymlinkCreator
setlocal

Call :UnZipFile "%Core%\CoreSettings\SymlinkCreator" "%Core%\CoreSettings\SymlinkCreator.zip"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

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
