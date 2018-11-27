FROM ubuntu:18.04
MAINTAINER LEVI MORAES

RUN apt-get update && apt-get install -y vim ffmpeg wget build-essential libpcre3 libpcre3-dev libssl-dev

RUN git clone https://github.com/arut/nginx-ts-module.git && wget https://nginx.org/download/nginx-1.13.8.tar.gz && git clone https://github.com/sergey-dryabzhinsky/nginx-rtmp-module.git

RUN tar -xf nginx-1.13.8.tar.gz && cd nginx-1.13.8/

RUN apt update && apt install autoconf automake build-essential libpcre3 libpcre3-dev libssl-dev

RUN ./configure --with-http_ssl_module --add-module=../nginx-rtmp-module --with-http_stub_status_module --add-module=../nginx-ts-module

RUN make && sudo make install

