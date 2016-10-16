FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apk update && \
 apk add --no-cache \
 wget \
 unzip
 
 RUN \
 cd /tmp && \
 wget https://github.com/othrayte/docker-cc-amp/archive/master.zip
 
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
