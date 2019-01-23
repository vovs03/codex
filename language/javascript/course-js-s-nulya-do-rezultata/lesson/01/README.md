# 1. Environment settings

- VSCode
  - Pugins:
    - Auto Close Tag
    - Auto Complete Tag
    - Auto Rename Tag
    - Beautify
    - Code Runner
    - GitLens — Git supercharged
    - :green_heart: Import Cost
    - JavaScript (ES6) code snippets
    - :heart: Live Server
    - Multiple clipboards for VSCode
    - Path Autocomplete
    - Reactjs code snippets
    - Theme - Oceanic Next
    - vscode-icons
    - ESLint
    - jshint

- vscode-purescript-emmet

## Fixing Emmet plugin setting into VSCode

### Fixing Emmet

:a:

:warning: **Проблема** В редакторе кода _VSCode_  не работает Emmet в частности в `html - коде`

:mega: **Решение**

- `Menu > File > Preferences > Keyboard Shortcuts` или нажимаем последовательно сочитание клавиш [ctrl+k ctrl+s].
- В данном разделе находим файл `keybinding.json`открываем и редактируем его, добавляем такой код:

```json
{
"key": "tab",
"command": "tab",
"when": "editorTextFocus && !editorTabMovesFocus"
},
{
"key": "tab",
"command": "editor.emmet.action.expandAbbreviation",
"when": "editorTextFocus && !editorHasSelection && !editorHasMultipleSelections && !editorTabMovesFocus"
}
```

### Fixing Tab commands

:b:

:warning: **Проблема** В редакторе кода _VSCode_ некооректно работает :green_heart: плагин Emmet (в частности кнопка `Tab` - не реагирует, после внесения исправлений на предыдущем шаге)

:mega: **Решение**

1. Кликаем `File > Preferences > Settings`

> 2. Вводим: `settings.json`  
> 3. Кликаем: `Edit in settings.json`  
> 4. Открывается файл: `~/.config/Code/User/settings.json`  

5. Добавляем строку

```json
{
    "emmet.triggerExpansionOnTab": true
}
```

### Links

- https://toster.ru/q/303307
- https://coder-notes.github.io/instrument/2017/06/13/nastrojka-emmet-v-visual-studio-code.html
