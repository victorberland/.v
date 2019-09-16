getPower() {
	upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//
}
getVolume() {
	#amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]'
	amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]%'
}
getDate() {
	currentTime=`date +"%d-%m %H:%M"`
	echo $currentTime
}
xsetroot -name "$(getPower)%  $(getVolume)  $(getDate)  "

