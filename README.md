##A docker to convert your videos to mkv or mp4 

When you start the container, it will start the script, and stop when the script is finished. 
So you will need to restart the container when you add a file you want to convert 
You will need to place the videos you want to convert, in the appdata folder (/config). 

Thanks to @ntrevena (at plex forum) for the script!

Docker run command:

`docker run -v /Path-to-config:/config bjonness406/convert2mk`

Docker hub link: https://hub.docker.com/r/bjonness406/convert2mkv/

Docker template for unraid: https://github.com/bjonness406/Docker-templates
