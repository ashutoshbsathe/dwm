#!/bin/sh

r1=$(cat /sys/class/net/[ew]*/statistics/rx_bytes)
t1=$(cat /sys/class/net/[ew]*/statistics/tx_bytes)

sleep 1

r2=$(cat /sys/class/net/[ew]*/statistics/rx_bytes)
t2=$(cat /sys/class/net/[ew]*/statistics/tx_bytes)

rspeed=$(numfmt --to=iec $((10#$r2 - 10#$r1)))
tspeed=$(numfmt --to=iec $((10#$t2 - 10#$t1)))

echo $rspeed
echo $tspeed
