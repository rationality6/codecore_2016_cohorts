hi = Proc.new { || puts "Hello!" }
hi.call
# does that something!

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)
print strings_array
