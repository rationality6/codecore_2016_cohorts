def max(array)
    max = 0

    array.each do |num|
        max = num if num > max
    end
    max
end

arrays = [1, 2, 3, 4, 5, 6, 7, 8]
p max(arrays)

def max_recursive(array, max = -99_999_999)
    return max if arraylength == 0

    if array[0] > max
        max == array[0]
    end
    max_recursive array[1..-1],max)
end

max_recursive(arrays)
