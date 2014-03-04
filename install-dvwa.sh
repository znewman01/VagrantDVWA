#!/bin/bash

sudo apt-get -y update

MYSQL_PASSWORD=dvwapass
debconf-set-selections <<< "mysql-server mysql-server/root_password password $MYSQL_PASSWORD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $MYSQL_PASSWORD"
sudo apt-get -y install apache2 mysql-server php5 unzip php5-mysql php-pear*

cd /var/www
wget https://github.com/RandomStorm/DVWA/archive/v1.0.8.zip
unzip -u v1.0.8.zip

cp /vagrant/php.ini /etc/php5/apache2/php.ini
cp /vagrant/config.inc.php /var/www/DVWA-1.0.8/config/config.inc.php
chmod -R 777 /var/www/DVWA-1.0.8/hackable/uploads/
service apache2 restart

(echo 'create database if not exists dvwa;' | mysql -u root -p$MYSQL_PASSWORD)
