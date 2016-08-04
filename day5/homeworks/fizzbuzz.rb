class Fizzbuzz
    attr_accessor :first_number
    attr_accessor :second_number

    def initialize(first_number, second_number)
        @first_number = first_number
        @second_number = second_number
    end

    def run
        array_list =[]
        for i in 1..100
            if i % @first_number == 0 && i % @second_number == 0
                array_list << "fizzbuzz"
            elsif i % @first_number == 0
                array_list << "fizz"
            elsif i % @second_number == 0
                array_list << "buzz"
            else
                array_list << i
            end
        end
        array_list
    end
end

fb = Fizzbuzz.new(3, 5)
print fb.run ,"\n"

fb.first_number = 2
fb.first_number = 3
print fb.run,"\n"
