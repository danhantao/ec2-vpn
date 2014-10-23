ec2-vpn为在亚马逊vps上面搭建vpn的步骤  

前提是，你有aws上一一台虚拟主机，然后执行如下命令：  
wget https://raw.githubusercontent.com/danhantao/ec2-vpn/master/ec2-vpn.sh  
sudo su  
export VPN_USERNAME=dev VPN_PASSWORD=dev    
`VPN_USERNAME`为vpn用户名　`VPN_PASSWORD`为vpn密码  
sh ec2-vpn.sh  

然后你就搭建好了vpn了。


服务器地址为：aws的ip  
用户名为：dev  (根据你的设置)  
密码为：dev  

