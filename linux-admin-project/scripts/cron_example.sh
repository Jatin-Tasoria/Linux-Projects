#!/bin/bash

read -p "Enter log file path: " LOGFILE

echo "System Report - $(date)" >> $LOGFILE
echo "------------------------" >> $LOGFILE
uptime >> $LOGFILE
df -h >> $LOGFILE
echo "" >> $LOGFILE

