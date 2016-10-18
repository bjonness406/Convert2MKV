#!/bin/bash

#Give message when starting the container
printf "\n \n \n ------------------------Starting container ------------------------ \n \n \n"

#If convert2mkv.sh exist, then skip redownloading it.
if [[ -f "/config/convert2mkv.sh" ]]; then
 
 echo "[Info] Script already downloaded, skipping download. If you want to redownload the script, delete convert2mkv.sh in you appdata"

#Downloading script if it is not found in /config
else
 echo "[Info] Downloading script..."
 curl https://gitlab.com/ThatGuy/convert2mkv/raw/master/convert2mkv.sh > /config/convert2mkv.sh && \
 chmod +x /config/convert2mkv.sh
 chmod 777 /config/convert2mkv.sh
 
 fi
 
 echo "[Info] Starting script"
 bash /config/convert2mkv.sh
 
echo "Stopping Container, script finished.."
