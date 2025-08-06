## PVE-ISOHUB
### :notebook: Linux iso images are supported
- :cd: ubuntu linux server (live)
    * :large_orange_diamond: 20.04
    * :large_orange_diamond: 22.04
    * :large_orange_diamond: 24.04
    * :large_orange_diamond: 25.04
- :cd: Alma linux (minimal)
    * :large_orange_diamond: 8
    * :large_orange_diamond: 8
    * :large_orange_diamond: 10
- :cd: Rocky linux (minimal)
    * :large_orange_diamond: 8
    * :large_orange_diamond: 9
    * :large_orange_diamond: 19
- :cd: Debian linux (netinstall)
    * :large_orange_diamond: 11
    * :large_orange_diamond: 12
- :cd: Fedora linux server
    * :large_orange_diamond: 42
- :cd: centos linux 
    * :large_orange_diamond: 10 - stream
### :bulb: Install 
:one: download the script
```bash 
wget  https://raw.githubusercontent.com/1xtier/pve-isohub/refs/heads/main/isohub -P /var/lib/vz/snippets
cd /var/lib/vz/snippets
chmod +x isohub
```
:two: setting an alias
```bash
vim ~/.bashrc
alias isohub="/var/lib/vz/snippets/./isohub"
source ~/.bashrc
```
:three: Working with the script
```bash
Find out the list of linux images
isohub help
isohub alma 8
```
## AI-Proxmox 
### :scroll: auto install proxmox-pve
It is designed to create an ISO image for automatic installation on a server!
### :computer: Manual assembly
- Connecting free proxmox repositories
- Installing proxmox-auto-install-assistant
- Download the required ProxmoVE ISO image
- Let's cook or take my answer.toml
- Well, we execute the command 
**I will attach the installation instructions for proxmox-auto-install-assistant later**
```bash
proxmox-auto-install-assistant prepare-iso /path/proxmox-ve_8.3-1.iso --fetch-from iso --answer-file /path/answer.toml
```
### :computer: Automation
We will use the utility **taskfile**\
:hammer: Setting up an environment
```bash
task env_native:
```
:wrench: Launching the build
```bash
task build-iso
```
