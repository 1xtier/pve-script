#!/bin/bash
LOG_FILES=$1.log

if [ $2 == "post-start" ]
then
        if [ -e $LOG_FILES ]; then
                echo "log files $LOG_FILES"
        else
        echo "1" > /root/$1.log
        OS_TYPE=$(pct config "$1" | awk '/^ostype/ {print $2}')
        case "$OS_TYPE" in
                alpine) pct exec "$1" -- ash -c "apk add openssh" ;;
                alma | centos | rocky | fedora) pct exec "$1" -- bash -c "dnf -y install openssh-server && systemctl enable --now sshd" ;;
                ubuntu | debian | devuan) pct exec "$1" -- bash -c "apt update && apt install openssh-server -y && systemctl enable --now ssh" ;;
        esac
        fi
fi
