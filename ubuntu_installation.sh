#!/bin/sh
echo "updating first"
apt-get update
sleep 1

echo "installing nano"
apt-get install -y nano
sleep 1

echo "installing curl"
apt-get install -y curl
sleep 1

echo "installing mysql"
sudo apt-get install -y mysql-server
sleep 1

echo "installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
sleep 1

echo "setting up profiles"
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc

echo "installing node 10"
nvm install 10
sleep 1

echo "installing pm2"
npm install -g pm2
sleep 1

echo "installing git"
apt-get install -y git
sleep 1

echo "installing vim"
apt-get install -y vim 
sleep 1

echo "installing tmux"
apt-get install -y tmux 
sleep 1

echo "installing angular cli"
npm install -g @angular/cli --unsafe-perm=true –allow-root
ng version

echo "installing nginx"
apt-get install -y nginx
sleep 1

echo "installing firewall"
apt-get install -y ufw
sleep 1

echo "configuring firewall"
echo "disable all incoming connection"
ufw default deny incoming

echo "enable all outgoing connection"
ufw default allow outgoing

echo "allowing ssh"
ufw allow ssh

echo "allowing mysql"
ufw allow 3306

echo "allowing http"
ufw allow 80

echo "allowing https"
ufw allow 443

echo "enabling firewall"
ufw enable

echo "enabling nginx"
ufw allow 'Nginx HTTP'


echo "displaying the status of firewall" 
ufw status verbose 
sleep 8
