FROM haroldli/alist-base:latest

LABEL MAINTAINER="Har01d"

ENV MEM_OPT="-Xmx512M"

COPY init.sh /
COPY movie.sh /
COPY entrypoint.sh /


EXPOSE 4567

ENTRYPOINT ["/entrypoint.sh"]

CMD ["81", "--spring.profiles.active=production,xiaoya"]
