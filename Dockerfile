FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apk update && \
 apk add --no-cache \
 wget \
 unzip && \
 
 cd tmp && \
 wget -q https://gitlab.com/ThatGuy/convert2mkv/repository/archive.zip?ref=master && \
 unzip /tmp/convert2mkv-master-*.zip && \
 mv /tmp/convert2mkv-master-* /config && \
 
# cleanup
 rm -rf \
	/tmp/* \
	/var/tmp/*
  
ENTRYPOINT ["/config/convert2mkv.sh"]

VOLUME ["/config"]

CMD ["--version"]
