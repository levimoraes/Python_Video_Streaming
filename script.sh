#!/bin/bash

cd /
git clone https://github.com/arut/nginx-ts-module.git
git clone https://github.com/sergey-dryabzhinsky/nginx-rtmp-module.git
wget https://nginx.org/download/nginx-1.13.8.tar.gz
apt-get install build-essential libpcre3 libpcre3-dev libssl-dev -y
tar -xf nginx-1.13.8.tar.gz
cd nginx-1.13.8/
apt update -y
apt install autoconf automake build-essential libpcre3 libpcre3-dev libssl-dev -y
./configure --with-http_ssl_module --add-module=../nginx-rtmp-module --with-http_stub_status_module --add-module=../nginx-ts-module --without-http_gzip_module
make
make install
cd /home/odroid/Python_Video_Streaming/
rm /usr/local/nginx/conf/nginx.conf
cp nginx.conf /usr/local/nginx/conf/
