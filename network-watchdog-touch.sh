#!/bin/bash

# install this file in ~/bin/network-watchdog-touch.sh
# add this to cron:
# * * * * *	bin/network-watchdog-touch.sh

# to cancel remove the file /tmp/network-watchdog from the remote host

# put your remote hosts here:
hosts="scorch"

for h in $hosts; do
    echo touching $h ...

    timeout -s KILL 10 ssh root@$h touch /tmp/network-watchdog

    if [ $? -ne 0 ]; then
        echo Error connecting to: $h
    fi
done
