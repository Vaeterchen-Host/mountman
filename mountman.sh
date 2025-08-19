#!/bin/bash

set -euo pipefail

SCRIPT_VERSION="0.7"
DEST="/run/media/$USER/Kingston"
UUID="4682-F75A"

# Handle --version flag
if [[ "${1:-}" == "--version" ]];then
   echo "mountman.sh Version ${SCRIPT_VERSION}"
   exit 0
fi

# Prepare sudo
sudo -v

# Create mountpoint
sudo mkdir -p ${DEST}
echo "Mountpoint succesfully created: $DEST"

# Try to mount Kingston and run 'systemctl daemon-reload'.
if sudo mount -o uid=$(id -u),gid=$(id -g) /dev/disk/by-uuid/${UUID} $DEST; then
    sudo systemctl daemon-reload
    echo "Kingston Onyx succesfully mounted at ${DEST}."
else
    echo "Error: Kingston Onyx could not be mounted (device not connected?)." >&2
    exit 1
fi

exit 0
