#!/bin/bash
# baraction.sh for spectrwm status bar

## UPDATES
updates() {
    number=`yay -Qu 2> /dev/null | wc -l`
    [[ "$number" -gt 0 ]] && { echo -e "updates: $number"; } || { echo -e  ""; } 
}

## CPU
cpu() {
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "cpu: $cpu%"
}

## CPU TEMPERATURE
celsius(){
    celsius=`cat /sys/class/thermal/thermal_zone*/temp | sort -nrk1,1 | sed -n 1p | awk '{print $1 / 1000}'`
    echo -e "temp: $celsiusºC"
}

## RAM
mem() {
#  mem=`free | awk '/Mem/ {printf "%dM/%dM\n", $3 / 1024.0, $2 / 1024.0 }'`
    mem=`free | awk '/Mem/ {printf "%dM\n", $3 / 1024.0 }'`
  echo -e "mem: $mem"
}


## VOLUME
vol() {
    vol=`amixer get Master | awk -F'[][]' 'END{ print $4":"$2 }' | sed 's/on://g'`
    echo -e "vol: $vol"
}

## VOLUME
bat() {
    bat=`acpi | awk -F ',' '{print $2}' | tr -d " "`
    [[ "$bat" -lt 15  ]] && notify-send "Low battery"
    echo -e "bat: $bat"
}

## DISK
hdd() {
  hdd="$(df -h | awk 'NR==4{print $3, $5}')"
  echo -e "hdd: $hdd"
}

SLEEP_SEC=1.5
#loops forever outputting a line every SLEEP_SEC secs

# It seems that we are limited to how many characters can be displayed via
# the baraction script output. And the the markup tags count in that limit.
# So I would love to add more functions to this script but it makes the 
# echo output too long to display correctly.
while :; do
    #echo "+@fg=1; +@fn=1; +@fn=0; $(updates) +@fg=0; | +@fg=1; +@fn=1; +@fn=0; $(cpu) +@fg=0; | +@fg=2; +@fn=1; +@fn=0; $(mem) +@fg=0; | +@fg=3; +@fn=1; +@fn=0; $(vol) +@fg=0; | +@fg=4; +@fn=1; +@fn=0; $(bat) +@fg=0; |"
    echo " $(updates)| $(hdd) |  $(mem) | $(cpu) | $(celsius) | $(vol) | $(bat) |"
	sleep $SLEEP_SEC
done
