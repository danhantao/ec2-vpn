# install pptpd
apt-get install pptpd
# pptpd.conf
cd /etc
rm pptpd.conf
wget https://raw.githubusercontent.com/danhantao/ec2-vpn/master/pptpd.conf 
# pptpd-options
cd /etc/ppp
rm pptpd-options
wget https://raw.githubusercontent.com/danhantao/ec2-vpn/master/pptpd-options 
# USERNAME PASSWORD
echo "USERNAME pptpd PASSWORD *" | sudo tee -a /etc/ppp/chap-secrets
/etc/init.d/pptpd restart
# sysctl.conf
cd /etc
rm sysctl.conf
wget https://raw.githubusercontent.com/danhantao/ec2-vpn/master/sysctl.conf
sysctl -p
# iptables
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
rm rc.local
wget https://raw.githubusercontent.com/danhantao/ec2-vpn/master/rc.local
chmod 755 rc.local
/etc/init.d/pptpd restart



