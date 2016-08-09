proc = Proc.new { puts "Hello world"}
puts proc.call

def my_method(hash)
    puts hash
    puts "#{hash[:carrot]} #{hash[:legume]}"
end

my_method({legume:'I am first', carrot:'A thing'})
