#!/bin/sh

# keyboard
setxkbmap it

# disable caps lock and make it Esc
setxkbmap -option caps:escape

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
#killall picom
#picom &

# music daemon
killall mpd-notification && killall mpd
mpd && mpd-notification &

# keyboard daemon
killall sxhkd
sxhkd &

# set screen temperature
color 4500 #K

# detect any monitors
monitor

# open links with mpv
killall play-with-mpv
play-with-mpv &

# set background
#xwallpaper --zoom ~/art/prisoner.png

# dwm
exec dwm 2> ~/.cache/dwm.log
