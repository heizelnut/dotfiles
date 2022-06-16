#!/bin/sh

# configure monitor & keyboard at once
dock

# make webcam look pretty
v4l2-ctl --set-ctrl sharpness=0

# drive automount
pkill udiskie
udiskie &

# statusbar
killall dwmblocks
dwmblocks &

# notification daemon
killall dunst
dunst &

# set askpass program
location="$(whereis askpass)"
export SUDO_ASKPASS="${location##* }"

# start compositor
killall picom
picom --experimental-backends &

# music daemon
killall mpd-notification
mpd --kill
mpd && mpd-notification &

# keyboard daemon
killall sxhkd
sxhkd &

# set screen temperature
color 4500 #K

# reload x resources database
xrdb ~/.Xresources

# dwm
exec dwm
