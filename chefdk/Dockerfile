FROM ubuntu:latest

MAINTAINER ryan@ryanl.ee

ENV CHEFDK_PACKAGE_URL="https://packages.chef.io/files/stable/chefdk/1.0.3/ubuntu/16.04/chefdk_1.0.3-1_amd64.deb"

ADD build.sh /root/build.sh
RUN chmod +x /root/build.sh && bash /root/build.sh && rm /root/build.sh
