# Set up an Apache / Mysql for static.lrnxp.net
# Also used to set up apache for apps.lrnxp.com

# Set DNS in Route 53
# sudo vi /etc/hostname apps.xyz.com
# sudo hostname apps.xyz.com
# sudo reboot

sudo apt-get install -y python-software-properties
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ondrej/php
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:ondrej/mysql-5.6
sudo add-apt-repository -y ppa:certbot/certbot
sudo apt-get update

sudo apt-get install -y apache2

apt-cache search php7

sudo apt-get install -y php7.1
sudo apt-get install -y libapache2-mod-php7.1 php7.1-mysql php7.1-curl php7.1-json
sudo apt-get install -y php7.1-mbstring php7.1-zip php7.1-xml php7.1-gd
sudo apt-get install -y php7.1-apc

# If you want local mysql (not needed for Aurora)
sudo apt-get install -y mysql-server

sudo a2enmod expires
sudo a2enmod headers
sudo a2enmod rewrite
sudo phpenmod mysqlnd pdo_mysql
# sudo a2enmod php7.1
# sudo a2dismod php7.1

# vi /etc/apache2/apache2.conf
# AllowOverride All

sudo systemctl restart apache2

# apache2ctl configtest
# apache2ctl -S

sudo apt install composer

sudo apt-get install -y python-certbot-apache 

# For SSL
# sudo certbot --apache
#   Need to enter email
#   Need to enter domain name
# https://www.ssllabs.com/ssltest/analyze.html?d=xyz.org
# sudo certbot --expand -d www.xyz.org
# https://www.ssllabs.com/ssltest/analyze.html?d=www.xyz.org

# for outbound mail
# sudo apt install -y mailutils
#   Internet Site
# if you need to reconfigure postfix: sudo dpkg-reconfigure postfix

# Git stuff...
# git config --global user.name "Charles R. Severance"
# git config --global user.email "csev@umich.edu"
# git config --global core.editor "vim"
