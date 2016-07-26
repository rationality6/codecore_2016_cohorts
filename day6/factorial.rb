def factorial1(num)
    if num <= 1
        1
    else
        num * factorial1(num - 1)
    end
end

print factorial1(15)
