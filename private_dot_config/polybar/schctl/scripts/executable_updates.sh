#!/usr/bin/env bash

NOTIFY_ICON="/home/cdger/Pictures/ubuntu-4.svg"

update() {
    UPDATES=$(apt list --upgradeable 2>/dev/null | grep -vc "Listing...")
}

notify() {
    if command -v notify-send &>/dev/null; then
        if [ "$UPDATES" -gt 31 ]; then
            notify-send -u normal -i "$NOTIFY_ICON" "$UPDATES New packages"
        elif [ "$UPDATES" -gt 3 ]; then
            notify-send -u low -i "$NOTIFY_ICON" "$UPDATES New packages"
        fi
    fi
}

# First update and notify
update
notify

while true; do
    if [ "$UPDATES" -eq 0 ]; then
        echo " 0"
        sleep 240
    else
        echo " $UPDATES"
        sleep 16
    fi
    update
done
