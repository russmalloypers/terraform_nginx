#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo mv /tmp/nginx.conf /etc/nginx/nginx.conf
sudo mv /tmp/custom_404.html /usr/share/nginx/html/custom_404.html
sudo systemctl restart nginx