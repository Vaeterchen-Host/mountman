#!/bin/bash
# Scriptname: umountman.sh
# Version: 0.6

SCRIPT_VERSION="0.6"

# Handle --version flag
if [[ "$1" == "--version" ]];then
    echo "umountman.sh Version ${SCRIPT_VERSION}"
    exit 0
fi

DEST="/run/media/$USER/Kingston"

# Try to unmount Kingston
if sudo umount $DEST; then
    echo "Kingston successfully unmounted."
else
    echo "Error: Kingston could not be unmounted."
fi
