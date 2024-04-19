#!/bin/bash

echo "Please enter username::"

# -s is used to hide what we enter
read -s USERNAME #here USERNAME is variable

echo "Please enter password::"

# -s is used to hide what we enter
read -s PASSWORD #here PASSWORD is variable

echo "Username is: $USERNAME, Password is : $PASSWORD"