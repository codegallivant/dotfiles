#!/bin/sh
if playerctl status | grep -q Playing
then
    echo "%{F#A28AC2}♬"
else
    echo "%{F#66ffffff}♬"
fi