#!/bin/bash

PS3='Please enter your choice: '
options=("Russian" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Russian")
            cd langs
            chmod +x Russian.sh
            ./Russian.sh
            break 
            ;; 
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done