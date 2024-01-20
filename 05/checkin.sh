#!/bin/bash

# Проверяем кол-во аргументов
if [ $# -ne 1 ]; then
    echo "Error parametr, only one argument"
    exit 1
fi

# Проверяем, заканчивается ли путь на '/'
path="$1"
if [[ "${path: -1}" != "/" ]]; then
    echo "Error, directory path must end with a '/'"
    exit 1
fi

#  Проверка что аргумент это папка
if ! [[ -d "$1" ]]; then
    echo "Error, script wait directory path in argument"
fi
