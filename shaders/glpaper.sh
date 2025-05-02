#!/bin/sh

SHADER="$(dirname $0)/halo.glsl"

monitors="$(hyprctl monitors -j | jq -r ".[] | .name")"

pkill -x glpaper

for monitor in $monitors; do
	echo $monitor
	glpaper -F -f 30 $monitor $SHADER
done
