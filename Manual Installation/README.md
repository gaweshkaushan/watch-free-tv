# Change TimeZone

```
timedatectl set-timezone Asia/Colombo
```



# Update And Upgrade Packages

```
sudo apt-get update -y
sudo apt-get upgrade -y
```



# Install Required Package

```
sudo apt install certbot python3-certbot-nginx unzip
```



# Verify Web Server Ports are Open and Allowed through Firewall

```
sudo ufw status verbose
```

- If console says `Status: inactive` you ready to goto next step

# Obtain an SSL certificate

- If you use the root domain,
	- `your_domain.com` = `your_domain.com` And `www.your_domain.com` = `www.your_domain.com`

- If you use a sub-domain,
	- `your_domain.com` = `your_sub-domain.com` And `www.your_domain.com` = `your_sub-domain.com`

```
sudo certbot --nginx -d your_domain.com -d www.your_domain.com
```

# Check Status of Certbot

```
sudo systemctl status certbot.timer
```



# Dry Run SSL Renewal

```
sudo certbot renew --dry-run
```


# Set-Up Dialog TV Web Server 

```
cd /var/www/html
wget "File Link" -O Files.zip
unzip Files.zip
```
- Now You Can Visit To Your Server And Watch Dialog TV Free
- Also Dialog Users Can Watch TV Without Any Data Charges

# Manual SSL Certificate Renewal

SSL certificates are renewing automatically. If you want to renew manually use bellow command

```
sudo certbot renew --dry-run
```
