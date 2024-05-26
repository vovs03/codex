#!/usr/bin/env ruby
# frozen_string_literal: true

@mtx = @mtx[y][x]
y = [0, 1, 2]
x = y

@mtx = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

moves = []

File.open('moves.txt', 'r') do |file|
  while line = file.gets
    moves = moves.push(line.to_sym)
  end
end

# File.close('moves.txt', 'r')

puts moves[0]
puts @mtx[y][x]
# for letter in moves[0].to_s
#   puts letter
# end
# 21:47

# 21:47
# EACH
# https://mixandgo.com/learn/ruby/each

# def turn()
#   case t
#     when "U", y = y + 1
#   end
# end

# m = moves[0].to_s
# m.split("").each do |letter|
#   #puts letter
#   turn()
# end

# === /END EACH

# CASE 22:01
m = moves[0].to_s
m.split('').each do |letter|
  # puts letter
  case t
    when 'U'
      y = y + 1
    when 'D'
      y = y - 1
    when 'L'
        x = x - 1
    when 'R'
        x = x + 1
    else
        puts"Input incorrect data"
    puts("Final: #{mtx[y][x]}")
    
  end
end

# =====
puts moves[0]


# puts mtx[y][x]

# i = 0
# for i in moves[i]
#   puts moves[i]
#   i += 1
# end

def start_position
  pos = [0, 1, 2]
  y = pos[1]
  x = pos[1]

  key = []
  #return key.push(@mtx[y][x])
  key.push(@mtx[y][x])
end

start_pos = start_position

def first_step
  start_pos
end
puts start_pos


# while
#   def move(m)

#     case m
#     when :U
#         y = y + 1
#     when :D
#         y = y - 1
#     when :L
#         x = x - 1
#     when :R
#         x = x + 1
#     else
#         puts"Input incorrect data"
#     mtx[y][x]
#   end
# end










#############################################################
__END__

- [x] Создать пустой массив(`moves`) для хранения ходов
- [x] Открыть файл с данными
- :A Сохранить данные в массив, преобразовав каждый элемент в строку
- Вложенный массив(матрица)
- case (ветвление)


:B Есть массив строк (можно брать строку и прогонять по индексам_элементов строки)
+ 
########
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
] 

case check_moves
  when "U"
      y = y + 1
  when "D"
      y = y - 1
      "L"
      "R"
      
  else
    
end

## =====

case check_moves
  when "U"
      y = y + 1
  when "D"
      y = y - 1
  when "L"
      x = x - 1
  when "R"
      x = x + 1
  else
      puts"Input incorrect data"
  mtx[y][x]
end

# ===========
*BUTTON*
button = [b1, b2, b3, b4, b5]

mtx = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# Start position:
# ############## mtx[1][1]
# y = 1; x = 1
# mtx[y][x]

# Axis -Y-
U = y + 1
D = y - 1

# Axis -X-
L = x - 1
R = x + 1

###########################

# Axis -Y-
y = U + 1
D = y - 1

===========================

5 |> U = 1 
1 |> U = 1
1 |> D = 5
5 |> L = 4

def step(pos, t)

end

t = turn[:U, :D, :L, :R]