#!/usr/bin/ruby2.5
# first_dublicate.rb

def firstDublicate(a)
  a.size >= 1 && a.size <= 3
  
  # counter length of arr
  x = 0
  while x <= a.size
    print "#{a[x]}, "
    # print ', '
    x += 1
  end 

  #interval = rand(1..a.length)
  #if a[i] = a[i]
  #  print a[i]
  #else
  #  p '-1'
  #end  
end

#arr = (0..rand(7))
#p arr
#p ''

#a = arr.to_a
#p "a = #{a}"
#p ''

#z = rand(7)
z = 6
#p z
generated_z = z.times.map{Random.rand(6)}
p generated_z

a = generated_z
firstDublicate(a)