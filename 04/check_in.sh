#!/bin/bash

# Проверка параметров из config.file 
if ! [[ "$column1_background" =~ ^[1-6]$ ]] || ! [[ "$column1_font_color" =~ ^[1-6]$ ]] || ! [[ "$column2_background" =~ ^[1-6]$ ]] || ! [[ "$column2_font_color" =~ ^[1-6]$ ]]; then
    echo "Error, please write in config file a number in the range [1-6]."
    echo "If you need default color prametr nedd be empty."
    exit 1
fi
# Провекра на один цвет
if [[ "$column1_background" -eq "$column1_font_color" ]] || [[ "$column2_background" -eq "$column2_font_color" ]]; then
    echo "error, back and font has the same color, it is terrible!"
    exit 1
fi