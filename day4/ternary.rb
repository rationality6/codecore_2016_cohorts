puts true ? 'foo' : 'bar'
puts false ? 'foo' : 'bar'
false ? puts('foo') : puts('bar')
true ? puts('foo') : puts('bar')

puts a = 10
puts a ||= 5
puts b ||= 8
puts b ||= 5

language = 'Free'

case language
when 'English'
    puts 'hi'
when 'Fre'
    puts 'french'
else
    puts 'What is this?'
end

def a
    puts 'a was e'
    false
end

def b
    puts 'b was e'
    false
end
puts '----------'
puts a || b || c
puts a && b && c
