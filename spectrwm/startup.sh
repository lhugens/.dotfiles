#!/bin/sh

albert -k Alt+Space &

picom -b &

unclutter --ignore-scrolling --timeout 2 &

xset s off & 

xset r rate 300 50 &

nm-applet &

redshift -O 4000



