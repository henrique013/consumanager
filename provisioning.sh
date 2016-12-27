#!/bin/bash


apt-get update
apt-get install -y htop
apt-get install -y curl
apt-get install -y git
apt-get install -y apache2
apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-pgsql php-xdebug
apt-get install -y composer
apt-get install -y postgresql-9.5
apt-get install -y nodejs-legacy
apt-get install -y npm


# PHP
sed -i "s/short_open_tag =.*/short_open_tag = On/" /etc/php/7.0/apache2/php.ini
sed -i "s/short_open_tag =.*/short_open_tag = On/" /etc/php/7.0/cli/php.ini
echo "
xdebug.remote_enable=1
xdebug.remote_port=9000
xdebug.remote_host=10.0.2.2" >> /etc/php/7.0/mods-available/xdebug.ini


# apache
a2enmod headers
service apache2 restart


# dependencias - globais
npm install gulp-cli@1.2.2 --global
npm install bower@1.8.0 --global


# dependencias
cd /var/www/html
npm install
bower install
composer install