#!/bin/bash

PS3='Please enter your choice: '
options=("Russian" "Italiano" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Russian")
            cd langs
            chmod +x Russian.sh
            ./Russian.sh
            break 
            ;; 
            "Italiano")
            cd langs
            chmod +x Italian.sh
            ./Italian.sh
            break 
            ;; 
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
