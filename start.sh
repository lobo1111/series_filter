#!/bin/bash

mount -t cifs -o username=$SMB_USER,password=$SMB_PWD $SMB_PATH /mnt/storage

bash