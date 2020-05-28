#!/bin/bash
apt update
apt upgrade
apt install nginx proftpd php-fpm php7.2-cli php7.2-curl php7.2-gd php7.2-mysql php7.2-mbstring zip unzip php7.2-xml php7.2-zip  -y
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://mirror.timeweb.ru/mariadb/repo/10.3/ubuntu bionic main'
apt install mariadb-server -y
mysql_secure_installation
add-apt-repository ppa:certbot/certbot
apt install python-certbot-nginx -y