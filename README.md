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
