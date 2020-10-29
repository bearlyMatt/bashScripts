#!/bin/#!/usr/bin/env bash

MH=/home/ubuntu/hugo/matthewharazim.co.uk
MHW=/var/www/html/matthewharazim.co.uk
ES=/home/ubuntu/hugo/eskibles.us
ESW=/var/www/html/eskibles.us
BAP=/home/ubuntu/hugo/bearlyapodcast.net
BAPW=/var/www/html/bearlyapodcast.net

#Invoke hugo command at the root of each site
echo "The Hugo site updater is now starting"

cd $MH

git pull

echo -e "\e[32mgit pull command for bearlyMatt complete"

cd $ES

git pull

echo -e "\e[32mgit pull command for eskibles.us complete"

cd $BAP

echo -e "\e[32mgit pull command for bearlyapodcast.net complete"

cd /

echo "returning to root"

hugo -d $MH

hugo -d $ES

hugo -d $BAP

echo -e "\e[32mcompilation of /public folders complete"

rm -R $MHW && rm -R $ESW && rm -R $BAPW

echo "removed previous sites(s)"

mv $MH/public $MHW && mv $ES/public $ESW && mv $BAP/public $BAPW

echo "moved new site to Apache server"

systemctl restart apache2

echo "restarting Apache service"

echo -e "\e[32mYour Hugo site(s) should now be updated"

echo "keep up the good work!"
