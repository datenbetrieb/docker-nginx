# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:latest
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

RUN apt-get update && \
    apt-get install -y nginx-full && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

# CREATE VOLUMES
#VOLUME ["/data/www"]
#VOLUME ["/etc/nginx/sites-enabled"]

# PORTS
EXPOSE 80
EXPOSE 443

#ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
