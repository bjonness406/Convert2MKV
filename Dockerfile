FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apk update && apk add \
 curl
 
RUN \
 mkdir /config 
 
ADD start.sh /start.sh
RUN chmod +x /start.sh

VOLUME ["/config"]

WORKDIR /config

ENTRYPOINT ["/start.sh"]
