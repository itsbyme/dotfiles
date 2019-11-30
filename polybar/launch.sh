#!/bin/bash

# kill all running polybars
killall -q polybar

# whaiting to stop all polybar's proccesses
while pgrep -u $UID -x polybar >/dev/null; do
	sleep 1;
done

# run awesome (but it still look like shit) top bar
polybar top &

# run bar with workspaces info
polybar wsbar &

