#!/sbin/sh

# Restart with root hacked adbd
mount -orw,remount /
busybox kill $(busybox ps | busybox grep adbd)
echo msc_adb > /dev/usb_device_mode
touch /tmp/recovery.log
sync
/sbin/adbd recovery &

