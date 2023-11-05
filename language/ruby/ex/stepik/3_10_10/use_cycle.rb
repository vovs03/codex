a, b = gets.to_i, gets.to_i
for i in a..b
    if i % 2 == 0
        printf("%d ", i)
    end
end