#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar top -c ~/.config/polybar/config.ini &

if [[ $(xrandr --query | grep 'DP1') = *connected* ]]; then
	polybar top2 -c ~/.config/polybar/config.ini &
fi

if [[ $(xrandr --query | grep 'DP1') = *connected* ]]; then
	polybar top3 -c ~/.config/polybar/config.ini &
fi
