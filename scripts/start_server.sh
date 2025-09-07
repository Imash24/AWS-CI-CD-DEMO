#!/bin/bash
cd /home/ec2-user/app || exit

# Ensure PM2 is installed globally
if ! command -v pm2 >/dev/null 2>&1; then
  npm install -g pm2
fi

# Start app with PM2
pm2 start server.js --name myapp
pm2 save
