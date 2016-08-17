class HomeController < ApplicationController
    def index
        if params[:names].nil?
            @result = 'asdf'
        else
            array = params[:names].split(',')
            @result = array[rand(array.length)]
        end
    end
end
