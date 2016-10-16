FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apk update && apk add \
 curl
 
 RUN \
 mkdir /config && \
 curl https://gitlab.com/ThatGuy/convert2mkv/raw/master/convert2mkv.sh > /usr/bin/convert2mkv.sh
  
ENTRYPOINT ["/usr/bin/convert2mkv.sh"]

VOLUME ["/config"]

CMD ["--version"]
