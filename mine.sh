#!/bin/bash
. ./.config.sh
window=$(sh current_window.sh)
value=$1
time=$2
while true
do
    total_bets=$(sh current_bets.sh | awk '{print $1 + $2}')
    if [  "$total_bets" -eq 0 ]; then
        sh ./bet_sides.sh $value
    fi
    sleep $time
done
