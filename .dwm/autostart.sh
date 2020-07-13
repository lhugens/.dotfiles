#!/bin/bash

# albert -k Alt+b &

picom -b &

unclutter --ignore-scrolling --timeout 2 &

xset s off & 

xset r rate 300 50 &

nm-applet &

redshift -O 3600 &

setxkbmap pt &

$HOME/.scripts/dwmbar &
