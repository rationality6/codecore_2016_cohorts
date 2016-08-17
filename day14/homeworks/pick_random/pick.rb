require 'sinatra'
require 'sinatra/reloader'

set :port, 8000

def random_pick(string)
    array = string.split(',')
    array[rand(array.length)]
end

get '/' do
    erb(:index, layout: :layout)
end

post '/' do
    session[:names] = params[:names]
    session[:winner] = random_pick(session[:names])
    erb(:index, layout: :layout)
end
