FROM 0xpolygon/polygon-edge:latest

WORKDIR /app

COPY genesis.json .

EXPOSE 8545 10000

CMD ["server", "--chain", "genesis.json", "--data-dir", "/tmp/data", "--libp2p", "0.0.0.0:10000", "--jsonrpc", "0.0.0.0:8545"]
