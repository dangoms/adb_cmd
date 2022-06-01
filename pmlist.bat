rem pmlist.bat
@echo off
call checkDevice
if %errorlevel% neq 0 (
	exit /b 1
)

call ensureRoot
if %errorlevel% neq 0 (
	exit /b 1
)

adb shell "pm list package -f" | findstr "%1"
exit /b 0