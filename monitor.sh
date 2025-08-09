#!/bin/bash

LOG_FILE="/var/log/monitor.log"

check() {
	systemctl is-active --quiet "$1"
	if [ $? -ne 0 ];then
		echo "$(date) - Alert: $1 is down" >> "$LOG_FILE"
	fi
}

#Disk Check

df -h | awk '$5+0 > 80 {print $(NF) "usage: " $5}' | while read output;do
echo "$(date) - Alert: High Disk Usage - $output" >> "$LOG_FILE"
done

#services

check_service httpd
