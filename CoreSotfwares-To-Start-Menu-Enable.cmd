@echo off
cd /d %~dp0
mkdir CoreSotfwares-Shortcuts
setlocal

Call :UnZipFile "%Cd%\CoreSotfwares-Shortcuts" "%cd%\CoreSotfwares-Shortcuts.zip"
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

cd "%ProgramData%\Microsoft\Windows\Start Menu\Programs"
mkdir "CoreSotfwares"
cd /d %~dp0
xcopy /s /y "%Cd%\CoreSotfwares-Shortcuts" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\CoreSotfwares"
rd /s /q "%Cd%\CoreSotfwares-Shortcuts"
cls