#!/bin/bash
export $(grep -v '^#' ../.env | xargs)

if mountpoint -q ${storagePathNew}; then
    df -h --output=source,size,used,avail,pcent ${storagePathNew} | tail -n 1 | awk '{printf "Mounted | Total: %s | Used: %s | Free: %s | Usage: %s\n", $2,$3,$4,$5}'
else
    echo "Mountpint is not mounted!"
fi

