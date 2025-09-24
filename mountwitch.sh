#!/bin/bash

set -euo pipefail

SCRIPT_VERSION="0.71"

# Handle --version flag

if [[ "${1:-}" == "--version" ]];then
   echo "mountman.sh Version ${SCRIPT_VERSION}"
   exit 0
fi

# Ask for device to be mounted.

lsblk -o Model,UUID,TYPE,PATH,SIZE
read -p "Type in 'UUID' to mount the device: " UUID

DEST="/run/media/$USER/$UUID"


# Prepare sudo

sudo -v

# Create mountpoint

sudo mkdir -p ${DEST}

echo "Mountpoint succesfully created: $DEST"

# Try to mount Kingston and run 'systemctl daemon-reload'.

if sudo mount -o uid=$(id -u),gid=$(id -g) /dev/disk/by-uuid/${UUID} $DEST; then
    sudo systemctl daemon-reload
    echo "Device succesfully mounted at ${DEST}."
else
    echo "Error: Device could not be mounted (device not connected?)." >&2
    exit 1
fi

exit 0
