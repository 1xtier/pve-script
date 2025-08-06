## PVE-ISOHUB
### Linux iso images are supported
- ubuntu linux server (live)
    * 20.04
    * 22.04
    * 24.04
    * 25.04
- Alma linux (minimal)
    * 8
    * 8
    * 10
- rocky linux (minimal)
    * 8
    * 9
    * 19
- debian linux (netinstall)
    * 11
    * 12
- fedora
    * 42
- centos linux 
    * 10 - stream
### Install 
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
