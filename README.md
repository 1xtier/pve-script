## PVE-ISOHUB
### Поддерживаемы iso образы linux
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
### Установка
* скачиваем скрипт 
```bash 
wget -P /var/lib/vz/snippets
cd /var/lib/vz/snippets
chmod +x isohub
```
* ставим алиас 
```bash
vim ~/.bashrc

alias isohub="/var/lib/vz/snippets/.isohub"
```
* работа с скриптом
```bash
узнаем список версий
isohub help
isohub alma 8
```
