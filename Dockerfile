# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:latest
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

RUN apt-get update && \
    apt-get install -y nginx-full && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# MKDIR VOLUME DIRECTORIES
RUN mkdir -p /data/www/
RUN mkdir -p /data/etc/nginx/sites-enabled
# INJECT CUSTOM NGINX CONFIG
#COPY container-files/etc/nginx/ /data/nginx/etc/

# CREATE VOLUMES
VOLUME ["/data/www"]
VOLUME ["/data/etc/nginx/sites-enabled"]

# PORTS
EXPOSE 80
EXPOSE 443

#ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
