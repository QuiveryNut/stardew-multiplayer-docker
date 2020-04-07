#!/bin/bash

if [ -f /tmp/.X10-lock ]; then rm /tmp/.X10-lock; fi
Xvfb :10 -screen 0 1580x920x24 -ac &
export DISPLAY=:10
x11vnc -display :10 -rfbport 5900 -rfbportv6 -1 -no6 -noipv6 -httpportv6 -1 -forever -desktop StardewValley -cursor arrow -passwd $VNCPASS -shared & 
sleep 5
i3 &
export XAUTHORITY=~/.Xauthority
TERM=xterm
/data/Stardew/Stardew\ Valley/StardewValley