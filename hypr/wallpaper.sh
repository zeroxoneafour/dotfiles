#!/bin/sh

PAPER="$(dirname $0)/bg_halo.mp4"

monitors="$(hyprctl monitors -j | jq -r ".[] | .name")"

pkill -x mpvpaper

for monitor in $monitors; do
	echo $monitor
	mpvpaper -o "--loop" $monitor $PAPER &
done
