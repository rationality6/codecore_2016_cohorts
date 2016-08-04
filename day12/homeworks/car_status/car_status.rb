require 'sinatra'
require 'sinatra/reloader'

set :port, 8080

get '/' do
    erb(:index)
end

post '/' do
    @age = params[:age].to_i
    # @age > 2016 ? @result = "Future" : @age > 2006 ? @result = "New" : @age > 1996 ? @result = 'Old' : @result = "Very Old"

    @result = if @age > 2016
                  'Future'
              elsif @age > 2010
                  'New'
              elsif @age > 2007
                  'Old'
              else @age > 2005
                   'Junk'
              end

    erb(:index)
end
