#!/bin/ash

while :
do
        flexget -c /opt/flexget/config.yml execute
        sleep $SLEEP
done
