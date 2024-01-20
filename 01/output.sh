#!/bin/bash

# Вывод того параметра который ввели
if [ $? -eq 0 ]; then
  echo "input parameter: $@"
fi