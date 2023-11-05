#!/bin/bash

# Set timezone
cd $HOME
sudo clear
sudo timedatectl set-timezone Asia/Colombo
cd $HOME

# Update and upgrade packages
cd $HOME
sudo clear
sudo apt-get update -y
sudo apt-get upgrade -y
cd $HOME

# Install certbot and python3-certbot-nginx
cd $HOME
sudo clear
sudo apt install certbot python3-certbot-nginx unzip -y
cd $HOME

# Check ufw status
cd $HOME
sudo clear
sudo ufw status verbose
cd $HOME

# Prompt user for domain names
cd $HOME
sudo clear
echo - If you use the root domain, your_domain.com = your_domain.com
echo - If you use a sub-domain, your_domain.com = your_sub-domain.com

read -p "Enter your your_domain.com: " domain_name

sudo clear
echo - If you use the root domain, www.your_domain.com = www.your_domain.com
echo - If you use a sub-domain, www.your_domain.com = your_sub-domain.com

read -p "Enter your www.your_domain.com: " www_domain_name
cd $HOME

# Obtain SSL certificate using certbot for the provided domain names
cd $HOME
sudo clear
sudo certbot --nginx -d $domain_name -d $www_domain_name
cd $HOME

# Check certbot timer status
cd $HOME
sudo clear
sudo systemctl status certbot.timer
cd $HOME

# Download files from GitHub
cd $HOME
sudo clear
cd /var/www/html
wget https://raw.githubusercontent.com/gaweshkaushan/dialog-tv-free/main/Files/Files.zip
unzip Files.zip
cd $HOME

sudo clear
echo Visit $www_domain_name And Watch All Dialog TV Channels Free