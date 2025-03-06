#!/bin/bash
sudo apt update && sudo apt install -y apache2
sudo apt install wget unzip httpd -y
sudo systemctl start httpd
systemctl enable httpd
sudo wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip
sudo unzip -o 2117_infinite_loop.zip
sudo cp -r 2117_infinite_loop/* /var/www/html/
sudo systemctl restart httpd
