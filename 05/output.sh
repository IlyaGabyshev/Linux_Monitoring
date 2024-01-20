#!/bin/bash

#Общее число папок, включая вложенные
echo "Total number of folders (including all nested ones)= $folder_count" 

#Топ 5 папок с самым большим весом в порядке убывания (путь и размер) 1 - /var/log/one/, 100 GB 
echo -e "TOP 5 folders of maximum size arranged in descending order (path and size):\n$top_five_size_dir"

#Общее число файлов
echo "Total number of files = $file_count"

#Число конфигурационных файлов (с расширением .conf), текстовых файлов, исполняемых файлов, логов (файлов с расширением .log), архивов, символических ссылок
echo -e "Number of:\nConfiguration files (with the .conf extension) = $conf_file"
echo -e "Text files = $text_file"
echo -e "Executable files = $exec_file"
echo -e "Log files (with the extension .log) = $log_file"
echo -e "Archive files = $rar_file"
echo -e "Symbolic links = $symbol_link_file"

#Топ 10 файлов с самым большим весом в порядке убывания (путь, размер и тип)
echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type):\n$top_ten_big_file"

##TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)  
echo -e "#TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):\n$top_exec_files"



