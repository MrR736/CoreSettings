@echo off
reg.exe delete "HKEY_CLASSES_ROOT\directory\shell\CabMaker" /f
reg.exe delete "HKEY_CLASSES_ROOT\directory\Background\shell\CabMaker" /f
reg.exe delete "HKEY_CLASSES_ROOT\Folder\shell\CabMaker" /f
rd /s /q "%Core%\CoreSettings\CabMaker"
exit
