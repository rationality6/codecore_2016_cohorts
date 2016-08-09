class FooController < ApplicationController
    def index
        @greeting = "Hello world"

        def one_to(n)
            @array = (1..n).to_a
        end

        one_to(100)

    end
end
