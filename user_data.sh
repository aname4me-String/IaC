#!/bin/bash
apt update -y
apt install -y nginx
echo "<h1>Server: $(hostname)</h1>" > /var/www/html/index.html
systemctl start nginx
systemctl enable nginx