#!/bin/bash

NO1=$1
NO2=$2

SUM=$(($NO1+$NO2))
SUB=$(($NO1-NO2))
MUL=$(($NO1*NO2))
DIV=$(($NO1/NO2))
MOD=$(($NO1%NO2))

echo "Sum of $NO1 and $NO2 is : ${SUM}"
echo "Sub of $NO1 and $NO2 is : ${SUB}"
echo "Mul of $NO1 and $NO2 is : ${MUL}"
echo "Div of $NO1 and $NO2 is : ${DIV}"
echo "Mod of $NO1 and $NO2 is : ${MOD}"