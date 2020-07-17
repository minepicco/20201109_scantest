From apache:2.4
MAINTAINER macnica <container_sol@cs.macnica.net>
COPY index.html /usr/local/apache2/htdocs/
HEALTHCHECK CMD curl http://localhost:80
