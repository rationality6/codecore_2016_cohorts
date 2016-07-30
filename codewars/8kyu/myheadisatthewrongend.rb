# def fix_the_meerkat(arr)
#     arr[2], arr[0] = arr[0], arr[2]
#     arr
# end
#
# array1 = %w(tail body head)
#
# print fix_the_meerkat(array1)

# def fix_the_meerkat(arr)
#     arr[2], arr[1], arr[0] = arr[0], arr[1], arr[2]
#     arr
# end
#
# array1 = %w(tail body head)
#
# print fix_the_meerkat(array1)

# def fix_the_meerkat(arr)
#     arr.reverse
# end
#
# array1 = %w(tail body head)
#
# print fix_the_meerkat(array1)

def fix_the_meerkat(arr)
    arr.reverse
end

array1 = %w(tail body head)

print fix_the_meerkat(array1)
