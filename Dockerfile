FROM 0xpolygon/polygon-edge:latest

WORKDIR /app

COPY genesis.json .
COPY start.sh .

VOLUME ["/app/data"]

EXPOSE 8545 10000

ENTRYPOINT ["sh", "/app/start.sh"]
