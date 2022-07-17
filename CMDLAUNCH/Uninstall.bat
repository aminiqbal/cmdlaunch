@echo off

echo Windows Registry Editor Version 5.00^

^

[-HKEY_CURRENT_USER\SOFTWARE\Classes\Directory\Background\shell\CmdLaunch]^

>file.reg

%WINDIR%\system32\reg.exe import file.reg

del /f file.reg

start ie4uinit.exe -show

echo.
echo.
echo.
echo.
echo ---- UNINSTALLATION COMPLETE ----
echo.
echo.
echo.
echo.

pause
