#!/bin/bash

non_system_users() {
    FILE="/etc/passwd"
    counter=0
    while IFS=: read -r username password userid groupid comment homedir cmdshell
    do
      #echo "$username, $userid, $comment $homedir"
      if [ "$userid" -ge 1000 ]
      then
          ((counter++))
      fi
    done < $FILE
    echo $counter
}

main() {
    echo "Non-system users: $(non_system_users)"
    echo "Groups: $(groups | wc -w)"
}

main
