# adb_cmd

adb_cmd simplify some frequently-used long cmd for Android auto debug and test.

## Recommanded usage

Append the local adb_cmd repo to your system environment variable path to make your work simplify.

## Simplify some frequently-used long cmd

### cap

Capture the current screen and save to a png file and show the file with system default app.

### pmlist <keywords>

List package installed with the given keywords.

D:\adb_cmd>pmlist assist
D:\adb_cmd>rem pmlist.bat
[06/01/2022 Wed 10:04:01.91] find device 0123456789ABCDEF
[06/01/2022 Wed 10:04:02.25] adb root and remount already done.
package:/product/overlay/GmsConfigOverlayAssistantGo.apk=com.google.android.overlay.gmsconfig.assistantgo
package:/product/priv-app/AssistantGo/AssistantGo.apk=com.google.android.apps.assistant

### bootuplog

Capture log from logcat if adb online while a system restaring.

### getlog

Get log from logcat when capture a failure.

### dumptop

Find the top activity.

### autoreboot

Stress test for a cycle reboot.

### f

Fastboot flash script.

### sign

Sign apk using signapk.jar 


## Some frequently-used function for auto script

### ensureRoot

Check root status for auto script.

### checkDevice

Check device adb port for auto script.

### envsetup

Set cmd environment for auto script.
