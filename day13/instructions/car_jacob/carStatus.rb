require 'sinatra'
require 'sinatra/reloader'

set :port, 9494

get '/' do
    erb(:car)
end

post '/' do
    @age = params[:age].to_i

    @result = if @age > 2016
                  'Future'
              elsif @age > 2006
                  'New'
              elsif @age > 1996
                  'Old'
              else
                  'Very Old'
              end

    erb(:car)
end
