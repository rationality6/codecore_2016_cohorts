class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Bird < Animal
end

module HelperMethods
  def random_number_maker
    rand(2)
  end
end

class Cat < Animal
  include HelperMethods

  def catching_birds(n)
    birds = []
    bird = Bird.new('Crows')
    n.times do
      birds << bird if random_number_maker == 1
    end
    birds.length
  end
end

hume = Cat.new('Hume')
puts hume.catching_birds(100)
