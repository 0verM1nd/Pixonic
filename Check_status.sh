#!/bin/bash
SERVICE="nginx"
if systemctl -q is-active "$SERVICE" && curl -v localhost >/dev/null
then
    echo "OK $SERVICE is running"
else
    echo "ERROR!!! $SERVICE stopped"
    
fi
if sudo lsof -i:80 | grep $SERVICE > /dev/null
then 
    echo "$SERVICE listen 80 port"
else 
    echo "WARINNG! $SERVICE listen another port"
fi