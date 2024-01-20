#!/bin/bash

# Проверка на 4 параметра
if [ "$#" -ne 4 ]; then
    echo "error, input 4 numbers parametr"
    exit 1
fi

# Проверка на не цифры
for param in "$@"; do
    if ! [[ "$param" =~ ^[1-6]$ ]]; then
    echo "error, please enter a number in the range [1-6]"
    exit 1
    fi
done

# Проверка на совпадения цыетов фонов и текса
if [ "$1" -eq "$2" ] || [ "$3" -eq "$4" ]; then
    echo "error, text and background have identical color, try again"
    exit 1
fi