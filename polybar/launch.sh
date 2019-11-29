#!/bin/bash

# kill all running polybars
killall -q polybar

# whaiting to stop all polybar's proccesses
while pgrep -u $UID -x polybar >/dev/null; do
	sleep 1;
done

# run example bar
polybar top &
polybar wsbar &

