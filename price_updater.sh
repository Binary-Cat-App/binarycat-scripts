#!/bin/bash
. ./.config.sh
time=$1
while true
do
    sh ./update_price.sh
    sleep $time
done
