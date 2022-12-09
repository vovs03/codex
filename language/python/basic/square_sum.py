numbers = [1,2,3]

def square_sum(numbers):
  sx = []
  # print("Тип sx:", type(sx))
  # sx.append(3)
  # print("Тип sx:", type(sx))
  # print(sx)

  for i in numbers:
    # print(i)
    sx.append(i*i)
    # print(sx)
  
  # return print(sum(numbers))
  print(sum(sx))

square_sum(numbers)
