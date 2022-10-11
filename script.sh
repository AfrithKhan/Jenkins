#!/bin/sh
ssh ubuntu@172.31.0.68 <<EOF
    cd /var/Nodejs/Jenkins
    git pull origin master
    npm install
    npm install -g nodemon pm2
    pm2 restart ecosystem.config.js
    exit
EOF
