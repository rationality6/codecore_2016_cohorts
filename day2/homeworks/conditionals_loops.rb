def number_from(n)
    array = []
    if n > 100
        for i in n.downto(100)
            array << i
        end
    else
        for i in (n..100)
            array << i
        end
    end
    array
end

print 'Number : '
user_number = gets.chomp.to_i
print number_from(user_number)
