#!/usr/bin/env bash

# Check if tray polybar is already running
pid=$(xprop -name "Polybar tray window" _NET_WM_PID 2>/dev/null | grep -o '[0-9]\+')

if [ -n "$pid" ]; then
    echo "Killing existing tray polybar (PID: $pid)"
    kill "$pid"
    exit 0
fi

# Otherwise, launch the tray polybar
echo "---" | tee -a /tmp/polybar2.log
polybar tray --config="$HOME/.config/polybar/sch/config.ini" >> /tmp/polybar2.log 2>&1 &
