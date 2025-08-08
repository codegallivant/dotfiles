#!/usr/bin/env sh

killall -q polybar -u $(whoami)
polybar -q main -c "$HOME/.config/polybar/sch/config.ini"
