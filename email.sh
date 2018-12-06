#open iptables
iptables -I INPUT -p tcp --dport 3000 -j ACCEPT
iptables -I INPUT -p tcp --dport 25 -j ACCEPT
service iptables save
service iptables restart

yum -y install wget
yum -y install git
#install note.js
curl -sL https://rpm.nodesource.com/setup_9.x | bash -
yum install nodejs -y
#install forsaken-mail  get email
git clone https://github.com/malaohu/forsaken-mail.git
cd forsaken-mail
#The background
npm install pm2@latest -g
npm install
cd /root/forsaken-mail
pm2 start bin/www
pm2 startup
pm2 save
