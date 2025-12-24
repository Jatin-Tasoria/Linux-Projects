#!\bin\bash

LOGFILE=" /var/log/System_Health.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S	")


echo "=======================================" >>$LOGFILE
echo "System Health CHeck - $DATE" >> $LOGFILE
echo "=======================================" >>$LOGFILE

#Disk Usage
echo -e "\nDisk Usage: " >>$LOGFILE
df -h >>$LOGFILE

#Memory Usage
echo -e "\nMemory Usage: " >>$LOGFILE
free -h >>$LOGFILE

# SSH Service Status
echo -e "\nSSH Service Status:" >> $LOGFILE
if systemctl is-active sshd &> /dev/null; then
    echo "SSH service is RUNNING" >> $LOGFILE
else
    echo "SSH service is NOT RUNNING" >> $LOGFILE
fi

echo -e "\nHealth check completed.\n" >> $LOGFILE
