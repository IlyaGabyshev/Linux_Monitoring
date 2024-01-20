#!/bin/bash

# Вопрос нужно ли сохранять
read -p "Save information in file? (Y/N) " answer

#  Сохранение в нужном формате
if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
    filename=$(date +'%d_%m_%y_%H_%M_%S')'.status'
    if bash get_info.sh > "$filename"; then
        echo "New info file "$filename" created"
    else
        echo "Can not create info file"
    fi
else echo "Info file was NOT created"

fi