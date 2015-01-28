# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:jessie
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

RUN apt-get update && \
    apt-get install -y nginx-full && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# DATA VOLUMES
RUN mkdir -p /data/nginx/www/
RUN mkdir -p /data/nginx/etc/
RUN mkdir -p /data/nginx/logs/
VOLUME ["/data/nginx/www"]
VOLUME ["/data/nginx/etc"]
VOLUME ["/data/nginx/logs"]

# PORTS
EXPOSE 80
EXPOSE 443

#ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
