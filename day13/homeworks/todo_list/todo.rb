require 'sinatra'
require 'sinatra/reloader'

set :port, 8000

enable :session

def add(n)
    # session[:todos] << n
end

get '/' do
    erb(:index, layout: :layout)
end

post '/' do
    todos = []
    todos << params[:todo]
    # add(todo)
    session[:todos] = todos
    p session[:todos]
    erb(:index, layout: :layout)
end
