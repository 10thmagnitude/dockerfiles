- Use RUN to execute a build script for each layer you were planning on creating (i.e. system level packaging, application customization, etc.). Bash/Powershell scripts are much friendlier than trying to hash together 15 commands on a single line RUN declaration and can take advantage of things like error handling and pipefail. Environment variables you set in the Dockerfile or pass through to Docker will be available. Example:
```
ADD docker_build.sh /root/docker_build.sh
ADD extra_stuff.sh /root/extra_stuff.sh
RUN chmod +x /root/docker_build.sh && bash /root/docker_build.sh && rm /root/docker_build.sh
RUN chmod +x /root/extra_stuff.sh && bash /root/extra_stuff.sh && rm /root/extra_stuff.sh
```
