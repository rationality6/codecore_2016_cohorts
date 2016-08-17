require 'sinatra'
require 'sinatra/reloader'

def pick_one(n)
    n[rand(n.length)]
end

get '/' do
    erb :index
end

post '/' do
    @names = params[:names]
    @name_splited = @names.split(',')
    @winner = "The winner is #{pick_one(@name_splited)}"
    erb :index
end
