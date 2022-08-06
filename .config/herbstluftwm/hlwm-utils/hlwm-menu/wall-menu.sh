#!/bin/env sh
# wallpapers menu

declare options=("Fill
Scale
Tile")

choice=$(echo -e "${options[@]}" | dmenu -i -c -g 1 -l 10 -p ' Style: ' -nb '#2f2b26' -sb '#2e8b57' -fn 'JetBrains Mono Medium-12')

case "$choice" in
    Fill)
        choice="$HOME/.config/herbstluftwm/hlwm-utils/hlwm-menu/wall-menu/fill.sh"
    ;;
    Scale)
        choice="$HOME/.config/herbstluftwm/hlwm-utils/hlwm-menu/wall-menu/scale.sh"
    ;;
    Tile)
        choice="$HOME/.config/herbstluftwm/hlwm-utils/hlwm-menu/wall-menu/tile.sh"
    ;;
esac
sh $choice
