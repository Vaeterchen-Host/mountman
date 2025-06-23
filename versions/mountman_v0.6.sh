#!/bin/bash
# Scriptname: mountman.sh
# Version: 0.6

SCRIPT_VERSION="0.6"

# Handle --version flag
if [[ "$1" == "--version" ]];then
   echo "mountman.sh Version ${SCRIPT_VERSION}"
   exit 0
fi

# Try to mount Kingston and run 'systemctl daemon-reload'.
if sudo mount -o uid=$(id -u),gid=$(id -g) /dev/disk/by-uuid/4682-F75A /media/Kingston; then
    sudo systemctl daemon-reload
    echo "Kingston Onyx succesfully mounted."
else
    echo "Error: Kingston Onyx could not be mounted (device not connected?)."
fi
