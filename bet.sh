#!/bin/bash
. ./.config.sh
side=$1
bet=$(seth --to-wei $2 eth)
echo $bet
echo $side
seth send --rpc-url $ETH_RPC_URL --value $bet --from $ETH_FROM --keystore $ETH_KEYSTORE $BET_CONTRACT 'placeBet(uint8)' $side
