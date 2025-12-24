#!/bin/bash

read -p "Enter service name (e.g. sshd): " SERVICE
read -p "How many log lines to view?: " LINES

LOGFILE="/var/log/${SERVICE}_logs.log"

journalctl -u $SERVICE -n $LINES > $LOGFILE

echo "Logs saved to $LOGFILE"

