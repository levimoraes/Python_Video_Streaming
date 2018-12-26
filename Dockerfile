FROM ubuntu:latest
MAINTAINER LEVI MORAES

RUN apt-get update && apt-get install -y ffmpeg python net-tools git vim wget build-essential libpcre3 libpcre3-dev libssl-dev apt-transport-https ca-certificates curl software-properties-common autoconf automake build-essential libpcre3 libpcre3-dev libssl-dev

COPY script.sh /
COPY nginx.conf /
COPY player.html /

RUN chmod +x script.sh
RUN /script.sh
RUN /usr/local/nginx/sbin/nginx

WORKDIR /
EXPOSE 7788
EXPOSE 8080

RUN python -m SimpleHTTPServer 7788 &
