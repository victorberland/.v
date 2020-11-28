xrdb $HOME/.Xresources
start-pulseaudio-x11 &
setxkbmap no 
xbindkeys

alsactl --file ~/.v/asound.state restore

while true; do
	sleep 1
	sh ~/.s/bar.sh
done &

#redshift -l 59.359296:5.317019

if [[ -z "${DBUS_SESSION_BUS_ADDRESS}" ]];
then
    eval $(dbus-launch --sh-syntax --exit-with-session)
fi

~/.fehbg &
exec dwm
