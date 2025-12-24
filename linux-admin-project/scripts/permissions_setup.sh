#!/bin/bash

read -p "Enter directory path: " DIR
read -p "Enter owner (user): " OWNER
read -p "Enter group: " GROUP
read -p "Enter permissions (e.g. 750): " PERM

mkdir -p $DIR

chown $OWNER:$GROUP $DIR
chmod $PERM $DIR

ls -ld $DIR

