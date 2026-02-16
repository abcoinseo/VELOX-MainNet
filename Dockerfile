FROM 0xpolygon/polygon-edge:latest

WORKDIR /app

COPY genesis.json .
COPY start.sh .

RUN chmod +x start.sh

VOLUME ["/app/data"]

EXPOSE 8545 10000

CMD ["./start.sh"]
