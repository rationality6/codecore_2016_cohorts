case
when name == "Bob"
    puts "Hello Bob!"
when age == 100
    puts "Happy 100th birthday!"
when occupation =~ /ruby/
    puts "Hello, Rubyist!"
else
    puts "I don't think I know you."
end
