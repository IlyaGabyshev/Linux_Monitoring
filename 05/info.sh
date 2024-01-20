#!/bin/bash/

# Общее число папок, включая вложенные  /etc/, /home/, /var/log/, /usr/.
folder_count=$(sudo find "$1" -type d | wc -l)

#Топ 5 папок с самым большим весом в порядке убывания (путь и размер) r-recursive s-summaru/human
top_five_size_dir=$(du -h "$1" | sort -hr | head -n 5 | awk '{print NR " - " $2 ", " $1}')

#Общее число файлов
file_count=$(find "$1" -type f | wc -l)

#Число конфигурационных файлов (с расширением .conf), текстовых файлов, исполняемых файлов, логов (файлов с расширением .log), архивов, символических ссылок
conf_file=$(find "$1" -type f -name "*.conf"| wc -l)
text_file=$(find "$1" -type f -name "*.txt"| wc -l)
exec_file=$(find "$1" -type f -name "*.exe"| wc -l)
log_file=$(find "$1" -type f -name "*.log" | wc -l)
rar_file=$(find "$1" -type f -name "*.zip" -o -name "*.tar" -o -name "*.gz" -o -name "*.rar" | wc -l)
symbol_link_file=$(find "$1" -type l | wc -l)

#Топ 10 файлов с самым большим весом в порядке убывания (путь, размер и тип)
top_ten_big_file=$(find "$1" -type f -exec du -h {} +| sort -hr | head -n 10 | awk -F '.' '{print $0 " " $NF}'  | awk '{print NR" - " $2 ", " $1, $3}')

#TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file) 
exe_file=$(find "$1" -type f -executable)
if [[ -n "$exe_file" ]]; then
top_exec_files=$(find "$1" -type f -executable | xargs sha256sum \
| while read sum file; do size=$(du -h "$file" | cut -f1); echo "$file $size, $sum"; done | sort -k2 -hr | head -n 10 | awk '{print NR" - " $1 ", " $2, $3}')
else 
top_exec_files=$(echo "No executable file")
fi
# end