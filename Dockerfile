FROM ubuntu:18.04

LABEL MAINTAINER="mmaiso@arsys.es"

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee> Hello From Arsys</marquee>' \
    > /var/www/html/index.html

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]

CMD ["-h"]