#!/usr/bin/env bash

## declare variables

HOME=/home/bearlyadmin

HUGO=/home/bearlyadmin/hugo

## run as sudo

apt-get update && apt-get upgrade --y

apt-get install neofetch hugo ifupdown apache2 ufw vsftpd python3-pip mlocate net-tools tmux bc htop git unzip mariadb-server


## install php and modules
## current modules are led by firefly iii dependencies

apt-get install php php-mbstring php-bcmath php-curl php-zip php-gd php-xml php-ldap php-intl php-mysql php-imagick


## download and install composer

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

## install snap and install certbot snap package

snap install core; snap refresh core

snap install --classic certbot

## add symlink for correct certbot usage

ln -s /snap/bin/certbot /usr/bin/certbot



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
