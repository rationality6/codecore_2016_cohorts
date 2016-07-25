puts 'What is your first neme'
first_name = gets.chomp
puts 'What is your last neme'
last_name = gets.chomp
puts 'What city do you live in'
city = gets.chomp
puts 'What is your age'
age = gets.chomp

person = {
    first_name: first_name,
    last_name: last_name,
    city: city,
    age: age
}

person.each do |k, v|
    puts "Your #{k} is #{v} "
end
