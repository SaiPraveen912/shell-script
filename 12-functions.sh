#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    # $? -> $1 and "Installing MySQL" -> $2
    echo "Exit Status: $1"
    echo "What are you doing: $2"
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with super user"
    exit 1 # manually exit if error comes
else
    echo "You are super user"
fi



dnf install mysql -y
# $? -> $1 and "Installing MySQL" -> $2
VALIDATE $? "Installing MySQL" # Passing 2 argument to function
 


dnf install git -y
# $? -> $1 and "Installing MySQL" -> $2
VALIDATE $? "Installing Git" # Passing 2 argument to function

