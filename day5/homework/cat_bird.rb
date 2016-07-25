class Cat
    def initialize(name)
        @name = name
    end

    def catching_bird(n)
        catch_rate = 0
        n.times do
            random_number = rand(2)
            catch_rate += 1 if random_number == 1
        end
        catch_rate
    end
end

class Bird
    def initialize(name)
        @name = name
    end
end

module HelperMethods
    def random_number
        rand(2)
    end
end

hume = Cat.new('Hume')
puts hume.catching_bird(100)
