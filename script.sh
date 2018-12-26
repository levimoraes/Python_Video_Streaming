#!/bin/bash

cd /
git clone https://github.com/arut/nginx-ts-module.git
git clone https://github.com/sergey-dryabzhinsky/nginx-rtmp-module.git
wget https://nginx.org/download/nginx-1.13.8.tar.gz
tar -xf nginx-1.13.8.tar.gz
cd nginx-1.13.8/
./configure --with-http_ssl_module --add-module=../nginx-rtmp-module --with-http_stub_status_module --add-module=../nginx-ts-module --without-http_gzip_module
make
make install
cd /
rm /usr/local/nginx/conf/nginx.conf
cp nginx.conf /usr/local/nginx/conf/