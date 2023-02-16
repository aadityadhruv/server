#!/bin/bash

#Needed variables
DATE=$(date +%d-%m-%Y)
DIR=$HOME/backups

export RESTIC_PASSWORD_FILE=$DIR/password

# Make logs directory
mkdir $DIR/logs -p
touch $DIR/logs/$DATE.txt

#Starting backup
echo "-------" $DATE BACKUP START "--------" &>> $DIR/logs/$DATE.txt

#Restic backup command
restic -r rclone:onedrive:galactic backup --verbose --files-from $DIR/includes --exclude-file $DIR/excludes &>> $DIR/logs/$DATE.txt
#Prune and keep only last 3
restic -r rclone:onedrive:galactic forget --keep-last 3 --prune &>> $DIR/logs/$DATE.txt
#End backup
echo "-------" $DATE BACKUP COMPLETE "--------" &>> $DIR/logs/$DATE.txt


