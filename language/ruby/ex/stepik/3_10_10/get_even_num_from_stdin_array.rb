# OSX Ventura13.2.1 ~/Projects/codex/language/ruby/ex/stepik/3_10_10

# Выборка по чётности числа и вставка пробела
#  Use this case: https://stackoverflow.com/questions/33284487/print-only-even-numbers-from-an-array
puts (gets.chomp.to_i..gets.chomp.to_i).select(&:even?).join(' ')