getPower() {
	#acpi
	upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//
}
getVolume() {
	amixer get Master | awk '/Mono.+/ {print $6=="[off]"?$6:$4}'
}
getDate() {
	currentTime=`date +"%d-%m %H:%M"`
	echo $currentTime
}
xsetroot -name "$(getPower)%  $(getVolume)  $(getDate)  "

