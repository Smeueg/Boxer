# Boxer
A script to become a profesional boxer.
Interactively select and deselect options in tabs

![Screenshot](./Screenshot.png)


# Sample Usage
```bash
opts="
== First Tab ==
option 1
option 2
option 3
== Second Tab ==
AwesomeWM
DWM
Qtile
i3
"

run_opts() {
	for opt in ${opts}; do
		case "${opt}" in
			"option 1") echo "You selected option 1" ;;
			"option 2") echo "You selected option 2" ;;
			"option 3") echo "You selected option 3" ;;
			"AwesomeWM") echo "AwesomeWM is awesome, see what I did there?" ;;
			"DWM") echo "It sucks less" ;;
			"Qtile") echo "Woo Python!" ;;
			"i3") echo "Yeah i3 is pretty nice" ;;
		esac
	done
}

newline="
"

opts=$(./Boxer "${opts}")
IFS=${newline} run_opts
```
