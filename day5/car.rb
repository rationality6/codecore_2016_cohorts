class Car
    def self.max_speed
        '500KM'
    end

    def initialize(model, type, capacity)
        @model = model
        @type = type
        @capacity = capacity
    end

    def specs
        puts "#{@model}\n#{@type}\n#{@capacity}"
    end

    def drive
        puts @model
        puts pump_gas
        'Vroom'
    end

    def stop
        'Eeerrrchh....'
    end

    # def drive
    #     puts ignite_engine
    #     'ddddrrriiivvveee'
    # end

    def park
        'Parking'
        puts pump_gas
    end

    private

    def pump_gas
        'Pumping gas...'
    end

    def ignite_engine
        'Igniting engine...'
    end
end

tesla = Car.new('2011', 'eletric', 4)
tesla.specs
# puts tesla.drive
# puts tesla.stop
# puts tesla.park
# puts tesla.pump_gas
# puts tesla.ignite_engine

porsche = Car.new('Porsche', 'Roadster', 2)
porsche.specs
# puts porsche.drive
# puts Car.max_speed
# # puts porsche.max_speed
