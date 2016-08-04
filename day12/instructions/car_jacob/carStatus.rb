require 'sinatra'
require 'sinatra/reloader'

set :port, 9494

get '/' do

  erb(:car)
end

post '/' do
  @age = params[:age].to_i
  @result = ''
  @age>2016 ? @result = 'Future': @age>2006 ? @result = 'New' : @age > 1996 ? @result = 'Old' : @result = 'Very Old'
  erb(:car)
end
