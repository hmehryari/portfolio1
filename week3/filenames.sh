#!/bin/bash

for i in `cat filenames.txt` 
do
if [ -d $i ]; then
echo "$i : is a Directory"

elif [ -f $i ]; then
echo "$i : is a File"
else
echo "$i : I dont know what that is"

fi

done

