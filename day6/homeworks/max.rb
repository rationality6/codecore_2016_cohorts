array1 = [1, 2, 3, 4, 5, 6, 7, 8]

def max(array)
    max = 0

    array.each do |num|
        max = num if num > max
    end
    max
end

p max(array1)


require 'benchmark'


array1 = [1, 6, 2, 3, 6, 8, 3, 9, 50, 11, 2, 19, 20, 23]
array1 = []

def max_recursive(array, max = -99_999_999)
    return max if array.empty?

    max = array[0] if array[0] > max
    max_recursive(array[1..-1], max)
end

print max_recursive(array1)


max_recursive(array1)
