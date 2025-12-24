#!/bin/bash

read -p "Enter service name (e.g. sshd): " SERVICE

systemctl status $SERVICE --no-pager

read -p "Do you want to start & enable this service? (y/n): " CHOICE

if [[ $CHOICE == "y" ]]; then
    systemctl start $SERVICE
    systemctl enable $SERVICE
    echo "Service started and enabled."
else
    echo "No changes made."
fi

