#��������ǽ
iptables -I INPUT -p tcp --dport 3000 -j ACCEPT
iptables -I INPUT -p tcp --dport 25 -j ACCEPT
service iptables save
service iptables restart
#��wget��git��zip��pm2
yum -y install wget
yum -y install git
#��װnote.js
curl -sL https://rpm.nodesource.com/setup_9.x | bash -
yum install nodejs -y
#��װforsaken-mail��ʱ������
git clone https://github.com/malaohu/forsaken-mail.git
cd forsaken-mail
#��̨����
npm install pm2@latest -g
npm install
cd /root/forsaken-mail
pm2 start bin/www
pm2 startup
pm2 save
