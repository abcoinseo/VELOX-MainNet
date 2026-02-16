#!/bin/sh

if [ ! -d "/app/data" ]; then
  mkdir -p /app/data
fi

if [ ! -f "/app/data/velox-genesis.json" ]; then
  cp genesis.json /app/data/velox-genesis.json
fi

polygon-edge server \
  --data-dir /app/data \
  --chain /app/data/velox-genesis.json \
  --libp2p 0.0.0.0:10000 \
  --jsonrpc 0.0.0.0:8545
