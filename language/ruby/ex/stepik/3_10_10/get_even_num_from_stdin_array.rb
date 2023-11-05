# Create array from stdin(gets two nums)
arr = (gets.to_i..gets.to_i).to_a

#выборка по чётности числа и вставка пробела
# Use this case: https://stackoverflow.com/questions/33284487/print-only-even-numbers-from-an-array
puts arr.select(&:even?).join(" ")
