# sudo
Set up sudo on new install

```sh
su -
apt install sudo
usermod -aG sudo [username]
reboot
```

## Allow access to shutdown to all users without password
```sh
echo "ALL ALL=NOPASSWD: /sbin/shutdown" | sudo tee /etc/sudoers.d/shutdown > /dev/null
```

## Allow `apt update`
```sh
echo "ALL ALL=NOPASSWD: /usr/bin/apt update" | sudo tee /etc/sudoers.d/apt-update > /dev/null
```