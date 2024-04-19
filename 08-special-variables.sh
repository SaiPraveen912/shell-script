#!/bin/bash

# to print every variables given to script externally -> $@
echo "All variables: $@"

# number of variables passed in number -> $#
echo "No of variables passed: $#"

# to know the script name -> $0
echo "Scrpt name: $0"

# to know the present working dierectory -> $PWD
echo "Current working dierectory: $PWD"

# to get the home dierectory of a user to know who is running the script -> $HOME
echo "Home dierectory of current user: $HOME"

# to know which user is running
echo "Which user is running this script: $USER"
