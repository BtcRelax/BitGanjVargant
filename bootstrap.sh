#!/usr/bin/env bash
#apt -y install software-properties-common
#add-apt-repository -y ppa:ondrej/apache2
#add-apt-repository -y ppa:ondrej/php
apt-get update

# Create main user
# ---------------
adduser --quiet --disabled-password god
usermod -G sudo,adm,www-data god
cd /home/god
mkdir .ssh
mkdir public_html
cp /vagrant/authorized_keys /home/god/.ssh/authorized_keys
apt-get -y install python apt-show-versions libapt-pkg-perl libauthen-pam-perl libio-pty-perl libnet-ssleay-perl unzip mc ntpdate 
chown -R god:adm /opt
timedatectl set-timezone Europe/Kiev
ntpdate 192.168.2.2 


# Install realmd
#---------------
#apt -y install realmd sssd sssd-tools libnss-sss libpam-sss adcli samba-common-bin oddjob oddjob-mkhomedir packagekit

#a2ensite www.cryptopup.space
#echo "<VirtualHost *:80>
#    ServerName www.cryptopup.space
#    ServerAdmin boomhacker@cryptopup.space
#    DocumentRoot /home/god/public_html
#    ErrorLog /var/log/apache2/www.cryptopup.space.error.log
#    CustomLog /var/log/apache2/www.cryptopup.space.access.log combined
#    LogLevel warn
#</VirtualHost>" >> /etc/apache2/sites-available/www.cryptopup.space.conf

