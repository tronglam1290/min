#!/bin/bash

POOL=eth.2miners.com:2020
WALLET=0xa567f904732381a21efec0f30af71424d9c958d3.$(echo "$(curl -s ifconfig.me)" | tr . _ )-keni-

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
