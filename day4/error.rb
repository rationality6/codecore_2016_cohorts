# begin
#     'dasdas'.times
# rescue ZerodivisionError => e
#     puts e.inspect
# end
# begin
#     raise MyError
# rescue
#     puts e.inspect
# end

class MyError < StandardError
end

class RandomError < RuntimeError
end

begin
    raise MyError
    10 / 0
rescue SrandardError => err
    puts 'This error is:' + err.inspect
rescue ZeroDivisionError => err
    puts 'StandarError'
    puts 'The error is: ' + err.inspect
end

puts "I'am continuing"
