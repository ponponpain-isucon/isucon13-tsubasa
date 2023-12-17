#!/bin/bash

cp /dev/null /var/log/nginx/access.log
cp /dev/null /var/log/mysql/mysql-slow.log

if [ ! -d "/tmp/icons" ]; then
    mkdir /tmp/icons
fi
rm -rf /tmp/icons/*

cd webapp/go
make build
sudo systemctl restart isupipe-go
