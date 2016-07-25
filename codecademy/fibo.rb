def fib(n)
    first_number = 0
    second_number = 1
    array_list = []
    while first_number < n
        array_list << first_number
        first_number = second_number
        second_number = first_number + second_number
    end
    array_list
end
