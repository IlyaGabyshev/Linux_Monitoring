#! bin/bash

# Проверка наличия конфиг файла
config_file="config.conf"
if [ ! -f "$config_file" ]; then
    echo "Error: File $config_file not found"
    exit 1
fi

# Импорт параметров из config.file
source "$config_file"

# Проверка параметров из config.file
bash check_in.sh "$column1_background" "$column1_font_color" "$column2_background" "$column2_font_color"

# Сохранение кода ошибки  скрипта check.in
error_result=$?

# Импорт цветов (ANSI)
source colors.sh
# Получение информации (hostname, date...)
source get_info.sh

# Вставка массива названий цветов (blac, green, white...)
source colors_name.sh

# Вывод
source outputColorShema.sh


