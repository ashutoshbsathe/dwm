#!/bin/sh

cat <<EOF | xmenu
[]= Tiled	0
><> Floating	1
[M] Monocle	2
|M| CenteredMaster	3
>M> CenteredFloatingMaster	4
[@] Spiral	5
[\\] Dwindle	6
H[] Deck	7
TTT BStack	8
=== BStackHoriz	9
HHH Grid	10
### NRowGrid	11
--- HorizGrid	12
::: GaplessGrid	13
EOF
