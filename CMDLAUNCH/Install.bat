@echo off

set "pth=%~dp0"
set pth=%pth:\=\\%

echo Windows Registry Editor Version 5.00^

^

[HKEY_CURRENT_USER\SOFTWARE\Classes\Directory\Background\shell\CmdLaunch]^

"Icon"="\"%pth%\\runtime\\bin\\cmdlaunch.ico\""^

^

[HKEY_CURRENT_USER\SOFTWARE\Classes\Directory\Background\shell\CmdLaunch\command]^

@="\"%pth%\\CmdLaunch.exe\" \"%%V\""^

>file.reg

%WINDIR%\system32\reg.exe import file.reg

del file.reg

start ie4uinit.exe -show

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
