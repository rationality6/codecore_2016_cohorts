require 'sinatra'
require 'sinatra/reloader'

set :port, 3000

def fizzbuzz(x, y)
    array = []
    for i in (1..100)
        array << if (i % x).zero? && (i % y).zero?
                     'PizzBuzz'
                 elsif (i % x).zero?
                     'Pizz'
                 elsif (i % y).zero?
                     'Buzz'
                 else
                     i
                 end
    end
    array
end

get '/' do
    erb :index
end

post '/' do
    @first_n = params[:n1].to_i
    @second_n = params[:n2].to_i
    @fizzbuzz = fizzbuzz(@first_n, @second_n)
    erb :index
end
