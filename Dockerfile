# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:jessie
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

RUN apt-get update && \
    apt-get install -y nginx-full && \
    apt-get get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80 443

#ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
