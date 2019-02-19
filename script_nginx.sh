sudo sed -i 's/^SELINUX=enforcing$/SELINUX=disabled/' /etc/selinux/config
sudo yum install yum-utils -y
sudo sh -c "cat>/etc/yum.repos.d/nginx.repo"<<EOF
[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
EOF
sudo yum install nginx -y
sudo mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak
#sudo ln -s /vagrant/nginx/conf/default.conf /etc/nginx/conf.d/
sudo cp /vagrant/nginx/conf/default.conf /etc/nginx/conf.d/
sudo systemctl enable nginx.service 
sudo systemctl start nginx.service
sudo reboot
