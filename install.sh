#!/bin/bash


install_dir=/root/xray-configuration
mkdir $install_dir


wget https://raw.githubusercontent.com/majidrezarahnavard/xray-configuration/main/reality.json
wget https://raw.githubusercontent.com/majidrezarahnavard/xray-configuration/main/vmss_http.json
wget https://raw.githubusercontent.com/majidrezarahnavard/xray-configuration/main/irancell.json

#instal monitoring
apt-get update
apt-get install nload
apt-get install htop
apt-get install iftop
apt-get install vnstat
apt-get install speedtest-cli
apt-get install net-tools
apt-get install git
apt-get install cron
apt-get install curl tar unzip jq -y
apt-get install -y jq



journalctl --vacuum-time=1d


timedatectl set-timezone UTC
timedatectl
echo "UTC" | sudo tee /etc/timezone
cat /etc/timezone


bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install --beta -u root



# Generate key pair
echo "Generating key pair..."
key_pair=$(xray x25519)
echo "Key pair generation complete."
echo $key_pair



# Generate necessary values
uuid=$(cat /proc/sys/kernel/random/uuid)


# Define a list of characters and numbers
characters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

# Generate a 16-digit random string
short_id=""
for i in {1..2}; do
  random_char=$(echo $characters | tr -dc "$RANDOM")
  short_id+="$random_char"
done



echo $uuid
echo $short_id



# Install apache2 and clone the website
apt-get install apache2

cd /var/www/html/
git clone https://github.com/codingstella/vCard-personal-portfolio.git
cp -ar ./vCard-personal-portfolio/*  /var/www/html/
rm -rf ./vCard-personal-portfolio/