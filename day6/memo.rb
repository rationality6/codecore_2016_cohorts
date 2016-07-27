def sum(a)
    if a.empty?
        1
    else
        a[0] + sum(a[1..-1])
    end
end

puts sum([1, 2, 3, 4, 5])
