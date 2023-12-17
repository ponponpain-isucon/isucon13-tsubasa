#!/bin/bash

now=$(date +"%Y%m%d_%H%M%S")

sudo cat /var/log/nginx/access.log | alp ltsv -m "/api/livestream/\d+/report,/api/livestream/\d+/statistics,/api/user/.+/statistics,/api/livestream/\d+/moderate,api/livestream/\d+/reaction,/api/livestream/\d+/livecomment,/api/user/.+/icon,/api/livestream/\d+/enter,/api/livestream/\d+/exit,/api/livestream/\d+/ngword,/api/user/.+/theme" -o count,method,uri,min,max,avg,sum --sort sum -r | tee ./alp/alp${now}.log
sudo mysqldumpslow /var/log/mysql/mysql-slow.log > ./mysqldumpslow/mysqldumpslow_${now}.log
