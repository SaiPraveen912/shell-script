#!/bin/bash

#declaring of variable
PERSON1=Sachin #no space between = and value 
PERSON2=Rahul

#refferring variable
echo "$PERSON1:: Hello $PERSON2, How are you?"
echo "${PERSON2}:: Hello $PERSON1, I am fine. How are you?"
echo "$PERSON1:: I am fine, how is your work?"
echo "$PERSON2:: not bad, I am thinking to upgrade to DevOps"
echo "$PERSON1:: that' fine, thank you take care."