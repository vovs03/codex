#!/bin/bash
# 2025-05-27 
# https://github.com/vovs03/codex/scripts/delete_class_files.sh

COLOUR_GREEN="\033[0;32m"
COLOR_MAGENTA_BG="\033[0;45m"
COLOR_BLUE_LIGHT_BG="\033[0;104m"
NC="\033[0m"

deleted_files=0

# Функция для рекурсивного обхода папок
function traverse {
    for file in "$1"/*; do
        if [[ -d "$file" ]]; then
            traverse "$file"  # Рекурсивный вызов для вложенных папок
        elif [[ "${file##*.}" == "class" ]]; then
            rm "$file"  # Удаление файлов с расширением .class
            ((deleted_files+=1))
            echo "Удален файл: 🦄 $file"
        fi
    done
}
echo -e "Начинаем ${COLOR_MAGENTA_BG} очистку файлов: ${NC} *.class"
echo ""
sleep 0.5
# Начало обхода с текущей директории .
traverse .


if [ $deleted_files -eq 0 ]; then
    echo -e "🦄 ${COLOUR_GREEN}Файлы не найдены${NC} для ${COLOR_BLUE_LIGHT_BG}у${NC}даления."
else
    echo -e "Удалено файлов: ${COLOR_MAGENTA_BG}  ${deleted_files}  ${NC}"
fi


# echo -e "Удаление файлов ${COLOR_BLUE_LIGHT_BG}*.class${NC} ${COLOUR_GREEN}завершено.${NC}"
