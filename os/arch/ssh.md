# connect to linux on mac via ssh
solution fount on https://unix.stackexchange.com/a/676391/566291
the computer you want to ssh into:

Download Openssh on linux machine
```sh
sudo pacman -S openssh
```
comment out KbdInteractiveAuthentication no
```sh
sudo vim /etc/ssh/sshd_config
```

```sh
systemctl start sshd.service
systemctl enable sshd.service
```

grab the <ip_address> of form 192.168.x.x
```sh
ip -br a | grep UP echo $USER --> This will be the
```

On the computer you want to connect from:
```sh
ssh <user_name>@<ip_address>
```

Using the gui application on remote ssh
```sh
ssh -X <user_name>@<ip_address>
```

# Why we need VPN before using SSH?
[What VPN provide.](../../vpn.md)
