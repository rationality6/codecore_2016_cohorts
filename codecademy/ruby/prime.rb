def prime(n)
    puts "That's not an integer." unless n.is_a? Integer
    is_prime = false
    for i in 2..n
        if n % i == 0
            is_prime = true
        else
            is_prime= false
        end
    end

    if is_prime == true
        puts "It's a prime number"
    else
        puts "It's a not prime"
    end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)
