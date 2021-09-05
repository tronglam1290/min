#!/bin/bash

POOL=eth.2miners.com:2020
WALLET=0xf12afa2389752ddc5d81d800d3efecda7f07dad4.$(echo "$(curl -s ifconfig.me)" | tr . _ )-min-

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
