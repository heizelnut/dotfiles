#!/bin/sh

swaybg -m stretch -i $WALLPAPER &

pkill hkd
hkd &

/usr/lib/polkit-kde-authentication-agent-1 &

waybar &

udiskie &
