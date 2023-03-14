#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch the bar

polybar -q example -c "$DIR"/transbar.ini &
sleep 1
polybar -q main -c "$DIR"/config.ini &
