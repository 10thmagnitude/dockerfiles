FROM hashicorp/terraform:light

MAINTAINER ryan@ryanl.ee

ENV TERRAGRUNT_VERSION=0.9.7

ADD docker_build.sh /root/docker_build.sh
RUN chmod +x /root/docker_build.sh && sh /root/docker_build.sh && rm /root/docker_build.sh

ENTRYPOINT [ "/bin/terragrunt" ]
