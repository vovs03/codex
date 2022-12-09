numbers = [1,2,3,4]

def square_sum(numbers):
  return sum(x * x for x in numbers)
  
print(square_sum(numbers))
