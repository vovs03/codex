#!/bin/zsh

# Цвета ANSI
colors=("black" "red" "green" "yellow" "blue" "magenta" "cyan" "white")

# Стили текста
styles=("bold" "italic")

# Фоны
backgrounds=("on_black" "on_red" "on_green" "on_yellow" "on_blue" "on_magenta" "on_cyan" "on_white")

for bg_color in $backgrounds; do
    for color in $colors; do
        for style in $styles; do
            echo -n "%{${bg_color}%}${(l:8:: :)style}%F{$color}$color%f%{$bg_color%}   %{%f%}"
        done
        echo ""
    done
done
