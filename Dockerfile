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
 #curl https://gitlab.com/ThatGuy/convert2mkv/raw/master/convert2mkv.sh > /usr/bin/convert2mkv.sh && \
 #chmod +x /usr/bin/convert2mkv.sh

VOLUME ["/config"]
  
ENTRYPOINT ["/start.sh"]
