#!/bin/sh

terrad version

[ "$chainid" = "columbus-5" ] && [ ! -f ~/.terra/config/genesis.json ]  && wget -O ~/.terra/config/genesis.json https://columbus-genesis.s3.ap-northeast-1.amazonaws.com/columbus-5-genesis.json
[ "$chainid" = "columbus-5" ] && [ ! -f ~/.terra/config/addrbook.json ] && wget -O ~/.terra/config/addrbook.json https://networks.mcontrol.ml/columbus/addrbook.json
[ "$chainid" = "rebel-1" ]    && [ ! -f ~/.terra/config/genesis.json ]  && wget -O ~/.terra/config/genesis.json https://raw.githubusercontent.com/terra-rebels/classic-testnet/master/rebel-1/genesis.json
[ "$chainid" = "rebel-1" ]    && [ ! -f ~/.terra/config/addrbook.json ] && wget -O ~/.terra/config/addrbook.json https://raw.githubusercontent.com/terra-rebels/classic-testnet/master/rebel-1/addrbook.json

terrad start

