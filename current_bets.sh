#!/bin/bash
. ./.config.sh
window="${1:-$(sh current_window.sh)}"
bet=$(seth call --rpc-url $ETH_RPC_URL $BET_CONTRACT "getUserStake(uint, address)(uint, uint)" $window $ETH_FROM)
echo $bet
