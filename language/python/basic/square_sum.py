numbers = [1,2,3,5]

def square_sum(numbers):
  sx = []
  for i in numbers:
    sx.append(i*i)
  print(sum(sx))
  
square_sum(numbers)
