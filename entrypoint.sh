#!/bin/bash
sed -i "s/HELLO WORLD/& $MY_NAME/" /usr/share/nginx/html/index.html
cat /usr/share/nginx/html/index.html
echo "Starting nginx"
nginx -g 'daemon off;'
