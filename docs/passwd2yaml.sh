#!/bin/bash

#Ce script Bash doit lire /etc/passwd et l'afficher au format Yaml

echo "---"

while read line; do 
    username=`echo "$line" | cut -d ':' -f 1`
    uid=`echo "$line" | cut -d ':' -f 3`
    gid=`echo "$line" | cut -d ':' -f 4`
    home=`echo "$line" | cut -d ':' -f 6`
    shell=`echo "$line" | cut -d ':' -f 7`

    echo "- username: $username"
    echo "  uid: $uid"
    echo "  gid: $gid"
    echo "  home: $home"
    echo "  shell: $shell"
done < /etc/passwd