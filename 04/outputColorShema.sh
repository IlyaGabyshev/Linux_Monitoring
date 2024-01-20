#!/bin/bash
# Вывод  описания цветовой схемы
if [ $error_result -eq 0 ]; then
  if [[ $flag_column1_background -eq 3 ]]; then
    echo "Column 1 background = default ${name_background_colors[$column1_background]}"
  else
    echo "Column 1 background = ${column1_background} ${name_background_colors[$column1_background]}"
  fi

  if [[ $flag_column1_font_color -eq 3 ]]; then

    echo "Column 1 font color = default ${name_font_colors[$column1_font_color]}"
  else
    echo "Column 1 font color = ${column1_font_color} ${name_font_colors[$column1_font_color]}"
  fi

  if [[ $flag_column2_background -eq 3 ]]; then
     echo "Column 2 background = default ${name_background_colors[$column2_background]}"
  else
     echo "Column 2 background = ${column2_background} ${name_background_colors[$column2_background]}"
  fi

  if [[ $flag_column2_font_color -eq 3 ]]; then
    echo "Column 2 font color = default ${name_font_colors[$column2_font_color]}"
  else
   echo "Column 2 font color = ${column2_font_color} ${name_font_colors[$column2_font_color]}"
  fi
fi