# adb_cmd

adb_cmd simplify some frequently-used long cmd for Android auto debug and test.

## Recommanded usage

Add the adb_cmd path to your cmd path.

## Simplify some frequently-used long cmd

### cap

capture a screen shot connected to adb port.

C:\Users\T440P>cap
C:\Users\T440P>rem cap.bat
adbd is already running as root
Skipping /system for remount
Skipping /vendor for remount
Skipping /product for remount
No partitions to remount


### pmlist

list package with the given keyword.

D:\adb_cmd>pmlist assist
D:\adb_cmd>rem pmlist.bat
[06/01/2022 Wed 10:04:01.91] find device 0123456789ABCDEF
adbd is already running as root
Skipping /system for remount
Skipping /vendor for remount
Skipping /product for remount
No partitions to remount
[06/01/2022 Wed 10:04:02.25] adb root and remount already done.
package:/product/overlay/GmsConfigOverlayAssistantGo.apk=com.google.android.overlay.gmsconfig.assistantgo
package:/product/priv-app/AssistantGo/AssistantGo.apk=com.google.android.apps.assistant

### bootuplog

get logcat if adb online while a system restaring.

### getlog

get logcat log when capture a failure.

### dumptop

check and find the top activity.

### autoreboot

stress test for reboot device.

### f

fastboot flash script.

### sign

sign apk using signapk.jar 


## Some frequently-used element for bat script

### ensureRoot

check root status for auto script.

### checkDevice

check device adb port for auto script.

### envsetup

set cmd env for auto script.
