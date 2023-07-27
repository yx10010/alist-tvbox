FROM haroldli/xiaoya-tvbox:latest

LABEL MAINTAINER="Har01d"


VOLUME /root/data/

WORKDIR /app
USER root

EXPOSE 4567

