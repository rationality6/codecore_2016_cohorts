# def yield_name(name)
#     puts "In the method! Let's yield."
#     yield('Kim')
#     yield(name)
#     puts 'In between the yields!'
#     yield(name)
#     puts 'Block complete! Back in the method.'
# end
#
# yield_name('Eric') { |n| puts "My name ise #{n}." }

def double(s)
    yield s
end

a = double(2) { |n| n * 2 }

puts a
