class Animal
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

class Bird < Animal
    def initialize(name)
        super(name)
    end
end

class Cat < Animal
    def initialize(name)
        super(name)
    end

    def catching_bird(n)
        birds = 0
        n.times do
            random_number = rand(2)
            birds = Bird.new('Crows') if random_number == 1
        end
        birds
    end
end

module HelperMethods
    def random_number
        rand(2)
    end
end

hume = Cat.new('Hume')
puts hume.catching_bird(100)
