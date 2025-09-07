#!/bin/bash
cd /home/ec2-user/app
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs
npm install --production
npm install -g pm2
