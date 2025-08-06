#!/usr/bin/env bash 
set -e 
function add-repo() {
  sudo wget http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg -O /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg
  sudo chmod +r /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg
  sudo echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" >> /etc/apt/sources.list
}
function install_pkg() {
  apt update 
  apt install proxmox-auto-install-assistant
}
function download() {
  wget https://enterprise.proxmox.com/iso/proxmox-ve_8.3-1.iso
}
add-repo
download

