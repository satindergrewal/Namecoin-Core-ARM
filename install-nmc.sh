#!/bin/sh

sudo cp -av bench_namecoin namecoin-cli namecoind namecoin-tx test_namecoin /usr/local/bin/
sudo cp -av namecoin.service /etc/systemd/system/
sudo systemctl enable namecoin
sudo systemctl start namecoin