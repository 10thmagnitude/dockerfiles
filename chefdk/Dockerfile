FROM ubuntu:latest

MAINTAINER ryan@ryanl.ee

ENV CHEFDK_PACKAGE_URL="https://packages.chef.io/files/stable/chefdk/1.1.16/ubuntu/16.04/chefdk_1.1.16-1_amd64.deb"

ADD docker_build.sh /root/docker_build.sh
RUN chmod +x /root/docker_build.sh && bash /root/docker_build.sh && rm /root/docker_build.sh
