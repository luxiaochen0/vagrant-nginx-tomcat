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
sudo systemctl enable nginx.service 
sudo systemctl start nginx.service