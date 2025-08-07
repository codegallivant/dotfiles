#!/usr/bin/env bash

dir="$HOME/.config/polybar"
themes=(`ls --hide="launch.sh" $dir`)

launch_bar() {
	# Terminate already running bar instances
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
	
	# Launch the bar
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		if [[ "$style" == "hack" || "$style" == "cuts" ]]; then
			MONITOR=$m polybar -q top -c "$dir/$style/config.ini" &
			MONITOR=$m polybar -q bottom -c "$dir/$style/config.ini" &
		elif [[ "$style" == "pwidgets" ]]; then
			bash "$dir"/pwidgets/launch.sh --main
		else
			MONITOR=$m polybar -q main -c "$dir/$style/config.ini" &	
		fi
	done
}

if [[ " ${themes[@]} " =~ " $1 " ]]; then
    # go ahead
    echo "Theme '$1' found in themes."
	style=$1
	launch_bar $1
else
	Usage : launch.sh theme
    echo "Theme '$1' not found."
fi
