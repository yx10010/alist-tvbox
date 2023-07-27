FROM haroldli/xiaoya-tvbox:latest

FROM alpine:latest

FROM openjdk:8

LABEL MAINTAINER="Har01d"

ENV JAVA_HOME=/jre
ENV PATH="${JAVA_HOME}/bin:${PATH}"

COPY --from=corretto-jdk /jre $JAVA_HOME

VOLUME /root/data/

WORKDIR /app
USER root

COPY target/alist-tvbox-1.0.jar ./alist-tvbox.jar

EXPOSE 4567

ENTRYPOINT ["java", "-jar", "alist-tvbox.jar", "--spring.profiles.active=production,docker"]
