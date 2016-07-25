def factorial(n)
    total = 1
    count = n
    for i in 1..n
        total *= count
        count -= 1
    end
    total
end

puts factorial(5)

# puts (1..6).inject(:*)
