FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apk update && \
 apk add --no-cache \
 wget \
 unzip && \
 mkdir /config && \
 
 cd tmp && \
 wget -q http://downloads.rclone.org/rclone-current-linux-amd64.zip && \
 unzip /tmp/rclone-current-linux-amd64.zip && \
 mv /tmp/rclone-*-linux-amd64/rclone /config && \
 
# cleanup
 rm -rf \
	/tmp/* \
	/var/tmp/*
  
ENTRYPOINT ["/config/rclone"]

VOLUME ["/config"]

CMD ["--version"]
