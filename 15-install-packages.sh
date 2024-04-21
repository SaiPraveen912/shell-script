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
    echo "package to install: $i"
done
 

