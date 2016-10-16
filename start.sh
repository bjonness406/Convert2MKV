#!/bin/sh

curl https://gitlab.com/ThatGuy/convert2mkv/raw/master/convert2mkv.sh > /config/convert2mkv.sh && \
chmod +x /config/convert2mkv.sh
 
convert2mkv.sh
