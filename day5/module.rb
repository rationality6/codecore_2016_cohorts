module Computer
    class Apple
    end
end
module Fruit
    class Apple
    end
end

mac_book = Computer::Apple.new
snack = Fruit::Apple.new

class Computer::Apple
end

class Fruit::Apple
end

# modules they can't be instantiated

module HelperMethods
    def name_display
        name.squeeze(' ').capitalize
    end
end

class Car
    attr_accessor :name
    # include will bring all the methods from the module to this class
    # instance methods
    include HelperMethods
end

saab = Car.new
saab.name = 'sally            sells         seashells'
puts saab.name_display

class User
    attr_accessor :name

    extend HelperMethods
end

User.name_display
