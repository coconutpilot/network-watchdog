#!/bin/bash

# install this script as /usr/local/bin/network-watchdog.sh
# add this to cron:
# * * * * *	/usr/local/bin/network-watchdog.sh

# to cancel remove the file /tmp/network-watchdog

filename=$(find /tmp -type f -name network-watchdog -mmin +3)

if [ ! -z $filename ]; then
    /sbin/shutdown -r now network-watchdog stopped getting updates
fi
