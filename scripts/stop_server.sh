#!/bin/bash
cd /home/ec2-user/app || exit
if command -v pm2 >/dev/null 2>&1; then
  pm2 stop myapp || true
  pm2 delete myapp || true
fi
