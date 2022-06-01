rem dumptop.bat
@echo off
call checkDevice
if %errorlevel% neq 0 (
	exit /b 1
)

call ensureRoot
if %errorlevel% neq 0 (
	exit /b 1
)

adb shell "dumpsys activity | grep Focuse"
exit /b 0