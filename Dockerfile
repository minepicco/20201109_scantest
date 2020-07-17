From httpd:2.4.43-alpine
MAINTAINER macnica <container_sol@cs.macnica.net>
COPY index.html /usr/local/apache2/htdocs/
HEALTHCHECK CMD curl http://localhost
EXPOSE 80
