#!/bin/bash 
yum update -y 
yum install -y httpd.x86_64 
systemctl start httpd.service 
systemctl enable httpd.service 
sudo git clone https://github.com/Arunponugotii/foodvlg.git /var/www/html/

