rem ensureRoot.bat
@echo off
rem check available device
rem success : 0
rem fail: 1

call envsetup.bat
adb root 2>nul
adb remount | findstr /r "succeeded$"
if %errorlevel% equ 0 (
	echo [%date% %time%] adb root and remount success!
    exit /b 0
 ) else (
	echo [%date% %time%] adb root and remount already done.
	exit /b 0
 )
exit /b 0