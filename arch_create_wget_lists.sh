#!/bin/bash
#CORE OR EXTRA
TYPE=extra
IN=list_arch_$TYPE_20240301.txt
OUT=wget_list_arch_$TYPE.txt
URL_DIR="https://archive.archlinux.org/repos/2024/03/01/$TYPE/os/x86_64/"

>$OUT
curl -s $URL_DIR | grep -oP '<a\s+(?:[^>]*?\s+)?href="([^"]*)"' | sed 's/<a\s\+(?:[^>]*\s+)?href="\(.*\)"/\1/g' > $OUT


# For each line cycle
# while read -r LINE; do
    # Получить название файла (первое слово в строке)
#    FILENAME=$(echo $LINE | awk '{print $1}')
    
    # Добавить ссылку спереди
#    URL="$URL_DIR/$FILENAME"
    
    # Сохранить результат в файл
#    echo $URL >> $OUT
# done < $IN

 
