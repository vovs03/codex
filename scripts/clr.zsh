#!/bin/zsh

# Цвета ANSI
colors=("black" "red" "green" "yellow" "blue" "magenta" "cyan" "white")

GREEN="\033[0;32m"
NC="\033[0m" # No Color!

# Стили текста
styles=("1" "3")

for color in $colors; do
    for style in $styles; do
        echo -e "\033[${style};30m$color\033[0m"
    done
done

echo -e "${GREEN}GREEN${NC}"