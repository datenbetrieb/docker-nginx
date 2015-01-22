# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:jessie
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

RUN apt-get update && \
    apt-get install -y nginx-full && \
    rm -rf /var/lib/apt/lists/*
#    echo "daemon off;" >> /etc/nginx/nginx.conf 
#RUN sed -i -e "s/;daemonize\s*=\s*yes/daemonize = no/g" /etc/php5/fpm/php-fpm.conf

# log to stderr, thx @tianon
#RUN sed -ri 's!\berror_log\s+\S*\b!error_log stderr!' /etc/nginx/nginx.conf && echo '\n# prevent backgrounding (for Docker)\ndaemon off;' >> /etc/nginx/nginx.conf

EXPOSE 80 443

#ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
