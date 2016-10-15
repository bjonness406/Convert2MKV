FROM justcontainers/base-alpine

MAINTAINER Bjonness406

# install packages
RUN \
 apt-get update && apt-get install -y \
  unzip \
  wget \
 && rm -rf /var/lib/apt/lists/*
 
 RUN \
 mkdir /config && \
 cd /config && \
 wget -q https://gitlab.com/ThatGuy/convert2mkv/repository/archive.zip?ref=master && \
 unzip /tmp/archive.zip?ref=master && \
 mv /tmp/convert2mkv-master-*/convert2mkv.sh /config && \
 
# cleanup
 rm -rf \
	/config/*.zip 
  
ENTRYPOINT ["/config/convert2mkv.sh"]

VOLUME ["/config"]

CMD ["--version"]
