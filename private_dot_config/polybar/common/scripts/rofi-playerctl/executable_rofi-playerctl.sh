#!/bin/bash
rofi_command="rofi -theme $HOME/.config/rofi/applets/type-1/style-2.rasi -dmenu $*"

output=$(playerctl metadata --format '{{title}} - {{artist}}')
MAXLEN=35
output="${output:0:$MAXLEN}"

controls="⏯ Play/Pause\n⏮ Previous\n⏭ Next\n Shuffle\n Loop"

choice=$(echo -e "$controls" | $rofi_command -p "$output")

case "$choice" in
  *Play*|*Pause*) playerctl play-pause ;;
  *Previous*) playerctl previous ;;
  *Next*) playerctl next ;;
  *Shuffle*) playerctl shuffle ;;
  *Loop*) playerctl loop ;;
esac
