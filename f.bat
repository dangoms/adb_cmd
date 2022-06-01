rem f.bat
@echo off
@rem goto usage

set versionPath=\\192.168.20.231\zhangyadong\android\out\target\product\msm8953_64

call envsetup.bat
if %errorlevel% neq 0 (
	exit /b 1
)

if "%1" equ "" goto usage
if "%1" equ "/?" goto usage
if "%1" equ "/h" goto usage
if "%1" equ "--help" goto usage

set dest=%1
 
:alise_process
if "%dest%" equ "s" set dest=system
if "%dest%" equ "b" set dest=boot
if %dest% equ lk set dest=appsboot

call checkDevice
if %errorlevel% neq 0 (
	exit /b 1
)

call ensureRoot
if %errorlevel% neq 0 (
	exit /b 1
)

:copy_build
echo [%date% %time%] begin copying %dest%.img
copy %copy_pars% %versionPath%\%dest%.img f:\temp\
if %errorlevel% neq 0 (
	echo copy image fail. please check!
	exit /b 0
 )
echo [%date% %time%] copy %dest%.img sucess!

:flash image
echo [%date% %time%] reboot to flash %dest%
adb reboot bootloader
call sleep 5
fastboot devices
echo [%date% %time%] flashing %dest%
fastboot flash %dest% f:\temp\%dest%.img
fastboot reboot
echo [%date% %time%] flashing finished %dest%
goto exit

:usage
echo Usage:
echo %0 system[s] boot[b] appsboot[lk]
echo %0 s:flash system image
echo %0 b:flash boot.image
echo %0 lk:flash bootloader.img
echo Fastboot flash tools for fast debug. It is totally auto ,so haha.
echo By justin@fibocom.com
echo 2018-04-19
goto exit

:exit
exit /b 0