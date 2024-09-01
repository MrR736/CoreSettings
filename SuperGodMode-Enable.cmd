@echo off

7za.exe x %Core%\CoreSettings\SuperGodMode.7z -o%Core%\CoreSettings\SuperGodMode
cd %Core%\CoreSettings\SuperGodMode
wget https://raw.githubusercontent.com/ThioJoe/Windows-Super-God-Mode/main/Super_God_Mode.ps1

move "%Core%\CoreSettings\SuperGodMode\sgm.bat" "%Core%"