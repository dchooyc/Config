# Config

Install instructions after booting arch iso

### wifi
```
ip addr show
iwctl
station wlan0 get-networks
exit
iwctl --passphrase "<wifi_password>" station wlan0 connect <wifi_network>
ip addr show
```

### ssh
```
systemctl start sshd
systemctl status sshd
passwd
```

### archinstall
```
archinstall
Mirrors -> Mirror region -> /<country>
Locales -> Locale language -> /<locale_language>
Disk configuration -> Use a best.. -> <hard_drive> -> ext4 -> yes (default)
Swap -> yes (default)
Root password -> <set password>
User account -> Add a user -> <username> -> <set password> -> yes (default) -> Confirm and exit
Profile -> Type -> Desktop -> Gnome
Audio -> Pipewire
Kernels -> /linux-lts
Network configuration -> Use NetworkManager
Timezone -> /<country>
Install
chroot (post installation) -> No
reboot
```

### Config
```
sudo pacman -S --noconfirm git
git clone https://github.com/dchooyc/Config.git
Config/start
```
