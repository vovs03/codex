#!/usr/bin/env ruby

arr = []

File.open('01.txt') do |file|
  while line = file.gets
    arr = arr.push(line.to_i)
  end
end

puts arr.sum


__END__

- Создать пустой массив для последующей суммы всех элементов
- Открыть файл с данными
- Считать построчно из файла, добавляя(`.push`) данные в массив, преобразуя в `int` (.to_i)
- Вывести сумму всех элементов массива

> 12:58

