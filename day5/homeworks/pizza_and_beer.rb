class Nutrition
    attr_accessor :sugar, :protein, :fat

    def initialize(sugar, protein, fat)
        @sugar = sugar
        @protein = protein
        @fat = fat
    end
end
class Pizza < Nutrition
    attr_accessor :weight

    def initialize(sugar, protein, fat)
        super
        @weight = 2
    end
end
class Beer < Nutrition
    attr_accessor :volume

    def initialize(sugar, protein, fat)
        super
        @volume = 3
    end
end

one_pizza = Pizza.new(2, 3, 3)
p one_pizza = Beer.new(2, 3, 3)
p one_pizza.volume
