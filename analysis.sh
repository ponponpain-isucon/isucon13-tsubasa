#!/bin/bash

now=$(date +"%Y%m%d_%H%M%S")

sudo cat /var/log/nginx/access.log | alp ltsv --sort=avg --reverse > ./alp/alp${now}.log
sudo mysqldumpslow /var/log/mysql/mysql-slow.log > ./mysqldumpslow/mysqldumpslow_${now}.log
