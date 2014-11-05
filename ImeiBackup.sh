#!/sbin/sh

busybox mount -o remount,rw -t auto /data;

exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/data/ETP/errores.log 2>&1
# Everything below will go to the file 'errores.log'
touch /data/ETP/copiaseg.log
chmod 666 /data/ETP/copiaseg.log

ETP=/data/ETP/copiaseg.log
exec 2> /data/ETP/dummy.log
busybox mount -o remount,rw -t auto /storage/sdcard1

mkdir /storage/sdcard1/nvram
cp -aRf /data/nvram /storage/sdcard1
