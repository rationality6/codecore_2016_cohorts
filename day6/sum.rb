def sum(num)
    if num.empty?
        0
    else
        num[0] + sum(num[1..-1])
    end
end

puts sum([])
puts sum([1, 2, 3, 4, 5])
puts sum([1, 2, 3, 4, 5, 6])
puts sum((1..150).to_a)
