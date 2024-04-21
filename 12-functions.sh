#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run this script with super user"
    exit 1
else
    echo "You are super user"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then 
    echo "Installation of MySQL...FAILURE"
else
    echo "Installation of MySQL...SUCCESS"
fi 


dnf install git -y
if [ $? -ne 0 ]
then 
    echo "Installation of Git...FAILURE"
else
    echo "Installation of Git...SUCCESS"
fi 

echo "Is script proceeding?"