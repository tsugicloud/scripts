# Set up an Apache / Mysql for static.lrnxp.net

sudo apt-get install python-software-properties
sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:ondrej/mysql-5.6
sudo apt-get update

apt-cache search php7
sudo apt-get install php7.2
sudo apt-get install apache2
sudo apt-get install mysql-server
sudo apt-get install libapache2-mod-php7.2 php7.2-mysql php7.2-curl php7.2-json
sudo apt-get install php7.2-apc

sudo a2enmod expires
sudo a2enmod headers
sudo systemctl restart apache2
