#!/bin/sh

updates=$(yay -Qu 2> /dev/null | wc -l)

[[ "$updates" -gt 0 ]] && { echo "${updates} updates"; } || { echo ""; } 
