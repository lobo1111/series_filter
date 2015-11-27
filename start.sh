#!/bin/bash

if [ $SMB_ENABLE == "true" ]; then
    mount -t cifs -o username=$SMB_USER,password=$SMB_PWD $SMB_PATH /mnt/storage
fi

cd /opt/configManager
python main.py

while :
do
        flexget -c /opt/sort_series/config.yml execute
        sleep $SLEEP
done

