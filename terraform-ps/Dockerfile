FROM microsoft/powershell:ubuntu16.04

MAINTAINER Scott Nowicki <snowicki@10thmagnitude.com>

# install AzureRM package
RUN powershell -Command "Install-Package -Name AzureRM.NetCore.Preview -Force"

# install Terraform 0.9.4
ENV TERRAFORM_VERSION=0.9.4
ENV TERRAFORM_SHA256SUM=cc1cffee3b82820b7f049bb290b841762ee920aef3cf4d95382cc7ea01135707

ADD install-terraform.sh /root/install-terraform.sh
RUN chmod +x /root/install-terraform.sh && bash /root/install-terraform.sh && rm /root/install-terraform.sh

ENTRYPOINT [ "powershell" ]
CMD [ "-Help" ]
