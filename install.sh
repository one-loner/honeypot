#!/bin/bash
if (($EUID !=0)); then
     echo Script must be run by root.
     exit
fi
apt-get install -y docker docker-compose curl
echo "Enter Telegram bot token: "
read t
echo "Enter Telegram chat id: "
read id
ip=$(curl https://ifconfig.me/ip)
cp script.php script.php.default
sed -i "s/TOKEN/$t/g" script.php
sed -i "s/CHAT_ID/$id/g" script.php
docker build -t simple-ids .
docker run -d --name simple-ids --restart=always -p 80:80 simple-ids
docker ps
echo ''
echo ''
echo "Done. Your cen visit your honeypot webpage by url http://"$ip
