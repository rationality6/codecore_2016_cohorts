def fifty_to_five(n)
    if n < 0
        1
    else
        n + fifty_to_five(n - 1)
    end
end

puts fifty_to_five(50)

def one_to_fifty(n)
    if n > 50
        1
    else
        n + one_to_fifty(n + 1)
    end
end

puts one_to_fifty(1)

def factorial(n)
    if n.empty?
        1
    else
        n[0] * factorial(n[1..-1])
    end
end

array1 = [1, 2, 3, 4, 5]
puts factorial(array1)
puts factorial((1..9).to_a)
