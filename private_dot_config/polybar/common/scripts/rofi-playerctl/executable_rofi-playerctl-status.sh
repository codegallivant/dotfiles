#!/bin/sh
status=$(playerctl status 2>/dev/null || echo "exception")
if [ "$status" = "Playing" ]; then
    echo "%{F#8FBCBB}♬"
elif [ "$status" = "Paused" ]; then
    echo "%{F#81A1C1}♬"
else
    echo "%{F#BF616A}♬"
fi