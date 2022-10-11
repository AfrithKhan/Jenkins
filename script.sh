#!/bin/sh
ssh ubuntu@172.31.0.68 <<EOF
    cd /var/Nodejs/Jenkins
    git pull origin master
    curl -o-   https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh    | bash
    . ~/.nvm/nvm.sh
    nvm install v10.11.0
    npm install
    npm install -g nodemon pm2
    pm2 restart ecosystem.config.js
    exit
EOF
