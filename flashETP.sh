#!/sbin/sh

mkdir /cache/recovery/
touch /cache/recovery/command
chmod 770 /cache/recovery/comand

echo 'boot-recovery ' > /cache/recovery/command
echo '--update_package=/storage/sdcard1/ETP_V1.5_Stock_EditionIB115.zip' >> /cache/recovery/command

reboot recovery
