#!/usr/bin/ruby2.5
# print_random_array.rb
# Date: 2018-12-02
# Coder: Vladimir Pavlychev <https://github.com/KeyJoo/codex>

z = rand(21)
generated_z = z.times.map{Random.rand(z)}
p generated_z

a = generated_z

def printRandomArray(a)
  a.size >= 1 && a.size <= 4
  
  p "a.size = #{a.size}"
  # print indexes by array size
  x = 0
  
  i = a.size
  
  while x <= i
    print "#{a[x]}, "
    x += 1
  end
  
  
end

printRandomArray(a)