#!/bin/bash

# 31 --> red color
# 32 --> green color
# 33 --> yellow color

# syntax to enable color
# \e[31m --> red color
# \e[32m --> green color

# echo -e "\e[31mHello World" -> -e for enabling 


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S) # 2024-04-21-07-00-14 -> Which time this is getting executed
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) # $0 -> to get the script name
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m" # red color symbol
G="\e[32m" # green color symbol
N="\e[om"  # normal color symbol

echo "Script started executing at: $TIMESTAMP"

# VALIDATE(){
#     # $? -> $1 and "Installing MySQL" -> $2
#     echo "Exit Status: $1"
#     echo "What are you doing: $2"
# }

VALIDATE(){
    if [ $1 -ne 0 ] # $1 have exit status of cmd : dnf install mysql -y
    then
        echo -e "$2...$R FAILURE $N" # -e for enabling colors $R for red $N for normal
        exit 1 # if FAILURE then only exit ortherwise no need to exit
    else
        echo -e "$2...$G SUCCESS $N"
    fi    
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with super user"
    exit 1 # manually exit if error comes
else
    echo "You are super user"
fi



dnf install mysql -y &>>$LOGFILE  # redierection to LOGFILE & is for both success and error messages >> is to append all errors
# $? -> $1 and "Installing MySQL" -> $2
VALIDATE $? "Installing MySQL" # Passing 2 argument to function
 


dnf install git -y &>>$LOGFILE
# $? -> $1 and "Installing MySQL" -> $2
VALIDATE $? "Installing Git" # Passing 2 argument to function
