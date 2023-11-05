# Automatic Installation

- You must `Login as root`
- If you login with different account, Script will exited.

- If you have enough Permissions, You can simply Use this commands to grant root access

```
sudo su
cd
```

<details>
	<summary>If Above Method Not Working For Granting The Root, Follow This ---></summary>

- ### Login To Web SSH Terminal

	### Edit sshd_config File With Bellow Command

	```
	sudo nano /etc/ssh/sshd_config
	```

	### Edit Those Lines

	```
	#PermitRootLogin prohibit-password [[>>> Change To <<<]] PermitRootLogin yes
	PasswordAuthentication no [[>>> Change To <<<]] #PasswordAuthentication yes
	```

	### Finally Type Those Commands To Restart SSH Services

	```
	sudo service ssh restart
	sudo service sshd restart
	```

</details>

- ### Now You Can Install Script With Bellow Commands

```
wget https://raw.githubusercontent.com/gaweshkaushan/dialog-tv-free/main/Automatic%20Installation/setup.sh
sudo bash setup.sh
```

# Manual SSL Certificate Renewal

SSL certificates are renewing automatically. If you want to renew manually use bellow command

```
sudo certbot renew --dry-run
```

# Manual Installation

## Click [Here](https://github.com/gaweshkaushan/dialog-tv-free/tree/main/Manual%20Installation/) For Instructions
