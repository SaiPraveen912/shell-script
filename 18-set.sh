#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ] # If 0 then super/root user otherwise normal user
then    
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi    

dnf install mysqlfffgc -y
dnf install git -y

echo "is script proceeding?"