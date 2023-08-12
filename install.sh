#!/bin/bash


install_dir=/root/xray-configuration
mkdir $install_dir


wget https://raw.githubusercontent.com/majidrezarahnavard/xray-configuration/main/reality.json


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


xray x25519

# Generate key pair
echo "Generating key pair..."
key_pair=$($install_dir/xray x25519)
echo "Key pair generation complete."
echo key_pair

# Extract private key and public key
private_key=$(echo "$key_pair" | awk '/PrivateKey/ {print $2}' | tr -d '"')
public_key=$(echo "$key_pair" | awk '/PublicKey/ {print $2}' | tr -d '"')

# Generate necessary values
uuid=$($install_dir/xray generate uuid)
short_id=$($install_dir/xray generate rand --hex 8)
