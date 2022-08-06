#!/bin/env sh
# hlwm-utils main manu

declare options=("layouts
frames-control
wall-menu
|
EXIT")

choice=$(echo -e "${options[@]}" | dmenu -i -c -g 1 -l 10 -p ' hlwm-utils: ' -nb '#2f2b26' -sb '#2e8b57' -fn 'JetBrains Mono Medium-12')

case "$choice" in
	layouts)
		choice="$HOME/.config/herbstluftwm/hlwm-utils/hlwm-menu/layouts-menu.sh"
	;;
	frames-control)
		choice="$HOME/.config/herbstluftwm/hlwm-utils/hlwm-menu/frames-control.sh"
	;;
	wall-menu)
		choice="$HOME/.config/herbstluftwm/hlwm-utils/hlwm-menu/wall-menu.sh"
	;;
	EXIT)
		exit 1
	;;
esac
sh $choice
