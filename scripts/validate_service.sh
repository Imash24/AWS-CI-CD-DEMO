#!/bin/bash

APP_URL="http://localhost:3000"
MAX_ATTEMPTS=10
SLEEP_TIME=3

for i in $(seq 1 $MAX_ATTEMPTS); do
  echo "Attempt $i: Checking $APP_URL ..."
  if curl -s $APP_URL >/dev/null; then
    echo "App is running ✅"
    exit 0
  fi
  echo "App not available yet, waiting $SLEEP_TIME seconds..."
  sleep $SLEEP_TIME
done

echo "App failed to start ❌"
exit 1
