#!/bin/sh
ssh ubuntu@172.31.0.68 <<EOF
    cd /var/Nodejs/Jenkins
    git pull origin master
    docker build -t nodejs:$1 .
    docker stop nodejs
    docker stop nodejs || true && docker rm -f nodejs || true
    docker run -d -p 3000:3000 --name nodejs nodejs:$1
    exit
EOF
