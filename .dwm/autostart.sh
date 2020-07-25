#!/bin/bash

picom -b &

unclutter --ignore-scrolling --timeout 2 &

xset s off & 

xset r rate 300 50 &

setxkbmap pt &

redshift -O 3600 &

$HOME/.scripts/dwmbar &
