#! bin/bash

# Проверка входных параметров
bash check_in.sh "$@"

# храним код ошибки последнего скрипта $?
error_result=$?

# Цвета
source colors.sh 

# Проверка  на то что вернул check_in + info
source get_info.sh



