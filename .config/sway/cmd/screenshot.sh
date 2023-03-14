#! /bin/bash

dir="$(xdg-user-dir PICTURES)/screenshots"
name=$(date +"%Y-%m-%d_%H:%M:%S.png")
fullname="$dir/$name"

if [ "$1" = "window" ]; then # all monitors
	grim $fullname
elif [ "$1" = "area" ]; then # selected area
	grim -g "$(slurp)" "$fullname"
else # focused monitor
	grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') "$fullname"
fi
notify-send -i "$fullname" "Screenshot saved" "$name"
echo "/screenshots"
