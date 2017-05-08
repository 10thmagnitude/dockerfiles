
set -eu
set -o pipefail

apt update
apt install -y git curl openssh-client unzip

cd $HOME
curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip

echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS

sha256sum -c --quiet terraform_${TERRAFORM_VERSION}_SHA256SUMS

unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin
rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

apt autoremove -y

rm -rf /var/cache/apt/*
