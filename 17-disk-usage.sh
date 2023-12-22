#!/bin/bash
DISK_USAGE=$(df -hT | grep -vE 'tmp/File')
DISK_TRESHOLD=1
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F'} | cut -d % -f1)
    partation=$(echo $line | awk '{print $1F}')
    if [ $usage -gt $DISK_TRESHOLD ]
    then
        message+="High disk usage on $partation: $usage"
    fi

done <<< $DISK_USAGE

echo "message: $message"