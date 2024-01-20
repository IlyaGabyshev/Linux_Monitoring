#!/bin/bash

# Проверка на одни параметр
if [ "$#" -gt 1 ]; then
    echo "error, only ONE parametr"
    exit 1
fi

# Проверка на без цифр
if [[ "$@" =~ [0-9] ]]; then
    echo "error, no numbers please"
    exit 1
fi

# Проверка на без параметра
if [ "$#" -eq 0 ]; then
    echo "error, NO parametr"
    exit 1
fi

