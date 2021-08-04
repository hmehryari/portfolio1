#!/bin/bash
read -p "type a folder name: " folderName
mkdir "$folderName"
read -sp "Password :" user_pass
echo
echo $user_pass | sha256sum >> ~/scripts/portfolio/week2/$folderName/secret.txt

var_a=`cat ~/scripts/portfolio/week2/$folderName/secret.txt`
read -sp "second password :" var_b
echo

# echo $var_b | sha256sum >> ~/scripts/portfolio/week2/$folderName/pass_hash

var_c=`echo $var_b | sha256sum`

if [ "$var_a" = "$var_c" ]; then
    echo "Your access is granted!"
else 
    echo "Your access is denied!"
fi

exit 0