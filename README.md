# binarycat-scripts
Binary Cat Scripts is a repository of scripts built with DappTools suite to automate bets in the Binary Cat Platform.

**warning:** This is a beta product and should be only used by those who know what they are doing. Funds may be lost.

## Requirements
seth and ethsign from the Dapp tools suite. 
https://github.com/dapphub/dapptools#installation

## How to configure
### Keystore
You need your private key for signing transactions in the JSON keystore wallet format. You can get this from a hex private key using eth sign.
ethsign import.

### .config.sh file
ETH_FROM: public address
ETH_KEYSTORE: directory where the keystore wallet is stored
ETH_RPC_URL: URL of the RPC node
