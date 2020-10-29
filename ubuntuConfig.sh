#!/usr/bin/env bash

## run as sudo

apt-get update && apt-get upgrade --y

apt-get install neofetch hugo ifupdown apache2 ufw vsftpd python3-pip mlocate net-tools

## comment out if not utilising server for static blog hosting

mkdir /var/www/html/matthewharazim.co.uk
mkdir /var/www/html/eskibles.us
mkdir /var/www/html/bearlyapodcast.net
mkdir ~/hugo

cd ~/hugo

git clone https://github.com/bearlyMatt/matthewharazim.co.uk.git

git clone https://github.com/bearlyMatt/eskibles.us.git

git clone https://github.com/bearlyMatt/bearlyapodcast.net.git

echo -e "\e[32mUbuntu Server initialised with bearlyMatt's packages. Hugo directory tree initialised."
echo -e "\e[0mGood Luck!]"
