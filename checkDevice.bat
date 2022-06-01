rem checkDevice.bat
@echo off
rem check available device
rem success : 0
rem fail: 1

call envsetup.bat
adb devices | findstr /r "device$" 1>nul

if %errorlevel% neq 0 (
	echo [%date% %time%] can not find available device!
    exit /b 1
 )
for /f "skip=1 tokens=1" %%i in ('adb devices') do set dev=%%i
echo [%date% %time%] find device %dev%
exit /b 0