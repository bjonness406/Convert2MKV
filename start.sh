#!/bin/bash

 curl https://gitlab.com/ThatGuy/convert2mkv/raw/master/convert2mkv.sh > /config/convert2mkv.sh && \
 chmod +x /config/convert2mkv.sh
 
 bash /config/convert2mkv.sh
 
 #Only for testing, when docker will not stop immediately after script.. 
 sleep 300
