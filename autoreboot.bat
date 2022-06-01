@echo off &color 1f &cls
SETLOCAL ENABLEDELAYEDEXPANSION

set total=0

:main
echo Reboot Cycle testing for %total% times.
echo Waiting for adb port online...
adb wait-for-device
echo Adb port already online
call checkDevice
call sleep 2
echo rebooting...
adb reboot
set /a total=%total%+1
goto main

:exit
exit /b 0
