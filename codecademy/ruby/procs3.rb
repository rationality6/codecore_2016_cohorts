
cube = proc { |x| x**3 }
print [1, 2, 3].map(&cube)

def greeter
    yield
end

phrase = proc { |_x| puts 'Hello there!' }
greeter(&phrase)
