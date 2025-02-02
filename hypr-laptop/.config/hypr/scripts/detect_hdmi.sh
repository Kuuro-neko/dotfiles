#!/bin/bash

export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/1000

# Maximum wait time (in seconds)
MAX_WAIT=10
WAIT_INTERVAL=1
elapsed_time=0

# Wait until HDMI-A-1 appears or timeout is reached
while [ $elapsed_time -lt $MAX_WAIT ]; do
    if hyprctl monitors | grep -q "HDMI-A-1"; then
        hyprctl dispatch moveworkspacetomonitor 9 HDMI-A-1
        sleep 1
        hyprctl dispatch workspace 9
        exit 0  # Exit successfully as soon as it's moved
    fi
    sleep $WAIT_INTERVAL
    elapsed_time=$((elapsed_time + WAIT_INTERVAL))
done

# If the loop ends and HDMI is still not detected, move workspace back to eDP-1
hyprctl dispatch moveworkspacetomonitor 9 eDP-1
