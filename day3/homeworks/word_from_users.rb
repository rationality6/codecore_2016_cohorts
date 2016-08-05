puts "1. Hi 2. Hello 3. Hey 4. What's up? 5. Bye"
user_input = ''
until user_input == 'exit'
    print ' : '
    user_input = gets.chomp
    case user_input
    when '1'
        puts 'Hi'
    when '2'
        puts 'Hello'
    when '3'
        puts 'Hey'
    when '4'
        puts "What's up"
    when '5'
        puts 'Bye'
    end
end
