#!/bin/bash

# Ассоциативный массив для фона
declare -A colors=(
    [1]="\e[47m"   # White
    [2]="\e[41m"   # Red
    [3]="\e[42m"   # Green
    [4]="\e[44m"   # Blue
    [5]="\e[45m"   # Purple
    [6]="\e[40m"   # Black
)

# Ассоциативный массив для текста
declare -A text_colors=(
    [1]="\e[97m"   # White
    [2]="\e[91m"   # Red
    [3]="\e[92m"   # Green
    [4]="\e[94m"   # Blue
    [5]="\e[95m"   # Blue
    [6]="\e[90m"   # Blue
)

reset="\e[0m"
