arr = %w(a b c d)
add_exclamation = proc { |x| x + '!' }
print arr.collect(&add_exclamation) #=> ["a!", "b!", "c!", "d!"]
