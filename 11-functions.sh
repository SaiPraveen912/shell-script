#!/bin/bash

USERID=$(id -u)

VALIDATE(){ # VALIDATE is name of the function
    echo "Exit status: $1"
    echo "What are you doing: $2"
}

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
    exit 1
else
    echo "Running with root user"
fi


dnf install mysql -y  # exit status of this command $?

# Calling the function by passing two arguments
VALIDATE $? "Installing MySQL" # Passing 2 arguments to function
# $? -> $1 and "Installing MySQL -> $2"



dnf install git -y  # exit status of this command $?

# Calling the function by passing two arguments
VALIDATE $? "Installing Git" # Passing 2 arguments to function
# $? -> $1 and "Installing Git" -> $2"

echo "Is this script proceeding?"