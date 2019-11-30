#!/bin/bash


export DISPLAY=:0


power=`upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//`

if [ $power -lt 20 ]
then
	notify-send "Lavt batteri. `echo $power`%"
else
	die
fi


