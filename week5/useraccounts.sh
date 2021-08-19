#!/bin/bash

echo "User Accounts and Passwords"

awk 'BEGIN {
    
FS=":";

    print "_____________________________________________________________________________________________________________________________________";

    print "| \033[34mUser Name\033[0m           | \033[34mUser ID \033[0m       | \033[34mGroup ID \033[0m      | \033[34m Home \033[0m                                       | \033[34mShell \033[0m                    |";
    print "_____________________________________________________________________________________________________________________________________";

}

{

    printf("| \033[33m%-19s\033[0m | \033[35m%-14s\033[0m | \033[35m%-14s\033[0m | \033[35m%-45s\033[0m | \033[35m%-25s\033[0m |\n", $1, $3, $4, $5, $6);

}

END {

    print("_____________________________________________________________________________________________________________________________________");

}' /etc/passwd