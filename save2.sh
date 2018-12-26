#!/bin/bash

cd $HOME
sudo apt get install git
git clone https://github.com/levimoraes/Python_Video_Streaming.git
git clone https://github.com/arut/nginx-ts-module.git
wget https://nginx.org/download/nginx-1.13.8.tar.gz
git clone https://github.com/sergey-dryabzhinsky/nginx-rtmp-module.git
sudo apt-get install build-essential libpcre3 libpcre3-dev libssl-dev
tar -xf nginx-1.13.8.tar.gz 
cd nginx-1.13.8/
sudo apt update
sudo apt install autoconf automake build-essential libpcre3 libpcre3-dev libssl-dev
./configure --with-http_ssl_module --add-module=../nginx-rtmp-module --with-http_stub_status_module --add-module=../nginx-ts-module --without-http_gzip_module
sudo make
sudo make install
rm /usr/local/nginx/conf/nginx.conf
cp ../Python_Video_Streaming/nginx.conf /usr/local/nginx/conf/