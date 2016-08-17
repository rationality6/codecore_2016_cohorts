class Cookie
    CALORIES_IN_SUGAR_GRAM = 4
    CALORIES_IN_FLOUR_GRAM = 4

    def initialize(sugar, flour)
        @sugar = sugar
        @flour = flour
    end

    def calorie_count
        @sugar * CALORIES_IN_SUGAR_GRAM + @flour * CALORIES_IN_FLOUR_GRAM
    end
end
