#!/vendor/bin/sh

# This script is used to record the event of audit content.
#
# File style is like this:
#
# 2017-11-28 20:12:35.611|IMEI|005|1|com.test.hello
# 2017-11-28 20:20:35.611|IMEI|004|1|6.7.0

#mkdir /dev/log 0644 system system
#mkdir /persist/eventlog_record 0771 system system
system_mode=`getprop ro.cell.name`
echo  "current system is $system_mode"
if [ "$system_mode" = "home" ]; then
    echo  "in home system, do nothing"
else
    eventlog_file="/persist/eventlog_record/eventlog_record.log"
    if [ ! -f "eventlog_file" ]; then
        touch "$eventlog_file"
        chmod 664 $eventlog_file
        chown system.system $eventlog_file
    fi
    ln -s $eventlog_file /dev/log/mdm
fi