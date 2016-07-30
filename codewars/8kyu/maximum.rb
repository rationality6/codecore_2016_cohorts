# array1 = [3, 2, 6, 4, 5]
#
# def maximum(arr)
#     max = 0
#     for i in arr
#         if i > max
#             max = i
#         end
#     end
#     max
# end
#
# print maximum(array1)

array1 = [3, 2, 6, 4, 5, 8, 15, 999]

def maximum(arr)
    for i in arr
        arr[0] = i if i > arr[0]
    end
    arr[0]
end

print maximum(array1)
