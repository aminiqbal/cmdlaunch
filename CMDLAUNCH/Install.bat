@echo off

set "path=%~dp0"
set path=%path:\=\\%

echo Windows Registry Editor Version 5.00^

^

[HKEY_CLASSES_ROOT\Directory\Background\shell\CmdLaunch]^

"Icon"="\"%path%\\CmdLaunch.exe\""^

^

[HKEY_CLASSES_ROOT\Directory\Background\shell\CmdLaunch\command]^

@="\"%path%\\CmdLaunch.exe\" \"%%V\"" > file.reg

%WINDIR%\system32\reg.exe import file.reg

del /f file.reg

echo.
echo.
echo.
echo.
echo ---- INSTALLATION COMPLETE ----
echo.
echo.
echo.
echo.

pause
