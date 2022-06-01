rem getlog.bat
@echo off
call checkDevice
if %errorlevel% neq 0 (
	exit /b 1
)

call ensureRoot
if %errorlevel% neq 0 (
	exit /b 1
)

adb shell "logcat -c"
echo Clear Log Buffer Done! start do your test and press any key to get log. &pause
adb shell "logcat -b all -d" >%temp%/temp.log
start %temp%/temp.log
