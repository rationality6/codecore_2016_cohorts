a = 'Hello c'
b = 100

puts a.respond_to?(:to_i)
puts a.respond_to?(:capitalize)

puts b.respond_to?(:to_i)
puts b.respond_to?(:capitalize)
