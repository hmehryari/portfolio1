#!/bin/bash

echo "type a website URL to download or type “exit” to quit:"

read answer

if (( $answer=exit )); 
then 
exit script

else 
echo "Where you would like to download to:"
read location

wget $answer > $location

fi


