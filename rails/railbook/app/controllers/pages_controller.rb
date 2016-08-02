class PagesController < ApplicationController
    def index
        @array1 = (1..10).to_a
    end
    def next
        @array1 = (1..100).to_a
    end
end
