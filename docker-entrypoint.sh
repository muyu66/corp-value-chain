#!/bin/sh
set -e

tendermint init --home="./" && rm -rf config/genesis.json && rm -rf config/config.toml
mv /root/genesis.json /root/config/genesis.json
mv /root/config.toml /root/config/config.toml

corp-value-chain