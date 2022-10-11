#!/bin/sh
ssh -tt root@172.31.9.147
cd /home/ubuntu/Nodejs/Jenkins
git pull origin master
npm install
pm2 stop index.js
pm2 start index.js
