rem sleep.bat
@echo off
rem sleep module 
rem %1 second.
rem return 0

echo [%date% %time%] sleeping %1 seconds...
choice /t %1 /d y /n > nul
exit /b 0