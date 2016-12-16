set -eu
set -o pipefail

apt-get update
apt-get install -y curl

cd $HOME
curl $CHEFDK_PACKAGE_URL -o chefdk.deb
dpkg -i chefdk.deb
rm chefdk.deb

apt-get remove -y --purge curl
apt-get autoremove -y

rm -rf /var/cache/apt/*

echo 'eval "$(chef shell-init bash)"' >> ~/.bashrc
