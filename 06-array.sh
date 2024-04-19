#!/bin/bash

# declaring array
MOVIES=("RRR" "DjTillu" "Devara") # list of values

# list always starts with 0.
# size of above array 3
# indexes are 0,1,2 index = size-1

echo "First Movie is :${MOVIES[0]}"
echo "Second Movie is :${MOVIES[1]}"
echo "Third Movie is :${MOVIES[2]}"