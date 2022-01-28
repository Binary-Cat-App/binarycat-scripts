#!/bin/bash
. ./.config.sh
bet=$(seth --to-wei $1 eth)
seth send --rpc-url $ETH_RPC_URL --value $bet --from $ETH_FROM --keystore $ETH_KEYSTORE --password $PASSWORD $BET_CONTRACT 'placeBet(uint8)' 0
seth send --rpc-url $ETH_RPC_URL --value $bet --from $ETH_FROM --keystore $ETH_KEYSTORE $BET_CONTRACT 'placeBet(uint8)' 1
