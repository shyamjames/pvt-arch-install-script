setfont ter-120b
timedatectl set-timezone Asia/Kolkata

read -p "Connect to Wi-Fi? (yes/no): " conn
if [[ "$conn" == "yes" ]]; then
	read -p "Enter network name: " network
	read -p "Enter password: " pass
	iwctl --passphrase "$pass" station wlan0 connect "$network"
fi

lsblk
read -p "Enter the disk device: probably '/dev/nvme0n1'" device

fdisk "$device"

mkfs.fat -F32 /dev/nvme0n1p1
mkswap /dev/nvme0n1p2
mkfs.ext4 /dev/nvme0n1p3

mount /dev/nvme0n1p3 /mnt
swapon /dev/nvme0n1p2

pacstrap -K /mnt base linux linux-firmware linux-headers intel-ucode sof-firmware sudo vim
genfstab -U /mnt >> /mnt/etc/fstab

echo "do arch-chroot /mnt"
