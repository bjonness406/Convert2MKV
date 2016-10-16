FROM ubuntu

MAINTAINER Bjonness406

# install packages
RUN apt-get update && apt-get install -y \
 curl \
 libimage-exiftool-perl \
 libav-tools
 
RUN \
 mkdir /config 
 
ADD start.sh /start.sh
RUN chmod +x /start.sh

VOLUME ["/config"]

WORKDIR /config

ENTRYPOINT ["/start.sh"]
