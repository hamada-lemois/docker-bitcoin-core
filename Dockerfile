FROM alpine:3.8
RUN apk add --no-cache bitcoin \
    && sed -i -e 's/^\(rpc\)/#\1/g' /etc/bitcoin.conf
ENTRYPOINT [ "bitcoind" ]