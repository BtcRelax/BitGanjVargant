### Install Open VPN
#apt install apt-transport-https
#wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
#apt-key add openvpn-repo-pkg-key.pub
#wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-bionic.list
#apt update
#apt -y install openvpn3

### Disable ipv6
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf 
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf

### Route web traffic with NGinx
apt-get -y install nginx
systemctl start nginx
systemctl enable nginx

#apt -y install certbot
sudo apt install easy-rsa
cd /opt
wget https://www.apachefriends.org/xampp-files/7.4.11/xampp-linux-x64-7.4.11-0-installer.run
chmod 755 xampp-linux-x64-7.4.11-0-installer.run
sudo ./xampp-linux-x64-7.4.11-0-installer.run --mode unattended
