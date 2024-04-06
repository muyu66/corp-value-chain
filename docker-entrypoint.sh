#!/bin/bash

echo "Initializing the application..."
tendermint init --home="./" && rm -rf config/genesis.json && rm -rf config/config.toml
mv /root/genesis.json /root/config/genesis.json
mv /root/config.toml /root/config/config.toml

# 启动应用程序
echo "Starting the application..."
exec "$@"