#!/usr/bin/bash

while true :; do

	ARROW_A=$'\x1b[0m\x1b[38;2;121;161;193m\x1b[0m\x1b[48;2;129;161;193m'
	ARROW_B=$'\x1b[38;2;143;188;187m\x1b[0m\x1b[48;2;143;188;187m'
	ARROW_C=$'\x1b[38;2;129;161;193m\x1b[0m\x1b[48;2;129;161;193m'
	ARROW_D=$'\x1b[38;2;46;52;64m\x1b[0m\x1b[48;2;46;52;64m'

	status="${ARROW_A} ${ARROW_B}  $(uptime -p) ${ARROW_C} : $(acpi | awk '{print $4}' | sed s/,//) ${ARROW_B}  $(date '+%Y-%m-%d %H:%M') ${ARROW_C} $(free -h | awk '/^Mem:/ {print ":" $3 "/" $2}') ${ARROW_B} 摒 $(curl -s wttr.in/"Tampa,Florida?format=3") ${ARROW_D}"
	xsetroot -name "$status"
	echo "$status"

	sleep 60

done
