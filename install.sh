#!/bin/bash

DIR=$PWD

echo "update system"
sudo pacman -Syu --noconfirm

echo "install base"
sudo pacman -S --needed base-devel git --noconfirm

echo "install sway and wayland stuff"
sudo pacman -S --needed sway waybar swayidle swaylock wl-clipboard xorg-xwayland xdg-desktop-portal-wlr wofi --noconfirm

echo "install network, bluetooth, audio"
sudo pacman -S --needed networkmanager bluez blueman pipewire pipewire-pulse wireplumber pavucontrol playerctl --noconfirm

echo "install terminal, media, fonts"
sudo pacman -S --needed foot python mpd mpc mpv otf-font-awesome noto-fonts ttf-roboto --noconfirm

echo "install file manager and archives"
sudo pacman -S --needed thunar unzip p7zip unrar ark --noconfirm

echo "install disks and android support"
sudo pacman -S --needed gvfs ntfs-3g exfatprogs udiskie gvfs-mtp mtpfs android-udev --noconfirm

echo "install themes, utilities and ly"
sudo pacman -S --needed power-profiles-daemon brightnessctl nwg-displays nwg-look qt6ct ly fish --noconfirm

echo "install yay"
rm -rf /tmp/yay
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

echo "install wlogout from AUR"
yay -S --needed wlogout --noconfirm

cd $DIR

echo "services"
chsh -s /usr/bin/fish
sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth
sudo systemctl disable lightdm.service
sudo systemctl mask lightdm.service
sudo systemctl enable ly.service
sudo systemctl enable power-profiles-daemon

echo "setup configs"
mkdir -p ~/.config

rm -rf ~/.config/sway
rm -rf ~/.config/waybar
rm -rf ~/.config/wofi
rm -f ~/.bashrc

cp -r sway ~/.config/sway
cp -r waybar ~/.config/waybar
cp -r wofi ~/.config/wofi
cp .bashrc ~/.bashrc

echo "finish"
