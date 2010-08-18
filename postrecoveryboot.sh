#!/sbin/sh

# Restart with root hacked adbd
busybox kill $(busybox ps | busybox grep adbd)
echo msc_adb > /dev/usb_device_mode
sync
/sbin/adbd recovery &