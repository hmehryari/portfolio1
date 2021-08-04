#!/bin/bash

echo "Pleae enter your age"

read age

if [ "$age" -ge 18 ]; then 
echo "you are eligible to vote"

else 
echo "you are younger than 18"

fi