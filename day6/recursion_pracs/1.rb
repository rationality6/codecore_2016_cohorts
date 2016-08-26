def sum(n)
    if n > 10
        1
    else
        n + sum(n + 1)
    end
end

p sum(6)



def n_to_fifty(n)
    if n.empty?
        1
    else
        n[0] + n_to_fifty(n[1..-1])
    end
end


puts n_to_fifty((1..10).to_a)

def factorial(n)
    if n.empty?
        1
    else
        n[0] * factorial(n[1..-1])
    end
end

puts factorial((1..10).to_a)

# def squares(array)
#     if array.empty?
#         ''
#     elsif array[0].is_a? Array
#         squares(array[0])
#         squares(array[1..-1])
#     else
#         puts array[0] * array[0]
#         squares array[1..-1]
#     end
# end

# squares []
# puts '----------------'
# squares [3]
# puts '----------------'
# squares [3, 5, 5]
# puts '----------------'
squares [3, 5, 5, [6, 7]]
# puts '----------------'
# squares [3, 5, 5, [6, 7, [5, 6]]]
# puts '----------------'
# squares [3, 5, 5, [6, 7, [5, 6], []], 3]
