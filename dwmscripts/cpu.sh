#!/bin/sh

dwm_cpu() {
	printf "CPU: $(ps -A -o pcpu | tail -n+2 | paste -sd+ | bc)%%\n"
}
dwm_cpu
