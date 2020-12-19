getPower() {
	echo "" 
	#upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//

	power=`upower -i $(upower -e | grep '/battery') | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//`

	echo $power
}
getVolume() {
	echo ""
	#amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]'
	#amixer get Master | awk '$0~/%/{print $4}' | tr -d '[]%'
	amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }'
}
getDate() {
	currentTime=`date +"%d-%m %H:%M"`
	echo $currentTime
}
xsetroot -name "$(getPower)%  $(getVolume)  $(getDate)  "

