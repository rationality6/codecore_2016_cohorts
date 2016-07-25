def triangle(n)
    star = '*'
    star_count = 1
    count = 50
    user_number = n

    n.times do
        puts (star*star_count).center(count)
        star_count += 2
    end
end

triangle(9)
