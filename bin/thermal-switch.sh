#!/system/bin/sh

if [ -f /sys/devices/soc0/revision ]; then
    revision=`cat /sys/devices/soc0/revision`
else
    revision=`cat /sys/devices/system/soc/soc0/revision`
fi

if [ $revision == "1.0" ] || [ $revision == "2.0" ]; then
    start thermal-enginert
else
    start thermal-engine
fi
