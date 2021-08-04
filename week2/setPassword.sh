#!/bin/bash
read -p "type a folder name: " folderName
mkdir "$folderName"
read -sp "Password :" user_pass
echo
echo $user_pass | sha256sum >> ~/scripts/portfolio/week2/$folderName/secret.txt
exit 0
