ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc

echo arch > /etc/hostname

vim /etc/hosts

echo "en_IN.UTF-8" > /etc/locale.gen

locale-gen

echo LANG=en_IN.UTF-8 > /etc/locale.conf
export LANG=en_IN.UTF-8

passwd

read -p "Username: " username

useradd -m "$username"
usermod -aG wheel,audio,video,storage "$username"
passwd "$username"

# visudo
sed -i 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers

pacman -S grub efibootmgr

mkdir /boot/efi
mount /dev/nvme0n1p1 /boot/efi

grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi

grub-mkconfig -o /boot/grub/grub.cfg

pacman -S networkmanager
systemctl enable NetworkManager.service

pacman -S hyprland kitty sddm
systemctl enable sddm.service

echo "completed! now exit this and reboot"
