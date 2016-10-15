FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apk update && \
 apk add --no-cache \
 wget \
 unzip && \
 
 #Make config folder
 mkdir /config &&\ 
 
 cd tmp && \
 wget -q https://gitlab.com/ThatGuy/convert2mkv/repository/archive.zip?ref=master && \
 unzip /tmp/archive.zip?ref=master && \
 mv /tmp/convert2mkv-master-*/convert2mkv.sh /config/convert2mkv.sh && \
 
# cleanup
 rm -rf \
	/tmp/* \
	/var/tmp/*
  
ENTRYPOINT ["/config/convert2mkv.sh"]

VOLUME ["/config"]

CMD ["--version"]
