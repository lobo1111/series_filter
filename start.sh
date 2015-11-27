#!/bin/bash

if [ $SMB_SOURCE_ENABLE == "true" ]; then
    mount -t cifs -o username=$SMB_SOURCE_USER,password=$SMB_SOURCE_PWD $SMB_SOURCE_PATH /opt/complete
fi

if [ $SMB_TARGET_ENABLE == "true" ]; then
    mount -t cifs -o username=$SMB_TARGET_USER,password=$SMB_TARGET_PWD $SMB_TARGET_PATH /mnt/storage
fi

cd /opt/configManager
python main.py

while :
do
        flexget -c /opt/sort_series/config.yml execute
        sleep $SLEEP
done

