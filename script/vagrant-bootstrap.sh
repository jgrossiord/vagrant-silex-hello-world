#!/bin/bash -e

sudo apt-get update -y
#sudo apt-get upgrade -y
sudo apt-get install -y curl apache2 php5 php5-cli php-pear php5-curl phpunit php5-intl php5-memcache php5-dev php5-gd php5-mcrypt php5-dev git-core git #mongodb-10gen make 

sudo cp /vagrant/script/template/silex-app.conf /etc/apache2/sites-available/silex-app
#sudo sed -i -e "s/\/var\/www/\/vagrant\/web/g" /etc/apache2/sites-available/silex-app

#sudo sed -i  -e 's/\(APACHE_LOG_DIR\=\)[^ ]*/\1\/vagrant\/logs\/web/g' /etc/apache2/envvars
# -e 's/\(APACHE_RUN_USER\=\)[^ ]*/\1vagrant/g' -e 's/\(APACHE_RUN_GROUP\=\)[^ ]*/\1vagrant/g'

rm /vagrant/logs/web/*.log
 
sudo a2enmod rewrite
sudo a2dissite 000-default
sudo a2ensite silex-app
sudo service apache2 restart

cd /vagrant
curl -s http://getcomposer.org/installer | php5
php5 composer.phar install
php5 composer.phar update

