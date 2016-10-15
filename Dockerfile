FROM debian

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
 unzip /config/archive.zip?ref=master && \
 
# cleanup
 rm -rf \
	/config/*.zip 
  
ENTRYPOINT ["/config/convert2mkv.sh"]

VOLUME ["/config"]

CMD ["--version"]
