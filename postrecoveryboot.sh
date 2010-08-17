#!/sbin/sh

# Restart with root hacked adbd
busybox kill $(busybox ps | busybox grep adbd)
/sbin/adbd &