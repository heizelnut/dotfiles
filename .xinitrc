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
picom &

# music daemon
killall mpd-notification && killall mpd
mpd && mpd-notification &

# keyboard daemon
killall sxhkd
sxhkd &

# set screen temperature
color 4500 #K

# reload pulseaudio
pulseaudio -k

# open links with mpv
killall play-with-mpv
play-with-mpv &

# set background
xwallpaper --zoom ~/art/lorenz/wallpaper.png

xrdb ~/.Xresources

# dwm
exec dwm 2> ~/.cache/dwm.log
