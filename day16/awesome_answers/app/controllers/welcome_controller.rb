class WelcomeController < ApplicationController
    def index
        @greeting = "Hello world"

        def one_to(n)
            @array = (1..n).to_a
        end

        one_to(10)
    end
end
