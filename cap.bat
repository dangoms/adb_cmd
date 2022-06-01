rem cap.bat
@echo off
adb root &adb remount 1>null
set name=%date:-=_%%time::=_%.png
adb shell "screencap /sdcard/tmp.png"
adb pull /sdcard/tmp.png %temp%/tmp.png 1>null
start %temp%/tmp.png
exit /b 0
