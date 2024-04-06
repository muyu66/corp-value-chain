FROM golang:1.22-bookworm AS builder

ARG TENDERMINT_VERSION=0.34.15

RUN apt update && apt install wget -y

WORKDIR /root

# 安装tendermint
RUN wget https://github.com/tendermint/tendermint/releases/download/v${TENDERMINT_VERSION}/tendermint_${TENDERMINT_VERSION}_linux_amd64.tar.gz && tar -zxvf tendermint_${TENDERMINT_VERSION}_linux_amd64.tar.gz tendermint && chown root.staff tendermint && chmod 755 tendermint && rm tendermint_*.tar.gz

COPY . .

# 编译
RUN export GOPROXY=https://goproxy.cn && go build -ldflags="-s -w"

FROM ubuntu:22.04
LABEL authors="zhouyu"
LABEL maintainer="zhouyu"
LABEL version="1.0"
LABEL email="muyu.zhouyu@outlook.com"

COPY --from=builder /root/tendermint /usr/bin/
COPY --from=builder /root/corp-value-chain /usr/bin/

COPY docker-entrypoint.sh /root/
COPY config/genesis.json /root/genesis.json
COPY node-config.toml /root/config.toml

WORKDIR /root/

ENTRYPOINT ["./docker-entrypoint.sh", "corp-value-chain"]
