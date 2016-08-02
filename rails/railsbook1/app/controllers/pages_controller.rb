class PagesController < ApplicationController
    def index
        @foobar = 'foobar'
    end

    def home
        @array1 = (1..100).to_a
    end
end
