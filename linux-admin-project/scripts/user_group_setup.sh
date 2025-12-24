#!/bin/bash

read -p "Enter group name: " GROUP
read -p "Enter username: " USER

if getent group $GROUP >/dev/null; then
    echo "Group already exists."
else
    groupadd $GROUP
    echo "Group created."
fi

if id $USER &>/dev/null; then
    echo "User already exists."
else
    useradd -m -G $GROUP $USER
    echo "Enter Password for the user"	
    passwd $USER
    echo "User created and added to group."
fi

