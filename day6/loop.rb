# def print_squares(array)
#     if array.empty?
#         puts '>>>>'
#     elsif array[0].is_a? Array
#         print_squares array[0]
#         print_squares array[1..-1]
#     else
#         puts array[0] * array[0]
#         print_squares array[1..-1]
#     end
# end

def print_squares(array)
    if array.empty?
        ''
    elsif array[0].is_a? Array
        print_squares array[0]
        print_squares array[1..-1]
    else
        puts array[0] * array[0]
        print_squares array[1..-1]
    end
end

# def print_squares(array)
#     if !array.empty? && (array[0].is_a? Array)
#         print_squares array[0]
#         print_squares array[1..-1]
#     elsif !array.empty?
#         puts array[0] * array[0]
#         print_squares array[1..-1]
#     end
# end

puts '----------------'
print_squares []
puts '----------------'
print_squares [3]
puts '----------------'
print_squares [3, 5, 5]
puts '----------------'
print_squares [3, 5, 5, [6, 7]]
puts '----------------'
print_squares [3, 5, 5, [6, 7, [5, 6]]]
puts '----------------'
print_squares [3, 5, 5, [6, 7, [5, 6], []], 3]
puts '----------------'
