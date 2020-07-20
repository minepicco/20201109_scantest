From nginx:1.19.1-alpine
MAINTAINER macnica <container_sol@cs.macnica.net>
COPY index.html /usr/share/nginx/html/
RUN apk del --purge curl pcre && apk add --update curl pcre
HEALTHCHECK CMD curl http://localhost
EXPOSE 80
