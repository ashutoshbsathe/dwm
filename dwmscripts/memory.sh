#!/bin/sh

free -m | awk 'NR==2{printf "%s MB\n", $3}'
