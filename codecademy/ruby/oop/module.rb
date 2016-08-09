module MartialArts
    def swordsman
        puts "I'm a swordsman."
    end
end

class Ninja
    def initialize(clan)
        @clan = clan
    end
    include MartialArts

end

class Samurai
    def initialize(shogun)
        @shogun = shogun
    end
    include MartialArts
end

asagi = Ninja.new("blacklilith")
asagi.swordman
