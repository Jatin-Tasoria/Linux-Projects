#!/bin/bash

read -p "Enter service to allow through firewall (e.g. ssh): " SERVICE

systemctl start firewalld
systemctl enable firewalld

firewall-cmd --permanent --add-service=$SERVICE
firewall-cmd --reload

firewall-cmd --list-all

