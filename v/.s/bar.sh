getDisplay() {
	FILE=/tmp/monitor
	if test -f "$FILE"; then
		echo ""
	fi
}
getPower() {
	echo ""
	power=`upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//`
	echo $power
}
getVolume() {
	echo ""
	amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }'
}
getDate() {
	currentTime=`date +"%d-%m %H:%M"`
	echo $currentTime
}
xsetroot -name "$(getDisplay) $(getPower)%  $(getVolume)  $(getDate)  "

