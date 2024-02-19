#!/bin/bash
INTERFACENAME="en0"
status=$(networksetup -getairportpower $INTERFACENAME)
if [[ $status == *On ]]
then
    echo "Wifi is now off"
    networksetup -setairportpower $INTERFACENAME off
else
    echo "Wifi is now on"
    networksetup -setairportpower $INTERFACENAME on
fi
osascript /usr/local/bin/exit.scpt
exit
