#!/bin/bash

echo "\n \n \n ------------------------Starting container ------------------------ \n \n \n"

if [[ ! -f "/config/convert2mkv.sh" ]]; then
 echo "[Info] Script already downloaded, skipping download. If you want to redownload the script, delete convert2mkv.sh in you appdata"

else
 echo "[Info] Downloading script..."
 curl https://gitlab.com/ThatGuy/convert2mkv/raw/master/convert2mkv.sh > /config/convert2mkv.sh && \
 chmod +x /config/convert2mkv.sh
 
 fi
 bash /config/convert2mkv.sh
 
Echo "Stopping Container, script finished.."
