#!/usr/bin/ruby2.5
# utf8
# new_numeral_system.rb 
 
# Числовая система, в основе лежит Латиница из 26 символов (Заглавные буквы)
# "A" == 0, "B" == 1 ... "Z" == 25.

# Задание: При выборе числа, программа находит все комбинации суммы парных чисел.

# Пример: 
# Для number = 'G' в ответе должно быть: newNumeralSystem(number) = ["A + G", "B + F", "C + E", "D + D"].
# Это как если бы мы в Десятичной(СИ) получили бы результат: number = 6,  ["0 + 6", "1 + 5", "2 + 4", "3 + 3"].

def newNumeralSystem(number)
  #number = rand('A'..'Z').to_a
  alfa   = ('A'..'Z').to_a

  # before it was: beta = alfa[rand(0..25)] 
  index  = rand(0..25)
  beta  = alfa[index]
  #delta  = beta - 1 
 
 # ======== 
 # zero   = alfa[0]
 # one    = alfa[1]
 # minus1 = alfa[index - 1]
 # ========
  sleep 0.65
  puts 'Сейчас система выберет одну букву из латиницы'
  sleep 3
  puts "Especial letter is: #{beta} = #{index}"
  # puts ''
  
  x = 0
  while x <= (index / 2)
    puts "#{alfa[x]} + #{alfa[index - x]}" # + #{alfa[minus1]}"
    x += 1
  end
end

newNumeralSystem(0)
 # puts 'Result:'
 # puts "1: #{zero} + #{beta}, 2: #{one} + #{minus1}"
  #alfa = rand(alfa).to_a

  # number.rand

  # 'A' ≤ number ≤ 'Z'
  
  # sum
  # num1
  # num2 
  # print "Especial letter is: #{alfa.to_a}"

# numberAll = ('A'..'Z').to_a

# get_number = newNumeralSystem(6)

# print get_number
# newNumeralSystem(18)

# print numberAll[3..6]
