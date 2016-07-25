# our class should be cCamelCased
# out file name should be sname_cased

class Cookie
    # attr_reader :sugar
    # attr_writer :sugar
    #
    # attr_reader :flour
    # attr_writer :flour

    attr_accessor :sugar
    attr_accessor :flour

    def self.info
        "I'm a Cookie class!"
    end

    def self.calories
        '200'
    end

    def get_suger_sugar
        @sugar
    end

    def set_suger_amount(new_amount)
        @sugar = new_amount
    end

    def initialize(sugar, flour, glutten_free)
        @sugar = sugar # instanse variable
        @flour = flour
        @glutten_free = glutten_free
        $greeting = 'Hello Cohort 14' # global variable, weshoud avoid using

        @@color = 'brown' # class variable, can be accessed and changed by all
        # instances of the Cooke class
    end

    def display_suger_amount
        @sugar
        @flour
        @glutten_free
    end

    def decorate
        'Decorate the cookie'
    end

    def bake
        'baking the cookie'
    end

    private

    def eat
        bake
        'Nom. Nom. Nom!'
    end
end

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

oreo_cookie = Oreo.new(11, 32, false)
oreo_cookie.filling_type = 'vanilla'
# oreo_cookie.details
# puts oreo_cookie.eat

my_cookie = Cookie.new(30, 15, false)
# puts Cookie.@@color
# Cookie = @@color = "green"
diet_cookie = Cookie.new(5, 5, true)

# puts my_cookie.get_suger_sugar
# puts my_cookie.set_suger_amount(32)
# puts my_cookie.get_suger_sugar
#
# puts my_cookie.sugar
# my_cookie.sugar = 100
# puts my_cookie.sugar
# puts my_cookie.flour
# my_cookie.flour = 120
# puts my_cookie.flour

# puts my_cookie.display_suger_amount
# puts my_cookie.display_suger_amount

# # test (typically, you would test outside the class)
# my_array = []
# my_cookie = Cookie.new
# my_array.sort # method in Array class
# puts my_cookie.bake # Trow an error when calling a private method outs sdie class
# nicole_cookie = Cookie.new
# puts nicole_cookie.decorate
# puts Cookie.info
# puts Cookie.calories
# # puts my_cookie.info
#
#

# -------------------------------------------------------------------

# puts $greeting
