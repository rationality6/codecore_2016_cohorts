class Creature
    def initialize(name)
        @name = name
    end

    def fight
        'Punch to the chops!'
    end
end

# Add your code below!

class Dragon < Creature
    def fight
        puts 'Instead of breating fire...'
        super
    end
end

karin = Dragon.new('Karin')
puts karin.fight
