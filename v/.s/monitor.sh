#!/bin/bash

FILE=/tmp/monitor

if test -f "$FILE"; then
	echo "setting normal"
	xrdb /home/v/.Xresources
	rm $FILE
else
	echo "starting scale"
	touch $FILE
	xrdb /home/v/.Xresources1
fi
