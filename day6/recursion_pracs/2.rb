def sum(n)
    if n > 50
        1
    else
        n + sum(n + 1)
    end
end

puts sum(0)

sum_result = 0
for i in (1..50)
    sum_result +=i
end
puts sum_result
