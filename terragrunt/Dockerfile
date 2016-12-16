FROM hashicorp/terraform:light

MAINTAINER ryan@ryanl.ee

ENV TERRAGRUNT_VERSION=0.6.3

ADD build.sh /root/build.sh
RUN chmod +x /root/build.sh && sh /root/build.sh && rm /root/build.sh

ENTRYPOINT [ "/bin/terragrunt" ]
