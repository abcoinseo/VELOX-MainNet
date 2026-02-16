FROM 0xpolygon/polygon-edge:latest

WORKDIR /app

EXPOSE 8545 10000

ENTRYPOINT []

CMD ["sh", "-c", "polygon-edge genesis --chain-id 18591223 --name 'VELOX Chain' --consensus ibft --block-gas-limit 10000000 --premine 0xD7e39d8bbE6FA5eE59Ff8a945D93E16deaC56210:1000000000000000000000000000 --dir /tmp/data && polygon-edge server --data-dir /tmp/data --chain /tmp/data/genesis.json --jsonrpc 0.0.0.0:8545 --libp2p 0.0.0.0:10000 --seal"]
