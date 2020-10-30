#!/usr/bin/env bash

## declare variables

HOME=/home/ubuntu

HUGO=/home/ubuntu/hugo

## run as sudo

apt-get update && apt-get upgrade --y

apt-get install neofetch hugo ifupdown apache2 ufw vsftpd python3-pip mlocate net-tools

snap install core; snap refresh core

snap install --classic certbot

## comment out if not utilising server for static blog hosting

## as of v0.2 mkdir is redundant due to creation of directories in hugoRefresh.sh

##mkdir /var/www/html/matthewharazim.co.uk
##mkdir /var/www/html/eskibles.us
##mkdir /var/www/html/bearlyapodcast.net
mkdir $HOME/hugo

cd $HUGO

git clone https://github.com/bearlyMatt/matthewharazim.co.uk.git

git clone https://github.com/bearlyMatt/eskibles.us.git

git clone https://github.com/bearlyMatt/bearlyapodcast.net.git

echo -e "\e[32mUbuntu Server initialised with bearlyMatt's packages. Hugo directory tree initialised."
echo -e "\e[0mGood Luck!"
