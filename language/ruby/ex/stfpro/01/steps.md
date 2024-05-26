# Steps

- Setup `Rspec`

## Tests

- [rspec-how-to-test-file-operations-and-file-content](https://stackoverflow.com/questions/4070422/rspec-how-to-test-file-operations-and-file-content)| `File.exists? "filename"` - `deprecated`
- [x](https://ruby-doc.org/core-2.5.0/File.html)

Решил начать со спеков(но сразу же завяз на 1,5 часа)

## Solution

потом решил пойти коротким путём(простым)
проверил на маленьком массиве данных из `arr.txt`

- Создать *пустой массив* для последующей суммы всех элементов
- Открыть *файл* с данными
- Считать построчно из файла, добавляя(`.push`) данные в массив, преобразуя в `int` (`.to_i`)
- Вывести *сумму* всех элементов массива
