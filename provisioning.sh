#!/bin/bash


# ---------------------------------------
#          Virtual Machine Setup
# ---------------------------------------

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


# ---------------------------------------
#          PostgreSQL Setup
# ---------------------------------------

cd /etc/postgresql/9.5/main

sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" postgresql.conf
echo "host  all  all  10.0.2.0/24  md5" >> pg_hba.conf
service postgresql restart

sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"


# ---------------------------------------
#          PHP Setup
# ---------------------------------------

cd /etc/php/7.0

xdebug="
xdebug.remote_enable=1
xdebug.remote_port=9000
xdebug.remote_host=10.0.2.2"

echo "${xdebug}" >> mods-available/xdebug.ini
sed -i "s/short_open_tag =.*/short_open_tag = On/" apache2/php.ini
sed -i "s/short_open_tag =.*/short_open_tag = On/" cli/php.ini


# ---------------------------------------
#          Apache Setup
# ---------------------------------------

vhost="
<VirtualHost *:80>
  DocumentRoot /var/www/public
  ServerName localhost
  <Directory /var/www/public>
    AllowOverride All
  </Directory>
</VirtualHost>"

echo "${vhost}" > /etc/apache2/sites-available/site_vagrant.conf
a2ensite site_vagrant.conf

a2enmod rewrite
service apache2 restart


# ---------------------------------------
#       Tools Setup.
# ---------------------------------------

cd /var/www/public

npm install gulp-cli@1.2.2 --global
npm install bower@1.8.0 --global

npm install
bower install
composer install