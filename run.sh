#!/bin/bash

PS3='Please choose your language: '
options=("Russian" "Turkish" "Italiano" "Latviešu" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Russian")
            cd langs
            chmod +x Russian.sh
            ./Russian.sh
            break 
            ;; 
        "Turkish")
            cd langs
            chmod +x Turkish.sh
            ./Turkish.sh
            break
            ;;
        "Italiano")
            cd langs
            chmod +x Italian.sh
            ./Italian.sh
            break 
            ;; 
        "Latviešu")
            cd langs
            chmod +x Latvian.sh
            ./Latvian.sh
            break 
            ;; 
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
