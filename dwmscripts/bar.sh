#!/bin/sh

dwm_memory() {
	free -m | awk 'NR==2{printf "MEM: %s MB\n", $3}'
}
dwm_cpu() {
	printf "CPU: $(ps -A -o pcpu | tail -n+2 | paste -sd+ | bc)%%\n"
}

dwm_network() {
	r1=$(cat /sys/class/net/[ew]*/statistics/rx_bytes)
	t1=$(cat /sys/class/net/[ew]*/statistics/tx_bytes)

	sleep 1

	r2=$(cat /sys/class/net/[ew]*/statistics/rx_bytes)
	t2=$(cat /sys/class/net/[ew]*/statistics/tx_bytes)

	rspeed=$(numfmt --to=iec $((10#$r2 - 10#$r1)))
	tspeed=$(numfmt --to=iec $((10#$t2 - 10#$t1)))

	printf "DOWN: $rspeed, UP: $tspeed\n"
}
dwm_date() {
	date '+%A, %B %d at%l:%M %p'
}
while true
do
	bar=""
	bar="$bar|$(dwm_memory)"
	bar="$bar|$(dwm_cpu)"
	bar="$bar|$(dwm_network)"
	bar="$bar|$(dwm_date)"
	xsetroot -name "$bar"
done
