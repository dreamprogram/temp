#开启防火墙
iptables -I INPUT -p tcp --dport 3000 -j ACCEPT
iptables -I INPUT -p tcp --dport 25 -j ACCEPT
service iptables save
service iptables restart
#下wget、git、zip、pm2
yum -y install wget
yum -y install git
#安装note.js
curl -sL https://rpm.nodesource.com/setup_9.x | bash -
yum install nodejs -y
#安装forsaken-mail临时邮箱插件
git clone https://github.com/malaohu/forsaken-mail.git
cd forsaken-mail
#后台运行
npm install pm2@latest -g
npm install
cd /root/forsaken-mail
pm2 start bin/www
pm2 startup
pm2 save
