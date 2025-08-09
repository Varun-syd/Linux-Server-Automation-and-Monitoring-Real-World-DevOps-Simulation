#!/bin/bash

Backup_src="/etc"
Backup_Dest="/var/backups/files"
Date=$(date +%F )
Backup_log="/var/log/backup.log"

sudo mkdir -p "$Backup_Dest"

tar -czf "$Backup_Dest/backup-$Date.tar.gz" "$Backup_src" 2>> "$Backup_log"

if [[ $? -eq 0 ]];then
	echo "$(date)-Backup Successfull: $Backup_Dest/backup-$Date.tar.gz" >> "$Backup_log"
else
	echo "$(date) - Backup failed" >> "$Backup_log"
fi
