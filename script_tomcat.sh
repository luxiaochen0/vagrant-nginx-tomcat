sudo yum install tomcat tomcat-webapps tomcat-admin-webapps -y
sudo systemctl enable tomcat
sudo systemctl start tomcat
sudo cp /vagrant/tomcat/webapps/test.war /usr/share/tomcat/webapps/