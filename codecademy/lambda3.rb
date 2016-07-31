my_array = ['raindrops', :kettles, 'whiskers', :mittens, :packages]

# Add your code below!

# array1 = [1, 2, 3, 4, 5]
# mulity = ->(x) { x *= 2 }
# result = array1.collect(&mulity)
# print result

symbol_filter = ->(n) { n.is_a? Symbol }
# symbol_filter = proc { |x| x.is_a? Symbol }
symbols = my_array.select(&symbol_filter)
print symbols
