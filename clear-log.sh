#!/bin/bash

sudo cp /dev/null /var/log/nginx/access.log
sudo cp /dev/null /var/log/mysql/mysql-slow.log

if [ ! -d "/tmp/icons" ]; then
    sudo mkdir /tmp/icons
fi
sudo rm -rf /tmp/icons/*

cd webapp/go
make build
sudo systemctl restart isupipe-go
cd ../../
