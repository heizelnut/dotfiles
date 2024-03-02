#!/bin/sh

killeverything() {
	pkill swww
	pkill hkd
	pkill polkit-kde
	pkill waybar
	pkill udiskie
}

[ "$1" != "first" ] && killeverything || lock

swww init
swww img $WALLPAPER --transition-type=random

hkd &

/usr/lib/polkit-kde-authentication-agent-1 &

waybar &

udiskie &
