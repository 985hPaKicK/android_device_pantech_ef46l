#!/system/bin/sh
PATH=/sbin:/system/sbin:/system/bin:/system/xbin

while busybox [ 1 ]
do
	busybox chmod 777 /data/cam_socket0
	busybox chmod 777 /data/cam_socket1
done
