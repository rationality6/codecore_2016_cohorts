class Dog
    attr_accessor :colour, :type
    def initialize(colour, type)
        @colour = colour
        @type = type
        @array = []
    end

    def give
        random = rand(14..16)
        if @array.length < 3
            @array << Bone.new(random)
            puts 'Added'
        else
            puts 'I have too many bones'
        end
    end

    def eat
        size = @array.last.size >= 15 ? "Big" : "Small"
        @array.pop
        puts "yummy! I ate '#{size} bone'"

    end
end

class Bone
    attr_accessor :size
    def initialize(size)
        @size = size
    end
end

max = Dog.new('black', 'chiwawa')
max.give
max.give
max.give
max.give
max.eat
max.eat
max.eat
