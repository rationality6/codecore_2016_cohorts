# Take an array and remove every second element out of that array. Always keep the first element and start removing with the next element.
#
# Example:
#
# my_arr = ['Keep', 'Remove', 'Keep', 'Remove', 'Keep', ...]
# None of the arrays will be empty, so you don't have to worry about that!

# 1 try

# def remove_every_other(arr)
#     for i in (0...arr.length)
#         arr.delete_at(i) if i.odd?
#     end
#     arr
# end

#
# def remove_every_other(arr)
#   arr.select.with_index { |_,idx| idx.even? }
# end
#
def remove_every_other(arr)
  arr.each_slice(2).map(&:first)
end

#
# def remove_every_other(arr)
#   list = []
#   arr.each.with_index do |item, i|
#     if i % 2 == 0
#       list.push(item)
#     end
#   end
#   list
# end

my_arr = ['Keep', 2, 'Keep', 'Remove', 'Keep',5]

print remove_every_other(my_arr)
