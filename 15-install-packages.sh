#!/bin/bash

# try to install these packages 
# mysql
# gcc
# chrony
# fail2ban
# postgis2_94

# steps
# log redierection
# colors are mandatory

# 1. user have root access or not
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S) # 2024-04-21-07-00-14 -> Which time this is getting executed
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) # $0 -> to get the script name
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m" # red color symbol
G="\e[32m" # green color symbol
Y="\e[33m"
N="\e[0m"  # normal color symbol


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

# send packages to install as parameters
# sudo sh install-packages mysql gcc docker
# special variable to get all params --> $@

# echo "All packages: $@" # ->> All packages: mysql git gcc fail2ban
for i in $@
do 
    echo "package to install: $i" # $i contains these values : mysql git gcc fail2ban
    dnf list installed $i &>>$LOGFILE # checks if these are installed : mysql git gcc fail2ban and redierects to $LOGFILE
    if [ $? -eq 0 ] # if exit status is 0 if installed
    then
        echo -e "$i already installed...$Y SKIPPING $N"
    else
        echo "$i not installed...Need to install"
    fi
done
 

