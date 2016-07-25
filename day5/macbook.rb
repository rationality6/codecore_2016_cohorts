class Macbook
    attr_accessor :model, :year

    def self.bios
        'uni'
    end

    def initialize(model, year)
        @model = model
        @year = year

        $greeting = 'Hello cohost'
    end

    def spec
        puts @model
        puts @year
    end

    def typing
        'tic tic tic'
    end
end

oldmac = Macbook.new('unibody', 2011)
# puts $greeting
puts oldmac.model
oldmac.model = 2012
