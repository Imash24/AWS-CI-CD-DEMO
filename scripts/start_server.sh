#!/bin/bash
cd /home/ec2-user/app
pm2 start server.js --name myapp
