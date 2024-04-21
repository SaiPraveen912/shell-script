#!/bin/bash

# USERID=$(id -u)

# if [ $USERID -ne 0 ]
# then
#     echo "Please run this script with root access."
#     exit 1 # manually exit if error comes.
# else
#     echo "You are super user."
# fi

# dnf install mysql -y

# if [ $? -ne 0 ]
# then
#     echo "Installation of mysql...FAILURE"
#     exit 1
# else
#     echo "Installation of mysql...SUCCESS"
# fi

# dnf install git -y

# if [ $? -ne 0 ]
# then
#     echo "Installation of git...FAILURE"
#     exit 1
# else
#     echo "Installation of git...SUCCESS"
# fi

# echo "is script proceeding?"


USERID=$(id -u)

if [ $USERID -ne 0 ] # If 0 then super/root user otherwise normal user
then    
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi    

dnf install mysql -y

if [ $? -ne 0 ] # $?-> is the exit status of this command dnf install mysql -y
then
    echo "Installation of MySQL...FAILURE"
    exit 1
else
    echo "Installation of MySQL...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of Git...FAILURE"
    exit 1
else
    echo "Installation of Git...SUCCESS"
fi

echo "is script proceeding?"

