#! bin/bash

HOSTNAME=$(hostname)
TIMEZONE=$(timedatectl | grep 'Time zone:' | awk '{print $3, $4, $5}')
USER=$(whoami)
OS=$(cat /etc/issue | tr -d '\n' | awk '{print $1, $2}')
DATE=$(date)
UPTIME=$(uptime -p)
UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
IP=$(ip a | grep "inet " | grep -v "127.0.0.1" | awk '{print $2}' | cut -f1 -d'/' | head -1)
IP2=$(ip a | grep "inet " | grep -v "127.0.0.1" | awk '{print $2}')
MASK=$(ipcalc $IP2 | grep "Netmask" | awk '{print $2}')
GATEWAY=$(ip rout | grep default | awk '{ print $3 }')
RAM_TOTAL=$(grep MemTotal /proc/meminfo | awk '{printf "%.3f GB", $2 / 1024 / 1024}')
RAM_USED=$(vmstat -s | grep 'used m' | awk '{printf "%.3f GB", $1 /1024 /1024}')
RAM_FREE=$(grep MemFree /proc/meminfo | awk '{printf "%.3f GB", $2 / 1024 / 1024}')
SPACE_ROOT=$(df /root | awk '/\//{printf "%.2f MB\n", $2/1024}')
SPACE_ROOT_USED=$(df /root | awk '/\//{printf "%.2f MB\n", $3/1024}')
SPACE_ROOT_FREE=$(df /root | awk '/\//{printf "%.2f MB\n", $4/1024}')

VARS="HOSTNAME TIMEZONE USER OS DATE UPTIME UPTIME_SEC IP MASK GATEWAY RAM_TOTAL RAM_USED RAM_FREE SPACE_ROOT SPACE_ROOT_USED SPACE_ROOT_FREE"

for var in $VARS
do
    echo "$var=${!var}"
done