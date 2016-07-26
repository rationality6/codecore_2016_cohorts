def max(array)
    max = 0

    array.each do |num|
        max = num if num < max
    end
    max
end
p max(array1)

def max_recursive(array, max = -99_999_999)
    return max if arraylength == 0

    max == array[0] if array[0] > max
    max_recursive(array[1..-1], max)
end
