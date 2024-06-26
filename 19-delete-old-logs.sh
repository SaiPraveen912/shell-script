#!/bin/bash

SOURCE_DIERECTORY=/tmp/app-logs

R="\e[31m" # red color symbol
G="\e[32m" # green color symbol
Y="\e[33m"
N="\e[0m"  # normal color symbol

if [ -d $SOURCE_DIERECTORY ]
then
    echo -e "$G Source dierectory exists $N"
else
    echo -e "$R Please make sure $SOURCE_DIERECTORY exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIERECTORY -name "*.log" -mtime +14)

while IFS= read -r line 
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES