#!/bin/bash
. ./.config.sh
window="${1:-$(sh current_window.sh)}"
price=$(seth call --rpc-url $ETH_RPC_URL $BET_CONTRACT "windowPrice(uint)(uint)" $window)
if [  $price -eq 0  ]; then
    seth send --rpc-url $ETH_RPC_URL --from $ETH_FROM --keystore $ETH_KEYSTORE $BET_CONTRACT 'updatePrice()'
fi
