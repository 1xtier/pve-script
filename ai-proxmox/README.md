# ai-proxmox
Предназанчена для сборки образа ISO для автоматической установки на сервер!
### Ручная сборка 
- Подключаем беспалтные репозитории proxmox 
- Устанавливаем proxmox-auto-install-assistant
- Скачиваем нужный ISO образ ProxmoVE
- Готовим или берем мой answer.toml
- Ну и выполянем команду 
```bash
proxmox-auto-install-assistant prepare-iso /path/proxmox-ve_8.3-1.iso --fetch-from iso --answer-file /path/answer.toml
```
### Native
Первое что нам нужно сделать так это установить **proxmox-auto-install-assistant**\
Для deb подобных систем покдключаем репозиторий и ставим  пакет нативно.\
make и env.sh призваны для автоматизации установки репозитоий и ПО а так же для сборки итогового ISO образа!
```bash
make native
```
### Docker 
DEV
