#!/bin/bash

echo "Block devices:"
lsblk

echo ""
read -p "Press Enter to view mounted filesystems..."
mount | column -t

echo ""
read -p "Press Enter to view LVM information..."
pvs
vgs
lvs
