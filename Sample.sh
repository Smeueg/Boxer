#!/bin/sh
# This is a sample script for Boxer, a simple one at that.
opts="
== Terminals ==
XTerm
Kitty
Alacritty
== Window Managers ==
DWM
AwesomeWM
Qtile
"

while read line; do
	case ${line} in
		"XTerm") echo "You chose Xterm, the one and only";;
		"Kitty") echo "You chose Kitty, hope you're a cat person";;
		"Alacritty") echo "You chose Alacritty, what does alacritty even mean?";;
		"DWM") echo "You chose DWM, it supposedly sucks less.";;
		"AwesomeWM") echo "You chose AwesomeWM, it's configured in lua and it's Awesome!";;
		"Qtile") echo "You chose Qtile, a window manager made with Python!";;
	esac
done <<EOF
$(./Boxer "${opts}")
EOF
