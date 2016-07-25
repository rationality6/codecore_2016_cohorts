class T
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def greeting
        puts @title.to_s
    end

    def to_s
        @i.to_s
    end
end

t = T.new(42)
textbook = T.new 'Fightclub'
puts t
puts textbook.greeting

class Whatever
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def greeting
        puts "Hello world #{@name}"
    end
end

book = Whatever.new('John')
puts book.greeting
