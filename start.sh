#!/bin/sh

if [ ! -d "/app/data" ]; then
  mkdir /app/data
fi

if [ ! -f "/app/data/genesis.json" ]; then
  polygon-edge genesis --chain-id 18591223 --name "VELOX Chain" --premine 0xD7e39d8bbE6FA5eE59Ff8a945D93E16deaC56210:1000000000000000000000000000
fi

polygon-edge server \
  --data-dir /app/data \
  --chain genesis.json \
  --libp2p 0.0.0.0:10000 \
  --jsonrpc 0.0.0.0:8545
