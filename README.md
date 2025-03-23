# Arch Linux Auto-Installer 🚀

**⚠️ CAUTION: This script is highly personalized and intended for my specific Arch Linux setup. Use with extreme caution and modify it to fit your own needs. ⚠️**

First Script
``` sh <(curl -SL https://raw.githubusercontent.com/shyamjames/pvt-arch-install-script/refs/heads/main/pre-chroot.sh) ```

Second Script
``` sh <(curl -SL https://raw.githubusercontent.com/shyamjames/pvt-arch-install-script/refs/heads/main/post-chroot.sh) ```

This repository contains scripts designed to automate my Arch Linux reinstallation process. It includes partitioning, formatting, base system installation, and basic configuration.

* Automated partitioning (with user input for device selection).
* Automatic formatting of partitions (EFI, swap, root).
* Base system installation using `pacstrap`.
* `fstab` generation.
* Basic system configuration (timezone, hostname, locale, users).
* Bootloader installation (GRUB).
* Network configuration using NetworkManager.
* Installation of Hyprland, Kitty, and SDDM.
* Wi-Fi connection option (if needed).

## Disclaimer ⚠️

This script is provided as-is, without any warranty. I am not responsible for any data loss or system damage that may occur from using this script. Please review and understand the script before running it. Make backups of your important data.
