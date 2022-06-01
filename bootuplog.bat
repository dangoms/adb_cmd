@echo off
adb reboot
adb wait-for-device &adb logcat -d -b all >d:\temp\%time::=.%.txt
echo done!