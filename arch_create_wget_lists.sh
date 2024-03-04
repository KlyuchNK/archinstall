#!/bin/bash
#CORE OR EXTRA
TYPE=extra
IN=list_arch_$TYPE_20240301.txt
OUT=wget_list_arch_$TYPE.txt
URL_DIR="https://archive.archlinux.org/repos/2024/03/01/$TYPE/os/x86_64/"

>$OUT
curl -s $URL_DIR | grep -o '<a[^>]\+href="[^"]\+"' | sed 's/<a[^>]\+href="\([^"]\+\)"/\1/g' | awk -F '"' '{print $2}' > $OUT


# For each line cycle
# while read -r LINE; do
    # Получить название файла (первое слово в строке)
#    FILENAME=$(echo $LINE | awk '{print $1}')
    
    # Добавить ссылку спереди
#    URL="$URL_DIR/$FILENAME"
    
    # Сохранить результат в файл
#    echo $URL >> $OUT
# done < $IN

 
