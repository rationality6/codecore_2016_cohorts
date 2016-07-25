def capitalize(string)
    puts "#{string[0].upcase}#{string[1..-1]}"
end

def class_capitalize(sting)
    puts sting.capitalize.to_s
end

capitalize('hem')
capitalize('jen')
class_capitalize('hyun')
class_capitalize('hee')

print %w(ryan jane).collect{ |item| "#{item[0].upcase}#{item[1..-1]}"}
