# https://ru.hexlet.io/courses/ruby/lessons/environments/theory_unit

def factorial(num)
  iter = ->(current, acc) {
    return acc if current > num

    iter.call(current + 1, acc * current)
  }
  iter.call(1, 1)
end

puts factorial 4