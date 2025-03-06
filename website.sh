#!/bin/bash

# Update and install Apache
sudo apt update && sudo apt install -y apache2 wget unzip

# Start and enable Apache
sudo systemctl start apache2
sudo systemctl enable apache2

# Download and extract the template
sudo wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip -O /tmp/2117_infinite_loop.zip
sudo unzip -o /tmp/2117_infinite_loop.zip -d /tmp/

# Copy files to the web server directory
sudo cp -r /tmp/2117_infinite_loop/* /var/www/html/
sudo chown -R www-data:www-data /var/www/html/

# Restart Apache
sudo systemctl restart apache2
