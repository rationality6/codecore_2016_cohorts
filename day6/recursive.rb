array1 = [1, 6, 2, 3, 6, 8, 3, 9, 500, 11, 2, 19, 20, 23]
​
def max(array)
    max = 0
    array.each do |num|
        max = num if num > max
    end
    max
end
p max(array1)
​
​
def max_recursive(array, max = -99_999_999)
    return max if array.empty?
    ​
    max = array[0] if array[0] > max
    max_recursive(array[1..-1], max)
end
​
p max_recursive(array1)
