#/bin/bash

echo "setting up `live-server` server config..."

curl https://raw.githubusercontent.com/katzEco/katzuScript/main/source/live-server/server.sh --output live-server

echo 'ko_fi: ' >> .github/FUNDING.yml