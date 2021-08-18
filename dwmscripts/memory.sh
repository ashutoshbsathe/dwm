#!/bin/sh

dwm_memory() {
	free -m | awk 'NR==2{printf "MEM: %s MB\n", $3}'
}
dwm_memory
