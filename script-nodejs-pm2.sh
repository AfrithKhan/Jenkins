#!/bin/sh
ssh ubuntu@172.31.0.68 <<EOF
    cd /var/Nodejs/Jenkins
    git pull origin master
    npm install 
    pm2 restart index.js
    exit
EOF
