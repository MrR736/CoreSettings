@echo off
%Core%\7z\7zr.exe x %Core%\CoreSettings\Sudo.7z -o%Core%\CoreSettings\Sudo
cd "%ProgramData%\Microsoft\Windows\Start Menu\Programs"
mkdir Sudo
move "%Core%\CoreSettings\Sudo\*.lnk" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Sudo"