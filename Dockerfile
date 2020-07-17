From httpd:2.4.43-alpine
MAINTAINER macnica <container_sol@cs.macnica.net>
COPY index.html /usr/local/apache2/htdocs/
RUN apk add sudo
RUN adduser -D -u 1001 -s /bin/sh -G macnica alpine-sudoer
RUN echo '%macnica ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
#RUN adduser macnica --disabled-password
USER macnica
HEALTHCHECK CMD curl http://localhost
