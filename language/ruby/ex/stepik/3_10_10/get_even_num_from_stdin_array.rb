# gets two nums
a = gets.to_i
b = gets.to_i

# Create array
arr = (a..b).to_a

#выборка по чётности числа и вставка пробела
# Use this case: https://stackoverflow.com/questions/33284487/print-only-even-numbers-from-an-array
puts arr.select(&:even?).join(" ")
