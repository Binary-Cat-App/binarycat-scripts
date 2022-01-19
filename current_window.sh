#!/bin/bash
. ./.config.sh
deployed_timestamp=$(seth call --rpc-url $ETH_RPC_URL $BET_CONTRACT "deployTimestamp()(uint)")
window_duration=$(seth call --rpc-url $ETH_RPC_URL $BET_CONTRACT "windowDuration()(uint)")
timestamp=$(date +"%s")

current_window=$(seth call --rpc-url $ETH_RPC_URL $BET_CONTRACT "getWindowNumber(uint,uint,uint)(uint)" $timestamp $window_duration $deployed_timestamp)
echo $current_window
