#!/bin/sh

USER="$(who am i | awk '{print $1}')"

sudo cp -av bench_namecoin namecoin-cli namecoind namecoin-tx test_namecoin /usr/local/bin/
sudo cp -av namecoin.service /etc/systemd/system/
sudo sed -i "s/root/${USER}/" /etc/systemd/system/namecoin.service
sudo systemctl enable namecoin
sudo systemctl start namecoin