#!/bin/bash

#This function prints a given error
printError()

{
echo -e "\033[31mERROR:\033[0m $1"
}

#This function will get a value between the 2nd and 3rd arguments

getNumber()

{
read -p "$1: "


if [ $1 -lt 42 ]
then
echo "Too Low"
elif [ $1 -gt 42 ]
then
echo "Too High"
else
echo "Correct"
fi
}

getNumber "please type a number between 1 and 100" 1 100

exit 0