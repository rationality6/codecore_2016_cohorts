def flatt(arr)
    if arr == []
        []
    elsif arr[0].is_a? Array
        flatt(arr[0]) + flatt(arr[1..-1])
    else
        [arr[0]] + flatt(arr[1..-1])
    end
end

array_ex = [1, 2, [3, [3, 4], 4], [5, 6]]
puts flatt(array_ex)
