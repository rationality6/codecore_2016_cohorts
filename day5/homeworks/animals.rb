class Animal
    attr_accessor :name, :color

    def initialize(name, color)
        @name = name
        @color = color
    end

    def eat
        "I'm eatting"
    end

    def walk
        "I'm working"
    end
end

class Dog < Animal
    attr_accessor :food

    def initialize(name, color, food = 'Bones')
        super(name, color)
        @food = food
    end

    def bark
        'woof'
    end

    def eat
        "#{food} are yummy!"
    end
end

class Cat < Animal
    def eat
        print 'Fish is yummy!'
    end
end

max = Dog.new('Max', 'black')
