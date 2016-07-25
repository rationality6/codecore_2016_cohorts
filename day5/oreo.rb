require './cookie'

class Oreo < Cookie
    attr_accessor :filling_type
    # def initialize(filling_type)
    #     super
    #     filling_type = 'defalut'
    # end

    def filling_type
        @filling_type || 'defalut'
    end

    def details
        puts "This Oreo Cookie has #{sugar}g of sugar"
        # puts "This Oreo Cookie has #{@sugar}g of sugar"
        puts "This Oreo Cookie has #{flour}g of sugar"
        # puts "This Oreo Cookie has #{@flour}g of sugar"
        puts "This Oreo Cookie has #{filling_type}g of sugar"
    end

    def eat
        'dip it in milk'
        super
    end
end
