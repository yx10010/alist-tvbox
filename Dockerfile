FROM haroldli/xiaoya-tvbox:latest

LABEL MAINTAINER="Har01d"

ENV JAVA_HOME=/jre
ENV PATH="${JAVA_HOME}/bin:${PATH}"


VOLUME /root/data/

WORKDIR /app
USER root

EXPOSE 4567

