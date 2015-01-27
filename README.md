WIP
==================

this repo contains config files for nginx which get copied to volume /data/nginx/etc

config files are based of debian's default configs with slight adaptions for docker, 
this repo's changelog should provide proper information.


DEVELOPMENT
==================

- update config-files based on debian defaults

docker build .
// capture the container id in $CONTAINER_ID
docker run --rm -ti -v $(pwd)/container-files/etc/nginx:/data/nginx/etc $(CONTAINER_ID) /bin/bash
// inside container
cp -a /etc/nginx/* /data/nginx/etc/.
