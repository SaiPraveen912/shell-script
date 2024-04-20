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

if [ $USERID -ne 0 ]
then
    echo "Please run with root user"
    exit 1
else
    echo "Running with root user"
fi


dnf install mysql -y  # exit status of this command $?
if [ $? -ne 0 ]
then
    echo "Installation of mysql...FAILURE"
    exit 1
else
    echo "Installation of mysql...SUCCESS"
fi


dnf install git -y  # exit status of this command $?
if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of git...SUCCESS"
fi

echo "Is this script proceeding?"

