#!/bin/bash

# Проверка входных данных
source checkin.sh

# Запуск отсчета времени
start_time=$(date +%s.%N)

# Получение информации о каталоге
source info.sh
# Вывод информации о каталоге
source output.sh

# Завершение отсчета времени + вывод
end_time=$(date +%s.%N)
execution_time=$(echo "$end_time - $start_time" | bc )
LC_NUMERIC=C printf "Script execution time (in seconds) = %.2f\n" $execution_time

