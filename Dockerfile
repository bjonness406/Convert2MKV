FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apk update && \
 apk add --no-cache \
 wget \
 unzip
 
 RUN \
 cd tmp && \
 wget http://gitlab.com/ThatGuy/convert2mkv/repository/archive.zip?ref=master
 
 RUN \
 unzip /tmp/archive.zip?ref=master && /
 mv /tmp/convert2mkv-master-*/convert2mkv.sh /usr/bin && \
 
 # cleanup
 rm -rf \
	/tmp/* \
	/var/tmp/*
  
ENTRYPOINT ["/usr/bin/convert2mkv.sh"]

VOLUME ["/config"]

CMD ["--version"]
