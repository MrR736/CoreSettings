@echo off

cd %core%\CoreSettings
mkdir SuperGodMode
cd %Core%\CoreSettings\SuperGodMode
wget https://raw.githubusercontent.com/ThioJoe/Windows-Super-God-Mode/main/Super_God_Mode.ps1
setlocal

Call :UnZipFile "%Core%\CoreSettings\SuperGodMode" "%Core%\CoreSettings\SuperGodMode.zip"
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

copy "%Core%\CoreSettings\SuperGodMode\sgm.bat" "%Core%"
del /s /q "%Core%\CoreSettings\SuperGodMode\sgm.bat"