FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apk update && apk add \
 wget \
 unzip \
 curl
 
 RUN \
 cd /tmp && \
 curl https://gitlab.com/ThatGuy/convert2mkv/repository/archive.zip?ref=master
 
 #RUN \
 #unzip /tmp/archive.zip?ref=master
 
 #RUN \
 #mv /tmp/convert2mkv-master-*/convert2mkv.sh /usr/bin
 
 # cleanup
 #RUN \
 #rm -rf \
	#/tmp/* \
	#/var/tmp/*
  
#ENTRYPOINT ["/usr/bin/convert2mkv.sh"]

VOLUME ["/config"]

CMD ["--version"]
