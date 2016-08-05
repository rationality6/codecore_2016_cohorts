def flatten(arr)
    if arr == []
        []
    elsif arr[0].is_a? Array
        flatten(arr[0]) + flatten(arr[1..-1])
    else
        [arr[0]] + flatten(arr[1..-1])
    end
end

array_ex = [1, 2, [3, [3, 4], 4], [5, 6]]
print flatten(array_ex)


arr1 = [1, 2, 3, 4, 5]
def forword(arr)
    if arr.empty?
        0
    else
        arr[0] + forword(arr[1..-1])
    end
end

print forword(arr1)
