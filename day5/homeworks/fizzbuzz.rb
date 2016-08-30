class Fizzbuzz
  attr_accessor :first_number
  attr_accessor :second_number

  def initialize(first_number, second_number)
    @first_number = first_number
    @second_number = second_number
  end

  def run
    array_list = []
    for i in 1..100
      array_list << if (i % @first_number).zero? && (i % @second_number).zero?
                      'fizzbuzz'
                    elsif (i % @first_number).zero?
                      'fizz'
                    elsif (i % @second_number).zero?
                      'buzz'
                    else
                      i
                    end
    end
    array_list
  end
end

fb = Fizzbuzz.new(3, 5)
print fb.run, "\n"

fb.first_number = 2
fb.first_number = 3
print fb.run, "\n"

def greeting(x)
  p x
end
greeting('foo')
