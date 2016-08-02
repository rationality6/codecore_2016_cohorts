module Foo
    def foo
        puts 'foo'
    end
end

class Bar
    extend Foo
    def bar
        foo
    end
end

class Buz
    include Foo
    def bar
        foo
    end
end

# Bar.bar
Buz.new.bar
