#!/bin/bash
DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_TRESHOLD=1
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_TRESHOLD ]
    then
        message+="High disk usage on $partition: $usage<br>"
    fi

done <<< $DISK_USAGE

echo -e "message: $message"

echo "$message" | mail -s "Hi disk usage" kumargomda108@gmail.com

sh mail.sh "DevOps Team" "High Disk usage" "$message" "kumargomda108@gmail.com" "ALERT High disk usage"